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
-- package org.allbinary.graphics.color
module ColorTemperatureUtil where

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
import qualified BasicColorFactory -- same package or java.lang
import qualified BasicColor -- same package or java.lang

data ColorTemperatureUtil = ColorTemperatureUtil
    { header_ :: JavaHeader
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    }

instance JavaNull ColorTemperatureUtil where
    javaNull = javaNullRecord "ColorTemperatureUtil"

instance JavaEquals ColorTemperatureUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorTemperatureUtil where
    (==) = jrecordEquals

instance JavaObjectClass ColorTemperatureUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorTemperatureUtil
newRecord_ = do
    header_ <- newJavaHeader
    basicColorFactory <- newIORef javaNull
    let this = ColorTemperatureUtil header_ basicColorFactory
    jregisterLevel header_ this
    jregisterMethod header_ "getBasicColor" (\() -> getBasicColor_impl this)
    pure this

initFields_ :: ColorTemperatureUtil -> IO ()
initFields_ this = do
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    pure ()

new_ :: IO ColorTemperatureUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorTemperatureUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ColorTemperatureUtil)
getInstance = do
        pure (ColorTemperatureUtil.instance_)


getBasicColor :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getBasicColor object_ a1 = jmethod object_ "getBasicColor" (\() -> (getBasicColor_impl (javaCast object_ :: ColorTemperatureUtil))) () a1

getBasicColor_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getBasicColor_super object_ a1 = (getBasicColor_impl (javaCast object_ :: ColorTemperatureUtil)) a1

getBasicColor_impl :: ColorTemperatureUtil -> Int -> IO (BasicColor.BasicColor)
getBasicColor_impl this thirdTemp = do
        basicColor <- newIORef ((jget ((jget (this).basicColorFactory)).rED))
        if (thirdTemp > 3700) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).pURPLE))
        else if (thirdTemp > 3200) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).bLUE))
        else if (thirdTemp > 2700) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).pUCE))
        else if (thirdTemp > 2200) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).wHITE))
        else if (thirdTemp > 1700) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).gREEN))
        else if (thirdTemp > 1200) then do
            jset basicColor ((jget ((jget (this).basicColorFactory)).yELLOW))
        else when (thirdTemp > 700) $ do
            jset basicColor ((jget ((jget (this).basicColorFactory)).oRANGE))
        pure ((jget basicColor))


