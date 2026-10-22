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
-- package org.allbinary.input.automation.module.actions.script.condition.processors.output
module ImageActionScriptOutput (module ImageActionScriptOutput, module BasicProfileActionScriptOutput) where

import BasicProfileActionScriptOutput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getActionScriptOutputJPanel, getActionScriptOutputJPanel_super, getActionScriptOutputJPanel_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, process, process_super, process_impl, showDialog, showDialog_super, showDialog_impl, isSaved, isSaved_super, isSaved_impl, setSaved, setSaved_super, setSaved_impl, isDisplay, isDisplay_super, isDisplay_impl, setDisplay, setDisplay_super, setDisplay_impl, future_toString, future_toString_super, future_toString_impl, log, log_super, log_impl, getImageTypes, getImageTypes_super, getImageTypes_impl, setImageTypes, setImageTypes_super, setImageTypes_impl, logUtil, nAME, saved, display, imageTypes, actionScriptOutputJPanel)
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
import qualified ImageTypes -- same package or java.lang
import qualified ImageActionScriptOutputJPanel -- same package or java.lang
import qualified ImageActionScriptOutputData -- same package or java.lang
import qualified ImageActionScriptOutputProcessor -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified BasicProfileActionScriptOutput
import qualified ImageActionScriptOutputInterface

-- implements ImageActionScriptOutputInterface
data ImageActionScriptOutput = ImageActionScriptOutput
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptOutput.BasicProfileActionScriptOutput
    , logUtil :: IORef (LogUtil.LogUtil)
    , saved :: IORef (Bool)
    , display :: IORef (Bool)
    , imageTypes :: IORef (ImageTypes.ImageTypes)
    , actionScriptOutputJPanel :: IORef (ImageActionScriptOutputJPanel.ImageActionScriptOutputJPanel)
    }

instance JavaNull ImageActionScriptOutput where
    javaNull = javaNullRecord "ImageActionScriptOutput"

instance JavaEquals ImageActionScriptOutput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageActionScriptOutput where
    (==) = jrecordEquals

instance JavaObjectClass ImageActionScriptOutput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "Captures"

newRecord_ :: IO ImageActionScriptOutput
newRecord_ = do
    base <- BasicProfileActionScriptOutput.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    saved <- newIORef False
    display <- newIORef False
    imageTypes <- newIORef javaNull
    actionScriptOutputJPanel <- newIORef javaNull
    let this = ImageActionScriptOutput header_ base logUtil saved display imageTypes actionScriptOutputJPanel
    jregisterLevel header_ this
    ImageActionScriptOutputInterface.registerInterface_ header_
    jregisterMethod header_ "getActionScriptOutputJPanel" (\() -> getActionScriptOutputJPanel_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "isSaved" (\() -> isSaved_impl this)
    jregisterMethod header_ "setSaved" (\() -> setSaved_impl this)
    jregisterMethod header_ "isDisplay" (\() -> isDisplay_impl this)
    jregisterMethod header_ "setDisplay" (\() -> setDisplay_impl this)
    jregisterMethod header_ "future_toString" (\() -> future_toString_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "getImageTypes" (\() -> getImageTypes_impl this)
    jregisterMethod header_ "setImageTypes" (\() -> setImageTypes_impl this)
    pure this

initFields_ :: ImageActionScriptOutput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.saved (False)
    jset this.display (False)
    jset this.imageTypes (javaNull)
    jset this.actionScriptOutputJPanel (javaNull)
    pure ()

new_1 :: Node.Node -> IO ImageActionScriptOutput
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: ImageActionScriptOutput -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptOutput.init_2 this.base (nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.commonStrings)).cONSTRUCTOR))
        actionNode <- (DomSearchHelper.getNode (jget ImageActionScriptOutputData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ImageActionScriptOutputData.sAVE))) == 0) then do
                    booleanString <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ImageActionScriptOutput.setSaved this (booleanString))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ImageActionScriptOutputData.dISPLAY))) == 0) then do
                    booleanString <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ImageActionScriptOutput.setSaved this (booleanString))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ImageActionScriptOutputData.tYPES))) == 0) then do
                    Control.Monad.void (ImageActionScriptOutput.setImageTypes this (jio (ImageTypes.new_1 childNode)))
                else do
                    javaThrow ((JavaException "Exception" "Action Script Output Unknown Node"))
        else do
            javaThrow ((JavaException "Exception" "Action Script Output Node Null"))
        Control.Monad.void (BasicProfileActionScriptOutput.setAllowsChildren this False)
        assignedValue <- (ImageActionScriptOutputJPanel.new_1 this)
        jset (this).actionScriptOutputJPanel (assignedValue)
        pure ()

