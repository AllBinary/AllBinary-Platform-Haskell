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
module Line where

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
import qualified PointFactory -- same package or java.lang

data Line = Line
    { header_ :: JavaHeader
    , p1 :: IORef (GPoint.GPoint)
    , p2 :: IORef (GPoint.GPoint)
    , deltaX :: IORef (Double)
    , deltaY :: IORef (Double)
    }

instance JavaNull Line where
    javaNull = javaNullRecord "Line"

instance JavaEquals Line where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Line where
    (==) = jrecordEquals

instance JavaObjectClass Line where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Line
newRecord_ = do
    header_ <- newJavaHeader
    p1 <- newIORef javaNull
    p2 <- newIORef javaNull
    deltaX <- newIORef 0.0
    deltaY <- newIORef 0.0
    let this = Line header_ p1 p2 deltaX deltaY
    jregisterLevel header_ this
    jregisterMethod header_ "getGradient" (\() -> getGradient_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getDeltaX" (\() -> getDeltaX_impl this)
    jregisterMethod header_ "getDeltaY" (\() -> getDeltaY_impl this)
    jregisterMethod header_ "getP1" (\() -> getP1_impl this)
    jregisterMethod header_ "getP2" (\() -> getP2_impl this)
    jregisterMethod header_ "setP1" (\() -> setP1_impl this)
    jregisterMethod header_ "setP2" (\() -> setP2_impl this)
    pure this

initFields_ :: Line -> IO ()
initFields_ this = do
    jset this.p1 (javaNull)
    jset this.p2 (javaNull)
    jset this.deltaX (0.0)
    jset this.deltaY (0.0)
    pure ()

new_2 :: GPoint.GPoint -> GPoint.GPoint -> IO Line
new_2 p1 p2 = do
    this <- newRecord_
    init_2 this p1 p2
    pure this

init_2 :: Line -> GPoint.GPoint -> GPoint.GPoint -> IO ()
init_2 this p1 p2 = do
        initFields_ this
        jset (this).p1 ((jget ((jio (PointFactory.getInstance))).zERO_ZERO))
        jset (this).p2 ((jget (this).p1))
        Control.Monad.void (Line.setP1 this p1)
        Control.Monad.void (Line.setP2 this p2)
        pure ()


getGradient :: (JavaObjectClass this_) => this_ -> IO (Double)
getGradient object_ = jmethod object_ "getGradient" (\() -> (getGradient_impl (javaCast object_ :: Line))) ()

getGradient_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getGradient_super object_ = (getGradient_impl (javaCast object_ :: Line))

getGradient_impl :: Line -> IO (Double)
getGradient_impl this = do
        pure (((jio (Line.getDeltaY this)) / (jio (Line.getDeltaX this))))


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: Line))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: Line))

update_impl :: Line -> IO (())
update_impl this = do
        jset (this).deltaX (((Prelude.fromIntegral (jio (GPoint.getX ((jio (Line.getP1 this)))))) - (Prelude.fromIntegral (jio (GPoint.getX ((jio (Line.getP2 this))))))))
        jset (this).deltaY (((Prelude.fromIntegral (jio (GPoint.getY ((jio (Line.getP1 this)))))) - (Prelude.fromIntegral (jio (GPoint.getY ((jio (Line.getP2 this))))))))
        pure ()


getDeltaX :: (JavaObjectClass this_) => this_ -> IO (Double)
getDeltaX object_ = jmethod object_ "getDeltaX" (\() -> (getDeltaX_impl (javaCast object_ :: Line))) ()

getDeltaX_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getDeltaX_super object_ = (getDeltaX_impl (javaCast object_ :: Line))

getDeltaX_impl :: Line -> IO (Double)
getDeltaX_impl this = do
        pure ((jget (this).deltaX))


getDeltaY :: (JavaObjectClass this_) => this_ -> IO (Double)
getDeltaY object_ = jmethod object_ "getDeltaY" (\() -> (getDeltaY_impl (javaCast object_ :: Line))) ()

getDeltaY_super :: (JavaObjectClass this_) => this_ -> IO (Double)
getDeltaY_super object_ = (getDeltaY_impl (javaCast object_ :: Line))

getDeltaY_impl :: Line -> IO (Double)
getDeltaY_impl this = do
        pure ((jget (this).deltaY))


getP1 :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getP1 object_ = jmethod object_ "getP1" (\() -> (getP1_impl (javaCast object_ :: Line))) ()

getP1_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getP1_super object_ = (getP1_impl (javaCast object_ :: Line))

getP1_impl :: Line -> IO (GPoint.GPoint)
getP1_impl this = do
        pure ((jget (this).p1))


getP2 :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getP2 object_ = jmethod object_ "getP2" (\() -> (getP2_impl (javaCast object_ :: Line))) ()

getP2_super :: (JavaObjectClass this_) => this_ -> IO (GPoint.GPoint)
getP2_super object_ = (getP2_impl (javaCast object_ :: Line))

getP2_impl :: Line -> IO (GPoint.GPoint)
getP2_impl this = do
        pure ((jget (this).p2))


setP1 :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setP1 object_ a1 = jmethod object_ "setP1" (\() -> (setP1_impl (javaCast object_ :: Line))) () a1

setP1_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setP1_super object_ a1 = (setP1_impl (javaCast object_ :: Line)) a1

setP1_impl :: Line -> GPoint.GPoint -> IO (())
setP1_impl this p1 = do
        jset (this).p1 (p1)
        Control.Monad.void (Line.update this)
        pure ()


setP2 :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setP2 object_ a1 = jmethod object_ "setP2" (\() -> (setP2_impl (javaCast object_ :: Line))) () a1

setP2_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (())
setP2_super object_ a1 = (setP2_impl (javaCast object_ :: Line)) a1

setP2_impl :: Line -> GPoint.GPoint -> IO (())
setP2_impl this p2 = do
        jset (this).p2 (p2)
        Control.Monad.void (Line.update this)
        pure ()


