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
-- package org.allbinary.input.automation.module.generic.configuration.profile.actions
module GenericProfileActions where

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
import qualified GenericProfileActionsJPanel -- same package or java.lang
import qualified GenericProfileActionsData -- same package or java.lang
import qualified GenericProfileActionData -- same package or java.lang
import qualified GenericProfileAction -- same package or java.lang
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
import qualified GenericProfiles -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfiles
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonDataFileStrings -- org.allbinary.logic.io.file.CommonDataFileStrings
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

-- implements DomNodeInterface
-- implements DomDocumentMappingInterface
data GenericProfileActions = GenericProfileActions
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonFileStrings :: IORef (CommonDataFileStrings.CommonDataFileStrings)
    , name :: IORef (String)
    , genericProfileActionsJPanel :: IORef (GenericProfileActionsJPanel.GenericProfileActionsJPanel)
    , actionsDefaultListModelHelper :: IORef (DefaultListModelHelper.DefaultListModelHelper)
    , hashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull GenericProfileActions where
    javaNull = javaNullRecord "GenericProfileActions"

instance JavaEquals GenericProfileActions where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileActions where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileActions where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

dEFAULT_PROFILE_ACTIONS_PATH = (javaToString GenericProfiles.dEFAULT_PROFILES_PATH ++ "actions/")

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfileActions
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonFileStrings <- newIORef javaNull
    name <- newIORef ""
    genericProfileActionsJPanel <- newIORef javaNull
    actionsDefaultListModelHelper <- newIORef javaNull
    hashMap <- newIORef javaNull
    let this = GenericProfileActions header_ logUtil commonFileStrings name genericProfileActionsJPanel actionsDefaultListModelHelper hashMap
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    DomDocumentMappingInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "getFile" (\() -> getFile_impl this)
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "fileInit" (\() -> fileInit_impl this)
    jregisterMethod header_ "initActions" (\() -> initActions_impl this)
    jregisterMethod header_ "getDefaultListModelHelper" (\() -> getDefaultListModelHelper_impl this)
    jregisterMethod header_ "getAction" (\() -> getAction_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "getGenericProfileActionsJPanel" (\() -> getGenericProfileActionsJPanel_impl this)
    jregisterMethod header_ "setGenericProfileActionsJPanel" (\() -> setGenericProfileActionsJPanel_impl this)
    jregisterMethod header_ "getHashMap" (\() -> getHashMap_impl this)
    jregisterMethod header_ "setHashMap" (\() -> setHashMap_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    pure this

initFields_ :: GenericProfileActions -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonFileStrings =<< (CommonDataFileStrings.getInstance)
    jset this.name ("")
    jset this.genericProfileActionsJPanel (javaNull)
    jset this.actionsDefaultListModelHelper (javaNull)
    jset this.hashMap (javaNull)
    pure ()

new_2 :: GenericProfileActionsJPanel.GenericProfileActionsJPanel -> String -> IO GenericProfileActions
new_2 genericProfileActionsJPanel name = do
    this <- newRecord_
    init_2 this genericProfileActionsJPanel name
    pure this

init_2 :: GenericProfileActions -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> String -> IO ()
init_2 this genericProfileActionsJPanel name = do
        initFields_ this
        Control.Monad.void (GenericProfileActions.setName this name)
        Control.Monad.void (GenericProfileActions.init this genericProfileActionsJPanel)
        Control.Monad.void (GenericProfileActions.load this)
        pure ()

new_3 :: GenericProfileActionsJPanel.GenericProfileActionsJPanel -> AbPath.AbPath -> String -> IO GenericProfileActions
new_3 genericProfileActionsJPanel abPath name = do
    this <- newRecord_
    init_3 this genericProfileActionsJPanel abPath name
    pure this

init_3 :: GenericProfileActions -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> AbPath.AbPath -> String -> IO ()
init_3 this genericProfileActionsJPanel abPath name = do
        initFields_ this
        Control.Monad.void (GenericProfileActions.setName this name)
        Control.Monad.void (GenericProfileActions.init this genericProfileActionsJPanel)
        Control.Monad.void (GenericProfileActions.load this)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_3 :: GenericProfileActionsJPanel.GenericProfileActionsJPanel -> FileInputStream.FileInputStream -> String -> IO GenericProfileActions
new_3 genericProfileActionsJPanel fileInputStream name = do
    this <- newRecord_
    init_3 this genericProfileActionsJPanel fileInputStream name
    pure this

init_3 :: GenericProfileActions -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> FileInputStream.FileInputStream -> String -> IO ()
init_3 this genericProfileActionsJPanel fileInputStream name = do
        initFields_ this
        Control.Monad.void (GenericProfileActions.setName this name)
        Control.Monad.void (GenericProfileActions.init this genericProfileActionsJPanel)
        Control.Monad.void (GenericProfileActions.fileInit this fileInputStream)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GenericProfileActions))) () a1

