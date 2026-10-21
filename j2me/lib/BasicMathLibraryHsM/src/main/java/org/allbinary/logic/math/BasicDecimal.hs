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
-- package org.allbinary.logic.math
module BasicDecimal where

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
import qualified ScaleFactorFactory -- same package or java.lang

data BasicDecimal = BasicDecimal
    { header_ :: JavaHeader
    , units :: IORef (Int64)
    , scaled :: IORef (Int)
    , factor :: IORef (Int)
    , factorValue :: IORef (Int)
    }

instance JavaNull BasicDecimal where
    javaNull = javaNullRecord "BasicDecimal"

instance JavaEquals BasicDecimal where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicDecimal where
    (==) = jrecordEquals

instance JavaObjectClass BasicDecimal where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE zERO_BIGDECIMAL #-}
zERO_BIGDECIMAL = unsafePerformIO ((new_1 0))

newRecord_ :: IO BasicDecimal
newRecord_ = do
    header_ <- newJavaHeader
    units <- newIORef 0
    scaled <- newIORef 0
    factor <- newIORef 0
    factorValue <- newIORef 0
    let this = BasicDecimal header_ units scaled factor factorValue
    jregisterLevel header_ this
    jregisterMethod header_ "setint" (\() -> setint_impl this)
    jregisterMethod header_ "setlong" (\() -> setlong_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "addint" (\() -> addint_impl this)
    jregisterMethod header_ "addlong" (\() -> addlong_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "subtractint" (\() -> subtractint_impl this)
    jregisterMethod header_ "subtractlong" (\() -> subtractlong_impl this)
    jregisterMethod header_ "subtract" (\() -> subtract_impl this)
    jregisterMethod header_ "multiplyint" (\() -> multiplyint_impl this)
    jregisterMethod header_ "multiplylong" (\() -> multiplylong_impl this)
    jregisterMethod header_ "multiply" (\() -> multiply_impl this)
    jregisterMethod header_ "divideint" (\() -> divideint_impl this)
    jregisterMethod header_ "dividelong" (\() -> dividelong_impl this)
    jregisterMethod header_ "divide" (\() -> divide_impl this)
    jregisterMethod header_ "getUnscaled" (\() -> getUnscaled_impl this)
    jregisterMethod header_ "updateScaled" (\() -> updateScaled_impl this)
    jregisterMethod header_ "getScaled" (\() -> getScaled_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getScaledFactor" (\() -> getScaledFactor_impl this)
    jregisterMethod header_ "getScaledFactorValue" (\() -> getScaledFactorValue_impl this)
    pure this

initFields_ :: BasicDecimal -> IO ()
initFields_ this = do
    jset this.units (0)
    jset this.scaled (0)
    jset this.factor ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_FACTOR))
    jset this.factorValue ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_VALUE))
    pure ()


createBigDecimal :: BasicDecimal -> IO (BasicDecimal)
createBigDecimal bigDecimal = do
        (new_1 (jio (BasicDecimal.getUnscaled bigDecimal)))

new_1 :: Int64 -> IO BasicDecimal
new_1 units = do
    this <- newRecord_
    init_1 this units
    pure this

init_1 :: BasicDecimal -> Int64 -> IO ()
init_1 this units = do
        initFields_ this
        jset (this).units (units)
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


setint :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setint object_ a1 = jmethod object_ "setint" (\() -> (setint_impl (javaCast object_ :: BasicDecimal))) () a1

setint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setint_super object_ a1 = (setint_impl (javaCast object_ :: BasicDecimal)) a1

setint_impl :: BasicDecimal -> Int -> IO (())
setint_impl this value = do
        jset (this).units ((Prelude.fromIntegral value))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


setlong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setlong object_ a1 = jmethod object_ "setlong" (\() -> (setlong_impl (javaCast object_ :: BasicDecimal))) () a1

setlong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setlong_super object_ a1 = (setlong_impl (javaCast object_ :: BasicDecimal)) a1

setlong_impl :: BasicDecimal -> Int64 -> IO (())
setlong_impl this value = do
        jset (this).units (value)
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


set :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: BasicDecimal))) () a1

set_super :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: BasicDecimal)) a1

