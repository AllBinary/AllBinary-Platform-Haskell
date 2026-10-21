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
-- package org.allbinary.game.input
module KeyFactoryInitializer (module KeyFactoryInitializer, module Init) where

import Init hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, logUtil)
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
import qualified Init -- org.allbinary.init.Init
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory

data KeyFactoryInitializer = KeyFactoryInitializer
    { header_ :: JavaHeader
    , base :: Init.Init
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull KeyFactoryInitializer where
    javaNull = javaNullRecord "KeyFactoryInitializer"

instance JavaEquals KeyFactoryInitializer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyFactoryInitializer where
    (==) = jrecordEquals

instance JavaObjectClass KeyFactoryInitializer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO KeyFactoryInitializer
newRecord_ = do
    base <- Init.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = KeyFactoryInitializer header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: KeyFactoryInitializer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO KeyFactoryInitializer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeyFactoryInitializer -> IO ()
init_ this = do
    Init.init_ this.base
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: KeyFactoryInitializer))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: KeyFactoryInitializer))

init_impl :: KeyFactoryInitializer -> IO (())
init_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).iNIT))
        Control.Monad.void (SmallIntegerSingletonFactory.initWithRange ((jio (SmallIntegerSingletonFactory.getInstance))) 0x2D0 6)
        pure ()


