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
-- package org.allbinary.game.combat.weapon
module WeaponProperties (module WeaponProperties, module SimpleWeaponProperties) where

import SimpleWeaponProperties hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setReloadTime, setReloadTime_super, setReloadTime_impl, getReloadTime, getReloadTime_super, getReloadTime_impl, setTargetingTime, setTargetingTime_super, setTargetingTime_impl, getTargetingTime, getTargetingTime_super, getTargetingTime_impl, getSpeed, getSpeed_super, getSpeed_impl, setSpeed, setSpeed_super, setSpeed_impl, getDamageI, getDamageI_super, getDamageI_impl, toStringArray, toStringArray_super, toStringArray_impl, toString, toString_super, toString_impl, nULL_WEAPON_PROPERTIES, reloadTime, targetingTime, speed, messageSent, mAX, zERO, dAMAGE, rANGE, rELOAD)
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
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified BasicDecimal -- org.allbinary.logic.math.BasicDecimal
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SimpleWeaponProperties

data WeaponProperties = WeaponProperties
    { header_ :: JavaHeader
    , base :: SimpleWeaponProperties.SimpleWeaponProperties
    , reloadTime :: IORef (Int64)
    , targetingTime :: IORef (Int64)
    , speed :: IORef (BasicDecimal.BasicDecimal)
    , mAX :: IORef (Int64)
    , zERO :: IORef (Int16)
    }

instance JavaNull WeaponProperties where
    javaNull = javaNullRecord "WeaponProperties"

instance JavaEquals WeaponProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeaponProperties where
    (==) = jrecordEquals

instance JavaObjectClass WeaponProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_WEAPON_PROPERTIES #-}
nULL_WEAPON_PROPERTIES = unsafePerformIO ((new_5 (0) (0) (0) 0 (Prelude.fromIntegral (0 :: Int))))

{-# NOINLINE messageSent #-}
messageSent = unsafePerformIO (newIORef (False))

dAMAGE = "Damage: "

rANGE = "Range: "

rELOAD = "Reload: "

newRecord_ :: IO WeaponProperties
newRecord_ = do
    base <- SimpleWeaponProperties.newRecord_
    let header_ = base.header_
    reloadTime <- newIORef 0
    targetingTime <- newIORef 0
    speed <- newIORef javaNull
    mAX <- newIORef 0
    zERO <- newIORef 0
    let this = WeaponProperties header_ base reloadTime targetingTime speed mAX zERO
    jregisterLevel header_ this
    jregisterMethod header_ "setReloadTime" (\() -> setReloadTime_impl this)
    jregisterMethod header_ "getReloadTime" (\() -> getReloadTime_impl this)
    jregisterMethod header_ "setTargetingTime" (\() -> setTargetingTime_impl this)
    jregisterMethod header_ "getTargetingTime" (\() -> getTargetingTime_impl this)
    jregisterMethod header_ "getSpeed" (\() -> getSpeed_impl this)
    jregisterMethod header_ "setSpeed" (\() -> setSpeed_impl this)
    jregisterMethod header_ "getDamageI" (\() -> getDamageI_impl this)
    jregisterMethod header_ "toStringArray" (\() -> toStringArray_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: WeaponProperties -> IO ()
initFields_ this = do
    jset this.reloadTime (0)
    jset this.targetingTime (0)
    jset this.speed (BasicDecimal.zERO_BIGDECIMAL)
    jset this.mAX (10240)
    jset this.zERO (0)
    pure ()

new_5 :: Int64 -> Int64 -> Int64 -> Int -> Int16 -> IO WeaponProperties
new_5 reloadTime targetingTime speed damage dissipation = do
    this <- newRecord_
    init_5 this reloadTime targetingTime speed damage dissipation
    pure this

init_5 :: WeaponProperties -> Int64 -> Int64 -> Int64 -> Int -> Int16 -> IO ()
init_5 this reloadTime targetingTime speed damage dissipation = do
        SimpleWeaponProperties.init_ this.base
        initFields_ this
        when (((speed < (jget (this).mAX)) && (speed /= 0)) && (Prelude.not (jget WeaponProperties.messageSent))) $ do
            let mESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append ((jio (StringMaker.new_))) mESSAGE))) speed))))) this (jget (commonStrings).cONSTRUCTOR))
            jset WeaponProperties.messageSent (True)
        Control.Monad.void (WeaponProperties.setReloadTime this reloadTime)
        Control.Monad.void (WeaponProperties.setTargetingTime this targetingTime)
        Control.Monad.void (SimpleWeaponProperties.setDamage this damage)
        Control.Monad.void (SimpleWeaponProperties.setDissipation this dissipation)
        Control.Monad.void (WeaponProperties.setSpeed this (jio (BasicDecimal.new_1 speed)))
        when (dissipation /= (jget (this).zERO)) $ do
            let unscaledDamage = ((jio (getUnscaled ((jget (this).speed)))) * damage)
            let scaledDissipation = (dissipation * (jio (getScaledFactorValue ((jget (this).speed)))))
            let value = ((unscaledDamage `quot` (Prelude.fromIntegral scaledDissipation)))
            Control.Monad.void (SimpleWeaponProperties.setRange this ((Prelude.fromIntegral ((value * 9))) `quot` 10))
        pure ()


setReloadTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setReloadTime object_ a1 = jmethod object_ "setReloadTime" (\() -> (setReloadTime_impl (javaCast object_ :: WeaponProperties))) () a1

setReloadTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setReloadTime_super object_ a1 = (setReloadTime_impl (javaCast object_ :: WeaponProperties)) a1

setReloadTime_impl :: WeaponProperties -> Int64 -> IO (())
setReloadTime_impl this reloadTime = do
        jset (this).reloadTime (reloadTime)
        pure ()


getReloadTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getReloadTime object_ = jmethod object_ "getReloadTime" (\() -> (getReloadTime_impl (javaCast object_ :: WeaponProperties))) ()

getReloadTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getReloadTime_super object_ = (getReloadTime_impl (javaCast object_ :: WeaponProperties))

getReloadTime_impl :: WeaponProperties -> IO (Int64)
getReloadTime_impl this = do
        pure ((jget (this).reloadTime))


setTargetingTime :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTargetingTime object_ a1 = jmethod object_ "setTargetingTime" (\() -> (setTargetingTime_impl (javaCast object_ :: WeaponProperties))) () a1

setTargetingTime_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setTargetingTime_super object_ a1 = (setTargetingTime_impl (javaCast object_ :: WeaponProperties)) a1

setTargetingTime_impl :: WeaponProperties -> Int64 -> IO (())
setTargetingTime_impl this targetingTime = do
        jset (this).targetingTime (targetingTime)
        pure ()


getTargetingTime :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTargetingTime object_ = jmethod object_ "getTargetingTime" (\() -> (getTargetingTime_impl (javaCast object_ :: WeaponProperties))) ()

getTargetingTime_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getTargetingTime_super object_ = (getTargetingTime_impl (javaCast object_ :: WeaponProperties))

getTargetingTime_impl :: WeaponProperties -> IO (Int64)
getTargetingTime_impl this = do
        pure ((jget (this).targetingTime))


getSpeed :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeed object_ = jmethod object_ "getSpeed" (\() -> (getSpeed_impl (javaCast object_ :: WeaponProperties))) ()

getSpeed_super :: (JavaObjectClass this_) => this_ -> IO (BasicDecimal.BasicDecimal)
getSpeed_super object_ = (getSpeed_impl (javaCast object_ :: WeaponProperties))

getSpeed_impl :: WeaponProperties -> IO (BasicDecimal.BasicDecimal)
getSpeed_impl this = do
        pure ((jget (this).speed))


setSpeed :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
setSpeed object_ a1 = jmethod object_ "setSpeed" (\() -> (setSpeed_impl (javaCast object_ :: WeaponProperties))) () a1

setSpeed_super :: (JavaObjectClass this_) => this_ -> BasicDecimal.BasicDecimal -> IO (())
setSpeed_super object_ a1 = (setSpeed_impl (javaCast object_ :: WeaponProperties)) a1

setSpeed_impl :: WeaponProperties -> BasicDecimal.BasicDecimal -> IO (())
setSpeed_impl this speed = do
        jset (this).speed (speed)
        pure ()


getDamageI :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamageI object_ a1 = jmethod object_ "getDamageI" (\() -> (getDamageI_impl (javaCast object_ :: WeaponProperties))) () a1

getDamageI_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamageI_super object_ a1 = (getDamageI_impl (javaCast object_ :: WeaponProperties)) a1

getDamageI_impl :: WeaponProperties -> Int -> IO (Int)
getDamageI_impl this range = do
        pure (((jio (SimpleWeaponProperties.getDamage this)) - (((((jio (SimpleWeaponProperties.getDissipation this)) * range)) / (jio (BasicDecimal.getScaled ((jget (this).speed))))))))


toStringArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray object_ = jmethod object_ "toStringArray" (\() -> (toStringArray_impl (javaCast object_ :: WeaponProperties))) ()

toStringArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray_super object_ = (toStringArray_impl (javaCast object_ :: WeaponProperties))

toStringArray_impl :: WeaponProperties -> IO (JavaArray (String))
toStringArray_impl this = do
        index <- newIORef (0)
        let stringArray = (jnewArray (3) javaNull)
        stringBuffer <- (StringMaker.new_)
        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringBuffer (WeaponProperties.dAMAGE)))) (Prelude.fromInteger (jnumericInteger (jio (SimpleWeaponProperties.getDamage this))))))))
        jsetIndex stringArray ((jpostIncrement index (+ 1))) (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append stringBuffer (WeaponProperties.rANGE)))) (Prelude.fromInteger (jnumericInteger (jio (SimpleWeaponProperties.getRange this))))))))
        jsetIndex stringArray ((jpostIncrement index (+ 1))) (assignedValue)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        assignedValue <- (StringMaker.toString ((jio (StringMaker.appendlong ((jio (StringMaker.append stringBuffer (WeaponProperties.rELOAD)))) (jio (WeaponProperties.getReloadTime this))))))
        jsetIndex stringArray ((jpostIncrement index (+ 1))) (assignedValue)
        pure (stringArray)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: WeaponProperties))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: WeaponProperties))

toString_impl :: WeaponProperties -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.appendint ((jio (StringMaker.append stringBuffer (WeaponProperties.dAMAGE)))) (Prelude.fromInteger (jnumericInteger (jio (SimpleWeaponProperties.getDamage this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.appendint ((jio (StringMaker.append stringBuffer (WeaponProperties.rANGE)))) (Prelude.fromInteger (jnumericInteger (jio (SimpleWeaponProperties.getRange this)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.appendlong ((jio (StringMaker.append stringBuffer (WeaponProperties.rELOAD)))) (jio (WeaponProperties.getReloadTime this)))
        (StringMaker.toString stringBuffer)


