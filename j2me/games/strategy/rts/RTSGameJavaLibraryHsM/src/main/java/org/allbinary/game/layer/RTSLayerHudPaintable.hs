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
-- package org.allbinary.game.layer
module RTSLayerHudPaintable (module RTSLayerHudPaintable, module SelectionHudPaintable) where

import SelectionHudPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, updateSelectionInfo, updateSelectionInfo_super, updateSelectionInfo_impl, paint, paint_super, paint_impl, setRtsLayer, setRtsLayer_super, setRtsLayer_impl, getRtsLayer, getRtsLayer_super, getRtsLayer_impl, instance_, weaponProperties, rtsLayer, costY, costY1, fontHeight)
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
import qualified RTSLayer -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified BasicWeaponPart -- org.allbinary.game.part.weapon.BasicWeaponPart
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified SelectionHudPaintable

-- implements UpdateMyFontInterface
data RTSLayerHudPaintable = RTSLayerHudPaintable
    { header_ :: JavaHeader
    , base :: SelectionHudPaintable.SelectionHudPaintable
    , weaponProperties :: IORef (JavaArray (String))
    , rtsLayer :: IORef (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
    , costY :: IORef (Int)
    , costY1 :: IORef (Int)
    , fontHeight :: IORef (Int)
    }

instance JavaNull RTSLayerHudPaintable where
    javaNull = javaNullRecord "RTSLayerHudPaintable"

instance JavaEquals RTSLayerHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSLayerHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass RTSLayerHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO RTSLayerHudPaintable
newRecord_ = do
    base <- SelectionHudPaintable.newRecord_
    let header_ = base.header_
    weaponProperties <- newIORef javaNull
    rtsLayer <- newIORef javaNull
    costY <- newIORef 0
    costY1 <- newIORef 0
    fontHeight <- newIORef 0
    let this = RTSLayerHudPaintable header_ base weaponProperties rtsLayer costY costY1 fontHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "updateSelectionInfo" (\() -> updateSelectionInfo_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setRtsLayer" (\() -> setRtsLayer_impl this)
    jregisterMethod header_ "getRtsLayer" (\() -> getRtsLayer_impl this)
    pure this

initFields_ :: RTSLayerHudPaintable -> IO ()
initFields_ this = do
    jset this.weaponProperties =<< (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))
    jset this.rtsLayer =<< (CollidableDestroyableDamageableLayer.getNullInstance)
    jset this.costY (0)
    jset this.costY1 (0)
    jset this.fontHeight (0)
    pure ()


getInstance :: IO (RTSLayerHudPaintable)
getInstance = do
        pure (RTSLayerHudPaintable.instance_)

new_ :: IO RTSLayerHudPaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RTSLayerHudPaintable -> IO ()
init_ this = do
        SelectionHudPaintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: RTSLayerHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: RTSLayerHudPaintable)) a1

updateMeasurement_impl :: RTSLayerHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.updateMeasurement_super this.base graphics)
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        jset (this).costY1 ((((jget (this).base.y) + (((((jlength (jget (this).weaponProperties)) + 1)) * (jget (this).fontHeight))))))
        if (Prelude.not (jio (AndroidUtil.isAndroid))) then do
            jset (this).costY ((jget (this).costY1))
        else do
            jset (this).costY ((((jget (this).base.y) + (((((jlength (jget (this).weaponProperties)) + 2)) * (jget (this).fontHeight))))))
        pure ()


updateSelectionInfo :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo object_ = jmethod object_ "updateSelectionInfo" (\() -> (updateSelectionInfo_impl (javaCast object_ :: RTSLayerHudPaintable))) ()

updateSelectionInfo_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSelectionInfo_super object_ = (updateSelectionInfo_impl (javaCast object_ :: RTSLayerHudPaintable))

updateSelectionInfo_impl :: RTSLayerHudPaintable -> IO (())
updateSelectionInfo_impl this = do
        Control.Monad.void (SelectionHudPaintable.setName this (jio (CollidableDestroyableDamageableLayer.getName ((jio (RTSLayerHudPaintable.getRtsLayer this))))))
        let partInterface = (javaCast (jindex ((jio (CollidableDestroyableDamageableLayer.getPartInterfaceArray ((jio (RTSLayerHudPaintable.getRtsLayer this)))))) (0)) :: BasicWeaponPart.BasicWeaponPart)
        assignedValue <- (WeaponProperties.toStringArray ((jio (BasicWeaponPart.getWeaponProperties partInterface))))
        jset (this).weaponProperties (assignedValue)
        jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: RTSLayerHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: RTSLayerHudPaintable)) a1

paint_impl :: RTSLayerHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (SelectionHudPaintable.paint_super this.base graphics)
        let size = (jlength (jget (this).weaponProperties))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (Graphics.drawString graphics (jindex ((jget (this).weaponProperties)) (index)) (jget (this).base.textX) ((jget (this).base.y) + ((((index + 1)) * (jget (this).fontHeight)))) 0)
        pure ()


setRtsLayer :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer object_ a1 = jmethod object_ "setRtsLayer" (\() -> (setRtsLayer_impl (javaCast object_ :: RTSLayerHudPaintable))) () a1

setRtsLayer_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_super object_ a1 = (setRtsLayer_impl (javaCast object_ :: RTSLayerHudPaintable)) a1

setRtsLayer_impl :: RTSLayerHudPaintable -> RTSLayer.RTSLayer -> IO (())
setRtsLayer_impl this rtsLayer = do
        jset (this).rtsLayer (rtsLayer)
        pure ()


getRtsLayer :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer object_ = jmethod object_ "getRtsLayer" (\() -> (getRtsLayer_impl (javaCast object_ :: RTSLayerHudPaintable))) ()

getRtsLayer_super :: (JavaObjectClass this_) => this_ -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer_super object_ = (getRtsLayer_impl (javaCast object_ :: RTSLayerHudPaintable))

getRtsLayer_impl :: RTSLayerHudPaintable -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getRtsLayer_impl this = do
        pure ((jget (this).rtsLayer))


