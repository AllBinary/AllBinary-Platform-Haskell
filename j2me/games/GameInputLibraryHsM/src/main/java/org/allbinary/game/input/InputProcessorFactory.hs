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
module InputProcessorFactory where

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
import qualified InputProcessor -- same package or java.lang

data InputProcessorFactory = InputProcessorFactory
    { header_ :: JavaHeader
    , inputProcessor :: IORef (InputProcessor.InputProcessor)
    }

instance JavaNull InputProcessorFactory where
    javaNull = javaNullRecord "InputProcessorFactory"

instance JavaEquals InputProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    inputProcessor <- newIORef javaNull
    let this = InputProcessorFactory header_ inputProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "getInputProcessor" (\() -> getInputProcessor_impl this)
    pure this

initFields_ :: InputProcessorFactory -> IO ()
initFields_ this = do
    jset this.inputProcessor =<< (InputProcessor.new_)
    pure ()

new_ :: IO InputProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InputProcessorFactory)
getInstance = do
        pure (InputProcessorFactory.instance_)


getInputProcessor :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getInputProcessor object_ = jmethod object_ "getInputProcessor" (\() -> (getInputProcessor_impl (javaCast object_ :: InputProcessorFactory))) ()

getInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (InputProcessor.InputProcessor)
getInputProcessor_super object_ = (getInputProcessor_impl (javaCast object_ :: InputProcessorFactory))

getInputProcessor_impl :: InputProcessorFactory -> IO (InputProcessor.InputProcessor)
getInputProcessor_impl this = do
        pure ((jget (this).inputProcessor))


