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
-- package org.allbinary.game.layer.hud.basic
module ImageHealthGraphic (module ImageHealthGraphic, module HealthGraphic) where

import HealthGraphic hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, paint, paint_super, paint_impl, image)
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
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationInterface -- org.allbinary.animation.AnimationInterface
import qualified HealthInterface -- org.allbinary.game.health.HealthInterface
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified HealthGraphic

data ImageHealthGraphic = ImageHealthGraphic
    { header_ :: JavaHeader
    , base :: HealthGraphic.HealthGraphic
    , image :: IORef (JavaArray (Image.Image))
    }

instance JavaNull ImageHealthGraphic where
    javaNull = javaNullRecord "ImageHealthGraphic"

instance JavaEquals ImageHealthGraphic where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageHealthGraphic where
    (==) = jrecordEquals

instance JavaObjectClass ImageHealthGraphic where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageHealthGraphic
newRecord_ = do
    base <- HealthGraphic.newRecord_
    let header_ = base.header_
    image <- newIORef javaNull
    let this = ImageHealthGraphic header_ base image
    jregisterLevel header_ this
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ImageHealthGraphic -> IO ()
initFields_ this = do
    jset this.image (javaNull)
    pure ()

new_4 :: AnimationInterface.AnimationInterface -> HealthInterface.HealthInterface -> Int -> Int -> IO ImageHealthGraphic
new_4 animationInterface healthInterface location direction = do
    this <- newRecord_
    init_4 this animationInterface healthInterface location direction
    pure this

init_4 :: ImageHealthGraphic -> AnimationInterface.AnimationInterface -> HealthInterface.HealthInterface -> Int -> Int -> IO ()
init_4 this animationInterface healthInterface location direction = do
        HealthGraphic.init_4 this.base (animationInterface) (healthInterface) (location) (direction)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).image ((jnewArray ((jio (HealthInterface.getMaxHealth ((jget (this).base.healthInterface))))) javaNull))
        imageCacheFactory <- (fmap (\value_ -> javaCast value_ :: ImageCacheFactory.ImageCacheFactory) (ImageCacheFactory.getInstance))
        forM_ [0 .. (jget this.base.max)] $ \numOfHealth -> javaIteration (pure ()) $ do
            assignedValue <- (ImageCacheFactory.get imageCacheFactory this (numOfHealth + (1 * 10)) 10)
            jsetIndex ((jget (this).image)) (numOfHealth) (assignedValue)
        forM_ [0 .. (jget this.base.max)] $ \numOfHealth -> javaIteration (pure ()) $ do
            forM_ [0 .. numOfHealth - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (AnimationInterface.paint ((jget (this).base.animationInterface)) (jio (getGraphics ((jindex ((jget (this).image)) (numOfHealth))))) (numOfHealth * 10) 0)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ImageHealthGraphic))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ImageHealthGraphic)) a1

paint_impl :: ImageHealthGraphic -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (Graphics.drawImage graphics (jindex ((jget (this).image)) ((jget this.base.max))) (jget this.base.x) (jget this.base.y) (jget Anchor.tOP_LEFT))
        pure ()


