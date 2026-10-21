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
-- package org.allbinary.graphics
module PointFactory where

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
import qualified GPoint -- same package or java.lang
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified JsProperty -- jsinterop.annotations.JsProperty

data PointFactory = PointFactory
    { header_ :: JavaHeader
    , zERO_ZERO :: IORef (GPoint.GPoint)
    }

instance JavaNull PointFactory where
    javaNull = javaNullRecord "PointFactory"

instance JavaEquals PointFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointFactory where
    (==) = jrecordEquals

instance JavaObjectClass PointFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointFactory
newRecord_ = do
    header_ <- newJavaHeader
    zERO_ZERO <- newIORef javaNull
    let this = PointFactory header_ zERO_ZERO
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "createXY" (\() -> createXY_impl this)
    jregisterMethod header_ "createXYZ" (\() -> createXYZ_impl this)
    pure this

initFields_ :: PointFactory -> IO ()
initFields_ this = do
    jset this.zERO_ZERO =<< (PointFactory.createXYZ this 0 0 0)
    pure ()


getInstance :: IO (PointFactory)
getInstance = do
        pure (PointFactory.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PointFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: PointFactory))

init_impl :: PointFactory -> IO (())
init_impl this = do
        pure ()

new_ :: IO PointFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


createXY :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
createXY object_ a1 a2 = jmethod object_ "createXY" (\() -> (createXY_impl (javaCast object_ :: PointFactory))) () a1 a2

createXY_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
createXY_super object_ a1 a2 = (createXY_impl (javaCast object_ :: PointFactory)) a1 a2

createXY_impl :: PointFactory -> Int -> Int -> IO (GPoint.GPoint)
createXY_impl this x y = do
        (GPoint.new_3 x y 0)


createXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (GPoint.GPoint)
createXYZ object_ a1 a2 a3 = jmethod object_ "createXYZ" (\() -> (createXYZ_impl (javaCast object_ :: PointFactory))) () a1 a2 a3

createXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (GPoint.GPoint)
createXYZ_super object_ a1 a2 a3 = (createXYZ_impl (javaCast object_ :: PointFactory)) a1 a2 a3

createXYZ_impl :: PointFactory -> Int -> Int -> Int -> IO (GPoint.GPoint)
createXYZ_impl this x y z = do
        (GPoint.new_3 x y z)


