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
-- package org.allbinary.game.layer
module PaintableLayerComposite (module PaintableLayerComposite, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, paintableArray)
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
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified Layer -- org.allbinary.layer.Layer

data PaintableLayerComposite = PaintableLayerComposite
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , paintableArray :: IORef (JavaArray (Layer.Layer))
    }

instance JavaNull PaintableLayerComposite where
    javaNull = javaNullRecord "PaintableLayerComposite"

instance JavaEquals PaintableLayerComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaintableLayerComposite where
    (==) = jrecordEquals

instance JavaObjectClass PaintableLayerComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaintableLayerComposite
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    paintableArray <- newIORef javaNull
    let this = PaintableLayerComposite header_ base paintableArray
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: PaintableLayerComposite -> IO ()
initFields_ this = do
    jset this.paintableArray (javaNull)
    pure ()

new_1 :: JavaArray (Layer.Layer) -> IO PaintableLayerComposite
new_1 paintableArray = do
    this <- newRecord_
    init_1 this paintableArray
    pure this

init_1 :: PaintableLayerComposite -> JavaArray (Layer.Layer) -> IO ()
init_1 this paintableArray = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).paintableArray (paintableArray)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PaintableLayerComposite))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PaintableLayerComposite)) a1

paint_impl :: PaintableLayerComposite -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        index <- newIORef ((jlength (jget (this).paintableArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (paint ((jindex ((jget (this).paintableArray)) ((jget index)))) graphics)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: PaintableLayerComposite))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: PaintableLayerComposite)) a1

paintThreed_impl :: PaintableLayerComposite -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        paintableInterface <- newIORef (javaNull)
        index <- newIORef ((jlength (jget (this).paintableArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset paintableInterface ((javaCast (jindex ((jget (this).paintableArray)) ((jget index))) :: PaintableInterface.PaintableInterface))
            Control.Monad.void (PaintableInterface.paintThreed ((jget paintableInterface)) graphics)
        pure ()


