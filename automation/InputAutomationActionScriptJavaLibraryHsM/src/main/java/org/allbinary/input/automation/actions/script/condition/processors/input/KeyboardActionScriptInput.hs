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
module KeyboardActionScriptInput (module KeyboardActionScriptInput, module BasicProfileActionScriptInput) where

import BasicProfileActionScriptInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getDelayBetweenKeys, getDelayBetweenKeys_super, getDelayBetweenKeys_impl, setDelayBetweenKeys, setDelayBetweenKeys_super, setDelayBetweenKeys_impl, isPress, isPress_super, isPress_impl, setPress, setPress_super, setPress_impl, isRelease, isRelease_super, isRelease_impl, setRelease, setRelease_super, setRelease_impl, isNormal, isNormal_super, isNormal_impl, setNormal, setNormal_super, setNormal_impl, getKeyArray, getKeyArray_super, getKeyArray_impl, setKeyArray, setKeyArray_super, setKeyArray_impl, showDialog, showDialog_super, showDialog_impl, getText, getText_super, getText_impl, setText, setText_super, setText_impl, getText_1, getText_1_super, getText_1_impl, getText, integerArrayValue, integerArrayValue_super, integerArrayValue_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, process, process_super, process_impl, log, log_super, log_impl, toString, toString_super, toString_impl, logUtil, keyArray, nAME, keyboardActionScriptInputJPanel, press, release, delayBetweenKeys)
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
import qualified KeyboardActionScriptInputJPanel -- same package or java.lang
import qualified KeyboardActionScriptInputData -- same package or java.lang
import qualified KeyboardInputAutomationProcessor -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified KeyEvent -- java.awt.event.KeyEvent
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified KeySingletonFactory -- org.allbinary.input.KeySingletonFactory
import qualified KeyUtil -- org.allbinary.input.KeyUtil
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified BasicProfileActionScriptInput
import qualified KeyboardActionScriptInputInterface

-- implements KeyboardActionScriptInputInterface
data KeyboardActionScriptInput = KeyboardActionScriptInput
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptInput.BasicProfileActionScriptInput
    , logUtil :: IORef (LogUtil.LogUtil)
    , keyArray :: IORef (JavaArray (Int))
    , keyboardActionScriptInputJPanel :: IORef (KeyboardActionScriptInputJPanel.KeyboardActionScriptInputJPanel)
    , press :: IORef (Bool)
    , release :: IORef (Bool)
    , delayBetweenKeys :: IORef (Int)
    }

instance JavaNull KeyboardActionScriptInput where
    javaNull = javaNullRecord "KeyboardActionScriptInput"

instance JavaEquals KeyboardActionScriptInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyboardActionScriptInput where
    (==) = jrecordEquals

instance JavaObjectClass KeyboardActionScriptInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Keyboard"

