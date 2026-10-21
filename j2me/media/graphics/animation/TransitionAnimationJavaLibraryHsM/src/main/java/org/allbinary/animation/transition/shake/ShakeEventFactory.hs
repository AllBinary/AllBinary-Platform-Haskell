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
-- package org.allbinary.animation.transition.shake
module ShakeEventFactory where

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
import qualified ShakeEvent -- same package or java.lang

data ShakeEventFactory = ShakeEventFactory
    { header_ :: JavaHeader
    , mICRO :: IORef (ShakeEvent.ShakeEvent)
    , sMALL :: IORef (ShakeEvent.ShakeEvent)
    , mEDIUM :: IORef (ShakeEvent.ShakeEvent)
    , lARGE :: IORef (ShakeEvent.ShakeEvent)
    }

instance JavaNull ShakeEventFactory where
    javaNull = javaNullRecord "ShakeEventFactory"

instance JavaEquals ShakeEventFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShakeEventFactory where
    (==) = jrecordEquals

instance JavaObjectClass ShakeEventFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShakeEventFactory
newRecord_ = do
    header_ <- newJavaHeader
    mICRO <- newIORef javaNull
    sMALL <- newIORef javaNull
    mEDIUM <- newIORef javaNull
    lARGE <- newIORef javaNull
    let this = ShakeEventFactory header_ mICRO sMALL mEDIUM lARGE
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: ShakeEventFactory -> IO ()
initFields_ this = do
    jset this.mICRO =<< (ShakeEvent.new_)
    jset this.sMALL =<< (ShakeEvent.new_)
    jset this.mEDIUM =<< (ShakeEvent.new_)
    jset this.lARGE =<< (ShakeEvent.new_)
    pure ()

new_ :: IO ShakeEventFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShakeEventFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ShakeEventFactory)
getInstance = do
        pure (ShakeEventFactory.instance_)


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ShakeEventFactory))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ShakeEventFactory))

init_impl :: ShakeEventFactory -> IO (())
init_impl this = do
        pure ()


