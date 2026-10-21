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
-- package org.allbinary.input.automation.actions.script.condition
module AlwaysActionScriptCondition (module AlwaysActionScriptCondition, module BasicProfileActionScriptCondition) where

import BasicProfileActionScriptCondition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isIsOn, isIsOn_super, isIsOn_impl, setIsOn, setIsOn_super, setIsOn_impl, showDialog, showDialog_super, showDialog_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, log, log_super, log_impl, logUtil, alwaysActionScriptConditionJPanel, isOn, nAME)
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
import qualified AlwaysActionScriptConditionJPanel -- same package or java.lang
import qualified AlwaysActionScriptConditionData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified BasicProfileActionScriptCondition
import qualified AlwaysActionScriptConditionInterface

-- implements AlwaysActionScriptConditionInterface
data AlwaysActionScriptCondition = AlwaysActionScriptCondition
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptCondition.BasicProfileActionScriptCondition
    , logUtil :: IORef (LogUtil.LogUtil)
    , alwaysActionScriptConditionJPanel :: IORef (AlwaysActionScriptConditionJPanel.AlwaysActionScriptConditionJPanel)
    , isOn :: IORef (Bool)
    }

instance JavaNull AlwaysActionScriptCondition where
    javaNull = javaNullRecord "AlwaysActionScriptCondition"

instance JavaEquals AlwaysActionScriptCondition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AlwaysActionScriptCondition where
    (==) = jrecordEquals

instance JavaObjectClass AlwaysActionScriptCondition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Always On/Off"

newRecord_ :: IO AlwaysActionScriptCondition
newRecord_ = do
    base <- BasicProfileActionScriptCondition.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    alwaysActionScriptConditionJPanel <- newIORef javaNull
    isOn <- newIORef False
    let this = AlwaysActionScriptCondition header_ base logUtil alwaysActionScriptConditionJPanel isOn
    jregisterLevel header_ this
    AlwaysActionScriptConditionInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isIsOn" (\() -> isIsOn_impl this)
    jregisterMethod header_ "setIsOn" (\() -> setIsOn_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "shouldProcess" (\() -> shouldProcess_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: AlwaysActionScriptCondition -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.alwaysActionScriptConditionJPanel (javaNull)
    jset this.isOn (False)
    pure ()

new_1 :: Node.Node -> IO AlwaysActionScriptCondition
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: AlwaysActionScriptCondition -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptCondition.init_2 this.base (AlwaysActionScriptCondition.nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        actionNode <- (DomSearchHelper.getNode (jget AlwaysActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget AlwaysActionScriptConditionData.iS_ON))) == 0) then do
                    booleanString <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (AlwaysActionScriptCondition.setIsOn this (booleanString))
                else do
                    javaThrow ((JavaException "Exception" "Action Script Condition Unknown Node"))
        else do
            javaThrow ((JavaException "Exception" "Action Script Condition Node Null"))
        Control.Monad.void (AlwaysActionScriptCondition.init this)
        pure ()

new_ :: IO AlwaysActionScriptCondition
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AlwaysActionScriptCondition -> IO ()
init_ this = do
        BasicProfileActionScriptCondition.init_1 this.base (AlwaysActionScriptCondition.nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AlwaysActionScriptCondition.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AlwaysActionScriptCondition))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AlwaysActionScriptCondition))

init_impl :: AlwaysActionScriptCondition -> IO (())
init_impl this = do
        assignedValue <- (AlwaysActionScriptConditionJPanel.new_1 this)
        jset (this).alwaysActionScriptConditionJPanel (assignedValue)
        pure ()


isIsOn :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsOn object_ = jmethod object_ "isIsOn" (\() -> (isIsOn_impl (javaCast object_ :: AlwaysActionScriptCondition))) ()

isIsOn_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIsOn_super object_ = (isIsOn_impl (javaCast object_ :: AlwaysActionScriptCondition))

isIsOn_impl :: AlwaysActionScriptCondition -> IO (Bool)
isIsOn_impl this = do
        pure ((jget (this).isOn))


setIsOn :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsOn object_ a1 = jmethod object_ "setIsOn" (\() -> (setIsOn_impl (javaCast object_ :: AlwaysActionScriptCondition))) () a1

setIsOn_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setIsOn_super object_ a1 = (setIsOn_impl (javaCast object_ :: AlwaysActionScriptCondition)) a1

setIsOn_impl :: AlwaysActionScriptCondition -> Bool -> IO (())
setIsOn_impl this isOn = do
        jset (this).isOn (isOn)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: AlwaysActionScriptCondition))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: AlwaysActionScriptCondition))

showDialog_impl :: AlwaysActionScriptCondition -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (AlwaysActionScriptConditionJPanel.getAlwaysActionJDialog ((jget (this).alwaysActionScriptConditionJPanel))))) True)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: AlwaysActionScriptCondition))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: AlwaysActionScriptCondition))

toHashMap_impl :: AlwaysActionScriptCondition -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget AlwaysActionScriptConditionData.iS_ON) (javaToString (jio (AlwaysActionScriptCondition.isIsOn this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: AlwaysActionScriptCondition))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: AlwaysActionScriptCondition)) a1

toXmlNode_impl :: AlwaysActionScriptCondition -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptCondition.toXmlNode_super this.base document)
        Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNodeWithValueNodes document (jget AlwaysActionScriptConditionData.nAME) (jio (AlwaysActionScriptCondition.toHashMap this)))))
        pure (node)


-- throws Exception
shouldProcess :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess object_ a1 = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: AlwaysActionScriptCondition))) () a1

shouldProcess_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess_super object_ a1 = (shouldProcess_impl (javaCast object_ :: AlwaysActionScriptCondition)) a1

shouldProcess_impl :: AlwaysActionScriptCondition -> Int64 -> IO (Bool)
shouldProcess_impl this frame = do
    javaCatchReturn $ do
        when (jio (AlwaysActionScriptCondition.isIsOn this)) $ do
            javaReturn =<< (BasicProfileActionScriptCondition.shouldProcess_super this.base frame)
        pure (False)


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: AlwaysActionScriptCondition))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: AlwaysActionScriptCondition))

log_impl :: AlwaysActionScriptCondition -> IO (())
log_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Is On: " ++ javaToString (jio (AlwaysActionScriptCondition.isIsOn this))) this "log")
        pure ()