newRecord_ :: IO KeyboardActionScriptInput
newRecord_ = do
    base <- BasicProfileActionScriptInput.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    keyArray <- newIORef javaNull
    keyboardActionScriptInputJPanel <- newIORef javaNull
    press <- newIORef False
    release <- newIORef False
    delayBetweenKeys <- newIORef 0
    let this = KeyboardActionScriptInput header_ base logUtil keyArray keyboardActionScriptInputJPanel press release delayBetweenKeys
    jregisterLevel header_ this
    KeyboardActionScriptInputInterface.registerInterface_ header_
    jregisterMethod header_ "getDelayBetweenKeys" (\() -> getDelayBetweenKeys_impl this)
    jregisterMethod header_ "setDelayBetweenKeys" (\() -> setDelayBetweenKeys_impl this)
    jregisterMethod header_ "isPress" (\() -> isPress_impl this)
    jregisterMethod header_ "setPress" (\() -> setPress_impl this)
    jregisterMethod header_ "isRelease" (\() -> isRelease_impl this)
    jregisterMethod header_ "setRelease" (\() -> setRelease_impl this)
    jregisterMethod header_ "isNormal" (\() -> isNormal_impl this)
    jregisterMethod header_ "setNormal" (\() -> setNormal_impl this)
    jregisterMethod header_ "getKeyArray" (\() -> getKeyArray_impl this)
    jregisterMethod header_ "setKeyArray" (\() -> setKeyArray_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "integerArrayValue" (\() -> integerArrayValue_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: KeyboardActionScriptInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.keyArray ((jarrayFromList [(jio (KeySingletonFactory.getInstance (KeyEvent.vK_0)))]))
    jset this.keyboardActionScriptInputJPanel (javaNull)
    jset this.press (False)
    jset this.release (False)
    jset this.delayBetweenKeys (0)
    pure ()

new_1 :: Node.Node -> IO KeyboardActionScriptInput
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: KeyboardActionScriptInput -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptInput.init_2 this.base (nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).cONSTRUCTOR))
        actionNode <- (DomSearchHelper.getNode (jget KeyboardActionScriptInputData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if (jio (Node.startsWith ((jio (Node.getNodeName childNode))) (jget KeyboardActionScriptInputData.kEY))) then do
                    keyString <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (BasicArrayList.add vector (javaToString keyString))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget KeyboardActionScriptInputData.dELAY_BETWEEN_KEYS))) == 0) then do
                    time <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (KeyboardActionScriptInput.setDelayBetweenKeys this (javaToString time))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget KeyboardActionScriptInputData.pRESS))) == 0) then do
                    value <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (KeyboardActionScriptInput.setPress this (javaToString value))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget KeyboardActionScriptInputData.rELEASE))) == 0) then do
                    value <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (KeyboardActionScriptInput.setRelease this (javaToString value))
                else do
                    javaThrow ((JavaException "Exception" "Action Script Input Unknown Node"))
            Control.Monad.void (KeyboardActionScriptInput.setKeyArray this (javaCast (jio (BasicArrayList.toArrayType vector (jnewArray ((jio (BasicArrayList.size vector))) javaNull))) :: JavaArray (Int)))
        else do
            javaThrow ((JavaException "Exception" "Action Script Input Node Null"))
        Control.Monad.void (BasicProfileActionScriptInput.setAllowsChildren this False)
        when ((Prelude.not (jio (KeyboardActionScriptInput.isPress this))) && (Prelude.not (jio (KeyboardActionScriptInput.isRelease this)))) $ do
            Control.Monad.void (KeyboardActionScriptInput.setNormal this)
        assignedValue <- (KeyboardActionScriptInputJPanel.new_1 this)
        jset (this).keyboardActionScriptInputJPanel (assignedValue)
        pure ()

