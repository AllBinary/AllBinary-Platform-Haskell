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
-- package org.allbinary.input.automation.actions.script.condition.processors.input
module BasicProfileActionScriptInput (module BasicProfileActionScriptInput, module BasicProfileActionScriptProcessor) where

import BasicProfileActionScriptProcessor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTime, getTime_super, getTime_impl, setTime, setTime_super, setTime_impl, basicProfileActionScriptInput_toHashMap, basicProfileActionScriptInput_toHashMap_super, basicProfileActionScriptInput_toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, setInputRobotInterface, setInputRobotInterface_super, setInputRobotInterface_impl, getInputRobotInterface, getInputRobotInterface_super, getInputRobotInterface_impl, toString, toString_super, toString_impl, logUtil, inputRobotInterface, time)
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
import qualified GenericProfileActionScriptInputData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Iterator -- java.util.Iterator
import qualified Set -- java.util.Set
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified BasicProfileActionScriptProcessor -- org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ProfileActionScriptInputInterface

-- implements ProfileActionScriptInputInterface
data BasicProfileActionScriptInput = BasicProfileActionScriptInput
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptProcessor.BasicProfileActionScriptProcessor
    , logUtil :: IORef (LogUtil.LogUtil)
    , inputRobotInterface :: IORef (InputRobotInterface.InputRobotInterface)
    , time :: IORef (Int)
    }

instance JavaNull BasicProfileActionScriptInput where
    javaNull = javaNullRecord "BasicProfileActionScriptInput"

instance JavaEquals BasicProfileActionScriptInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicProfileActionScriptInput where
    (==) = jrecordEquals

instance JavaObjectClass BasicProfileActionScriptInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicProfileActionScriptInput
newRecord_ = do
    base <- BasicProfileActionScriptProcessor.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    inputRobotInterface <- newIORef javaNull
    time <- newIORef 0
    let this = BasicProfileActionScriptInput header_ base logUtil inputRobotInterface time
    jregisterLevel header_ this
    ProfileActionScriptInputInterface.registerInterface_ header_
    jregisterMethod header_ "getTime" (\() -> getTime_impl this)
    jregisterMethod header_ "setTime" (\() -> setTime_impl this)
    jregisterMethod header_ "basicProfileActionScriptInput_toHashMap" (\() -> basicProfileActionScriptInput_toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "setInputRobotInterface" (\() -> setInputRobotInterface_impl this)
    jregisterMethod header_ "getInputRobotInterface" (\() -> getInputRobotInterface_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BasicProfileActionScriptInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.inputRobotInterface (javaNull)
    jset this.time (0)
    pure ()

new_2 :: String -> Node.Node -> IO BasicProfileActionScriptInput
new_2 label node = do
    this <- newRecord_
    init_2 this label node
    pure this

init_2 :: BasicProfileActionScriptInput -> String -> Node.Node -> IO ()
init_2 this label node = do
        BasicProfileActionScriptProcessor.init_2 this.base (label) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.base.commonStrings)).sTART) ++ label) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        actionNode <- (DomSearchHelper.getNode (jget GenericProfileActionScriptInputData.tYPE) (jio (Node.getChildNodes node)))
        inputTypeString <- (DomNodeHelper.getTextNodeValue actionNode)
        timeNode <- (DomSearchHelper.getNodeNoThrow (jget GenericProfileActionScriptInputData.dELAY) (jio (Node.getChildNodes node)))
        if (timeNode /= javaNull) then do
            delayString <- (DomNodeHelper.getTextNodeValue timeNode)
            Control.Monad.void (BasicProfileActionScriptInput.setTime this (javaToString delayString))
        else do
            Control.Monad.void (BasicProfileActionScriptInput.setTime this 0)
        Control.Monad.void (BasicProfileActionScriptInput.setInputRobotInterface this (javaCast (jio (InputRobotFactory.get_1 ((jio (InputRobotFactory.getInstance))) inputTypeString))))
        pure ()

new_1 :: String -> IO BasicProfileActionScriptInput
new_1 label = do
    this <- newRecord_
    init_1 this label
    pure this

init_1 :: BasicProfileActionScriptInput -> String -> IO ()
init_1 this label = do
        BasicProfileActionScriptProcessor.init_1 this.base (label)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jget (this).base.base.commonStrings)).sTART) ++ label) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
        inputRobotFactory <- (InputRobotFactory.getInstance)
        let hashtable = (javaCast (jio (InputRobotFactory.get inputRobotFactory)) :: ABHashtable.ABHashtable)
        set <- (ABHashtable.keySet hashtable)
        iterator <- (Set.iterator set)
        Control.Monad.void (BasicProfileActionScriptInput.setInputRobotInterface this (javaCast (jio (InputRobotFactory.get_1 inputRobotFactory (javaCast (jio (Iterator.next iterator)) :: String)))))
        Control.Monad.void (BasicProfileActionScriptInput.setTime this 0)
        pure ()


