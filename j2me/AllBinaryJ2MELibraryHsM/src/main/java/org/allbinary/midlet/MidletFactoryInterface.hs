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
-- package org.allbinary.midlet
module MidletFactoryInterface where

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
import qualified AllBinaryMidlet -- same package or java.lang
import qualified MIDlet -- javax.microedition.midlet.MIDlet

data MidletFactoryInterface = MidletFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull MidletFactoryInterface where
    javaNull = javaNullRecord "MidletFactoryInterface"

instance JavaEquals MidletFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MidletFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass MidletFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MidletFactoryInterface
newRecord_ = do
    header_ <- newJavaHeader
    let this = MidletFactoryInterface header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: MidletFactoryInterface -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MidletFactoryInterface
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MidletFactoryInterface -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> IO (MIDlet.MIDlet)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: MidletFactoryInterface))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (MIDlet.MIDlet)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: MidletFactoryInterface))

getInstance_impl :: MidletFactoryInterface -> IO (MIDlet.MIDlet)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: MIDlet.MIDlet) (AllBinaryMidlet.getNullInstance))


