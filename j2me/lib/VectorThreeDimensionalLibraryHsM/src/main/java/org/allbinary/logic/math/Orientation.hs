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
module Orientation where

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
import qualified BasicDecimal -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data Orientation = Orientation
    { header_ :: JavaHeader
    , yaw :: IORef (BasicDecimal.BasicDecimal)
    , pitch :: IORef (BasicDecimal.BasicDecimal)
    , roll :: IORef (BasicDecimal.BasicDecimal)
    }

instance JavaNull Orientation where
    javaNull = javaNullRecord "Orientation"

instance JavaEquals Orientation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Orientation where
    (==) = jrecordEquals

instance JavaObjectClass Orientation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nONE #-}
nONE = unsafePerformIO ((new_3 0 0 0) >>= newIORef)

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_3 0 0 0) >>= newIORef)

newRecord_ :: IO Orientation
newRecord_ = do
    header_ <- newJavaHeader
    yaw <- newIORef javaNull
    pitch <- newIORef javaNull
    roll <- newIORef javaNull
    let this = Orientation header_ yaw pitch roll
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Orientation -> IO ()
initFields_ this = do
    jset this.yaw =<< (BasicDecimal.new_1 0)
    jset this.pitch =<< (BasicDecimal.new_1 0)
    jset this.roll =<< (BasicDecimal.new_1 0)
    pure ()


getInstance :: Int -> Int -> Int -> IO (Orientation)
getInstance yaw pitch roll = do
        Control.Monad.void (setint ((jget ((jget Orientation.sINGLETON)).yaw)) yaw)
        Control.Monad.void (setint ((jget ((jget Orientation.sINGLETON)).pitch)) pitch)
        Control.Monad.void (setint ((jget ((jget Orientation.sINGLETON)).roll)) roll)
        pure ((jget Orientation.sINGLETON))

new_3 :: Int -> Int -> Int -> IO Orientation
new_3 yaw pitch roll = do
    this <- newRecord_
    init_3 this yaw pitch roll
    pure this

init_3 :: Orientation -> Int -> Int -> Int -> IO ()
init_3 this yaw pitch roll = do
        initFields_ this
        Control.Monad.void (setint ((jget (this).yaw)) yaw)
        Control.Monad.void (setint ((jget (this).pitch)) pitch)
        Control.Monad.void (setint ((jget (this).roll)) roll)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Orientation))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Orientation))

toString_impl :: Orientation -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Y: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).yaw)))))
        Control.Monad.void (StringMaker.append stringBuffer " P: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).pitch)))))
        Control.Monad.void (StringMaker.append stringBuffer " R: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicDecimal.toString ((jget (this).roll)))))
        (StringMaker.toString stringBuffer)


