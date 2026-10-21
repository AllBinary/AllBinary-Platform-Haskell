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
-- package org.allbinary.game.physics.velocity
module VelocityProperties (module VelocityProperties, module BasicVelocityProperties) where

import BasicVelocityProperties hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getMaxForwardVelocity, getMaxForwardVelocity_super, getMaxForwardVelocity_impl, setMaxForwardVelocity, setMaxForwardVelocity_super, setMaxForwardVelocity_impl, getMaxReverseVelocity, getMaxReverseVelocity_super, getMaxReverseVelocity_impl, setMaxReverseVelocity, setMaxReverseVelocity_super, setMaxReverseVelocity_impl, limitMaxXYForwardVelocity, limitMaxXYForwardVelocity_super, limitMaxXYForwardVelocity_impl, limitMaxXYReverseVelocity, limitMaxXYReverseVelocity_super, limitMaxXYReverseVelocity_impl, limitMaxYForwardVelocity, limitMaxYForwardVelocity_super, limitMaxYForwardVelocity_impl, limitMaxYReverseVelocity, limitMaxYReverseVelocity_super, limitMaxYReverseVelocity_impl, limitMaxXForwardVelocity, limitMaxXForwardVelocity_super, limitMaxXForwardVelocity_impl, limitMaxXReverseVelocity, limitMaxXReverseVelocity_super, limitMaxXReverseVelocity_impl, isOverXYMaxForwardVelocity, isOverXYMaxForwardVelocity_super, isOverXYMaxForwardVelocity_impl, isOverXYMaxReverseVelocity, isOverXYMaxReverseVelocity_super, isOverXYMaxReverseVelocity_impl, limitXYToForwardAndReverseMaxVelocity, limitXYToForwardAndReverseMaxVelocity_super, limitXYToForwardAndReverseMaxVelocity_impl, limitMaxXYVelocity, limitMaxXYVelocity_super, limitMaxXYVelocity_impl, limitMaxPositiveYVelocity, limitMaxPositiveYVelocity_super, limitMaxPositiveYVelocity_impl, limitMaxNegativeYVelocity, limitMaxNegativeYVelocity_super, limitMaxNegativeYVelocity_impl, limitMaxYVelocity, limitMaxYVelocity_super, limitMaxYVelocity_impl, limitMaxXVelocity, limitMaxXVelocity_super, limitMaxXVelocity_impl, isOverXYMaxVelocity, isOverXYMaxVelocity_super, isOverXYMaxVelocity_impl, setVelocityi, setVelocityi_super, setVelocityi_impl, addVelocityi, addVelocityi_super, addVelocityi_impl, nULL_VELOCITY_PROPERTIES, maxForwardVelocity, maxReverseVelocity)
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
import qualified BasicDecimal -- same package or java.lang
import qualified BasicVelocityProperties
import qualified VelocityInterface

-- implements VelocityInterface
data VelocityProperties = VelocityProperties
    { header_ :: JavaHeader
    , base :: BasicVelocityProperties.BasicVelocityProperties
    , maxForwardVelocity :: IORef (Int)
    , maxReverseVelocity :: IORef (Int)
    }

instance JavaNull VelocityProperties where
    javaNull = javaNullRecord "VelocityProperties"

instance JavaEquals VelocityProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq VelocityProperties where
    (==) = jrecordEquals

instance JavaObjectClass VelocityProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_VELOCITY_PROPERTIES #-}
nULL_VELOCITY_PROPERTIES = unsafePerformIO ((new_2 0 0))

