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
-- package org.allbinary.business.user.commerce.money
module Money where

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
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings

data Money = Money
    { header_ :: JavaHeader
    , units :: IORef (Int64)
    , dEFAULT_CURRENCY :: IORef (String)
    }

instance JavaNull Money where
    javaNull = javaNullRecord "Money"

instance JavaEquals Money where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Money where
    (==) = jrecordEquals

instance JavaObjectClass Money where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Money
newRecord_ = do
    header_ <- newJavaHeader
    units <- newIORef javaNull
    dEFAULT_CURRENCY <- newIORef ""
    let this = Money header_ units dEFAULT_CURRENCY
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "add_overload1" (\() -> add_overload1_impl this)
    jregisterMethod header_ "add_overload2" (\() -> add_overload2_impl this)
    jregisterMethod header_ "subtract" (\() -> subtract_impl this)
    jregisterMethod header_ "multiply_overload1" (\() -> multiply_overload1_impl this)
    jregisterMethod header_ "multiply_overload2" (\() -> multiply_overload2_impl this)
    jregisterMethod header_ "convertUnitsTo" (\() -> convertUnitsTo_impl this)
    jregisterMethod header_ "convertUsdToUnits" (\() -> convertUsdToUnits_impl this)
    jregisterMethod header_ "getUnits" (\() -> getUnits_impl this)
    jregisterMethod header_ "getUnitsLong" (\() -> getUnitsLong_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Money -> IO ()
initFields_ this = do
    jset this.units (javaNull)
    jset this.dEFAULT_CURRENCY ("USD")
    pure ()

new_1 :: Money -> IO Money
new_1 money = do
    this <- newRecord_
    init_1 this money
    pure this

init_1 :: Money -> Money -> IO ()
init_1 this money = do
        initFields_ this
        jset (this).units ((Prelude.fromIntegral ((jio (Money.getUnits money))) :: Int64))
        pure ()

new_ :: IO Money
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Money -> IO ()
init_ this = do
        initFields_ this
        jset (this).units ((Prelude.fromIntegral (0) :: Int64))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: String -> IO Money
new_1 usDollarStr = do
    this <- newRecord_
    init_1 this usDollarStr
    pure this

init_1 :: Money -> String -> IO ()
init_1 this usDollarStr = do
        initFields_ this
        when ((usDollarStr /= javaNull) && (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) usDollarStr))) $ do
            jset (this).units ((Prelude.fromIntegral ((jio (Money.convertUsdToUnits this usDollarStr))) :: Int64))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Int64 -> IO Money
new_1 units = do
    this <- newRecord_
    init_1 this units
    pure this

init_1 :: Money -> Int64 -> IO ()
init_1 this units = do
        initFields_ this
        jset (this).units ((Prelude.fromIntegral (units) :: Int64))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Money))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Money))

isValid_impl :: Money -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        if ((((jget (this).units) /= javaNull) && ((jget (this).units) > 0)) && ((jget (this).units) < (Prelude.maxBound :: Int64))) then do
            javaReturn (True)
        else do
            javaReturn (False)


-- Java overloads of add: calls the overload for the types of the arguments
add :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
add this a1
    | jisInstanceOf a1 (javaNull :: Money) = add_overload1 this (javaCast a1 :: Money)
    | jisInstanceOf a1 (javaNull :: String) = add_overload2 this (javaCast a1 :: String)
    | otherwise = add_overload2 this (javaCast a1 :: String)

add_overload1 :: (JavaObjectClass this_) => this_ -> Money -> IO (())
add_overload1 object_ a1 = jmethod object_ "add_overload1" (\() -> (add_overload1_impl (javaCast object_ :: Money))) () a1

add_overload1_super :: (JavaObjectClass this_) => this_ -> Money -> IO (())
add_overload1_super object_ a1 = (add_overload1_impl (javaCast object_ :: Money)) a1

add_overload1_impl :: Money -> Money -> IO (())
add_overload1_impl this moreMoney = do
        Control.Monad.void (Money.add this (jio (Money.toString moreMoney)))
        pure ()


add_overload2 :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_overload2 object_ a1 = jmethod object_ "add_overload2" (\() -> (add_overload2_impl (javaCast object_ :: Money))) () a1

add_overload2_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_overload2_super object_ a1 = (add_overload2_impl (javaCast object_ :: Money)) a1

add_overload2_impl :: Money -> String -> IO (())
add_overload2_impl this usDollarStr = do
        jset (this).units ((Prelude.fromIntegral (((jget (this).units) + (jio (Money.convertUsdToUnits this usDollarStr)))) :: Int64))
        pure ()


subtract :: (JavaObjectClass this_) => this_ -> String -> IO (())
subtract object_ a1 = jmethod object_ "subtract" (\() -> (subtract_impl (javaCast object_ :: Money))) () a1

subtract_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
subtract_super object_ a1 = (subtract_impl (javaCast object_ :: Money)) a1

subtract_impl :: Money -> String -> IO (())
subtract_impl this usDollarStr = do
        jset (this).units ((Prelude.fromIntegral (((jget (this).units) - (jio (Money.convertUsdToUnits this usDollarStr)))) :: Int64))
        pure ()


