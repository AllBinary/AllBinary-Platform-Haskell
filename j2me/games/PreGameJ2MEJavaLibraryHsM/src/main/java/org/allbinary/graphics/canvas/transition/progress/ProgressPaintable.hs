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
-- package org.allbinary.graphics.canvas.transition.progress
module ProgressPaintable (module ProgressPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, progressCanvas)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified ProgressCanvas -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

data ProgressPaintable = ProgressPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , progressCanvas :: IORef (ProgressCanvas.ProgressCanvas)
    }

instance JavaNull ProgressPaintable where
    javaNull = javaNullRecord "ProgressPaintable"

instance JavaEquals ProgressPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressPaintable where
    (==) = jrecordEquals

instance JavaObjectClass ProgressPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ProgressPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    progressCanvas <- newIORef javaNull
    let this = ProgressPaintable header_ base progressCanvas
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ProgressPaintable -> IO ()
initFields_ this = do
    jset this.progressCanvas (javaNull)
    pure ()

new_1 :: ProgressCanvas.ProgressCanvas -> IO ProgressPaintable
new_1 progressCanvas = do
    this <- newRecord_
    init_1 this progressCanvas
    pure this

init_1 :: ProgressPaintable -> ProgressCanvas.ProgressCanvas -> IO ()
init_1 this progressCanvas = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).progressCanvas (progressCanvas)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ProgressPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ProgressPaintable)) a1

paint_impl :: ProgressPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (ProgressCanvas.paint2 ((jget (this).progressCanvas)) graphics)
        pure ()