newRecord_ :: IO VelocityProperties
newRecord_ = do
    base <- BasicVelocityProperties.newRecord_
    let header_ = base.header_
    maxForwardVelocity <- newIORef 0
    maxReverseVelocity <- newIORef 0
    let this = VelocityProperties header_ base maxForwardVelocity maxReverseVelocity
    jregisterLevel header_ this
    VelocityInterface.registerInterface_ header_
    jregisterMethod header_ "getMaxForwardVelocity" (\() -> getMaxForwardVelocity_impl this)
    jregisterMethod header_ "setMaxForwardVelocity" (\() -> setMaxForwardVelocity_impl this)
    jregisterMethod header_ "getMaxReverseVelocity" (\() -> getMaxReverseVelocity_impl this)
    jregisterMethod header_ "setMaxReverseVelocity" (\() -> setMaxReverseVelocity_impl this)
    jregisterMethod header_ "limitMaxXYForwardVelocity" (\() -> limitMaxXYForwardVelocity_impl this)
    jregisterMethod header_ "limitMaxXYReverseVelocity" (\() -> limitMaxXYReverseVelocity_impl this)
    jregisterMethod header_ "limitMaxYForwardVelocity" (\() -> limitMaxYForwardVelocity_impl this)
    jregisterMethod header_ "limitMaxYReverseVelocity" (\() -> limitMaxYReverseVelocity_impl this)
    jregisterMethod header_ "limitMaxXForwardVelocity" (\() -> limitMaxXForwardVelocity_impl this)
    jregisterMethod header_ "limitMaxXReverseVelocity" (\() -> limitMaxXReverseVelocity_impl this)
    jregisterMethod header_ "isOverXYMaxForwardVelocity" (\() -> isOverXYMaxForwardVelocity_impl this)
    jregisterMethod header_ "isOverXYMaxReverseVelocity" (\() -> isOverXYMaxReverseVelocity_impl this)
    jregisterMethod header_ "limitXYToForwardAndReverseMaxVelocity" (\() -> limitXYToForwardAndReverseMaxVelocity_impl this)
    jregisterMethod header_ "limitMaxXYVelocity" (\() -> limitMaxXYVelocity_impl this)
    jregisterMethod header_ "limitMaxPositiveYVelocity" (\() -> limitMaxPositiveYVelocity_impl this)
    jregisterMethod header_ "limitMaxNegativeYVelocity" (\() -> limitMaxNegativeYVelocity_impl this)
    jregisterMethod header_ "limitMaxYVelocity" (\() -> limitMaxYVelocity_impl this)
    jregisterMethod header_ "limitMaxXVelocity" (\() -> limitMaxXVelocity_impl this)
    jregisterMethod header_ "isOverXYMaxVelocity" (\() -> isOverXYMaxVelocity_impl this)
    jregisterMethod header_ "setVelocityi" (\() -> setVelocityi_impl this)
    jregisterMethod header_ "addVelocityi" (\() -> addVelocityi_impl this)
    pure this

initFields_ :: VelocityProperties -> IO ()
initFields_ this = do
    jset this.maxForwardVelocity (0)
    jset this.maxReverseVelocity (0)
    pure ()

new_2 :: Int -> Int -> IO VelocityProperties
new_2 maxForwardVelocity maxReverseVelocity = do
    this <- newRecord_
    init_2 this maxForwardVelocity maxReverseVelocity
    pure this

init_2 :: VelocityProperties -> Int -> Int -> IO ()
init_2 this maxForwardVelocity maxReverseVelocity = do
        BasicVelocityProperties.init_ this.base
        initFields_ this
        Control.Monad.void (VelocityProperties.setMaxForwardVelocity this maxForwardVelocity)
        Control.Monad.void (VelocityProperties.setMaxReverseVelocity this maxReverseVelocity)
        pure ()


getMaxForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxForwardVelocity object_ = jmethod object_ "getMaxForwardVelocity" (\() -> (getMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties))) ()

getMaxForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxForwardVelocity_super object_ = (getMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties))

getMaxForwardVelocity_impl :: VelocityProperties -> IO (Int)
getMaxForwardVelocity_impl this = do
        pure ((jget (this).maxForwardVelocity))


setMaxForwardVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxForwardVelocity object_ a1 = jmethod object_ "setMaxForwardVelocity" (\() -> (setMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

setMaxForwardVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxForwardVelocity_super object_ a1 = (setMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties)) a1

setMaxForwardVelocity_impl :: VelocityProperties -> Int -> IO (())
setMaxForwardVelocity_impl this maxForwardVelocity = do
        jset (this).maxForwardVelocity (maxForwardVelocity)
        pure ()


getMaxReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxReverseVelocity object_ = jmethod object_ "getMaxReverseVelocity" (\() -> (getMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties))) ()

getMaxReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxReverseVelocity_super object_ = (getMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties))

getMaxReverseVelocity_impl :: VelocityProperties -> IO (Int)
getMaxReverseVelocity_impl this = do
        pure ((jget (this).maxReverseVelocity))


setMaxReverseVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxReverseVelocity object_ a1 = jmethod object_ "setMaxReverseVelocity" (\() -> (setMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

setMaxReverseVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxReverseVelocity_super object_ a1 = (setMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties)) a1

setMaxReverseVelocity_impl :: VelocityProperties -> Int -> IO (())
setMaxReverseVelocity_impl this maxReverseVelocity = do
        jset (this).maxReverseVelocity (maxReverseVelocity)
        pure ()


limitMaxXYForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYForwardVelocity object_ = jmethod object_ "limitMaxXYForwardVelocity" (\() -> (limitMaxXYForwardVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxXYForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYForwardVelocity_super object_ = (limitMaxXYForwardVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxXYForwardVelocity_impl :: VelocityProperties -> IO (())
limitMaxXYForwardVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxXYVelocity this (jio (VelocityProperties.getMaxForwardVelocity this)))
        pure ()


limitMaxXYReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYReverseVelocity object_ = jmethod object_ "limitMaxXYReverseVelocity" (\() -> (limitMaxXYReverseVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxXYReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXYReverseVelocity_super object_ = (limitMaxXYReverseVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxXYReverseVelocity_impl :: VelocityProperties -> IO (())
limitMaxXYReverseVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxXYVelocity this (jio (VelocityProperties.getMaxReverseVelocity this)))
        pure ()


limitMaxYForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxYForwardVelocity object_ = jmethod object_ "limitMaxYForwardVelocity" (\() -> (limitMaxYForwardVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxYForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxYForwardVelocity_super object_ = (limitMaxYForwardVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxYForwardVelocity_impl :: VelocityProperties -> IO (())
limitMaxYForwardVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxYVelocity this (jio (VelocityProperties.getMaxForwardVelocity this)))
        pure ()


limitMaxYReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxYReverseVelocity object_ = jmethod object_ "limitMaxYReverseVelocity" (\() -> (limitMaxYReverseVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxYReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxYReverseVelocity_super object_ = (limitMaxYReverseVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxYReverseVelocity_impl :: VelocityProperties -> IO (())
limitMaxYReverseVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxYVelocity this (jio (VelocityProperties.getMaxReverseVelocity this)))
        pure ()


limitMaxXForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXForwardVelocity object_ = jmethod object_ "limitMaxXForwardVelocity" (\() -> (limitMaxXForwardVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxXForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXForwardVelocity_super object_ = (limitMaxXForwardVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxXForwardVelocity_impl :: VelocityProperties -> IO (())
limitMaxXForwardVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxXVelocity this (jio (VelocityProperties.getMaxForwardVelocity this)))
        pure ()


limitMaxXReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXReverseVelocity object_ = jmethod object_ "limitMaxXReverseVelocity" (\() -> (limitMaxXReverseVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitMaxXReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitMaxXReverseVelocity_super object_ = (limitMaxXReverseVelocity_impl (javaCast object_ :: VelocityProperties))

limitMaxXReverseVelocity_impl :: VelocityProperties -> IO (())
limitMaxXReverseVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxXVelocity this (jio (VelocityProperties.getMaxReverseVelocity this)))
        pure ()


isOverXYMaxForwardVelocity :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverXYMaxForwardVelocity object_ = jmethod object_ "isOverXYMaxForwardVelocity" (\() -> (isOverXYMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties))) ()

isOverXYMaxForwardVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverXYMaxForwardVelocity_super object_ = (isOverXYMaxForwardVelocity_impl (javaCast object_ :: VelocityProperties))

isOverXYMaxForwardVelocity_impl :: VelocityProperties -> IO (Bool)
isOverXYMaxForwardVelocity_impl this = do
        (VelocityProperties.isOverXYMaxVelocity this (jio (VelocityProperties.getMaxForwardVelocity this)))


isOverXYMaxReverseVelocity :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverXYMaxReverseVelocity object_ = jmethod object_ "isOverXYMaxReverseVelocity" (\() -> (isOverXYMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties))) ()

isOverXYMaxReverseVelocity_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOverXYMaxReverseVelocity_super object_ = (isOverXYMaxReverseVelocity_impl (javaCast object_ :: VelocityProperties))

isOverXYMaxReverseVelocity_impl :: VelocityProperties -> IO (Bool)
isOverXYMaxReverseVelocity_impl this = do
        (VelocityProperties.isOverXYMaxVelocity this (jio (VelocityProperties.getMaxReverseVelocity this)))


limitXYToForwardAndReverseMaxVelocity :: (JavaObjectClass this_) => this_ -> IO (())
limitXYToForwardAndReverseMaxVelocity object_ = jmethod object_ "limitXYToForwardAndReverseMaxVelocity" (\() -> (limitXYToForwardAndReverseMaxVelocity_impl (javaCast object_ :: VelocityProperties))) ()

limitXYToForwardAndReverseMaxVelocity_super :: (JavaObjectClass this_) => this_ -> IO (())
limitXYToForwardAndReverseMaxVelocity_super object_ = (limitXYToForwardAndReverseMaxVelocity_impl (javaCast object_ :: VelocityProperties))

limitXYToForwardAndReverseMaxVelocity_impl :: VelocityProperties -> IO (())
limitXYToForwardAndReverseMaxVelocity_impl this = do
        Control.Monad.void (VelocityProperties.limitMaxXYForwardVelocity this)
        Control.Monad.void (VelocityProperties.limitMaxXYReverseVelocity this)
        pure ()


limitMaxXYVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXYVelocity object_ a1 = jmethod object_ "limitMaxXYVelocity" (\() -> (limitMaxXYVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

limitMaxXYVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXYVelocity_super object_ a1 = (limitMaxXYVelocity_impl (javaCast object_ :: VelocityProperties)) a1

limitMaxXYVelocity_impl :: VelocityProperties -> Int -> IO (())
limitMaxXYVelocity_impl this maxVelocity = do
        Control.Monad.void (VelocityProperties.limitMaxXVelocity this maxVelocity)
        Control.Monad.void (VelocityProperties.limitMaxYVelocity this maxVelocity)
        pure ()


limitMaxPositiveYVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxPositiveYVelocity object_ a1 = jmethod object_ "limitMaxPositiveYVelocity" (\() -> (limitMaxPositiveYVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

limitMaxPositiveYVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxPositiveYVelocity_super object_ a1 = (limitMaxPositiveYVelocity_impl (javaCast object_ :: VelocityProperties)) a1

limitMaxPositiveYVelocity_impl :: VelocityProperties -> Int -> IO (())
limitMaxPositiveYVelocity_impl this maxVelocity = do
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityYBasicDecimal)))) > (Prelude.fromIntegral maxVelocity)) $ do
            Control.Monad.void (BasicDecimal.setint ((jget (this).base.velocityYBasicDecimal)) maxVelocity)
        pure ()


limitMaxNegativeYVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxNegativeYVelocity object_ a1 = jmethod object_ "limitMaxNegativeYVelocity" (\() -> (limitMaxNegativeYVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

limitMaxNegativeYVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxNegativeYVelocity_super object_ a1 = (limitMaxNegativeYVelocity_impl (javaCast object_ :: VelocityProperties)) a1

limitMaxNegativeYVelocity_impl :: VelocityProperties -> Int -> IO (())
limitMaxNegativeYVelocity_impl this maxVelocity = do
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityYBasicDecimal)))) < (Prelude.fromIntegral (Prelude.negate maxVelocity))) $ do
            Control.Monad.void (BasicDecimal.setint ((jget (this).base.velocityYBasicDecimal)) (Prelude.negate maxVelocity))
        pure ()


limitMaxYVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxYVelocity object_ a1 = jmethod object_ "limitMaxYVelocity" (\() -> (limitMaxYVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

limitMaxYVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxYVelocity_super object_ a1 = (limitMaxYVelocity_impl (javaCast object_ :: VelocityProperties)) a1

limitMaxYVelocity_impl :: VelocityProperties -> Int -> IO (())
limitMaxYVelocity_impl this maxVelocity = do
        Control.Monad.void (VelocityProperties.limitMaxPositiveYVelocity this maxVelocity)
        Control.Monad.void (VelocityProperties.limitMaxNegativeYVelocity this maxVelocity)
        pure ()


limitMaxXVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXVelocity object_ a1 = jmethod object_ "limitMaxXVelocity" (\() -> (limitMaxXVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

limitMaxXVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
limitMaxXVelocity_super object_ a1 = (limitMaxXVelocity_impl (javaCast object_ :: VelocityProperties)) a1

limitMaxXVelocity_impl :: VelocityProperties -> Int -> IO (())
limitMaxXVelocity_impl this maxVelocity = do
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityXBasicDecimal)))) > (Prelude.fromIntegral maxVelocity)) $ do
            Control.Monad.void (BasicDecimal.setint ((jget (this).base.velocityXBasicDecimal)) maxVelocity)
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityXBasicDecimal)))) < (Prelude.fromIntegral (Prelude.negate maxVelocity))) $ do
            Control.Monad.void (BasicDecimal.setint ((jget (this).base.velocityXBasicDecimal)) (Prelude.negate maxVelocity))
        pure ()