-- Java overloads of multiply: calls the overload for the types of the arguments
multiply :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
multiply this a1
    | jisInstanceOf a1 (javaNull :: Float) = multiply_overload1 this (javaCast a1 :: Float)
    | jisInstanceOf a1 (javaNull :: Int) = multiply_overload2 this (javaCast a1 :: Int)
    | otherwise = multiply_overload2 this (javaCast a1 :: Int)

multiply_overload1 :: (JavaObjectClass this_) => this_ -> Float -> IO (())
multiply_overload1 object_ a1 = jmethod object_ "multiply_overload1" (\() -> (multiply_overload1_impl (javaCast object_ :: Money))) () a1

multiply_overload1_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
multiply_overload1_super object_ a1 = (multiply_overload1_impl (javaCast object_ :: Money)) a1

multiply_overload1_impl :: Money -> Float -> IO (())
multiply_overload1_impl this multiplier = do
        jset (this).units ((Prelude.fromIntegral ((Prelude.fromIntegral ((Prelude.fromIntegral (jget (this).units)) * multiplier))) :: Int64))
        pure ()


multiply_overload2 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
multiply_overload2 object_ a1 = jmethod object_ "multiply_overload2" (\() -> (multiply_overload2_impl (javaCast object_ :: Money))) () a1

multiply_overload2_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
multiply_overload2_super object_ a1 = (multiply_overload2_impl (javaCast object_ :: Money)) a1

multiply_overload2_impl :: Money -> Int -> IO (())
multiply_overload2_impl this multiplier = do
        jset (this).units ((Prelude.fromIntegral (((jget (this).units) * (Prelude.fromIntegral multiplier))) :: Int64))
        pure ()


convertUnitsTo :: (JavaObjectClass this_) => this_ -> String -> IO (String)
convertUnitsTo object_ a1 = jmethod object_ "convertUnitsTo" (\() -> (convertUnitsTo_impl (javaCast object_ :: Money))) () a1

convertUnitsTo_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
convertUnitsTo_super object_ a1 = (convertUnitsTo_impl (javaCast object_ :: Money)) a1

convertUnitsTo_impl :: Money -> String -> IO (String)
convertUnitsTo_impl this currency = do
        stringBuffer <- (StringMaker.new_)
        when ((Prelude.fromEnum (Prelude.compare currency (jget (this).dEFAULT_CURRENCY)) - 1) == 0) $ do
            let dollar = ((jget (this).units) `quot` 100)
            let cents = ((jget (this).units) - ((dollar * 100)))
            Control.Monad.void (StringMaker.append stringBuffer (javaToString (Prelude.fromIntegral (dollar) :: Int64)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
            when (cents < 10) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
            Control.Monad.void (StringMaker.append stringBuffer (javaToString (Prelude.fromIntegral (cents) :: Int64)))
        (StringMaker.toString stringBuffer)


convertUsdToUnits :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
convertUsdToUnits object_ a1 = jmethod object_ "convertUsdToUnits" (\() -> (convertUsdToUnits_impl (javaCast object_ :: Money))) () a1

convertUsdToUnits_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int64)
convertUsdToUnits_super object_ a1 = (convertUsdToUnits_impl (javaCast object_ :: Money)) a1

convertUsdToUnits_impl :: Money -> String -> IO (Int64)
convertUsdToUnits_impl this usDollarStr = do
        localUnit <- newIORef (0)
        let index = (jstringIndexOf usDollarStr (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP) 0)
        stringUtil <- (StringUtil.getInstance)
        dollarStr <- newIORef ((jget (stringUtil).eMPTY_STRING))
        centsStr <- newIORef ((jget (stringUtil).eMPTY_STRING))
        if (index < 1) then do
            assignedValue <- (jnewString usDollarStr)
            jset dollarStr (assignedValue)
            jset centsStr ("00")
        else do
            assignedValue <- (jnewString (Prelude.take ((index) - (0)) (Prelude.drop (0) usDollarStr)))
            jset dollarStr (assignedValue)
            assignedValue <- (jnewString (Prelude.drop (index + 1) usDollarStr))
            jset centsStr (assignedValue)
        jset localUnit ((Prelude.fromIntegral (((Prelude.fromIntegral ((jget dollarStr)) :: Int64) * 100)) :: Int64))
        jset localUnit (((jget localUnit) + (Prelude.fromIntegral ((jget centsStr)) :: Int64)))
        pure ((jget localUnit))


getUnits :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnits object_ = jmethod object_ "getUnits" (\() -> (getUnits_impl (javaCast object_ :: Money))) ()

getUnits_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnits_super object_ = (getUnits_impl (javaCast object_ :: Money))

getUnits_impl :: Money -> IO (Int64)
getUnits_impl this = do
        pure ((jget (this).units))


getUnitsLong :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnitsLong object_ = jmethod object_ "getUnitsLong" (\() -> (getUnitsLong_impl (javaCast object_ :: Money))) ()

getUnitsLong_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getUnitsLong_super object_ = (getUnitsLong_impl (javaCast object_ :: Money))

getUnitsLong_impl :: Money -> IO (Int64)
getUnitsLong_impl this = do
        pure ((jget (this).units))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Money))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Money))

toString_impl :: Money -> IO (String)
toString_impl this = do
        (jnewString (jio (Money.convertUnitsTo this (jget (this).dEFAULT_CURRENCY))))


