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
module ColorAtActionScriptCondition (module ColorAtActionScriptCondition, module BasicProfileActionScriptCondition) where

import BasicProfileActionScriptCondition hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, getPoint, getPoint_super, getPoint_impl, setPoint, setPoint_super, setPoint_impl, showDialog, showDialog_super, showDialog_impl, toHashMap, toHashMap_super, toHashMap_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, shouldProcess, shouldProcess_super, shouldProcess_impl, log, log_super, log_impl, getColorRangeInterface, getColorRangeInterface_super, getColorRangeInterface_impl, setColorRangeInterface, setColorRangeInterface_super, setColorRangeInterface_impl, logUtil, colorAtActionScriptConditionJPanel, point, colorRangeInterface, nAME)
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
import qualified ColorAtActionScriptConditionJPanel -- same package or java.lang
import qualified ColorAtActionScriptConditionData -- same package or java.lang
import qualified Color -- java.awt.Color
import qualified Point -- java.awt.Point
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified HashMap -- java.util.HashMap
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified ColorCacheFactory -- org.allbinary.graphics.color.ColorCacheFactory
import qualified ColorCacheable -- org.allbinary.graphics.color.ColorCacheable
import qualified CapturedBufferedImagesCacheSingleton -- org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified ColorRange -- org.allbinary.media.image.analysis.ColorRange
import qualified ColorRangeInterface -- org.allbinary.media.image.analysis.ColorRangeInterface
import qualified BufferedImageFrameCacheable -- org.allbinary.media.image.cache.BufferedImageFrameCacheable
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified BasicProfileActionScriptCondition
import qualified ColorAtActionScriptConditionInterface

-- implements ColorAtActionScriptConditionInterface
data ColorAtActionScriptCondition = ColorAtActionScriptCondition
    { header_ :: JavaHeader
    , base :: BasicProfileActionScriptCondition.BasicProfileActionScriptCondition
    , logUtil :: IORef (LogUtil.LogUtil)
    , colorAtActionScriptConditionJPanel :: IORef (ColorAtActionScriptConditionJPanel.ColorAtActionScriptConditionJPanel)
    , point :: IORef (Point.Point)
    , colorRangeInterface :: IORef (ColorRangeInterface.ColorRangeInterface)
    }

instance JavaNull ColorAtActionScriptCondition where
    javaNull = javaNullRecord "ColorAtActionScriptCondition"

instance JavaEquals ColorAtActionScriptCondition where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorAtActionScriptCondition where
    (==) = jrecordEquals

instance JavaObjectClass ColorAtActionScriptCondition where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

nAME = "If Color At"

newRecord_ :: IO ColorAtActionScriptCondition
newRecord_ = do
    base <- BasicProfileActionScriptCondition.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    colorAtActionScriptConditionJPanel <- newIORef javaNull
    point <- newIORef javaNull
    colorRangeInterface <- newIORef javaNull
    let this = ColorAtActionScriptCondition header_ base logUtil colorAtActionScriptConditionJPanel point colorRangeInterface
    jregisterLevel header_ this
    ColorAtActionScriptConditionInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "setPoint" (\() -> setPoint_impl this)
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "shouldProcess" (\() -> shouldProcess_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "getColorRangeInterface" (\() -> getColorRangeInterface_impl this)
    jregisterMethod header_ "setColorRangeInterface" (\() -> setColorRangeInterface_impl this)
    pure this

initFields_ :: ColorAtActionScriptCondition -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.colorAtActionScriptConditionJPanel (javaNull)
    jset this.point (javaNull)
    jset this.colorRangeInterface ((javaCast (jio (ColorRange.new_)) :: ColorRangeInterface.ColorRangeInterface))
    pure ()

new_1 :: Node.Node -> IO ColorAtActionScriptCondition
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: ColorAtActionScriptCondition -> Node.Node -> IO ()
init_1 this node = do
        BasicProfileActionScriptCondition.init_2 this.base (ColorAtActionScriptCondition.nAME) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (Point.new_2 0 0)
        jset (this).point (assignedValue)
        actionNode <- (DomSearchHelper.getNode (jget ColorAtActionScriptConditionData.nAME) (jio (Node.getChildNodes node)))
        if (actionNode /= javaNull) then do
            nodeList <- (Node.getChildNodes actionNode)
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                childNode <- (NodeList.item nodeList index)
                if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.lOCATION_X))) == 0) then do
                    locationX <- (DomNodeHelper.getTextNodeValue childNode)
                    jset ((jget (this).point)).x ((javaToString locationX))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.lOCATION_Y))) == 0) then do
                    locationY <- (DomNodeHelper.getTextNodeValue childNode)
                    jset ((jget (this).point)).y ((javaToString locationY))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mIN_RED))) == 0) then do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMinRed ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mAX_RED))) == 0) then do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMaxRed ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mIN_GREEN))) == 0) then do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMinGreen ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mAX_GREEN))) == 0) then do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMaxGreen ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
                else if ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mIN_BLUE))) == 0) then do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMinBlue ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
                else when ((jio (Node.compareTo ((jio (Node.getNodeName childNode))) (jget ColorAtActionScriptConditionData.mAX_BLUE))) == 0) $ do
                    string <- (DomNodeHelper.getTextNodeValue childNode)
                    Control.Monad.void (ColorRangeInterface.setMaxBlue ((jio (ColorAtActionScriptCondition.getColorRangeInterface this))) (javaToString string))
        else do
            javaThrow ((JavaException "Exception" "Color At Action Script Condition Node Null"))
        Control.Monad.void (ColorAtActionScriptCondition.init this)
        pure ()

