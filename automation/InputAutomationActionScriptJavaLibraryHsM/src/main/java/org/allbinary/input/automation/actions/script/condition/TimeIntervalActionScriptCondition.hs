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
module TimeIntervalActionScriptCondition (module TimeIntervalActionScriptCondition, module BasicProfileActionScriptCondition) where

import BasicProfileActionScriptCondition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, showDialog, showDialog_super, showDialog_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, log, log_super, log_impl, getTimeDelayHelper, getTimeDelayHelper_super, getTimeDelayHelper_impl, setTimeDelayHelper, setTimeDelayHelper_super, setTimeDelayHelper_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, logUtil, timeIntervalActionScriptConditionJPanel, timeHelper, nAME)
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
import qualified TimeIntervalActionScriptConditionJPanel -- same package or java.lang
import qualified TimeIntervalActionScriptConditionData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified BasicProfileActionScriptCondition
import qualified TimeIntervalActionScriptConditionInterface

-- implements TimeIntervalActionScriptConditionInterface
data TimeIntervalActionScriptCondition = TimeIntervalActionScriptCondition
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptCondition.BasicProfileActionScriptCondition
    , logUtil :: IORef (LogUtil.LogUtil)
    , timeIntervalActionScriptConditionJPanel :: IORef (TimeIntervalActionScriptConditionJPanel.TimeIntervalActionScriptConditionJPanel)
    , timeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull TimeIntervalActionScriptCondition where
    javaNull = javaNullRecord "TimeIntervalActionScriptCondition"

instance JavaEquals TimeIntervalActionScriptCondition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimeIntervalActionScriptCondition where
    (==) = jrecordEquals

instance JavaObjectClass TimeIntervalActionScriptCondition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Time Interval"

newRecord_ :: IO TimeIntervalActionScriptCondition
newRecord_ = do
    base <- BasicProfileActionScriptCondition.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    timeIntervalActionScriptConditionJPanel <- newIORef javaNull
    timeHelper <- newIORef javaNull
    let this = TimeIntervalActionScriptCondition header_ base logUtil timeIntervalActionScriptConditionJPanel timeHelper
    jregisterLevel header_ this
    TimeIntervalActionScriptConditionInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "getTimeDelayHelper" (\() -> getTimeDelayHelper_impl this)
    jregisterMethod header_ "setTimeDelayHelper" (\() -> setTimeDelayHelper_impl this)
    jregisterMethod header_ "shouldProcess" (\() -> shouldProcess_impl this)
    pure this

initFields_ :: TimeIntervalActionScriptCondition -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.timeIntervalActionScriptConditionJPanel (javaNull)
    jset this.timeHelper (javaNull)
    pure ()

new_1 :: Node.Node -> IO TimeIntervalActionScriptCondition
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: TimeIntervalActionScriptCondition -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptCondition.init_2 this.base (TimeIntervalActionScriptCondition.nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        actionNode <- (DomSearchHelper.getNode (jget TimeIntervalActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget TimeIntervalActionScriptConditionData.tIME))) == 0) then do
                    interval <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (TimeIntervalActionScriptCondition.setTimeDelayHelper this (jio (TimeDelayHelper.new_1 (javaToString interval))))
                else do
                    javaThrow ((JavaException "Exception" "Time Interval Action Script Condition Unknown Node"))
        else do
            javaThrow ((JavaException "Exception" "Time Interval Action Script Condition Node Null"))
        Control.Monad.void (TimeIntervalActionScriptCondition.init this)
        pure ()

new_ :: IO TimeIntervalActionScriptCondition
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TimeIntervalActionScriptCondition -> IO ()
init_ this = do
        BasicProfileActionScriptCondition.init_1 this.base (TimeIntervalActionScriptCondition.nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TimeIntervalActionScriptCondition.setTimeDelayHelper this (jio (TimeDelayHelper.new_1 0)))
        Control.Monad.void (TimeIntervalActionScriptCondition.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: TimeIntervalActionScriptCondition))

init_impl :: TimeIntervalActionScriptCondition -> IO (())
init_impl this = do
        assignedValue <- (TimeIntervalActionScriptConditionJPanel.new_1 this)
        jset (this).timeIntervalActionScriptConditionJPanel (assignedValue)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: TimeIntervalActionScriptCondition))

showDialog_impl :: TimeIntervalActionScriptCondition -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (TimeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog ((jget (this).timeIntervalActionScriptConditionJPanel))))) True)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: TimeIntervalActionScriptCondition))

toHashMap_impl :: TimeIntervalActionScriptCondition -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget TimeIntervalActionScriptConditionData.tIME) (javaToString (jget ((jget (this).timeHelper)).delay)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: TimeIntervalActionScriptCondition)) a1

toXmlNode_impl :: TimeIntervalActionScriptCondition -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptCondition.toXmlNode_super this.base document)
        Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNodeWithValueNodes document (jget TimeIntervalActionScriptConditionData.nAME) (jio (TimeIntervalActionScriptCondition.toHashMap this)))))
        pure (node)


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: TimeIntervalActionScriptCondition))

log_impl :: TimeIntervalActionScriptCondition -> IO (())
log_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Time Interval: " ++ javaToString (jget ((jget (this).timeHelper)).delay)) this "log")
        pure ()


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptCondition))

getTimeDelayHelper_impl :: TimeIntervalActionScriptCondition -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = do
        pure ((jget (this).timeHelper))


setTimeDelayHelper :: (JavaObjectClass this_) => this_ -> TimeDelayHelper.TimeDelayHelper -> IO (())
setTimeDelayHelper object_ a1 = jmethod object_ "setTimeDelayHelper" (\() -> (setTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) () a1

setTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> TimeDelayHelper.TimeDelayHelper -> IO (())
setTimeDelayHelper_super object_ a1 = (setTimeDelayHelper_impl (javaCast object_ :: TimeIntervalActionScriptCondition)) a1

setTimeDelayHelper_impl :: TimeIntervalActionScriptCondition -> TimeDelayHelper.TimeDelayHelper -> IO (())
setTimeDelayHelper_impl this timeHelper = do
        jset (this).timeHelper (timeHelper)
        pure ()


-- throws Exception
shouldProcess :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess object_ a1 = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: TimeIntervalActionScriptCondition))) () a1

shouldProcess_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess_super object_ a1 = (shouldProcess_impl (javaCast object_ :: TimeIntervalActionScriptCondition)) a1

shouldProcess_impl :: TimeIntervalActionScriptCondition -> Int64 -> IO (Bool)
shouldProcess_impl this frame = do
    javaCatchReturn $ do
        timeHelper <- (TimeIntervalActionScriptCondition.getTimeDelayHelper this)
        when (jio (TimeDelayHelper.isTimeTNT timeHelper)) $ do
            Control.Monad.void (TimeDelayHelper.setStartTimeTNT timeHelper)
            javaReturn =<< (BasicProfileActionScriptCondition.shouldProcess_super this.base frame)
        pure (False)


