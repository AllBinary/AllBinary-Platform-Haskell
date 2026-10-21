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
module GPoint where

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
import qualified JsType -- jsinterop.annotations.JsType
import qualified JsMethod -- jsinterop.annotations.JsMethod
import qualified JsConstructor -- jsinterop.annotations.JsConstructor
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data GPoint = GPoint
    { header_ :: JavaHeader
    , x :: IORef (Int)
    , y :: IORef (Int)
    , z :: IORef (Int)
    }

instance JavaNull GPoint where
    javaNull = javaNullRecord "GPoint"

instance JavaEquals GPoint where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GPoint where
    (==) = jrecordEquals

instance JavaObjectClass GPoint where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pOINT_LABEL = "Point: "

newRecord_ :: IO GPoint
newRecord_ = do
    header_ <- newJavaHeader
    x <- newIORef 0
    y <- newIORef 0
    z <- newIORef 0
    let this = GPoint header_ x y z
    jregisterLevel header_ this
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "getZ" (\() -> getZ_impl this)
    jregisterMethod header_ "getRawX" (\() -> getRawX_impl this)
    jregisterMethod header_ "getRawY" (\() -> getRawY_impl this)
    jregisterMethod header_ "getRawZ" (\() -> getRawZ_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GPoint -> IO ()
initFields_ this = do
    jset this.x (0)
    jset this.y (0)
    jset this.z (0)
    pure ()


getInstance :: GPoint -> IO (GPoint)
getInstance point = do
        (new_3 (jio (GPoint.getX point)) (jio (GPoint.getY point)) (jio (GPoint.getZ point)))

new_3 :: Int -> Int -> Int -> IO GPoint
new_3 x y z = do
    this <- newRecord_
    init_3 this x y z
    pure this

init_3 :: GPoint -> Int -> Int -> Int -> IO ()
init_3 this x y z = do
        initFields_ this
        jset (this).x (x)
        jset (this).y (y)
        jset (this).z (z)
        pure ()


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: GPoint))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: GPoint))

getX_impl :: GPoint -> IO (Int)
getX_impl this = do
        pure ((jget (this).x))


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: GPoint))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: GPoint))

getY_impl :: GPoint -> IO (Int)
getY_impl this = do
        pure ((jget (this).y))


getZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ object_ = jmethod object_ "getZ" (\() -> (getZ_impl (javaCast object_ :: GPoint))) ()

getZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getZ_super object_ = (getZ_impl (javaCast object_ :: GPoint))

getZ_impl :: GPoint -> IO (Int)
getZ_impl this = do
        pure ((jget (this).z))


getRawX :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawX object_ = jmethod object_ "getRawX" (\() -> (getRawX_impl (javaCast object_ :: GPoint))) ()

getRawX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawX_super object_ = (getRawX_impl (javaCast object_ :: GPoint))

getRawX_impl :: GPoint -> IO (Int)
getRawX_impl this = do
        pure ((jget (this).x))


getRawY :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawY object_ = jmethod object_ "getRawY" (\() -> (getRawY_impl (javaCast object_ :: GPoint))) ()

getRawY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawY_super object_ = (getRawY_impl (javaCast object_ :: GPoint))

getRawY_impl :: GPoint -> IO (Int)
getRawY_impl this = do
        pure ((jget (this).y))


getRawZ :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawZ object_ = jmethod object_ "getRawZ" (\() -> (getRawZ_impl (javaCast object_ :: GPoint))) ()

getRawZ_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawZ_super object_ = (getRawZ_impl (javaCast object_ :: GPoint))

getRawZ_impl :: GPoint -> IO (Int)
getRawZ_impl this = do
        pure ((jget (this).z))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GPoint))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GPoint))

toString_impl :: GPoint -> IO (String)
toString_impl this = do
        (GPoint.toStringStatic (jio (GPoint.getX this)) (jio (GPoint.getY this)) (jio (GPoint.getZ this)))


toStringStatic :: Int -> Int -> Int -> IO (String)
toStringStatic x y z = do
        stringBuffer <- (StringMaker.new_)
        positionStrings <- (PositionStrings.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (GPoint.pOINT_LABEL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer x)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer y)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer z)
        (StringMaker.toString stringBuffer)


