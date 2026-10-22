{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.input.automation.module.generic.configuration.profile
module GenericProfiles where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified GenericProfilesData -- same package or java.lang
import qualified GenericProfileData -- same package or java.lang
import qualified GenericProfile -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified File -- java.io.File
import qualified FileInputStream -- java.io.FileInputStream
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified DomDocumentMappingInterface -- org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface
import qualified DefaultListModelHelper -- org.allbinary.input.automation.module.DefaultListModelHelper
import qualified GenericProfileActionData -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
-- implements DomDocumentMappingInterface
data GenericProfiles = GenericProfiles
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , hashMap :: IORef (HashMap.HashMap)
    , profilesDefaultListModelHelper :: IORef (DefaultListModelHelper.DefaultListModelHelper)
    , fileName :: IORef (String)
    }

instance JavaNull GenericProfiles where
    javaNull = javaNullRecord "GenericProfiles"

instance JavaEquals GenericProfiles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfiles where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfiles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dEFAULT_PROFILES_PATH = "./modules/configs/profiles/"

dEFAULT_PROFILE_ACTIONS_PATH = (javaToString GenericProfiles.dEFAULT_PROFILES_PATH ++ "actions/")

dEFAULT_FILE = (javaToString GenericProfiles.dEFAULT_PROFILES_PATH ++ "profiles.xml")

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfiles
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    hashMap <- newIORef javaNull
    profilesDefaultListModelHelper <- newIORef javaNull
    fileName <- newIORef ""
    let this = GenericProfiles header_ logUtil hashMap profilesDefaultListModelHelper fileName
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    DomDocumentMappingInterface.registerInterface_ header_
    jregisterMethod header_ "initProfiles" (\() -> initProfiles_impl this)
    jregisterMethod header_ "getDefaultListModelHelper" (\() -> getDefaultListModelHelper_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    pure this

initFields_ :: GenericProfiles -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.hashMap (javaNull)
    jset this.profilesDefaultListModelHelper (javaNull)
    jset this.fileName (javaNull)
    pure ()

new_1 :: String -> IO GenericProfiles
new_1 fileName = do
    this <- newRecord_
    init_1 this fileName
    pure this

init_1 :: GenericProfiles -> String -> IO ()
init_1 this fileName = do
        initFields_ this
        jset (this).fileName (fileName)
        assignedValue <- (DefaultListModelHelper.new_)
        jset (this).profilesDefaultListModelHelper (assignedValue)
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).hashMap (assignedValue)
        if (jio (File.isFile ((jio (File.new_1 fileName))))) then do
            let bytes = (jnewArray (100000) 0)
            idFile <- (FileInputStream.new_1 fileName)
            length <- (FileInputStream.read idFile bytes)
            data_ <- (jnewString bytes)
            let endIndex = (jstringLastIndexOf data_ '>')
            document <- (DomDocumentHelper.create_1 (Prelude.take (((endIndex + 1)) - (0)) (Prelude.drop (0) data_)))
            nodeList <- (Document.getElementsByTagName document (jget GenericProfilesData.nAME))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Profiles Specified: " ++ javaToString (jio (NodeList.getLength nodeList))) this "Contructor")
            if (nodeList /= javaNull) then do
                Control.Monad.void (GenericProfiles.initProfiles this (jio (NodeList.item nodeList 0)))
            else do
                javaThrow ((JavaException "Exception" (javaToString (jget GenericProfileActionData.nAME) ++ " Name Node Node Children")))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Loaded: " ++ javaToString (jio (HashMap.size ((jget (this).hashMap))))) ++ " Configuration Profile Actions") this "Contructor")
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No Generic Profile: " ++ fileName) this "Contructor")
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfiles.getDefaultListModelHelper this))))
        pure ()


-- throws Exception
initProfiles :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
initProfiles object_ a1 = jmethod object_ "initProfiles" (\() -> (initProfiles_impl (javaCast object_ :: GenericProfiles))) () a1

initProfiles_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
initProfiles_super object_ a1 = (initProfiles_impl (javaCast object_ :: GenericProfiles)) a1

