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
-- package org.allbinary.input.motion.button
module TouchScreenTypeFactory where

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
import qualified TouchScreenFactory -- same package or java.lang

data TouchScreenTypeFactory = TouchScreenTypeFactory
    { header_ :: JavaHeader
    }

instance JavaNull TouchScreenTypeFactory where
    javaNull = javaNullRecord "TouchScreenTypeFactory"

instance JavaEquals TouchScreenTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchScreenTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchScreenTypeFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "touchScreenTypeFactory" (\() -> touchScreenTypeFactory_impl this)
    pure this

initFields_ :: TouchScreenTypeFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchScreenTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchScreenTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TouchScreenTypeFactory)
getInstance = do
        pure (TouchScreenTypeFactory.instance_)


touchScreenTypeFactory :: (JavaObjectClass this_) => this_ -> IO (())
touchScreenTypeFactory object_ = jmethod object_ "touchScreenTypeFactory" (\() -> (touchScreenTypeFactory_impl (javaCast object_ :: TouchScreenTypeFactory))) ()

touchScreenTypeFactory_super :: (JavaObjectClass this_) => this_ -> IO (())
touchScreenTypeFactory_super object_ = (touchScreenTypeFactory_impl (javaCast object_ :: TouchScreenTypeFactory))

touchScreenTypeFactory_impl :: TouchScreenTypeFactory -> IO (())
touchScreenTypeFactory_impl this = do
        touchScreenFactory <- (TouchScreenFactory.getInstance)
        Control.Monad.void (TouchScreenFactory.setTouch touchScreenFactory False)
        pure ()


