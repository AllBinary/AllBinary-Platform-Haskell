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
-- package org.allbinary.media.image.comparison.color
module ColorDelta where

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
import qualified Any -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CacheableInterface -- org.allbinary.logic.util.cache.CacheableInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps

-- implements CacheableInterface
data ColorDelta = ColorDelta
    { header_ :: JavaHeader
    , rgb1 :: IORef (Int)
    , rgb2 :: IORef (Int)
    , key :: IORef (Any.Any)
    }

instance JavaNull ColorDelta where
    javaNull = javaNullRecord "ColorDelta"

instance JavaEquals ColorDelta where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorDelta where
    (==) = jrecordEquals

instance JavaObjectClass ColorDelta where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorDelta
newRecord_ = do
    header_ <- newJavaHeader
    rgb1 <- newIORef 0
    rgb2 <- newIORef 0
    key <- newIORef javaNull
    let this = ColorDelta header_ rgb1 rgb2 key
    jregisterLevel header_ this
    CacheableInterface.registerInterface_ header_
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "getRgb1" (\() -> getRgb1_impl this)
    jregisterMethod header_ "setRgb1" (\() -> setRgb1_impl this)
    jregisterMethod header_ "getRgb2" (\() -> getRgb2_impl this)
    jregisterMethod header_ "setRgb2" (\() -> setRgb2_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ColorDelta -> IO ()
initFields_ this = do
    jset this.rgb1 (0)
    jset this.rgb2 (0)
    jset this.key (javaNull)
    pure ()

new_2 :: Int -> Int -> IO ColorDelta
new_2 rgb1 rgb2 = do
    this <- newRecord_
    init_2 this rgb1 rgb2
    pure this

init_2 :: ColorDelta -> Int -> Int -> IO ()
init_2 this rgb1 rgb2 = do
        initFields_ this
        Control.Monad.void (ColorDelta.setRgb1 this rgb1)
        Control.Monad.void (ColorDelta.setRgb2 this rgb2)
        assignedValue <- (ColorDelta.getKey rgb1 rgb2)
        jset (this).key (assignedValue)
        pure ()


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: ColorDelta))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: ColorDelta))

getKey_impl :: ColorDelta -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (jget (this).key)))


-- Java overload of getKey with a different parameter count: give it a different name
getKey :: Int -> Int -> IO (Any.Any)
getKey rgb1 rgb2 = do
        (fmap jtoObject (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (javaToString rgb1)))) (jget ((jio (CommonSeps.getInstance))).uNDERSCORE)))) (javaToString rgb2))))))


getRgb1 :: (JavaObjectClass this_) => this_ -> IO (Int)
getRgb1 object_ = jmethod object_ "getRgb1" (\() -> (getRgb1_impl (javaCast object_ :: ColorDelta))) ()

getRgb1_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRgb1_super object_ = (getRgb1_impl (javaCast object_ :: ColorDelta))

getRgb1_impl :: ColorDelta -> IO (Int)
getRgb1_impl this = do
        pure ((jget (this).rgb1))


setRgb1 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRgb1 object_ a1 = jmethod object_ "setRgb1" (\() -> (setRgb1_impl (javaCast object_ :: ColorDelta))) () a1

setRgb1_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRgb1_super object_ a1 = (setRgb1_impl (javaCast object_ :: ColorDelta)) a1

setRgb1_impl :: ColorDelta -> Int -> IO (())
setRgb1_impl this rgb1 = do
        jset (this).rgb1 (rgb1)
        pure ()


getRgb2 :: (JavaObjectClass this_) => this_ -> IO (Int)
getRgb2 object_ = jmethod object_ "getRgb2" (\() -> (getRgb2_impl (javaCast object_ :: ColorDelta))) ()

getRgb2_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRgb2_super object_ = (getRgb2_impl (javaCast object_ :: ColorDelta))

getRgb2_impl :: ColorDelta -> IO (Int)
getRgb2_impl this = do
        pure ((jget (this).rgb2))


setRgb2 :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRgb2 object_ a1 = jmethod object_ "setRgb2" (\() -> (setRgb2_impl (javaCast object_ :: ColorDelta))) () a1

setRgb2_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRgb2_super object_ a1 = (setRgb2_impl (javaCast object_ :: ColorDelta)) a1

setRgb2_impl :: ColorDelta -> Int -> IO (())
setRgb2_impl this rgb2 = do
        jset (this).rgb2 (rgb2)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ColorDelta))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ColorDelta))

toString_impl :: ColorDelta -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "ColorDelta: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (ColorDelta.getKey this))))))) " RGB1: "))) (jio (ColorDelta.getRgb1 this))))) " RGB2: "))) (jio (ColorDelta.getRgb2 this))))))