set_impl :: BasicDecimal -> BasicDecimal -> IO (())
set_impl this bigDecimal = do
        assignedValue <- (BasicDecimal.getUnscaled bigDecimal)
        jset (this).units (assignedValue)
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


addint :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addint object_ a1 = jmethod object_ "addint" (\() -> (addint_impl (javaCast object_ :: BasicDecimal))) () a1

addint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addint_super object_ a1 = (addint_impl (javaCast object_ :: BasicDecimal)) a1

addint_impl :: BasicDecimal -> Int -> IO (())
addint_impl this value = do
        jset (this).units (((jget (this).units) + (Prelude.fromIntegral value)))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


addlong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
addlong object_ a1 = jmethod object_ "addlong" (\() -> (addlong_impl (javaCast object_ :: BasicDecimal))) () a1

addlong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
addlong_super object_ a1 = (addlong_impl (javaCast object_ :: BasicDecimal)) a1

addlong_impl :: BasicDecimal -> Int64 -> IO (())
addlong_impl this value = do
        jset (this).units (((jget (this).units) + value))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BasicDecimal))) () a1

add_super :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BasicDecimal)) a1

add_impl :: BasicDecimal -> BasicDecimal -> IO (())
add_impl this bigDecimal = do
        jset (this).units (((jget (this).units) + (jio (BasicDecimal.getUnscaled bigDecimal))))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


subtractint :: (JavaObjectClass this_) => this_ -> Int -> IO (())
subtractint object_ a1 = jmethod object_ "subtractint" (\() -> (subtractint_impl (javaCast object_ :: BasicDecimal))) () a1

subtractint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
subtractint_super object_ a1 = (subtractint_impl (javaCast object_ :: BasicDecimal)) a1

subtractint_impl :: BasicDecimal -> Int -> IO (())
subtractint_impl this value = do
        jset (this).units (((jget (this).units) - (Prelude.fromIntegral value)))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


subtractlong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
subtractlong object_ a1 = jmethod object_ "subtractlong" (\() -> (subtractlong_impl (javaCast object_ :: BasicDecimal))) () a1

subtractlong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
subtractlong_super object_ a1 = (subtractlong_impl (javaCast object_ :: BasicDecimal)) a1

subtractlong_impl :: BasicDecimal -> Int64 -> IO (())
subtractlong_impl this value = do
        jset (this).units (((jget (this).units) - value))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


subtract :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
subtract object_ a1 = jmethod object_ "subtract" (\() -> (subtract_impl (javaCast object_ :: BasicDecimal))) () a1

subtract_super :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
subtract_super object_ a1 = (subtract_impl (javaCast object_ :: BasicDecimal)) a1

subtract_impl :: BasicDecimal -> BasicDecimal -> IO (())
subtract_impl this bigDecimal = do
        jset (this).units (((jget (this).units) - (jio (BasicDecimal.getUnscaled bigDecimal))))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


multiplyint :: (JavaObjectClass this_) => this_ -> Int -> IO (())
multiplyint object_ a1 = jmethod object_ "multiplyint" (\() -> (multiplyint_impl (javaCast object_ :: BasicDecimal))) () a1

multiplyint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
multiplyint_super object_ a1 = (multiplyint_impl (javaCast object_ :: BasicDecimal)) a1

multiplyint_impl :: BasicDecimal -> Int -> IO (())
multiplyint_impl this value = do
        jset (this).units (((jget (this).units) * (Prelude.fromIntegral value)))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


multiplylong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
multiplylong object_ a1 = jmethod object_ "multiplylong" (\() -> (multiplylong_impl (javaCast object_ :: BasicDecimal))) () a1

multiplylong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
multiplylong_super object_ a1 = (multiplylong_impl (javaCast object_ :: BasicDecimal)) a1

multiplylong_impl :: BasicDecimal -> Int64 -> IO (())
multiplylong_impl this value = do
        jset (this).units (((jget (this).units) * value))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


multiply :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
multiply object_ a1 = jmethod object_ "multiply" (\() -> (multiply_impl (javaCast object_ :: BasicDecimal))) () a1

multiply_super :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
multiply_super object_ a1 = (multiply_impl (javaCast object_ :: BasicDecimal)) a1

multiply_impl :: BasicDecimal -> BasicDecimal -> IO (())
multiply_impl this bigDecimal = do
        jset (this).units (((jget (this).units) * (jio (BasicDecimal.getUnscaled bigDecimal))))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


