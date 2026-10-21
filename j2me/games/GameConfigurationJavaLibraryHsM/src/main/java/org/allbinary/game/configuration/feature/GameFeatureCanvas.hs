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
-- package org.allbinary.game.configuration.feature
module GameFeatureCanvas (module GameFeatureCanvas, module Canvas) where

import Canvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics

data GameFeatureCanvas = GameFeatureCanvas
    { header_ :: JavaHeader
    , base :: Canvas.Canvas
    }

instance JavaNull GameFeatureCanvas where
    javaNull = javaNullRecord "GameFeatureCanvas"

instance JavaEquals GameFeatureCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureCanvas where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameFeatureCanvas
newRecord_ = do
    base <- Canvas.newRecord_
    let header_ = base.header_
    let this = GameFeatureCanvas header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: GameFeatureCanvas -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameFeatureCanvas
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureCanvas -> IO ()
init_ this = do
        Canvas.init_ this.base
        initFields_ this
        pure ()
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameFeatureCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameFeatureCanvas)) a1

paint_impl :: GameFeatureCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        pure ()