new_ :: IO ImageActionScriptOutput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageActionScriptOutput -> IO ()
init_ this = do
        BasicProfileActionScriptOutput.init_1 this.base (nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageActionScriptOutput.setImageTypes this (jio (ImageTypes.new_)))
        Control.Monad.void (BasicProfileActionScriptOutput.setAllowsChildren this False)
        assignedValue <- (ImageActionScriptOutputJPanel.new_1 this)
        jset (this).actionScriptOutputJPanel (assignedValue)
        pure ()


getActionScriptOutputJPanel :: (JavaObjectClass this_) => this_ -> IO (ImageActionScriptOutputJPanel.ImageActionScriptOutputJPanel)
getActionScriptOutputJPanel object_ = jmethod object_ "getActionScriptOutputJPanel" (\() -> (getActionScriptOutputJPanel_impl (javaCast object_ :: ImageActionScriptOutput))) ()

getActionScriptOutputJPanel_super :: (JavaObjectClass this_) => this_ -> IO (ImageActionScriptOutputJPanel.ImageActionScriptOutputJPanel)
getActionScriptOutputJPanel_super object_ = (getActionScriptOutputJPanel_impl (javaCast object_ :: ImageActionScriptOutput))

getActionScriptOutputJPanel_impl :: ImageActionScriptOutput -> IO (ImageActionScriptOutputJPanel.ImageActionScriptOutputJPanel)
getActionScriptOutputJPanel_impl this = do
        pure ((jget (this).actionScriptOutputJPanel))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: ImageActionScriptOutput))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: ImageActionScriptOutput))

toHashMap_impl :: ImageActionScriptOutput -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ImageActionScriptOutputData.dISPLAY) (javaToString (jio (ImageActionScriptOutput.isDisplay this))))
        Control.Monad.void (HashMap.put hashMap (jget ImageActionScriptOutputData.sAVE) (javaToString (jio (ImageActionScriptOutput.isSaved this))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ImageActionScriptOutput))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ImageActionScriptOutput)) a1

toXmlNode_impl :: ImageActionScriptOutput -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptOutput.toXmlNode_super this.base document)
        newNode <- (ModDomHelper.createNodeWithValueNodes document (jget ImageActionScriptOutputData.nAME) (jio (ImageActionScriptOutput.toHashMap this)))
        Control.Monad.void (Node.appendChild newNode (jio (ImageTypes.toXmlNode ((jio (ImageActionScriptOutput.getImageTypes this))) document)))
        Control.Monad.void (Node.appendChild node newNode)
        pure (node)


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ImageActionScriptOutput))) () a1

process_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: ImageActionScriptOutput)) a1

process_impl :: ImageActionScriptOutput -> Int64 -> IO (())
process_impl this frame = do
        Control.Monad.void (ImageActionScriptOutputProcessor.process (javaCast this) frame)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: ImageActionScriptOutput))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: ImageActionScriptOutput))

showDialog_impl :: ImageActionScriptOutput -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (ImageActionScriptOutputJPanel.getCapturedImageActionJDialog ((jget (this).actionScriptOutputJPanel))))) True)
        pure ()


isSaved :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSaved object_ = jmethod object_ "isSaved" (\() -> (isSaved_impl (javaCast object_ :: ImageActionScriptOutput))) ()

isSaved_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSaved_super object_ = (isSaved_impl (javaCast object_ :: ImageActionScriptOutput))

