{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer
module TechnologyRTSInterfaceImageItem (module TechnologyRTSInterfaceImageItem, module ABCustomImageItem) where

import ABCustomImageItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, getRtsInterface, getRtsInterface_super, getRtsInterface_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, rtsInterface, primitiveLongUtil, lEVEL, cOST, dOLLAR, myFontProcessor, costString, costLength, levelString, levelLength, adjustedCostLabelY, adjustedCostX, adjustedCostY, adjustedLevelX, adjustedLevelY)
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
import qualified RTSInterface -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified NullImage -- javax.microedition.lcdui.NullImage
import qualified ABCustomImageItem -- org.allbinary.graphics.form.item.ABCustomImageItem
import qualified CharArrayFactory -- org.allbinary.logic.java.character.CharArrayFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil

-- implements UpdateMyFontInterface
data TechnologyRTSInterfaceImageItem = TechnologyRTSInterfaceImageItem
    { header_ :: JavaHeader
    , base :: ABCustomImageItem.ABCustomImageItem
    , rtsInterface :: IORef (RTSInterface.RTSInterface)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , lEVEL :: IORef (String)
    , cOST :: IORef (String)
    , dOLLAR :: IORef (String)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , costString :: IORef (JavaArray (Char))
    , costLength :: IORef (Int)
    , levelString :: IORef (JavaArray (Char))
    , levelLength :: IORef (Int)
    , adjustedCostLabelY :: IORef (Int)
    , adjustedCostX :: IORef (Int)
    , adjustedCostY :: IORef (Int)
    , adjustedLevelX :: IORef (Int)
    , adjustedLevelY :: IORef (Int)
    }

instance JavaNull TechnologyRTSInterfaceImageItem where
    javaNull = javaNullRecord "TechnologyRTSInterfaceImageItem"

instance JavaEquals TechnologyRTSInterfaceImageItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TechnologyRTSInterfaceImageItem where
    (==) = jrecordEquals

instance JavaObjectClass TechnologyRTSInterfaceImageItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TechnologyRTSInterfaceImageItem
newRecord_ = do
    base <- ABCustomImageItem.newRecord_
    let header_ = base.header_
    rtsInterface <- newIORef javaNull
    primitiveLongUtil <- newIORef javaNull
    lEVEL <- newIORef ""
    cOST <- newIORef ""
    dOLLAR <- newIORef ""
    myFontProcessor <- newIORef javaNull
    costString <- newIORef javaNull
    costLength <- newIORef 0
    levelString <- newIORef javaNull
    levelLength <- newIORef 0
    adjustedCostLabelY <- newIORef 0
    adjustedCostX <- newIORef 0
    adjustedCostY <- newIORef 0
    adjustedLevelX <- newIORef 0
    adjustedLevelY <- newIORef 0
    let this = TechnologyRTSInterfaceImageItem header_ base rtsInterface primitiveLongUtil lEVEL cOST dOLLAR myFontProcessor costString costLength levelString levelLength adjustedCostLabelY adjustedCostX adjustedCostY adjustedLevelX adjustedLevelY
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getRtsInterface" (\() -> getRtsInterface_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: TechnologyRTSInterfaceImageItem -> IO ()
initFields_ this = do
    jset this.rtsInterface (javaNull)
    jset this.primitiveLongUtil =<< (PrimitiveLongUtil.createPowerOfTen 10000)
    jset this.lEVEL ("Level")
    jset this.cOST ("Cost")
    jset this.dOLLAR ("$")
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.costString =<< (CharArrayFactory.getZeroCharArray ((jio (CharArrayFactory.getInstance))))
    jset this.costLength (0)
    jset this.levelString =<< (CharArrayFactory.getZeroCharArray ((jio (CharArrayFactory.getInstance))))
    jset this.levelLength (0)
    jset this.adjustedCostLabelY (0)
    jset this.adjustedCostX (0)
    jset this.adjustedCostY (0)
    jset this.adjustedLevelX (0)
    jset this.adjustedLevelY (0)
    pure ()

