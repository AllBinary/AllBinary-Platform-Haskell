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
-- package org.allbinary.input.automation.module.game
module GraphicsAnalysisUtil where

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
import qualified Color -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified ColorCacheFactory -- org.allbinary.graphics.color.ColorCacheFactory
import qualified ColorCacheable -- org.allbinary.graphics.color.ColorCacheable
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
-- import java.awt.*

data GraphicsAnalysisUtil = GraphicsAnalysisUtil
    { header_ :: JavaHeader
    }

instance JavaNull GraphicsAnalysisUtil where
    javaNull = javaNullRecord "GraphicsAnalysisUtil"

instance JavaEquals GraphicsAnalysisUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GraphicsAnalysisUtil where
    (==) = jrecordEquals

instance JavaObjectClass GraphicsAnalysisUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

mAX = 122

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GraphicsAnalysisUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = GraphicsAnalysisUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: GraphicsAnalysisUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GraphicsAnalysisUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GraphicsAnalysisUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getNominator :: BufferedImage.BufferedImage -> Int -> Int -> Int -> IO (Double)
getNominator bufferedImage min_x max_x y = do
    javaCatchReturn $ do
        forM_ [max_x, max_x + (-1) .. min_x + 1] $ \index -> javaIteration (pure ()) $ do
            let colorInteger = (javaToString (jio (BufferedImage.getRGB bufferedImage index (y))))
            automaticCacheInterface <- (ColorCacheFactory.getInstance)
            let colorCacheable = (javaCast (jio (AutomaticCacheInterface.get automaticCacheInterface colorInteger)) :: ColorCacheable.ColorCacheable)
            color <- (ColorCacheable.getColor colorCacheable)
            if ((((jio (Color.getRed color)) < GraphicsAnalysisUtil.mAX) && ((jio (Color.getGreen color)) < GraphicsAnalysisUtil.mAX)) && ((jio (Color.getBlue color)) < GraphicsAnalysisUtil.mAX)) then do
                pure ()
            else do
                javaReturn ((Prelude.fromIntegral (index - min_x)))
        pure (0.0)


