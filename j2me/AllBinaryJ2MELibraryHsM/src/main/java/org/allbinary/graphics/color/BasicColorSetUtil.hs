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
-- package org.allbinary.graphics.color
module BasicColorSetUtil where

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
import qualified BasicColor -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics

data BasicColorSetUtil = BasicColorSetUtil
    { header_ :: JavaHeader
    }

instance JavaNull BasicColorSetUtil where
    javaNull = javaNullRecord "BasicColorSetUtil"

instance JavaEquals BasicColorSetUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorSetUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorSetUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicColorSetUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicColorSetUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "setBasicColorP3" (\() -> setBasicColorP3_impl this)
    pure this

initFields_ :: BasicColorSetUtil -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (BasicColorSetUtil)
getInstance = do
        pure (BasicColorSetUtil.instance_)

new_ :: IO BasicColorSetUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicColorSetUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 a2 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: BasicColorSetUtil))) () a1 a2

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 a2 = (setBasicColorP_impl (javaCast object_ :: BasicColorSetUtil)) a1 a2

setBasicColorP_impl :: BasicColorSetUtil -> Graphics.Graphics -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this graphics basicColor = do
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue basicColor)))
        pure ()


setBasicColorP3 :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicColor.BasicColor -> Int -> IO (())
setBasicColorP3 object_ a1 a2 a3 = jmethod object_ "setBasicColorP3" (\() -> (setBasicColorP3_impl (javaCast object_ :: BasicColorSetUtil))) () a1 a2 a3

setBasicColorP3_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> BasicColor.BasicColor -> Int -> IO (())
setBasicColorP3_super object_ a1 a2 a3 = (setBasicColorP3_impl (javaCast object_ :: BasicColorSetUtil)) a1 a2 a3

setBasicColorP3_impl :: BasicColorSetUtil -> Graphics.Graphics -> BasicColor.BasicColor -> Int -> IO (())
setBasicColorP3_impl this graphics basicColor value = do
        Control.Monad.void (Graphics.setColor graphics value)
        pure ()