init_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: GenericProfileActions)) a1

init_impl :: GenericProfileActions -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
init_impl this genericProfileActionsJPanel = do
        Control.Monad.void (GenericProfileActions.setGenericProfileActionsJPanel this genericProfileActionsJPanel)
        assignedValue <- (DefaultListModelHelper.new_)
        jset (this).actionsDefaultListModelHelper (assignedValue)
        Control.Monad.void (GenericProfileActions.setHashMap this (jio (HashMap.new_)))
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> IO (())
save object_ = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: GenericProfileActions))) ()

save_super :: (JavaObjectClass this_) => this_ -> IO (())
save_super object_ = (save_impl (javaCast object_ :: GenericProfileActions))

save_impl :: GenericProfileActions -> IO (())
save_impl this = do
        idFile <- (FileOutputStream.new_1 ((javaToString GenericProfileActions.dEFAULT_PROFILE_ACTIONS_PATH ++ (jio (GenericProfileActions.getName this))) ++ javaToString (jget ((jget (this).commonFileStrings))._XML)))
        idOutData <- (DataOutputStream.new_1 idFile)
        Control.Monad.void (DataOutputStream.writeBytes idOutData (jio (XmlDocumentHelper.toString (jio (GenericProfileActions.toXmlDoc this)))))
        pure ()


getFile :: (JavaObjectClass this_) => this_ -> String -> IO (File.File)
getFile object_ a1 = jmethod object_ "getFile" (\() -> (getFile_impl (javaCast object_ :: GenericProfileActions))) () a1

getFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (File.File)
getFile_super object_ a1 = (getFile_impl (javaCast object_ :: GenericProfileActions)) a1

getFile_impl :: GenericProfileActions -> String -> IO (File.File)
getFile_impl this name = do
        let fileName = ((dEFAULT_PROFILE_ACTIONS_PATH ++ name) ++ javaToString (jget ((jget (this).commonFileStrings))._XML))
        (File.new_1 fileName)


-- throws Exception
load :: (JavaObjectClass this_) => this_ -> IO (())
load object_ = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: GenericProfileActions))) ()

load_super :: (JavaObjectClass this_) => this_ -> IO (())
load_super object_ = (load_impl (javaCast object_ :: GenericProfileActions))

load_impl :: GenericProfileActions -> IO (())
load_impl this = do
        file <- (GenericProfileActions.getFile this (jio (GenericProfileActions.getName this)))
        if (jio (File.isFile file)) then do
            idFile <- (FileInputStream.new_1 file)
            Control.Monad.void (GenericProfileActions.fileInit this idFile)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No Profile: " ++ javaToString (jio (File.getAbsolutePath file))) this "Contructor")
        pure ()


-- throws Exception
fileInit :: (JavaObjectClass this_) => this_ -> FileInputStream.FileInputStream -> IO (())
fileInit object_ a1 = jmethod object_ "fileInit" (\() -> (fileInit_impl (javaCast object_ :: GenericProfileActions))) () a1

fileInit_super :: (JavaObjectClass this_) => this_ -> FileInputStream.FileInputStream -> IO (())
fileInit_super object_ a1 = (fileInit_impl (javaCast object_ :: GenericProfileActions)) a1