new_6 :: String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> RTSInterface.RTSInterface -> IO TechnologyRTSInterfaceImageItem
new_6 label img layout altText basicColor rtsInterface = do
    this <- newRecord_
    init_6 this label img layout altText basicColor rtsInterface
    pure this

init_6 :: TechnologyRTSInterfaceImageItem -> String -> Image.Image -> Int -> String -> BasicColor.BasicColor -> RTSInterface.RTSInterface -> IO ()
init_6 this label img layout altText basicColor rtsInterface = do
        ABCustomImageItem.init_6 this.base (label) (img) (layout) (altText) (basicColor) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).rtsInterface (rtsInterface)
        Control.Monad.void (TechnologyRTSInterfaceImageItem.update this)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem)) a1

updateMeasurement_impl :: TechnologyRTSInterfaceImageItem -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        fontHeight <- (Font.getHeight font)
        imageHeight <- newIORef (0)
        image <- (ABCustomImageItem.getImage this)
        when (image /= NullImage.nULL_IMAGE) $ do
            assignedValue <- (Image.getHeight image)
            jset imageHeight (assignedValue)
        jset (this).adjustedCostLabelY ((((Prelude.negate (jget (this).base.base.yOffset)) + (jget imageHeight)) - ((3 * fontHeight))))
        jset (this).adjustedCostY ((((Prelude.negate (jget (this).base.base.yOffset)) + (jget imageHeight)) - ((2 * fontHeight))))
        jset (this).adjustedCostX ((2 + (((Prelude.length (jget (this).dOLLAR)) * ((fontHeight - 1))))))
        jset (this).adjustedLevelY ((((Prelude.negate (jget (this).base.base.yOffset)) + (jget imageHeight)) - fontHeight))
        jset (this).adjustedLevelX ((2 + (((Prelude.length (jget (this).lEVEL)) * ((fontHeight - 1))))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


getRtsInterface :: (JavaObjectClass this_) => this_ -> IO (RTSInterface.RTSInterface)
getRtsInterface object_ = jmethod object_ "getRtsInterface" (\() -> (getRtsInterface_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))) ()

getRtsInterface_super :: (JavaObjectClass this_) => this_ -> IO (RTSInterface.RTSInterface)
getRtsInterface_super object_ = (getRtsInterface_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))

getRtsInterface_impl :: TechnologyRTSInterfaceImageItem -> IO (RTSInterface.RTSInterface)
getRtsInterface_impl this = do
        pure ((jget (this).rtsInterface))


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))

update_impl :: TechnologyRTSInterfaceImageItem -> IO (())
update_impl this = do
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jio (RTSInterface.getUpgradeCost ((jio (TechnologyRTSInterfaceImageItem.getRtsInterface this))))))
        jset (this).costString (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jio (RTSInterface.getLevel ((jio (TechnologyRTSInterfaceImageItem.getRtsInterface this))))))
        jset (this).levelString (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: TechnologyRTSInterfaceImageItem)) a1 a2 a3

paintXY_impl :: TechnologyRTSInterfaceImageItem -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (ABCustomImageItem.paintXY_super this.base graphics x y)
        let xa = (x + 2)
        Control.Monad.void (Graphics.drawString graphics (jget (this).cOST) xa (y + (jget (this).adjustedCostLabelY)) 0)
        Control.Monad.void (Graphics.drawString graphics (jget (this).dOLLAR) xa (y + (jget (this).adjustedCostY)) 0)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).costString) 0 (jget (this).costLength) (x + (jget (this).adjustedCostX)) (y + (jget (this).adjustedCostY)) 0)
        Control.Monad.void (Graphics.drawString graphics (jget (this).lEVEL) xa (y + (jget (this).adjustedLevelY)) 0)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).levelString) 0 (jget (this).levelLength) (x + (jget (this).adjustedLevelX)) (y + (jget (this).adjustedLevelY)) 0)
        pure ()