divideint :: (JavaObjectClass this_) => this_ -> Int -> IO (())
divideint object_ a1 = jmethod object_ "divideint" (\() -> (divideint_impl (javaCast object_ :: BasicDecimal))) () a1

divideint_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
divideint_super object_ a1 = (divideint_impl (javaCast object_ :: BasicDecimal)) a1

divideint_impl :: BasicDecimal -> Int -> IO (())
divideint_impl this value = do
        jset (this).units (((jget (this).units) `quot` (Prelude.fromIntegral value)))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


dividelong :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
dividelong object_ a1 = jmethod object_ "dividelong" (\() -> (dividelong_impl (javaCast object_ :: BasicDecimal))) () a1

dividelong_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
dividelong_super object_ a1 = (dividelong_impl (javaCast object_ :: BasicDecimal)) a1

dividelong_impl :: BasicDecimal -> Int64 -> IO (())
dividelong_impl this value = do
        jset (this).units (((jget (this).units) `quot` value))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


divide :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
divide object_ a1 = jmethod object_ "divide" (\() -> (divide_impl (javaCast object_ :: BasicDecimal))) () a1

divide_super :: (JavaObjectClass this_) => this_ -> BasicDecimal -> IO (())
divide_super object_ a1 = (divide_impl (javaCast object_ :: BasicDecimal)) a1

divide_impl :: BasicDecimal -> BasicDecimal -> IO (())
divide_impl this bigDecimal = do
        jset (this).units (((jget (this).units) `quot` (jio (BasicDecimal.getUnscaled bigDecimal))))
        Control.Monad.void (BasicDecimal.updateScaled this)
        pure ()


getUnscaled :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnscaled object_ = jmethod object_ "getUnscaled" (\() -> (getUnscaled_impl (javaCast object_ :: BasicDecimal))) ()

getUnscaled_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnscaled_super object_ = (getUnscaled_impl (javaCast object_ :: BasicDecimal))

getUnscaled_impl :: BasicDecimal -> IO (Int64)
getUnscaled_impl this = do
        pure ((jget (this).units))


updateScaled :: (JavaObjectClass this_) => this_ -> IO (())
updateScaled object_ = jmethod object_ "updateScaled" (\() -> (updateScaled_impl (javaCast object_ :: BasicDecimal))) ()

updateScaled_super :: (JavaObjectClass this_) => this_ -> IO (())
updateScaled_super object_ = (updateScaled_impl (javaCast object_ :: BasicDecimal))

updateScaled_impl :: BasicDecimal -> IO (())
updateScaled_impl this = do
        jset (this).scaled ((Prelude.fromIntegral (((jget (this).units) `quot` (Prelude.fromIntegral (jget (this).factorValue))))))
        pure ()


getScaled :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaled object_ = jmethod object_ "getScaled" (\() -> (getScaled_impl (javaCast object_ :: BasicDecimal))) ()

getScaled_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaled_super object_ = (getScaled_impl (javaCast object_ :: BasicDecimal))

getScaled_impl :: BasicDecimal -> IO (Int)
getScaled_impl this = do
        pure ((jget (this).scaled))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BasicDecimal))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BasicDecimal))

toString_impl :: BasicDecimal -> IO (String)
toString_impl this = do
        pure ((javaToString (jget (this).units)))


getScaledFactor :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaledFactor object_ = jmethod object_ "getScaledFactor" (\() -> (getScaledFactor_impl (javaCast object_ :: BasicDecimal))) ()

getScaledFactor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaledFactor_super object_ = (getScaledFactor_impl (javaCast object_ :: BasicDecimal))

getScaledFactor_impl :: BasicDecimal -> IO (Int)
getScaledFactor_impl this = do
        pure ((jget (this).factor))


getScaledFactorValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaledFactorValue object_ = jmethod object_ "getScaledFactorValue" (\() -> (getScaledFactorValue_impl (javaCast object_ :: BasicDecimal))) ()

getScaledFactorValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getScaledFactorValue_super object_ = (getScaledFactorValue_impl (javaCast object_ :: BasicDecimal))

getScaledFactorValue_impl :: BasicDecimal -> IO (Int)
getScaledFactorValue_impl this = do
        pure ((jget (this).factorValue))