fileInit_impl :: GenericProfileActions -> FileInputStream.FileInputStream -> IO (())
fileInit_impl this fileInputStream = do
        let bytes = (jnewArray (100000) 0)
        length <- (FileInputStream.read fileInputStream bytes)
        data_ <- (jnewString bytes)
        let endIndex = (jstringLastIndexOf data_ '>')
        document <- (DomDocumentHelper.create (Prelude.take (((endIndex + 1)) - (0)) (Prelude.drop (0) data_)))
        nameNodeList <- (Document.getElementsByTagName document (jget GenericProfileActionsData.nAME))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Profiles Specified: " ++ javaToString (jio (NodeList.getLength nameNodeList))) this "Contructor")
        forM_ [0 .. (jio (NodeList.getLength nameNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nameNodeList index)
            nodeList <- (Node.getChildNodes node)
            if (nodeList /= javaNull) then do
                Control.Monad.void (GenericProfileActions.initActions this nodeList)
            else do
                javaThrow ((JavaException "Exception" (javaToString (jget GenericProfileActionData.nAME) ++ " Name Node Node Children")))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Loaded: " ++ javaToString (jio (HashMap.size ((jio (GenericProfileActions.getHashMap this)))))) ++ " Configuration Profile Action(s)") this "Contructor")
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfileActions.getDefaultListModelHelper this))))
        pure ()


-- throws Exception
initActions :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (())
initActions object_ a1 = jmethod object_ "initActions" (\() -> (initActions_impl (javaCast object_ :: GenericProfileActions))) () a1

initActions_super :: (JavaObjectClass this_) => this_ -> NodeList.NodeList -> IO (())
initActions_super object_ a1 = (initActions_impl (javaCast object_ :: GenericProfileActions)) a1

initActions_impl :: GenericProfileActions -> NodeList.NodeList -> IO (())
initActions_impl this nodeList = do
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            actionNode <- (NodeList.item nodeList index)
            if (actionNode /= javaNull) then do
                genericConfigurationProfileAction <- (GenericProfileAction.new_2 (jio (GenericProfileActionsJPanel.getGenericProfileActionJPanel ((jio (GenericProfileActions.getGenericProfileActionsJPanel this))))) actionNode)
                Control.Monad.void (HashMap.put ((jio (GenericProfileActions.getHashMap this))) (jio (GenericProfileAction.getName genericConfigurationProfileAction)) genericConfigurationProfileAction)
                Control.Monad.void (DefaultListModelHelper.add ((jio (GenericProfileActions.getDefaultListModelHelper this))) (jio (GenericProfileAction.getName genericConfigurationProfileAction)))
            else do
                javaThrow ((JavaException "Exception" (javaToString (jget GenericProfileActionData.nAME) ++ " Node Null")))
        pure ()


getDefaultListModelHelper :: (JavaObjectClass this_) => this_ -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper object_ = jmethod object_ "getDefaultListModelHelper" (\() -> (getDefaultListModelHelper_impl (javaCast object_ :: GenericProfileActions))) ()

getDefaultListModelHelper_super :: (JavaObjectClass this_) => this_ -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper_super object_ = (getDefaultListModelHelper_impl (javaCast object_ :: GenericProfileActions))

getDefaultListModelHelper_impl :: GenericProfileActions -> IO (DefaultListModelHelper.DefaultListModelHelper)
getDefaultListModelHelper_impl this = do
        pure ((jget (this).actionsDefaultListModelHelper))


getAction :: (JavaObjectClass this_) => this_ -> String -> IO (GenericProfileAction.GenericProfileAction)
getAction object_ a1 = jmethod object_ "getAction" (\() -> (getAction_impl (javaCast object_ :: GenericProfileActions))) () a1

getAction_super :: (JavaObjectClass this_) => this_ -> String -> IO (GenericProfileAction.GenericProfileAction)
getAction_super object_ a1 = (getAction_impl (javaCast object_ :: GenericProfileActions)) a1

getAction_impl :: GenericProfileActions -> String -> IO (GenericProfileAction.GenericProfileAction)
getAction_impl this string = do
        pure ((javaCast (jio (HashMap.get ((jio (GenericProfileActions.getHashMap this))) string)) :: GenericProfileAction.GenericProfileAction))


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GenericProfileActions))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GenericProfileActions)) a1

add_impl :: GenericProfileActions -> String -> IO (())
add_impl this name = do
        genericProfileAction <- (GenericProfileAction.new_1 name)
        Control.Monad.void (HashMap.put ((jio (GenericProfileActions.getHashMap this))) (jio (GenericProfileAction.getName genericProfileAction)) genericProfileAction)
        Control.Monad.void (DefaultListModelHelper.add ((jio (GenericProfileActions.getDefaultListModelHelper this))) (jio (GenericProfileAction.getName genericProfileAction)))
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfileActions.getDefaultListModelHelper this))))
        Control.Monad.void (GenericProfileActions.save this)
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: GenericProfileActions))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: GenericProfileActions)) a1

