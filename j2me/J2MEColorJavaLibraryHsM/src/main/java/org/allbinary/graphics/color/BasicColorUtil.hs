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
module BasicColorUtil where

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
import qualified BasicColor -- same package or java.lang

data BasicColorUtil = BasicColorUtil
    { header_ :: JavaHeader
    , zERO_ARRAY :: IORef (JavaArray (BasicColor.BasicColor))
    , aLPHA :: IORef (Int)
    , isAlpha :: IORef (Bool)
    , ffOpaque :: IORef (Bool)
    }

instance JavaNull BasicColorUtil where
    javaNull = javaNullRecord "BasicColorUtil"

instance JavaEquals BasicColorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicColorUtil
newRecord_ = do
    header_ <- newJavaHeader
    zERO_ARRAY <- newIORef javaNull
    aLPHA <- newIORef 0
    isAlpha <- newIORef False
    ffOpaque <- newIORef False
    let this = BasicColorUtil header_ zERO_ARRAY aLPHA isAlpha ffOpaque
    jregisterLevel header_ this
    jregisterMethod header_ "getRGB" (\() -> getRGB_impl this)
    jregisterMethod header_ "getARGB" (\() -> getARGB_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "invert" (\() -> invert_impl this)
    pure this

initFields_ :: BasicColorUtil -> IO ()
initFields_ this = do
    jset this.zERO_ARRAY ((jnewArray (0) javaNull))
    jset this.aLPHA (0xFF000000)
    jset this.isAlpha (True)
    jset this.ffOpaque (True)
    pure ()

new_ :: IO BasicColorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicColorUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicColorUtil)
getInstance = do
        pure (BasicColorUtil.instance_)


getRGB :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getRGB object_ a1 a2 a3 = jmethod object_ "getRGB" (\() -> (getRGB_impl (javaCast object_ :: BasicColorUtil))) () a1 a2 a3

getRGB_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (Int)
getRGB_super object_ a1 a2 a3 = (getRGB_impl (javaCast object_ :: BasicColorUtil)) a1 a2 a3

getRGB_impl :: BasicColorUtil -> Int -> Int -> Int -> IO (Int)
getRGB_impl this red green blue = do
        value <- newIORef (0)
        when (jget (this).isAlpha) $ do
            when (jget (this).ffOpaque) $ do
                jset value ((jget (this).aLPHA))
        jset value ((((red `Data.Bits.shiftL` 16)) Data.Bits..|. (jget value)))
        jset value ((((green `Data.Bits.shiftL` 8)) Data.Bits..|. (jget value)))
        jset value ((blue Data.Bits..|. (jget value)))
        pure ((jget value))


getARGB :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (Int)
getARGB object_ a1 a2 a3 a4 = jmethod object_ "getARGB" (\() -> (getARGB_impl (javaCast object_ :: BasicColorUtil))) () a1 a2 a3 a4

getARGB_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (Int)
getARGB_super object_ a1 a2 a3 a4 = (getARGB_impl (javaCast object_ :: BasicColorUtil)) a1 a2 a3 a4

getARGB_impl :: BasicColorUtil -> Int -> Int -> Int -> Int -> IO (Int)
getARGB_impl this alphaValue r g b = do
        pure ((((((((alphaValue `Data.Bits.shiftL` 24)) Data.Bits..&. (jget (this).aLPHA))) + ((((r `Data.Bits.shiftL` 16)) Data.Bits..&. 0x00FF0000))) + ((((g `Data.Bits.shiftL` 8)) Data.Bits..&. 0x0000FF00))) + ((b Data.Bits..&. 0x000000FF))))


get :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
get object_ a1 a2 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: BasicColorUtil))) () a1 a2

get_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Int)
get_super object_ a1 a2 = (get_impl (javaCast object_ :: BasicColorUtil)) a1 a2

get_impl :: BasicColorUtil -> Int -> Int -> IO (Int)
get_impl this alphaValue color = do
        pure ((((((alphaValue `Data.Bits.shiftL` 24)) Data.Bits..&. (jget (this).aLPHA))) + color))


invert :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
invert object_ a1 = jmethod object_ "invert" (\() -> (invert_impl (javaCast object_ :: BasicColorUtil))) () a1

invert_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
invert_super object_ a1 = (invert_impl (javaCast object_ :: BasicColorUtil)) a1

invert_impl :: BasicColorUtil -> Int -> IO (Int)
invert_impl this color = do
        pure ((((0xFFFFFF - color)) Data.Bits..|. (jget (this).aLPHA)))