isOverXYMaxVelocity :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isOverXYMaxVelocity object_ a1 = jmethod object_ "isOverXYMaxVelocity" (\() -> (isOverXYMaxVelocity_impl (javaCast object_ :: VelocityProperties))) () a1

isOverXYMaxVelocity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isOverXYMaxVelocity_super object_ a1 = (isOverXYMaxVelocity_impl (javaCast object_ :: VelocityProperties)) a1

isOverXYMaxVelocity_impl :: VelocityProperties -> Int -> IO (Bool)
isOverXYMaxVelocity_impl this maxVelocity = do
    javaCatchReturn $ do
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityXBasicDecimal)))) > (Prelude.fromIntegral maxVelocity)) $ do
            javaReturn (True)
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityXBasicDecimal)))) < (Prelude.fromIntegral (Prelude.negate maxVelocity))) $ do
            javaReturn (True)
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityYBasicDecimal)))) > (Prelude.fromIntegral maxVelocity)) $ do
            javaReturn (True)
        when ((jio (BasicDecimal.getUnscaled ((jget (this).base.velocityYBasicDecimal)))) < (Prelude.fromIntegral (Prelude.negate maxVelocity))) $ do
            javaReturn (True)
        pure (False)


setVelocityi :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
setVelocityi object_ a1 a2 a3 = jmethod object_ "setVelocityi" (\() -> (setVelocityi_impl (javaCast object_ :: VelocityProperties))) () a1 a2 a3