getTime :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime object_ = jmethod object_ "getTime" (\() -> (getTime_impl (javaCast object_ :: BasicProfileActionScriptInput))) ()

getTime_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTime_super object_ = (getTime_impl (javaCast object_ :: BasicProfileActionScriptInput))

getTime_impl :: BasicProfileActionScriptInput -> IO (Int)
getTime_impl this = do
        pure ((jget (this).time))


setTime :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime object_ a1 = jmethod object_ "setTime" (\() -> (setTime_impl (javaCast object_ :: BasicProfileActionScriptInput))) () a1

setTime_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setTime_super object_ a1 = (setTime_impl (javaCast object_ :: BasicProfileActionScriptInput)) a1

setTime_impl :: BasicProfileActionScriptInput -> Int -> IO (())
setTime_impl this time = do
        jset (this).time (time)
        pure ()


basicProfileActionScriptInput_toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
basicProfileActionScriptInput_toHashMap object_ = jmethod object_ "basicProfileActionScriptInput_toHashMap" (\() -> (basicProfileActionScriptInput_toHashMap_impl (javaCast object_ :: BasicProfileActionScriptInput))) ()

basicProfileActionScriptInput_toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
basicProfileActionScriptInput_toHashMap_super object_ = (basicProfileActionScriptInput_toHashMap_impl (javaCast object_ :: BasicProfileActionScriptInput))

basicProfileActionScriptInput_toHashMap_impl :: BasicProfileActionScriptInput -> IO (HashMap.HashMap)
basicProfileActionScriptInput_toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget GenericProfileActionScriptInputData.tYPE) (jio (InputRobotInterface.getName ((jio (BasicProfileActionScriptInput.getInputRobotInterface this))))))
        Control.Monad.void (HashMap.put hashMap (jget GenericProfileActionScriptInputData.dELAY) (javaToString (jio (BasicProfileActionScriptInput.getTime this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptInput))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicProfileActionScriptInput)) a1

toXmlNode_impl :: BasicProfileActionScriptInput -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNodeWithValueNodes document (jget GenericProfileActionScriptInputData.nAME) (jio (BasicProfileActionScriptInput.basicProfileActionScriptInput_toHashMap this)))
        pure (node)


setInputRobotInterface :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface object_ a1 = jmethod object_ "setInputRobotInterface" (\() -> (setInputRobotInterface_impl (javaCast object_ :: BasicProfileActionScriptInput))) () a1

setInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_super object_ a1 = (setInputRobotInterface_impl (javaCast object_ :: BasicProfileActionScriptInput)) a1

setInputRobotInterface_impl :: BasicProfileActionScriptInput -> InputRobotInterface.InputRobotInterface -> IO (())
setInputRobotInterface_impl this inputRobotInterface = do
        jset (this).inputRobotInterface (inputRobotInterface)
        pure ()


getInputRobotInterface :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface object_ = jmethod object_ "getInputRobotInterface" (\() -> (getInputRobotInterface_impl (javaCast object_ :: BasicProfileActionScriptInput))) ()

getInputRobotInterface_super :: (JavaObjectClass this_) => this_ -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_super object_ = (getInputRobotInterface_impl (javaCast object_ :: BasicProfileActionScriptInput))

getInputRobotInterface_impl :: BasicProfileActionScriptInput -> IO (InputRobotInterface.InputRobotInterface)
getInputRobotInterface_impl this = do
        pure ((jget (this).inputRobotInterface))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicProfileActionScriptInput))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicProfileActionScriptInput))

toString_impl :: BasicProfileActionScriptInput -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicProfileActionScriptProcessor.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer " Input Type: ")
        if ((jio (BasicProfileActionScriptInput.getInputRobotInterface this)) /= javaNull) then do
            Control.Monad.void (StringMaker.append stringBuffer (jio (InputRobotInterface.getName ((jio (BasicProfileActionScriptInput.getInputRobotInterface this))))))
        else do
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (StringUtil.getInstance))).nULL_STRING))
        Control.Monad.void (StringMaker.append stringBuffer " Time: ")
        Control.Monad.void (StringMaker.appendlong stringBuffer (Prelude.fromIntegral (jio (BasicProfileActionScriptInput.getTime this))))
        (StringMaker.toString stringBuffer)