remove_impl :: GenericProfileActions -> String -> IO (())
remove_impl this name = do
        Control.Monad.void (HashMap.remove ((jio (GenericProfileActions.getHashMap this))) name)
        Control.Monad.void (DefaultListModelHelper.remove ((jio (GenericProfileActions.getDefaultListModelHelper this))) name)
        Control.Monad.void (DefaultListModelHelper.initDefaultModelList ((jio (GenericProfileActions.getDefaultListModelHelper this))))
        Control.Monad.void (GenericProfileActions.save this)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: GenericProfileActions))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: GenericProfileActions))

toHashMap_impl :: GenericProfileActions -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfileActions))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfileActions)) a1

toXmlNode_impl :: GenericProfileActions -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (jget GenericProfileActionsData.nAME))
        set <- (HashMap.keySet ((jio (GenericProfileActions.getHashMap this))))
        actionNameArray <- (Set.toArray set)
        let size = (jlength actionNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextActionName = (javaCast (jindex actionNameArray (index)) :: String)
            let nextGenericProfileAction = (javaCast (jio (GenericProfileActions.getAction this nextActionName)) :: GenericProfileAction.GenericProfileAction)
            Control.Monad.void (Node.appendChild node (jio (GenericProfileAction.toXmlNode nextGenericProfileAction document)))
        pure (node)


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: GenericProfileActions))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: GenericProfileActions))

toXmlDoc_impl :: GenericProfileActions -> IO (Document.Document)
toXmlDoc_impl this = do
        document <- (DomDocumentHelper.create)
        node <- (GenericProfileActions.toXmlNode this document)
        Control.Monad.void (Document.appendChild document node)
        pure (document)


getGenericProfileActionsJPanel :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionsJPanel.GenericProfileActionsJPanel)
getGenericProfileActionsJPanel object_ = jmethod object_ "getGenericProfileActionsJPanel" (\() -> (getGenericProfileActionsJPanel_impl (javaCast object_ :: GenericProfileActions))) ()

getGenericProfileActionsJPanel_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionsJPanel.GenericProfileActionsJPanel)
getGenericProfileActionsJPanel_super object_ = (getGenericProfileActionsJPanel_impl (javaCast object_ :: GenericProfileActions))

getGenericProfileActionsJPanel_impl :: GenericProfileActions -> IO (GenericProfileActionsJPanel.GenericProfileActionsJPanel)
getGenericProfileActionsJPanel_impl this = do
        pure ((jget (this).genericProfileActionsJPanel))


setGenericProfileActionsJPanel :: (JavaObjectClass this_) => this_ -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
setGenericProfileActionsJPanel object_ a1 = jmethod object_ "setGenericProfileActionsJPanel" (\() -> (setGenericProfileActionsJPanel_impl (javaCast object_ :: GenericProfileActions))) () a1

setGenericProfileActionsJPanel_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
setGenericProfileActionsJPanel_super object_ a1 = (setGenericProfileActionsJPanel_impl (javaCast object_ :: GenericProfileActions)) a1

setGenericProfileActionsJPanel_impl :: GenericProfileActions -> GenericProfileActionsJPanel.GenericProfileActionsJPanel -> IO (())
setGenericProfileActionsJPanel_impl this genericProfileActionsJPanel = do
        jset (this).genericProfileActionsJPanel (genericProfileActionsJPanel)
        pure ()


getHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap object_ = jmethod object_ "getHashMap" (\() -> (getHashMap_impl (javaCast object_ :: GenericProfileActions))) ()

getHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap_super object_ = (getHashMap_impl (javaCast object_ :: GenericProfileActions))

getHashMap_impl :: GenericProfileActions -> IO (HashMap.HashMap)
getHashMap_impl this = do
        pure ((jget (this).hashMap))


setHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setHashMap object_ a1 = jmethod object_ "setHashMap" (\() -> (setHashMap_impl (javaCast object_ :: GenericProfileActions))) () a1

setHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setHashMap_super object_ a1 = (setHashMap_impl (javaCast object_ :: GenericProfileActions)) a1

setHashMap_impl :: GenericProfileActions -> HashMap.HashMap -> IO (())
setHashMap_impl this hashMap = do
        jset (this).hashMap (hashMap)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericProfileActions))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericProfileActions))

getName_impl :: GenericProfileActions -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GenericProfileActions))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GenericProfileActions)) a1

setName_impl :: GenericProfileActions -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