new_ :: IO ColorAtActionScriptCondition
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorAtActionScriptCondition -> IO ()
init_ this = do
        BasicProfileActionScriptCondition.init_1 this.base (ColorAtActionScriptCondition.nAME)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (Point.new_2 0 0)
        jset (this).point (assignedValue)
        Control.Monad.void (ColorAtActionScriptCondition.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ColorAtActionScriptCondition))

init_impl :: ColorAtActionScriptCondition -> IO (())
init_impl this = do
        assignedValue <- (ColorAtActionScriptConditionJPanel.new_1 this)
        jset (this).colorAtActionScriptConditionJPanel (assignedValue)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint object_ = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

getPoint_super :: (JavaObjectClass this_) => this_ -> IO (Point.Point)
getPoint_super object_ = (getPoint_impl (javaCast object_ :: ColorAtActionScriptCondition))

getPoint_impl :: ColorAtActionScriptCondition -> IO (Point.Point)
getPoint_impl this = do
        pure ((jget (this).point))


setPoint :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint object_ a1 = jmethod object_ "setPoint" (\() -> (setPoint_impl (javaCast object_ :: ColorAtActionScriptCondition))) () a1

setPoint_super :: (JavaObjectClass this_) => this_ -> Point.Point -> IO (())
setPoint_super object_ a1 = (setPoint_impl (javaCast object_ :: ColorAtActionScriptCondition)) a1

setPoint_impl :: ColorAtActionScriptCondition -> Point.Point -> IO (())
setPoint_impl this point = do
        jset (this).point (point)
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> IO (())
showDialog object_ = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

showDialog_super :: (JavaObjectClass this_) => this_ -> IO (())
showDialog_super object_ = (showDialog_impl (javaCast object_ :: ColorAtActionScriptCondition))

showDialog_impl :: ColorAtActionScriptCondition -> IO (())
showDialog_impl this = do
        Control.Monad.void (JDialog.setVisible ((jio (ColorAtActionScriptConditionJPanel.getColorAtActionJDialog ((jget (this).colorAtActionScriptConditionJPanel))))) True)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: ColorAtActionScriptCondition))

