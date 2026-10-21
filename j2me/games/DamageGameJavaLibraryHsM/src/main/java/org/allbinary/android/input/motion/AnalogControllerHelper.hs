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
-- package org.allbinary.android.input.motion
module AnalogControllerHelper where

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
import qualified AnalogControllerConfigurationFactory -- same package or java.lang
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data AnalogControllerHelper = AnalogControllerHelper
    { header_ :: JavaHeader
    , reduceTimeFactor :: IORef (Int)
    , sCALE_VALUE :: IORef (Int)
    , rightTimeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , leftTimeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , downTimeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , upTimeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull AnalogControllerHelper where
    javaNull = javaNullRecord "AnalogControllerHelper"

instance JavaEquals AnalogControllerHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnalogControllerHelper where
    (==) = jrecordEquals

instance JavaObjectClass AnalogControllerHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnalogControllerHelper
newRecord_ = do
    header_ <- newJavaHeader
    reduceTimeFactor <- newIORef 0
    sCALE_VALUE <- newIORef 0
    rightTimeElapsedHelper <- newIORef javaNull
    leftTimeElapsedHelper <- newIORef javaNull
    downTimeElapsedHelper <- newIORef javaNull
    upTimeElapsedHelper <- newIORef javaNull
    let this = AnalogControllerHelper header_ reduceTimeFactor sCALE_VALUE rightTimeElapsedHelper leftTimeElapsedHelper downTimeElapsedHelper upTimeElapsedHelper
    jregisterLevel header_ this
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    pure this

initFields_ :: AnalogControllerHelper -> IO ()
initFields_ this = do
    jset this.reduceTimeFactor (0)
    jset this.sCALE_VALUE ((jget ((jio (AnalogControllerConfigurationFactory.getInstance))).sCALE_VALUE))
    jset this.rightTimeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    jset this.leftTimeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    jset this.downTimeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    jset this.upTimeElapsedHelper =<< (TimeDelayHelper.new_1 0)
    pure ()

new_1 :: Int -> IO AnalogControllerHelper
new_1 reduceTimeFactor = do
    this <- newRecord_
    init_1 this reduceTimeFactor
    pure this

init_1 :: AnalogControllerHelper -> Int -> IO ()
init_1 this reduceTimeFactor = do
        initFields_ this
        jset (this).reduceTimeFactor (reduceTimeFactor)
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
right object_ a1 a2 = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: AnalogControllerHelper))) () a1 a2

right_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
right_super object_ a1 a2 = (right_impl (javaCast object_ :: AnalogControllerHelper)) a1 a2

right_impl :: AnalogControllerHelper -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
right_impl this collidableDestroyableDamageableLayer xAnalogValue = do
        jset ((jget (this).rightTimeElapsedHelper)).delay ((((((jget (this).sCALE_VALUE) - xAnalogValue)) `Data.Bits.shiftR` (jget (this).reduceTimeFactor))))
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).rightTimeElapsedHelper)))) $ do
            Control.Monad.void (CollidableDestroyableDamageableLayer.right collidableDestroyableDamageableLayer)
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
left object_ a1 a2 = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: AnalogControllerHelper))) () a1 a2

left_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
left_super object_ a1 a2 = (left_impl (javaCast object_ :: AnalogControllerHelper)) a1 a2

left_impl :: AnalogControllerHelper -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
left_impl this collidableDestroyableDamageableLayer xAnalogValue = do
        jset ((jget (this).leftTimeElapsedHelper)).delay ((((((jget (this).sCALE_VALUE) + xAnalogValue)) `Data.Bits.shiftR` (jget (this).reduceTimeFactor))))
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).leftTimeElapsedHelper)))) $ do
            Control.Monad.void (CollidableDestroyableDamageableLayer.left collidableDestroyableDamageableLayer)
        pure ()


-- throws Exception
up :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
up object_ a1 a2 = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: AnalogControllerHelper))) () a1 a2

up_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
up_super object_ a1 a2 = (up_impl (javaCast object_ :: AnalogControllerHelper)) a1 a2

up_impl :: AnalogControllerHelper -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
up_impl this collidableDestroyableDamageableLayer xAnalogValue = do
        jset ((jget (this).upTimeElapsedHelper)).delay ((((((jget (this).sCALE_VALUE) - xAnalogValue)) `Data.Bits.shiftR` (jget (this).reduceTimeFactor))))
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).upTimeElapsedHelper)))) $ do
            Control.Monad.void (CollidableDestroyableDamageableLayer.up collidableDestroyableDamageableLayer)
        pure ()


-- throws Exception
down :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
down object_ a1 a2 = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: AnalogControllerHelper))) () a1 a2

down_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
down_super object_ a1 a2 = (down_impl (javaCast object_ :: AnalogControllerHelper)) a1 a2

down_impl :: AnalogControllerHelper -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> Int -> IO (())
down_impl this collidableDestroyableDamageableLayer xAnalogValue = do
        jset ((jget (this).downTimeElapsedHelper)).delay ((((((jget (this).sCALE_VALUE) + xAnalogValue)) `Data.Bits.shiftR` (jget (this).reduceTimeFactor))))
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).downTimeElapsedHelper)))) $ do
            Control.Monad.void (CollidableDestroyableDamageableLayer.down collidableDestroyableDamageableLayer)
        pure ()