isSaved_impl :: ImageActionScriptOutput -> IO (Bool)
isSaved_impl this = do
        pure ((jget (this).saved))


setSaved :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSaved object_ a1 = jmethod object_ "setSaved" (\() -> (setSaved_impl (javaCast object_ :: ImageActionScriptOutput))) () a1

setSaved_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setSaved_super object_ a1 = (setSaved_impl (javaCast object_ :: ImageActionScriptOutput)) a1

setSaved_impl :: ImageActionScriptOutput -> Bool -> IO (())
setSaved_impl this saved = do
        jset (this).saved (saved)
        pure ()


isDisplay :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisplay object_ = jmethod object_ "isDisplay" (\() -> (isDisplay_impl (javaCast object_ :: ImageActionScriptOutput))) ()

isDisplay_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisplay_super object_ = (isDisplay_impl (javaCast object_ :: ImageActionScriptOutput))

isDisplay_impl :: ImageActionScriptOutput -> IO (Bool)
isDisplay_impl this = do
        pure ((jget (this).display))


setDisplay :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDisplay object_ a1 = jmethod object_ "setDisplay" (\() -> (setDisplay_impl (javaCast object_ :: ImageActionScriptOutput))) () a1

setDisplay_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDisplay_super object_ a1 = (setDisplay_impl (javaCast object_ :: ImageActionScriptOutput)) a1

setDisplay_impl :: ImageActionScriptOutput -> Bool -> IO (())
setDisplay_impl this display = do
        jset (this).display (display)
        pure ()


future_toString :: (JavaObjectClass this_) => this_ -> IO (String)
future_toString object_ = jmethod object_ "future_toString" (\() -> (future_toString_impl (javaCast object_ :: ImageActionScriptOutput))) ()

future_toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
future_toString_super object_ = (future_toString_impl (javaCast object_ :: ImageActionScriptOutput))

future_toString_impl :: ImageActionScriptOutput -> IO (String)
future_toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer " Is Save: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (ImageActionScriptOutput.isSaved this)))
        Control.Monad.void (StringMaker.append stringBuffer " Is Display: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (ImageActionScriptOutput.isDisplay this)))
        Control.Monad.void (StringMaker.append stringBuffer " ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (ImageTypes.toString ((jio (ImageActionScriptOutput.getImageTypes this))))))
        (StringMaker.toString stringBuffer)


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: ImageActionScriptOutput))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: ImageActionScriptOutput))

log_impl :: ImageActionScriptOutput -> IO (())
log_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (ImageActionScriptOutput.future_toString this)) this "log")
        pure ()


getImageTypes :: (JavaObjectClass this_) => this_ -> IO (ImageTypes.ImageTypes)
getImageTypes object_ = jmethod object_ "getImageTypes" (\() -> (getImageTypes_impl (javaCast object_ :: ImageActionScriptOutput))) ()

getImageTypes_super :: (JavaObjectClass this_) => this_ -> IO (ImageTypes.ImageTypes)
getImageTypes_super object_ = (getImageTypes_impl (javaCast object_ :: ImageActionScriptOutput))

getImageTypes_impl :: ImageActionScriptOutput -> IO (ImageTypes.ImageTypes)
getImageTypes_impl this = do
        pure ((jget (this).imageTypes))


setImageTypes :: (JavaObjectClass this_) => this_ -> ImageTypes.ImageTypes -> IO (())
setImageTypes object_ a1 = jmethod object_ "setImageTypes" (\() -> (setImageTypes_impl (javaCast object_ :: ImageActionScriptOutput))) () a1

setImageTypes_super :: (JavaObjectClass this_) => this_ -> ImageTypes.ImageTypes -> IO (())
setImageTypes_super object_ a1 = (setImageTypes_impl (javaCast object_ :: ImageActionScriptOutput)) a1

setImageTypes_impl :: ImageActionScriptOutput -> ImageTypes.ImageTypes -> IO (())
setImageTypes_impl this imageTypes = do
        jset (this).imageTypes (imageTypes)
        pure ()


