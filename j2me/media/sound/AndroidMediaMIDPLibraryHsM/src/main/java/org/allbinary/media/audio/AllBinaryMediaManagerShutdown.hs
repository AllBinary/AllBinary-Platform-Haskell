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
-- package org.allbinary.media.audio
module AllBinaryMediaManagerShutdown where

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
import qualified SoundsFactoryInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data AllBinaryMediaManagerShutdown = AllBinaryMediaManagerShutdown
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryMediaManagerShutdown where
    javaNull = javaNullRecord "AllBinaryMediaManagerShutdown"

instance JavaEquals AllBinaryMediaManagerShutdown where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryMediaManagerShutdown where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryMediaManagerShutdown where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryMediaManagerShutdown
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryMediaManagerShutdown header_
    jregisterLevel header_ this
    pure this

initFields_ :: AllBinaryMediaManagerShutdown -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryMediaManagerShutdown
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryMediaManagerShutdown -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
shutdown :: SoundsFactoryInterface.SoundsFactoryInterface -> IO (())
shutdown soundsFactoryInterface = do
        logUtil <- (LogUtil.getInstance)
        Control.Monad.void (LogUtil.putF logUtil "No Media Shutdown for Android Process" (AllBinaryMediaManagerShutdown.instance_) "shutdown")
        pure ()


