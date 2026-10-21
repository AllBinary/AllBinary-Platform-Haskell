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
module CustomGPoint (module CustomGPoint, module GPoint) where

import GPoint hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstance3, getInstance3_super, getInstance3_impl, setX, setX_super, setX_impl, getX, getX_super, getX_impl, setY, setY_super, setY_impl, getY, getY_super, getY_impl, setZ, setZ_super, setZ_impl, getZ, getZ_super, getZ_impl, nULL_CUSTOM_POINT, cx, cy, cz)
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
import qualified GPoint

data CustomGPoint = CustomGPoint
    { header_ :: JavaHeader
    , base :: GPoint.GPoint
    , cx :: IORef (Int)
    , cy :: IORef (Int)
    , cz :: IORef (Int)
    }

instance JavaNull CustomGPoint where
    javaNull = javaNullRecord "CustomGPoint"

instance JavaEquals CustomGPoint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomGPoint where
    (==) = jrecordEquals

instance JavaObjectClass CustomGPoint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_CUSTOM_POINT #-}
nULL_CUSTOM_POINT = unsafePerformIO ((new_3 0 0 0))

newRecord_ :: IO CustomGPoint
newRecord_ = do
    base <- GPoint.newRecord_
    let header_ = base.header_
    cx <- newIORef 0
    cy <- newIORef 0
    cz <- newIORef 0
    let this = CustomGPoint header_ base cx cy cz
    jregisterLevel header_ this
    jregisterMethod header_ "setX" (\() -> setX_impl this)
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "setY" (\() -> setY_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "setZ" (\() -> setZ_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    pure this

initFields_ :: CustomGPoint -> IO ()
initFields_ this = do
    jset this.cx (0)
    jset this.cy (0)
    jset this.cz (0)
    pure ()


getInstance :: GPoint.GPoint -> IO (CustomGPoint)
getInstance point = do
        (new_3 (jio (GPoint.getX point)) (jio (GPoint.getY point)) (jio (GPoint.getZ point)))


getInstance3 :: Int -> Int -> IO (CustomGPoint)
getInstance3 x y = do
        (new_3 x y 3)

new_3 :: Int -> Int -> Int -> IO CustomGPoint
new_3 x y z = do
    this <- newRecord_
    init_3 this x y z
    pure this

init_3 :: CustomGPoint -> Int -> Int -> Int -> IO ()
init_3 this x y z = do
        GPoint.init_3 this.base (x) (y) (z)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX object_ a1 = jmethod object_ "setX" (\() -> (setX_impl (javaCast object_ :: CustomGPoint))) () a1

setX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX_super object_ a1 = (setX_impl (javaCast object_ :: CustomGPoint)) a1

setX_impl :: CustomGPoint -> Int -> IO (())
setX_impl this x = do
        jset (this).cx (x)
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: CustomGPoint))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: CustomGPoint))

getX_impl :: CustomGPoint -> IO (Int)
getX_impl this = do
        pure ((jget (this).cx))


setY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY object_ a1 = jmethod object_ "setY" (\() -> (setY_impl (javaCast object_ :: CustomGPoint))) () a1

setY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY_super object_ a1 = (setY_impl (javaCast object_ :: CustomGPoint)) a1

setY_impl :: CustomGPoint -> Int -> IO (())
setY_impl this y = do
        jset (this).cy (y)
        pure ()


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: CustomGPoint))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: CustomGPoint))

getY_impl :: CustomGPoint -> IO (Int)
getY_impl this = do
        pure ((jget (this).cy))


setZ :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setZ object_ a1 = jmethod object_ "setZ" (\() -> (setZ_impl (javaCast object_ :: CustomGPoint))) () a1

setZ_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setZ_super object_ a1 = (setZ_impl (javaCast object_ :: CustomGPoint)) a1

setZ_impl :: CustomGPoint -> Int -> IO (())
setZ_impl this z = do
        jset (this).cz (z)
        pure ()


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: CustomGPoint))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: CustomGPoint))

getZ_impl :: CustomGPoint -> IO (Int)
getZ_impl this = do
        pure ((jget (this).cz))


