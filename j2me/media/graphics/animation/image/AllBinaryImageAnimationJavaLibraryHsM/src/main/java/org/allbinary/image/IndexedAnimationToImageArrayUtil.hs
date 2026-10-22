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
-- package org.allbinary.image
module IndexedAnimationToImageArrayUtil where

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
import qualified AnimationFrameToImageUtil -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation

data IndexedAnimationToImageArrayUtil = IndexedAnimationToImageArrayUtil
    { header_ :: JavaHeader
    }

instance JavaNull IndexedAnimationToImageArrayUtil where
    javaNull = javaNullRecord "IndexedAnimationToImageArrayUtil"

instance JavaEquals IndexedAnimationToImageArrayUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedAnimationToImageArrayUtil where
    (==) = jrecordEquals

instance JavaObjectClass IndexedAnimationToImageArrayUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO IndexedAnimationToImageArrayUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = IndexedAnimationToImageArrayUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: IndexedAnimationToImageArrayUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO IndexedAnimationToImageArrayUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: IndexedAnimationToImageArrayUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: Int -> Int -> IndexedAnimation.IndexedAnimation -> IO (JavaArray (Image.Image))
getInstance width height sequentialAnimationInterface = do
        size <- (IndexedAnimation.getAnimationSize sequentialAnimationInterface)
        let imageArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (IndexedAnimation.setFrame sequentialAnimationInterface index)
            assignedValue <- (AnimationFrameToImageUtil.getInstanceWH ((jio (AnimationFrameToImageUtil.getInstance))) width height (javaCast sequentialAnimationInterface))
            jsetIndex imageArray (index) (assignedValue)
        pure (imageArray)


