{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer.item
module RTSLayerCostAnimation (module RTSLayerCostAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, onEvent, onEvent_super, onEvent_impl, onTechEvent, onTechEvent_super, onTechEvent_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, logUtil, primitiveLongUtil, dOLLAR, image, layerInterfaceFactoryInterface, myFontProcessor, costString, len, adjustedCostX, fontHeight)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified CostLayerInterfaceFactoryInterface -- org.allbinary.game.layer.CostLayerInterfaceFactoryInterface
import qualified TechEventListenerInterface -- org.allbinary.game.rts.technology.event.TechEventListenerInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

-- implements TechEventListenerInterface
-- implements UpdateMyFontInterface
data RTSLayerCostAnimation = RTSLayerCostAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , logUtil :: IORef (LogUtil.LogUtil)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , dOLLAR :: IORef (String)
    , image :: IORef (Image.Image)
    , layerInterfaceFactoryInterface :: IORef (CostLayerInterfaceFactoryInterface.CostLayerInterfaceFactoryInterface)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , costString :: IORef (JavaArray (Char))
    , len :: IORef (Int)
    , adjustedCostX :: IORef (Int)
    , fontHeight :: IORef (Int)
    }

instance JavaNull RTSLayerCostAnimation where
    javaNull = javaNullRecord "RTSLayerCostAnimation"

instance JavaEquals RTSLayerCostAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerCostAnimation where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerCostAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RTSLayerCostAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    primitiveLongUtil <- newIORef javaNull
    dOLLAR <- newIORef ""
    image <- newIORef javaNull
    layerInterfaceFactoryInterface <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    costString <- newIORef javaNull
    len <- newIORef 0
    adjustedCostX <- newIORef 0
    fontHeight <- newIORef 0
    let this = RTSLayerCostAnimation header_ base logUtil primitiveLongUtil dOLLAR image layerInterfaceFactoryInterface myFontProcessor costString len adjustedCostX fontHeight
    jregisterLevel header_ this
    TechEventListenerInterface.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onTechEvent" (\() -> onTechEvent_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: RTSLayerCostAnimation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.primitiveLongUtil =<< (PrimitiveLongUtil.createPowerOfTen 10000)
    jset this.dOLLAR ("$")
    jset this.image (javaNull)
    jset this.layerInterfaceFactoryInterface (javaNull)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.costString ((jget ((jio (NullUtil.getInstance))).nULL_CHAR_ARRAY))
    jset this.len (0)
    jset this.adjustedCostX (0)
    jset this.fontHeight (0)
    pure ()

new_2 :: Image.Image -> CostLayerInterfaceFactoryInterface.CostLayerInterfaceFactoryInterface -> IO RTSLayerCostAnimation
new_2 image layerInterfaceFactoryInterface = do
    this <- newRecord_
    init_2 this image layerInterfaceFactoryInterface
    pure this

init_2 :: RTSLayerCostAnimation -> Image.Image -> CostLayerInterfaceFactoryInterface.CostLayerInterfaceFactoryInterface -> IO ()
init_2 this image layerInterfaceFactoryInterface = do
        Animation.init_ this.base
        initFields_ this
        jset (this).image (image)
        jset (this).layerInterfaceFactoryInterface (layerInterfaceFactoryInterface)
        Control.Monad.void (RTSLayerCostAnimation.update this)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: RTSLayerCostAnimation))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: RTSLayerCostAnimation)) a1

updateMeasurement_impl :: RTSLayerCostAnimation -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (Font.stringWidth font (jget (this).dOLLAR))
        jset (this).adjustedCostX (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: RTSLayerCostAnimation))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: RTSLayerCostAnimation)) a1

onEvent_impl :: RTSLayerCostAnimation -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this event = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onTechEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onTechEvent object_ a1 = jmethod object_ "onTechEvent" (\() -> (onTechEvent_impl (javaCast object_ :: RTSLayerCostAnimation))) () a1

onTechEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onTechEvent_super object_ a1 = (onTechEvent_impl (javaCast object_ :: RTSLayerCostAnimation)) a1

onTechEvent_impl :: RTSLayerCostAnimation -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onTechEvent_impl this event = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "onTechEvent" e)
            ) $ do
            Control.Monad.void (RTSLayerCostAnimation.update this)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: RTSLayerCostAnimation))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: RTSLayerCostAnimation))

update_impl :: RTSLayerCostAnimation -> IO (())
update_impl this = do
        jset (this).len (0)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jio (CostLayerInterfaceFactoryInterface.getCost ((jget (this).layerInterfaceFactoryInterface)))))
        jset (this).costString (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
        jset (this).len (assignedValue)
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: RTSLayerCostAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: RTSLayerCostAnimation)) a1 a2 a3

paintXY_impl :: RTSLayerCostAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Animation.paintXY_super this.base graphics x y)
        let adjustedCostY = ((jio (Image.getHeight ((jget (this).image)))) - (jget (this).fontHeight))
        let xa = (x + 2)
        Control.Monad.void (Graphics.drawString graphics (jget (this).dOLLAR) xa (y + adjustedCostY) 0)
        Control.Monad.void (Graphics.drawChars graphics (jget (this).costString) 0 (jget (this).len) (x + (jget (this).adjustedCostX)) (y + adjustedCostY) 0)
        pure ()


