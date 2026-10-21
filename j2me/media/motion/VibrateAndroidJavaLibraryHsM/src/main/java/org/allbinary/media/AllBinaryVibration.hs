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
module AllBinaryVibration (module AllBinaryVibration, module AllBinaryVibrationME) where

import AllBinaryVibrationME hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, init, init_super, init_impl, vibrate, vibrate_super, vibrate_impl, vIBRATION, vibrator)
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
import qualified AllBinaryNoVibration -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified Context -- android.content.Context
import qualified Vibrator -- android.os.Vibrator
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified GameConfigurationCentral -- org.allbinary.game.configuration.GameConfigurationCentral
import qualified AllBinaryVibrationME

data AllBinaryVibration = AllBinaryVibration
    { header_ :: JavaHeader
    , base :: AllBinaryVibrationME.AllBinaryVibrationME
    , vibrator :: IORef (Vibrator.Vibrator)
    }

instance JavaNull AllBinaryVibration where
    javaNull = javaNullRecord "AllBinaryVibration"

instance JavaEquals AllBinaryVibration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryVibration where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryVibration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE vIBRATION #-}
vIBRATION = unsafePerformIO (newIORef ((jget AllBinaryNoVibration.nO_VIBRATION)))

newRecord_ :: IO AllBinaryVibration
newRecord_ = do
    base <- AllBinaryVibrationME.newRecord_
    let header_ = base.header_
    vibrator <- newIORef javaNull
    let this = AllBinaryVibration header_ base vibrator
    jregisterLevel header_ this
    jregisterMethod header_ "vibrate" (\() -> vibrate_impl this)
    pure this

initFields_ :: AllBinaryVibration -> IO ()
initFields_ this = do
    jset this.vibrator ((javaCast (jio (Context.getSystemService ((jio (ResourceUtil.getContext ((jio (ResourceUtil.getInstance)))))) (Context.vIBRATOR_SERVICE))) :: Vibrator.Vibrator))
    pure ()

new_ :: IO AllBinaryVibration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryVibration -> IO ()
init_ this = do
        AllBinaryVibrationME.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (AllBinaryVibrationME.AllBinaryVibrationME)
getInstance = do
        pure ((jget AllBinaryVibration.vIBRATION))


init :: IO (())
init = do
        if ((jio (GameConfiguration.getValue ((jget ((jio (GameConfigurationCentral.getInstance))).vIBRATION)))) == 0) then do
            jset AllBinaryVibration.vIBRATION ((jget AllBinaryNoVibration.nO_VIBRATION))
        else do
            assignedValue <- (new_)
            jset AllBinaryVibration.vIBRATION (assignedValue)
        pure ()


vibrate :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate object_ a1 a2 a3 = jmethod object_ "vibrate" (\() -> (vibrate_impl (javaCast object_ :: AllBinaryVibration))) () a1 a2 a3

vibrate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
vibrate_super object_ a1 a2 a3 = (vibrate_impl (javaCast object_ :: AllBinaryVibration)) a1 a2 a3

vibrate_impl :: AllBinaryVibration -> Int -> Int -> Int -> IO (())
vibrate_impl this duration type_ volume = do
        Control.Monad.void (Vibrator.vibrate ((jget (this).vibrator)) (Prelude.fromIntegral duration))
        pure ()