toHashMap_impl :: ColorAtActionScriptCondition -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.lOCATION_X) (javaToString (jget ((jio (ColorAtActionScriptCondition.getPoint this))).x)))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.lOCATION_Y) (javaToString (jget ((jio (ColorAtActionScriptCondition.getPoint this))).y)))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mIN_RED) (javaToString (jio (ColorRangeInterface.getMinRed ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mAX_RED) (javaToString (jio (ColorRangeInterface.getMaxRed ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mIN_GREEN) (javaToString (jio (ColorRangeInterface.getMinGreen ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mAX_GREEN) (javaToString (jio (ColorRangeInterface.getMaxGreen ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mIN_BLUE) (javaToString (jio (ColorRangeInterface.getMinBlue ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (HashMap.put hashMap (jget ColorAtActionScriptConditionData.mAX_BLUE) (javaToString (jio (ColorRangeInterface.getMaxBlue ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("HashMap: " ++ (jio (HashMap.toString hashMap))) this "toHashMap()")
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ColorAtActionScriptCondition))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ColorAtActionScriptCondition)) a1

toXmlNode_impl :: ColorAtActionScriptCondition -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (BasicProfileActionScriptCondition.toXmlNode_super this.base document)
        Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNodeWithValueNodes document (jget ColorAtActionScriptConditionData.nAME) (jio (ColorAtActionScriptCondition.toHashMap this)))))
        pure (node)


-- throws Exception
shouldProcess :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess object_ a1 = jmethod object_ "shouldProcess" (\() -> (shouldProcess_impl (javaCast object_ :: ColorAtActionScriptCondition))) () a1

shouldProcess_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (Bool)
shouldProcess_super object_ a1 = (shouldProcess_impl (javaCast object_ :: ColorAtActionScriptCondition)) a1

shouldProcess_impl :: ColorAtActionScriptCondition -> Int64 -> IO (Bool)
shouldProcess_impl this frame = do
    javaCatchReturn $ do
        let capturedBufferedImageCacheable = (javaCast (jio (get (((javaCast (jio (CapturedBufferedImagesCacheSingleton.getInstance)) :: AutomaticCacheInterface.AutomaticCacheInterface))) (javaToString frame))) :: BufferedImageFrameCacheable.BufferedImageFrameCacheable)
        bufferedImage <- (BufferedImageFrameCacheable.getBufferedImage capturedBufferedImageCacheable)
        automaticCacheInterface <- (ColorCacheFactory.getInstance)
        let colorInteger = (javaToString (jio (BufferedImage.getRGB bufferedImage (jget ((jio (ColorAtActionScriptCondition.getPoint this))).x) (jget ((jio (ColorAtActionScriptCondition.getPoint this))).y))))
        let colorCacheable = (javaCast (jio (AutomaticCacheInterface.get automaticCacheInterface colorInteger)) :: ColorCacheable.ColorCacheable)
        color <- (ColorCacheable.getColor colorCacheable)
        when (jio (ColorRangeInterface.isInRange ((jget (this).colorRangeInterface)) color)) $ do
            javaReturn =<< (BasicProfileActionScriptCondition.shouldProcess_super this.base frame)
        pure (False)


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: ColorAtActionScriptCondition))

log_impl :: ColorAtActionScriptCondition -> IO (())
log_impl this = do
        message <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "getPoint(): "))) (jio (Point.toString ((jio (ColorAtActionScriptCondition.getPoint this)))))))) (jget ((jio (CommonSeps.getInstance))).nEW_LINE)))) (jio (ColorRangeInterface.toString ((jio (ColorAtActionScriptCondition.getColorRangeInterface this)))))))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) message this "log")
        pure ()


getColorRangeInterface :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface object_ = jmethod object_ "getColorRangeInterface" (\() -> (getColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptCondition))) ()

getColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_super object_ = (getColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptCondition))

getColorRangeInterface_impl :: ColorAtActionScriptCondition -> IO (ColorRangeInterface.ColorRangeInterface)
getColorRangeInterface_impl this = do
        pure ((jget (this).colorRangeInterface))


setColorRangeInterface :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface object_ a1 = jmethod object_ "setColorRangeInterface" (\() -> (setColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptCondition))) () a1

setColorRangeInterface_super :: (JavaObjectClass this_) => this_ -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_super object_ a1 = (setColorRangeInterface_impl (javaCast object_ :: ColorAtActionScriptCondition)) a1

setColorRangeInterface_impl :: ColorAtActionScriptCondition -> ColorRangeInterface.ColorRangeInterface -> IO (())
setColorRangeInterface_impl this colorRangeInterface = do
        jset (this).colorRangeInterface (colorRangeInterface)
        pure ()


