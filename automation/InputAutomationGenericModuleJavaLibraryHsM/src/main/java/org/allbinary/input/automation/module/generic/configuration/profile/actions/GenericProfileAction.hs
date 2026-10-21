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
module GenericProfileAction where

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
import qualified GenericProfileActionJPanel -- same package or java.lang
import qualified GenericProfileActionData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified GenericProfileActionScript -- org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data GenericProfileAction = GenericProfileAction
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , name :: IORef (String)
    , genericProfileActionScript :: IORef (GenericProfileActionScript.GenericProfileActionScript)
    , genericProfileActionJPanel :: IORef (GenericProfileActionJPanel.GenericProfileActionJPanel)
    }

instance JavaNull GenericProfileAction where
    javaNull = javaNullRecord "GenericProfileAction"

instance JavaEquals GenericProfileAction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileAction where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileAction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfileAction
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    name <- newIORef ""
    genericProfileActionScript <- newIORef javaNull
    genericProfileActionJPanel <- newIORef javaNull
    let this = GenericProfileAction header_ logUtil name genericProfileActionScript genericProfileActionJPanel
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "getGenericProfileActionScript" (\() -> getGenericProfileActionScript_impl this)
    jregisterMethod header_ "setGenericProfileActionScript" (\() -> setGenericProfileActionScript_impl this)
    pure this

initFields_ :: GenericProfileAction -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.name (javaNull)
    jset this.genericProfileActionScript (javaNull)
    jset this.genericProfileActionJPanel (javaNull)
    pure ()

new_2 :: GenericProfileActionJPanel.GenericProfileActionJPanel -> Node.Node -> IO GenericProfileAction
new_2 genericProfileActionJPanel node = do
    this <- newRecord_
    init_2 this genericProfileActionJPanel node
    pure this

init_2 :: GenericProfileAction -> GenericProfileActionJPanel.GenericProfileActionJPanel -> Node.Node -> IO ()
init_2 this genericProfileActionJPanel node = do
        initFields_ this
        actionNameNode <- (DomSearchHelper.getNode (jget GenericProfileActionData.nAME) (jio (Node.getChildNodes node)))
        if (actionNameNode /= javaNull) then do
            assignedValue <- (DomNodeHelper.getTextNodeValue actionNameNode)
            jset (this).name (assignedValue)
        else do
            javaThrow ((JavaException "Exception" "Profile Action Name Node Null"))
        Control.Monad.void (GenericProfileAction.setGenericProfileActionScript this (jio (GenericProfileActionScript.new_2 (jget (this).genericProfileActionJPanel) node)))
        pure ()

new_1 :: String -> IO GenericProfileAction
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: GenericProfileAction -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        Control.Monad.void (GenericProfileAction.setGenericProfileActionScript this (jio (GenericProfileActionScript.new_1 (jget (this).genericProfileActionJPanel))))
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: GenericProfileAction))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: GenericProfileAction))

getName_impl :: GenericProfileAction -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: GenericProfileAction))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: GenericProfileAction)) a1

setName_impl :: GenericProfileAction -> String -> IO (())
setName_impl this name = do
        jset (this).name (name)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: GenericProfileAction))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: GenericProfileAction))

toHashMap_impl :: GenericProfileAction -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget GenericProfileActionData.nAME) (jget (this).name))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: GenericProfileAction))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: GenericProfileAction)) a1

toXmlNode_impl :: GenericProfileAction -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNodeWithValueNodes document (jget GenericProfileActionData.nAME) (jio (GenericProfileAction.toHashMap this)))
        Control.Monad.void (Node.appendChild node (jio (GenericProfileActionScript.toXmlNode ((jio (GenericProfileAction.getGenericProfileActionScript this))) document)))
        pure (node)


getGenericProfileActionScript :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript object_ = jmethod object_ "getGenericProfileActionScript" (\() -> (getGenericProfileActionScript_impl (javaCast object_ :: GenericProfileAction))) ()

getGenericProfileActionScript_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript_super object_ = (getGenericProfileActionScript_impl (javaCast object_ :: GenericProfileAction))

getGenericProfileActionScript_impl :: GenericProfileAction -> IO (GenericProfileActionScript.GenericProfileActionScript)
getGenericProfileActionScript_impl this = do
        pure ((jget (this).genericProfileActionScript))


setGenericProfileActionScript :: (JavaObjectClass this_) => this_ -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript object_ a1 = jmethod object_ "setGenericProfileActionScript" (\() -> (setGenericProfileActionScript_impl (javaCast object_ :: GenericProfileAction))) () a1

setGenericProfileActionScript_super :: (JavaObjectClass this_) => this_ -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript_super object_ a1 = (setGenericProfileActionScript_impl (javaCast object_ :: GenericProfileAction)) a1

setGenericProfileActionScript_impl :: GenericProfileAction -> GenericProfileActionScript.GenericProfileActionScript -> IO (())
setGenericProfileActionScript_impl this genericProfileActionScript = do
        jset (this).genericProfileActionScript (genericProfileActionScript)
        pure ()