setVelocityi_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
setVelocityi_super object_ a1 a2 a3 = (setVelocityi_impl (javaCast object_ :: VelocityProperties)) a1 a2 a3

setVelocityi_impl :: VelocityProperties -> Int64 -> Int -> Int -> IO (())
setVelocityi_impl this magnitude angle otherAngle = do
        Control.Monad.void (BasicVelocityProperties.setVelocityi_super this.base magnitude angle otherAngle)
        Control.Monad.void (VelocityProperties.limitXYToForwardAndReverseMaxVelocity this)
        pure ()


addVelocityi :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi object_ a1 a2 a3 = jmethod object_ "addVelocityi" (\() -> (addVelocityi_impl (javaCast object_ :: VelocityProperties))) () a1 a2 a3

addVelocityi_super :: (JavaObjectClass this_) => this_ -> Int64 -> Int -> Int -> IO (())
addVelocityi_super object_ a1 a2 a3 = (addVelocityi_impl (javaCast object_ :: VelocityProperties)) a1 a2 a3

addVelocityi_impl :: VelocityProperties -> Int64 -> Int -> Int -> IO (())
addVelocityi_impl this magnitude angle otherAngle = do
        Control.Monad.void (BasicVelocityProperties.addVelocityi_super this.base magnitude angle otherAngle)
        Control.Monad.void (VelocityProperties.limitXYToForwardAndReverseMaxVelocity this)
        pure ()


