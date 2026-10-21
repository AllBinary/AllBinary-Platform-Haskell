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
-- package org.allbinary.game.layer.hud.basic
module VelocityWidget (module VelocityWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, get, get_super, get_impl, add, add_super, add_impl, set, set_super, set_impl, reduce, reduce_super, reduce_impl, paint, paint_super, paint_impl, kILOMETERS_PER_HOUR_STR, totalChars, velocity, maxVelocity, string, totalDigits, powerOfTenVelocity, primitiveLongUtil, offset, offset2)
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
import qualified OpenGLFeatureUtil -- org.allbinary.graphics.opengles.OpenGLFeatureUtil
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified PrimitiveLongSingleton -- org.allbinary.logic.math.PrimitiveLongSingleton
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil

data VelocityWidget = VelocityWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , kILOMETERS_PER_HOUR_STR :: IORef (JavaArray (Char))
    , totalChars :: IORef (Int)
    , velocity :: IORef (Int)
    , maxVelocity :: IORef (Int)
    , string :: IORef (JavaArray (Char))
    , totalDigits :: IORef (Int)
    , powerOfTenVelocity :: IORef (Int)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , offset :: IORef (Int)
    , offset2 :: IORef (Int)
    }

instance JavaNull VelocityWidget where
    javaNull = javaNullRecord "VelocityWidget"

instance JavaEquals VelocityWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VelocityWidget where
    (==) = jrecordEquals

instance JavaObjectClass VelocityWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO VelocityWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    kILOMETERS_PER_HOUR_STR <- newIORef javaNull
    totalChars <- newIORef 0
    velocity <- newIORef 0
    maxVelocity <- newIORef 0
    string <- newIORef javaNull
    totalDigits <- newIORef 0
    powerOfTenVelocity <- newIORef 0
    primitiveLongUtil <- newIORef javaNull
    offset <- newIORef 0
    offset2 <- newIORef 0
    let this = VelocityWidget header_ base kILOMETERS_PER_HOUR_STR totalChars velocity maxVelocity string totalDigits powerOfTenVelocity primitiveLongUtil offset offset2
    jregisterLevel header_ this
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "reduce" (\() -> reduce_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: VelocityWidget -> IO ()
initFields_ this = do
    jset this.kILOMETERS_PER_HOUR_STR ((jarrayFromList [' ', 'k', 'm', '/', 'h']))
    jset this.totalChars ((jlength (jget (this).kILOMETERS_PER_HOUR_STR)))
    jset this.velocity (0)
    jset this.maxVelocity (0)
    jset this.string ((jget ((jio (PrimitiveLongSingleton.getInstance))).zERO))
    jset this.totalDigits (1)
    jset this.powerOfTenVelocity (0)
    jset this.primitiveLongUtil (javaNull)
    jset this.offset (0)
    jset this.offset2 (0)
    pure ()

new_4 :: Int -> Int -> Int -> BasicColor.BasicColor -> IO VelocityWidget
new_4 powerOfTenVelocity location direction basicColor = do
    this <- newRecord_
    init_4 this powerOfTenVelocity location direction basicColor
    pure this

init_4 :: VelocityWidget -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_4 this powerOfTenVelocity location direction basicColor = do
        BasicHud.init_4 this.base (location) (direction) (2) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).powerOfTenVelocity (powerOfTenVelocity)
        jset (this).maxVelocity (powerOfTenVelocity)
        jset (this).velocity (0)
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen powerOfTenVelocity)
        jset (this).primitiveLongUtil (assignedValue)
        jset (this).base.updateMaxHeight (14)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: VelocityWidget))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: VelocityWidget)) a1

updateMeasurement_impl :: VelocityWidget -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).base.updateMaxWidth (((jio (Font.getSize font)) * (((5 + (jio (MathUtil.getTotalDigits ((jio (MathUtil.getInstance))) (jget (this).powerOfTenVelocity)))) + 1))))
        Control.Monad.void (BasicHud.updateMeasurement_super this.base graphics)
        jset (this).offset (((jio (MyFontProcessor.defaultStringWidth font (jio (PrimitiveLongUtil.getMaxDigits ((jget (this).primitiveLongUtil)))))) + (jio (MyFontProcessor.defaultStringWidth font 2))))
        jset (this).offset2 ((((jget (this).offset) - (jio (MyFontProcessor.defaultStringWidth font (jget (this).totalDigits)))) - (jio (MyFontProcessor.defaultStringWidth font 2))))
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Int)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: VelocityWidget))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int)
get_super object_ = (get_impl (javaCast object_ :: VelocityWidget))

get_impl :: VelocityWidget -> IO (Int)
get_impl this = do
        pure ((jget (this).velocity))


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: VelocityWidget))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: VelocityWidget)) a1

add_impl :: VelocityWidget -> Int -> IO (())
add_impl this value = do
        Control.Monad.void (VelocityWidget.set this ((jget (this).velocity) + value))
        pure ()


set :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: VelocityWidget))) () a1

set_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: VelocityWidget)) a1

set_impl :: VelocityWidget -> Int -> IO (())
set_impl this value = do
        let lastVelocity = (jget (this).velocity)
        jset (this).velocity (value)
        when ((jget (this).velocity) > (jget (this).maxVelocity)) $ do
            jset (this).velocity (0)
        when (lastVelocity /= (jget (this).velocity)) $ do
            assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) ((jget (this).velocity) * 18))
            jset (this).string (assignedValue)
            if (jio (OpenGLFeatureUtil.isAnyThreed ((jio (OpenGLFeatureUtil.getInstance))))) then do
                jset (this).totalDigits (((jio (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))) + 1))
            else do
                assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
                jset (this).totalDigits (assignedValue)
            jset (this).base.myFontProcessor ((jget (this).base.updateMyFontProcessor))
        pure ()


reduce :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce object_ a1 = jmethod object_ "reduce" (\() -> (reduce_impl (javaCast object_ :: VelocityWidget))) () a1

reduce_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce_super object_ a1 = (reduce_impl (javaCast object_ :: VelocityWidget)) a1

reduce_impl :: VelocityWidget -> Int -> IO (())
reduce_impl this value = do
        Control.Monad.void (VelocityWidget.set this ((jget (this).velocity) - value))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: VelocityWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: VelocityWidget)) a1

paint_impl :: VelocityWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (BasicHud.paintDXY_super this.base graphics (jget (this).string) 0 (jget (this).totalDigits) (jget (this).kILOMETERS_PER_HOUR_STR) 0 (jget (this).totalChars) (jget (this).offset2) (jget (this).offset))
        pure ()


