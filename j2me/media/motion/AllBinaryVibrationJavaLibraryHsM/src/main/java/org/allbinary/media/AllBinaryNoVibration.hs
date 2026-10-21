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
-- package org.allbinary.media
module AllBinaryNoVibration (module AllBinaryNoVibration, module AllBinaryVibrationME) where

import AllBinaryVibrationME hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, vibrate, vibrate_super, vibrate_impl, nO_VIBRATION)
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
import qualified AllBinaryVibrationME

data AllBinaryNoVibration = AllBinaryNoVibration
    { header_ :: JavaHeader
    , base :: AllBinaryVibrationME.AllBinaryVibrationME
    }

instance JavaNull AllBinaryNoVibration where
    javaNull = javaNullRecord "AllBinaryNoVibration"

instance JavaEquals AllBinaryNoVibration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryNoVibration where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryNoVibration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nO_VIBRATION #-}
nO_VIBRATION = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: AllBinaryVibrationME.AllBinaryVibrationME) (new_)) >>= newIORef)

newRecord_ :: IO AllBinaryNoVibration
newRecord_ = do
    base <- AllBinaryVibrationME.newRecord_
    let header_ = base.header_
    let this = AllBinaryNoVibration header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "vibrate" (\() -> vibrate_impl this)
    pure this

initFields_ :: AllBinaryNoVibration -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryNoVibration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryNoVibration -> IO ()
init_ this = do
    AllBinaryVibrationME.init_ this.base
    initFields_ this


vibrate :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate object_ a1 a2 a3 = jmethod object_ "vibrate" (\() -> (vibrate_impl (javaCast object_ :: AllBinaryNoVibration))) () a1 a2 a3

vibrate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate_super object_ a1 a2 a3 = (vibrate_impl (javaCast object_ :: AllBinaryNoVibration)) a1 a2 a3

vibrate_impl :: AllBinaryNoVibration -> Int -> Int -> Int -> IO (())
vibrate_impl this duration type_ volume = do
        pure ()