new_ :: IO KeyboardActionScriptInput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyboardActionScriptInput -> IO ()
init_ this = do
        BasicProfileActionScriptInput.init_1 this.base (nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        when ((Prelude.not (jio (KeyboardActionScriptInput.isPress this))) && (Prelude.not (jio (KeyboardActionScriptInput.isRelease this)))) $ do
            Control.Monad.void (KeyboardActionScriptInput.setNormal this)
        Control.Monad.void (BasicProfileActionScriptInput.setAllowsChildren this False)
        Control.Monad.void (BasicProfileActionScriptInput.setTime this 120)
        assignedValue <- (KeyboardActionScriptInputJPanel.new_1 this)
        jset (this).keyboardActionScriptInputJPanel (assignedValue)
        pure ()


getDelayBetweenKeys :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelayBetweenKeys object_ = jmethod object_ "getDelayBetweenKeys" (\() -> (getDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

getDelayBetweenKeys_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDelayBetweenKeys_super object_ = (getDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInput))

getDelayBetweenKeys_impl :: KeyboardActionScriptInput -> IO (Int)
getDelayBetweenKeys_impl this = do
        pure ((jget (this).delayBetweenKeys))


setDelayBetweenKeys :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDelayBetweenKeys object_ a1 = jmethod object_ "setDelayBetweenKeys" (\() -> (setDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

setDelayBetweenKeys_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDelayBetweenKeys_super object_ a1 = (setDelayBetweenKeys_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

setDelayBetweenKeys_impl :: KeyboardActionScriptInput -> Int -> IO (())
setDelayBetweenKeys_impl this delayBetweenKeys = do
        jset (this).delayBetweenKeys (delayBetweenKeys)
        pure ()


isPress :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPress object_ = jmethod object_ "isPress" (\() -> (isPress_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

isPress_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPress_super object_ = (isPress_impl (javaCast object_ :: KeyboardActionScriptInput))

isPress_impl :: KeyboardActionScriptInput -> IO (Bool)
isPress_impl this = do
        pure ((jget (this).press))


setPress :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPress object_ a1 = jmethod object_ "setPress" (\() -> (setPress_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

setPress_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setPress_super object_ a1 = (setPress_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

setPress_impl :: KeyboardActionScriptInput -> Bool -> IO (())
setPress_impl this press = do
        jset (this).press (press)
        pure ()


isRelease :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRelease object_ = jmethod object_ "isRelease" (\() -> (isRelease_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

isRelease_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isRelease_super object_ = (isRelease_impl (javaCast object_ :: KeyboardActionScriptInput))

isRelease_impl :: KeyboardActionScriptInput -> IO (Bool)
isRelease_impl this = do
        pure ((jget (this).release))


setRelease :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRelease object_ a1 = jmethod object_ "setRelease" (\() -> (setRelease_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

setRelease_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRelease_super object_ a1 = (setRelease_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

setRelease_impl :: KeyboardActionScriptInput -> Bool -> IO (())
setRelease_impl this release = do
        jset (this).release (release)
        pure ()


isNormal :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNormal object_ = jmethod object_ "isNormal" (\() -> (isNormal_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

isNormal_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isNormal_super object_ = (isNormal_impl (javaCast object_ :: KeyboardActionScriptInput))

isNormal_impl :: KeyboardActionScriptInput -> IO (Bool)
isNormal_impl this = do
        pure (((jio (KeyboardActionScriptInput.isRelease this)) && (jio (KeyboardActionScriptInput.isPress this))))


setNormal :: (JavaObjectClass this_) => this_ -> IO (())
setNormal object_ = jmethod object_ "setNormal" (\() -> (setNormal_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

setNormal_super :: (JavaObjectClass this_) => this_ -> IO (())
setNormal_super object_ = (setNormal_impl (javaCast object_ :: KeyboardActionScriptInput))

setNormal_impl :: KeyboardActionScriptInput -> IO (())
setNormal_impl this = do
        Control.Monad.void (KeyboardActionScriptInput.setPress this True)
        Control.Monad.void (KeyboardActionScriptInput.setRelease this True)
        pure ()


getKeyArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getKeyArray object_ = jmethod object_ "getKeyArray" (\() -> (getKeyArray_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

getKeyArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getKeyArray_super object_ = (getKeyArray_impl (javaCast object_ :: KeyboardActionScriptInput))

getKeyArray_impl :: KeyboardActionScriptInput -> IO (JavaArray (Int))
getKeyArray_impl this = do
        pure ((jget (this).keyArray))


setKeyArray :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setKeyArray object_ a1 = jmethod object_ "setKeyArray" (\() -> (setKeyArray_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

setKeyArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setKeyArray_super object_ a1 = (setKeyArray_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

setKeyArray_impl :: KeyboardActionScriptInput -> JavaArray (Int) -> IO (())
setKeyArray_impl this keyArray = do
        when (keyArray /= javaNull) $ do
            Control.Monad.void (jio (LogUtil.putF ((jget (this).logUtil)) ((jget ((jio (CommonLabels.getInstance))).sTART) + (jlength keyArray)) this "setKeyArray"))
        jset (this).keyArray (keyArray)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: KeyboardActionScriptInput))

showDialog_impl :: KeyboardActionScriptInput -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (KeyboardActionScriptInputJPanel.getKeyActionJDialog ((jget (this).keyboardActionScriptInputJPanel))))) True)
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: KeyboardActionScriptInput))

getText_impl :: KeyboardActionScriptInput -> IO (String)
getText_impl this = do
        (KeyboardActionScriptInput.getText_1 this (jio (KeyboardActionScriptInput.getKeyArray this)))


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

setText_impl :: KeyboardActionScriptInput -> String -> IO (())
setText_impl this text = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ text) this "setText")
        integerArray <- (KeyboardActionScriptInput.integerArrayValue this text)
        Control.Monad.void (KeyboardActionScriptInput.setKeyArray this integerArray)
        pure ()


getText_1 :: JavaArray (Int) -> IO (String)
getText_1 integerArray = do
        index <- newIORef (0)
        stringBuffer <- (StringMaker.new_)
        fix $ \loop -> when ((jget index) < (jlength integerArray)) $ javaIteration (loop) $ do
            let nextInteger = (jindex integerArray ((jget index)))
            if (jio (KeyUtil.isNormallyDisplayed nextInteger)) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (KeyEvent.getKeyText nextInteger)))
            else do
                Control.Monad.void (StringMaker.append stringBuffer (("&#" ++ javaToString nextInteger) ++ ";"))
            jset index ((jget index) + 1)
        (StringMaker.toString stringBuffer)


integerArrayValue :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int))
integerArrayValue object_ a1 = jmethod object_ "integerArrayValue" (\() -> (integerArrayValue_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

integerArrayValue_super :: (JavaObjectClass this_) => this_ -> String -> IO (JavaArray (Int))
integerArrayValue_super object_ a1 = (integerArrayValue_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

integerArrayValue_impl :: KeyboardActionScriptInput -> String -> IO (JavaArray (Int))
integerArrayValue_impl this text = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString (jget ((jio (CommonLabels.getInstance))).sTART) ++ text) this "integerArrayValue")
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < (Prelude.length text)) $ javaIteration (loop) $ do
            let aChar = (text Prelude.!! (jget index))
            when (aChar == '&') $ do
                when ((text Prelude.!! ((jget index) + 1)) == '#') $ do
                    let endIndex = (jstringIndexOf text ';' ((jget index) + 1))
                    when (endIndex /= (Prelude.negate 1)) $ do
                        let nextCharString = (Prelude.take ((endIndex) - (((jget index) + 2))) (Prelude.drop (((jget index) + 2)) text))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((javaToString (jget ((jio (CommonLabels.getInstance))).nEXT) ++ " Char String: ") ++ nextCharString) this "integerArrayValue")
                        Control.Monad.void (BasicArrayList.add vector (javaToString (Prelude.take (((Prelude.length nextCharString)) - ((jget index))) (Prelude.drop ((jget index)) nextCharString))))
                        jset index ((((jget index) + (Prelude.length nextCharString)) + 3))
                        throwIO JavaContinue
            Control.Monad.void (BasicArrayList.add vector (jio (ABHashtable.get ((jio (KeySingletonFactory.getHashtable))) (javaToString aChar))))
            jset index ((jget index) + 1)
        let integerArray = (javaCast (jio (BasicArrayList.toArrayType vector (jnewArray ((jio (BasicArrayList.size vector))) javaNull))) :: JavaArray (Int))
        pure (integerArray)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: KeyboardActionScriptInput))

toHashMap_impl :: KeyboardActionScriptInput -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        forM_ [0 .. (jlength (jio (KeyboardActionScriptInput.getKeyArray this))) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (HashMap.put hashMap ((jget KeyboardActionScriptInputData.kEY) + index) (javaToString (jindex ((jio (KeyboardActionScriptInput.getKeyArray this))) (index))))
        Control.Monad.void (HashMap.put hashMap (jget KeyboardActionScriptInputData.dELAY_BETWEEN_KEYS) (javaToString (jio (KeyboardActionScriptInput.getDelayBetweenKeys this))))
        Control.Monad.void (HashMap.put hashMap (jget KeyboardActionScriptInputData.pRESS) (javaToString (jio (KeyboardActionScriptInput.isPress this))))
        Control.Monad.void (HashMap.put hashMap (jget KeyboardActionScriptInputData.rELEASE) (javaToString (jio (KeyboardActionScriptInput.isRelease this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

toXmlNode_impl :: KeyboardActionScriptInput -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptInput.toXmlNode_super this.base document)
        Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNodeWithValueNodes document (jget KeyboardActionScriptInputData.nAME) (jio (KeyboardActionScriptInput.toHashMap this)))))
        pure (node)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: KeyboardActionScriptInput))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: KeyboardActionScriptInput)) a1

process_impl :: KeyboardActionScriptInput -> Int64 -> IO (())
process_impl this frame = do
        Control.Monad.void (KeyboardInputAutomationProcessor.process (javaCast this))
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: KeyboardActionScriptInput))

log_impl :: KeyboardActionScriptInput -> IO (())
log_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (KeyboardActionScriptInput.toString this)) this "log")
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: KeyboardActionScriptInput))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: KeyboardActionScriptInput))

toString_impl :: KeyboardActionScriptInput -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicProfileActionScriptInput.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer " Text: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (KeyboardActionScriptInput.getText this)))
        Control.Monad.void (StringMaker.append stringBuffer " isPress: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (KeyboardActionScriptInput.isPress this)))
        Control.Monad.void (StringMaker.append stringBuffer " isRelease: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (KeyboardActionScriptInput.isRelease this)))
        Control.Monad.void (StringMaker.append stringBuffer " Between Key Delay: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (KeyboardActionScriptInput.getDelayBetweenKeys this)))
        (StringMaker.toString stringBuffer)


