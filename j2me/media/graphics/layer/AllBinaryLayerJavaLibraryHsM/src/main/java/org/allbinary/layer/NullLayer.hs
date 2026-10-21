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
-- package org.allbinary.layer
module NullLayer (module NullLayer, module Layer) where

import Layer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, paint, paint_super, paint_impl, instance_)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Layer

data NullLayer = NullLayer
    { header_ :: JavaHeader
    , base :: Layer.Layer
    }

instance JavaNull NullLayer where
    javaNull = javaNullRecord "NullLayer"

instance JavaEquals NullLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullLayer where
    (==) = jrecordEquals

instance JavaObjectClass NullLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO NullLayer
newRecord_ = do
    base <- Layer.newRecord_
    let header_ = base.header_
    let this = NullLayer header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: NullLayer -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (NullLayer)
getInstance = do
        pure (NullLayer.instance_)

new_ :: IO NullLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullLayer -> IO ()
init_ this = do
        Layer.init_2 this.base (0) (0)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: NullLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: NullLayer)) a1

paint_impl :: NullLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