initProfiles_impl :: GenericProfiles -> Node.Node -> IO (())
initProfiles_impl this node = do
        nodeList <- (Node.getChildNodes node)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            profileNameNode <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName profileNameNode))) (jget GenericProfileData.nAME))) == 0) $ do
                genericProfile <- (GenericProfile.new_1 profileNameNode)
                Control.Monad.void (HashMap.put ((jget (this).hashMap)) (jio (GenericProfile.getName genericProfile)) genericProfile)
                Control.Monad.void (DefaultListModelHelper.add ((jio (GenericProfiles.getDefaultListModelHelper this))) (jio (GenericProfile.getName genericProfile)))
        pure ()


getDefaultListModelHelper :: (JavaObjectClass this_) => this_ -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper object_ = jmethod object_ "getDefaultListModelHelper" (\() -> (getDefaultListModelHelper_impl (javaCast object_ :: GenericProfiles))) ()

getDefaultListModelHelper_super :: (JavaObjectClass this_) => this_ -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper_super object_ = (getDefaultListModelHelper_impl (javaCast object_ :: GenericProfiles))

getDefaultListModelHelper_impl :: GenericProfiles -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper_impl this = do
        pure ((jget (this).profilesDefaultListModelHelper))


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (GenericProfile.GenericProfile)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: GenericProfiles))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (GenericProfile.GenericProfile)
get_super object_ a1 = (get_impl (javaCast object_ :: GenericProfiles)) a1

get_impl :: GenericProfiles -> String -> IO (GenericProfile.GenericProfile)
get_impl this name = do
        let genericProfile = (javaCast (jio (HashMap.get ((jget (this).hashMap)) name)) :: GenericProfile.GenericProfile)
        when (genericProfile == javaNull) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("No Generic Profile Named: " ++ name) ++ " availability was: ") ++ javaToString (jget (this).hashMap)) this (jget (commonStrings).gET))
        pure (genericProfile)


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GenericProfiles))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GenericProfiles)) a1

add_impl :: GenericProfiles -> String -> IO (())
add_impl this name = do
        Control.Monad.void (HashMap.put ((jget (this).hashMap)) name (jio (GenericProfile.new_1 name)))
        Control.Monad.void (DefaultListModelHelper.add ((jio (GenericProfiles.getDefaultListModelHelper this))) name)
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfiles.getDefaultListModelHelper this))))
        Control.Monad.void (GenericProfiles.save this)
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: GenericProfiles))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: GenericProfiles)) a1

remove_impl :: GenericProfiles -> String -> IO (())
remove_impl this name = do
        Control.Monad.void (HashMap.remove ((jget (this).hashMap)) name)
        Control.Monad.void (DefaultListModelHelper.remove ((jio (GenericProfiles.getDefaultListModelHelper this))) name)
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfiles.getDefaultListModelHelper this))))
        Control.Monad.void (GenericProfiles.save this)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfiles))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfiles)) a1

toXmlNode_impl :: GenericProfiles -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfilesData.nAME))
        set <- (HashMap.keySet ((jget (this).hashMap)))
        nameArray <- (Set.toArray set)
        let size = (jlength nameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let genericProfile = (javaCast (jio (HashMap.get ((jget (this).hashMap)) (javaCast (jindex nameArray (index)) :: String))) :: GenericProfile.GenericProfile)
            Control.Monad.void (Node.appendChild node (jio (GenericProfile.toXmlNode genericProfile document)))
        pure (node)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: GenericProfiles))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: GenericProfiles))

toXmlDoc_impl :: GenericProfiles -> IO (Document.Document)
toXmlDoc_impl this = do
        document <- (DomDocumentHelper.create)
        node <- (GenericProfiles.toXmlNode this document)
        Control.Monad.void (Document.appendChild document node)
        pure (document)


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: GenericProfiles))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: GenericProfiles))

save_impl :: GenericProfiles -> IO (())
save_impl this = do
        idFile <- (FileOutputStream.new_1 (jget (this).fileName))
        idOutData <- (DataOutputStream.new_1 idFile)
        documentString <- (XmlDocumentHelper.toString (jio (GenericProfiles.toXmlDoc this)))
        Control.Monad.void (DataOutputStream.writeBytes idOutData documentString)
        pure ()


