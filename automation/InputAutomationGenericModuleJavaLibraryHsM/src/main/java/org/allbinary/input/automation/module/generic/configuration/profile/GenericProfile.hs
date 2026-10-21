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
module GenericProfile where

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
import qualified GenericProfileDataWorkerData -- same package or java.lang
import qualified GenericProfileDataWorkerType -- same package or java.lang
import qualified GenericProfileData -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified GenericProfileActions -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data GenericProfile = GenericProfile
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    , genericProfileActions :: IORef (GenericProfileActions.GenericProfileActions)
    }

instance JavaNull GenericProfile where
    javaNull = javaNullRecord "GenericProfile"

instance JavaEquals GenericProfile where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfile where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfile where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfile
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    name <- newIORef ""
    vector <- newIORef javaNull
    genericProfileActions <- newIORef javaNull
    let this = GenericProfile header_ logUtil name vector genericProfileActions
    jregisterLevel header_ this
    jregisterMethod header_ "getGenericProfileDataWorkerTypeVector" (\() -> getGenericProfileDataWorkerTypeVector_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "getGenericProfileActions" (\() -> getGenericProfileActions_impl this)
    jregisterMethod header_ "setGenericProfileActions" (\() -> setGenericProfileActions_impl this)
    pure this

initFields_ :: GenericProfile -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name ("")
    jset this.vector (javaNull)
    jset this.genericProfileActions (javaNull)
    pure ()

new_1 :: Node.Node -> IO GenericProfile
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: GenericProfile -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        Control.Monad.void (GenericProfile.setName this (jio (DomNodeHelper.getTextNodeValue node)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).vector (assignedValue)
        nodeList <- (Node.getChildNodes node)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("Name: " ++ (jio (GenericProfile.getName this))) ++ " Child Nodes: ") ++ javaToString (jio (NodeList.getLength nodeList))) this "Contructor")
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            profileNode <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName profileNode))) (jget GenericProfileDataWorkerData.nAME))) == 0) $ do
                genericProfileDataWorkerType <- (GenericProfileDataWorkerType.getInstance profileNode)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Adding GenericProfileDataWorkerType: " ++ (jio (GenericProfileDataWorkerType.toString genericProfileDataWorkerType))) this "Contructor")
                Control.Monad.void (BasicArrayList.add ((jget (this).vector)) genericProfileDataWorkerType)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: String -> IO GenericProfile
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: GenericProfile -> String -> IO ()
init_1 this name = do
        initFields_ this
        Control.Monad.void (GenericProfile.setName this name)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).vector (assignedValue)
        pure ()


getGenericProfileDataWorkerTypeVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGenericProfileDataWorkerTypeVector object_ = jmethod object_ "getGenericProfileDataWorkerTypeVector" (\() -> (getGenericProfileDataWorkerTypeVector_impl (javaCast object_ :: GenericProfile))) ()

getGenericProfileDataWorkerTypeVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGenericProfileDataWorkerTypeVector_super object_ = (getGenericProfileDataWorkerTypeVector_impl (javaCast object_ :: GenericProfile))

getGenericProfileDataWorkerTypeVector_impl :: GenericProfile -> IO (BasicArrayList.BasicArrayList)
getGenericProfileDataWorkerTypeVector_impl this = do
        pure ((jget (this).vector))


add :: (JavaObjectClass this_) => this_ -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GenericProfile))) () a1

add_super :: (JavaObjectClass this_) => this_ -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GenericProfile)) a1

add_impl :: GenericProfile -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
add_impl this genericProfileDataWorkerType = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).vector)) genericProfileDataWorkerType))) $ do
            Control.Monad.void (jio (BasicArrayList.add ((jget (this).vector)) genericProfileDataWorkerType))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: GenericProfile))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: GenericProfile)) a1

remove_impl :: GenericProfile -> GenericProfileDataWorkerType.GenericProfileDataWorkerType -> IO (())
remove_impl this genericProfileDataWorkerType = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).vector)) genericProfileDataWorkerType)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfile))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfile)) a1

toXmlNode_impl :: GenericProfile -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createTextNode document (jget GenericProfileData.nAME) (jget (this).name))
        size <- (BasicArrayList.size ((jget (this).vector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let genericProfileDataWorkerType = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: GenericProfileDataWorkerType.GenericProfileDataWorkerType)
            Control.Monad.void (Node.appendChild node (jio (GenericProfileDataWorkerType.toXmlNode genericProfileDataWorkerType document)))
        pure (node)


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericProfile))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericProfile))

getName_impl :: GenericProfile -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GenericProfile))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GenericProfile)) a1

setName_impl :: GenericProfile -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


getGenericProfileActions :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions object_ = jmethod object_ "getGenericProfileActions" (\() -> (getGenericProfileActions_impl (javaCast object_ :: GenericProfile))) ()

getGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_super object_ = (getGenericProfileActions_impl (javaCast object_ :: GenericProfile))

getGenericProfileActions_impl :: GenericProfile -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_impl this = do
        pure ((jget (this).genericProfileActions))


setGenericProfileActions :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions object_ a1 = jmethod object_ "setGenericProfileActions" (\() -> (setGenericProfileActions_impl (javaCast object_ :: GenericProfile))) () a1

setGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_super object_ a1 = (setGenericProfileActions_impl (javaCast object_ :: GenericProfile)) a1

setGenericProfileActions_impl :: GenericProfile -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_impl this genericProfileActions = do
        jset (this).genericProfileActions (genericProfileActions)
        pure ()


