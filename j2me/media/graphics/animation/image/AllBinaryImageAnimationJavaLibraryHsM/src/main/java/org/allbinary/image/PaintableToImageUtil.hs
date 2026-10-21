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
module PaintableToImageUtil where

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
import qualified GameFeatureImageCacheFactory -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface

data PaintableToImageUtil = PaintableToImageUtil
    { header_ :: JavaHeader
    }

instance JavaNull PaintableToImageUtil where
    javaNull = javaNullRecord "PaintableToImageUtil"

instance JavaEquals PaintableToImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaintableToImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass PaintableToImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaintableToImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PaintableToImageUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: PaintableToImageUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PaintableToImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaintableToImageUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getImage :: PaintableInterface.PaintableInterface -> Int -> Int -> IO (Image.Image)
getImage paintableInterface width height = do
        image <- (ImageCache.get ((jio (GameFeatureImageCacheFactory.getInstance))) (jio (Class.getName ((jio (jobjectGetClass PaintableToImageUtil.instance_))))) width height)
        graphics <- (Image.getGraphics image)
        Control.Monad.void (PaintableInterface.paint paintableInterface graphics)
        pure (image)


