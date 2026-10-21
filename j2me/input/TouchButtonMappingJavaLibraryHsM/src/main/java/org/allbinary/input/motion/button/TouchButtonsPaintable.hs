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
module TouchButtonsPaintable (module TouchButtonsPaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, foregroundBasicColor, foregroundColor, basicSetColorUtil, touchButtonFactory)
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
import qualified TouchButtonFactory -- same package or java.lang
import qualified TouchButton -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data TouchButtonsPaintable = TouchButtonsPaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , foregroundColor :: IORef (Int)
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , touchButtonFactory :: IORef (TouchButtonFactory.TouchButtonFactory)
    }

instance JavaNull TouchButtonsPaintable where
    javaNull = javaNullRecord "TouchButtonsPaintable"

instance JavaEquals TouchButtonsPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsPaintable where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonsPaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    foregroundBasicColor <- newIORef javaNull
    foregroundColor <- newIORef 0
    basicSetColorUtil <- newIORef javaNull
    touchButtonFactory <- newIORef javaNull
    let this = TouchButtonsPaintable header_ base foregroundBasicColor foregroundColor basicSetColorUtil touchButtonFactory
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: TouchButtonsPaintable -> IO ()
initFields_ this = do
    jset this.foregroundBasicColor (javaNull)
    jset this.foregroundColor (0)
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.touchButtonFactory =<< (TouchButtonFactory.getInstance)
    pure ()

new_1 :: BasicColor.BasicColor -> IO TouchButtonsPaintable
new_1 basicColor = do
    this <- newRecord_
    init_1 this basicColor
    pure this

init_1 :: TouchButtonsPaintable -> BasicColor.BasicColor -> IO ()
init_1 this basicColor = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).foregroundBasicColor (basicColor)
        assignedValue <- (BasicColor.intValue basicColor)
        jset (this).foregroundColor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: TouchButtonsPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: TouchButtonsPaintable)) a1

paint_impl :: TouchButtonsPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        list <- (TouchButtonFactory.getList ((jget (this).touchButtonFactory)))
        Control.Monad.void (BasicColorSetUtil.setBasicColorP3 ((jget (this).basicSetColorUtil)) graphics (jget (this).foregroundBasicColor) (jget (this).foregroundColor))
        touchButton <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset touchButton ((javaCast (jindex ((jget (list).objectArray)) ((jget index))) :: TouchButton.TouchButton))
            Control.Monad.void (TouchButton.paint ((jget touchButton)) graphics)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset touchButton ((javaCast (jindex ((jget (list).objectArray)) ((jget index))) :: TouchButton.TouchButton))
            Control.Monad.void (TouchButton.paintHint ((jget touchButton)) graphics)
        pure ()


