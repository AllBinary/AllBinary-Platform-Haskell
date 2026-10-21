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
-- package org.allbinary.graphics.paint
module PaintableComposite (module PaintableComposite, module Paintable) where

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
import qualified PaintableInterface -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Paintable

data PaintableComposite = PaintableComposite
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    , paintableArray :: IORef (JavaArray (PaintableInterface.PaintableInterface))
    }

instance JavaNull PaintableComposite where
    javaNull = javaNullRecord "PaintableComposite"

instance JavaEquals PaintableComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaintableComposite where
    (==) = jrecordEquals

instance JavaObjectClass PaintableComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaintableComposite
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    paintableArray <- newIORef javaNull
    let this = PaintableComposite header_ base paintableArray
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: PaintableComposite -> IO ()
initFields_ this = do
    jset this.paintableArray (javaNull)
    pure ()

new_1 :: JavaArray (PaintableInterface.PaintableInterface) -> IO PaintableComposite
new_1 paintableArray = do
    this <- newRecord_
    init_1 this paintableArray
    pure this

init_1 :: PaintableComposite -> JavaArray (PaintableInterface.PaintableInterface) -> IO ()
init_1 this paintableArray = do
        Paintable.init_ this.base
        initFields_ this
        jset (this).paintableArray (paintableArray)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PaintableComposite))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PaintableComposite)) a1

paint_impl :: PaintableComposite -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        forM_ [((jlength (jget (this).paintableArray)) - 1), ((jlength (jget (this).paintableArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (paint ((jindex ((jget (this).paintableArray)) (index))) graphics)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: PaintableComposite))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: PaintableComposite)) a1

paintThreed_impl :: PaintableComposite -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        forM_ [((jlength (jget (this).paintableArray)) - 1), ((jlength (jget (this).paintableArray)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (paintThreed ((jindex ((jget (this).paintableArray)) (index))) graphics)
        pure ()


