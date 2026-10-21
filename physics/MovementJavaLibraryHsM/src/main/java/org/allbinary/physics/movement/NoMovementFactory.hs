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
-- package org.allbinary.physics.movement
module NoMovementFactory where

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
import qualified Movement -- same package or java.lang

data NoMovementFactory = NoMovementFactory
    { header_ :: JavaHeader
    , movement :: IORef (Movement.Movement)
    }

instance JavaNull NoMovementFactory where
    javaNull = javaNullRecord "NoMovementFactory"

instance JavaEquals NoMovementFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoMovementFactory where
    (==) = jrecordEquals

instance JavaObjectClass NoMovementFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoMovementFactory
newRecord_ = do
    header_ <- newJavaHeader
    movement <- newIORef javaNull
    let this = NoMovementFactory header_ movement
    jregisterLevel header_ this
    jregisterMethod header_ "getMovmentInstance" (\() -> getMovmentInstance_impl this)
    pure this

initFields_ :: NoMovementFactory -> IO ()
initFields_ this = do
    jset this.movement =<< (Movement.new_)
    pure ()

new_ :: IO NoMovementFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoMovementFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (NoMovementFactory)
getInstance = do
        pure (NoMovementFactory.instance_)


getMovmentInstance :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovmentInstance object_ = jmethod object_ "getMovmentInstance" (\() -> (getMovmentInstance_impl (javaCast object_ :: NoMovementFactory))) ()

getMovmentInstance_super :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovmentInstance_super object_ = (getMovmentInstance_impl (javaCast object_ :: NoMovementFactory))

getMovmentInstance_impl :: NoMovementFactory -> IO (Movement.Movement)
getMovmentInstance_impl this = do
        pure ((jget (this).movement))


