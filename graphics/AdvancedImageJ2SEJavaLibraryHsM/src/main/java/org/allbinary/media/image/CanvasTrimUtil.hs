{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.image
module CanvasTrimUtil where

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
import qualified ImageProcessorInput -- same package or java.lang
import qualified ImageProcessedVisitor -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified IOException -- java.io.IOException
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data CanvasTrimUtil = CanvasTrimUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringUtil :: IORef (StringUtil.StringUtil)
    }

instance JavaNull CanvasTrimUtil where
    javaNull = javaNullRecord "CanvasTrimUtil"

instance JavaEquals CanvasTrimUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CanvasTrimUtil where
    (==) = jrecordEquals

instance JavaObjectClass CanvasTrimUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CanvasTrimUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    stringUtil <- newIORef javaNull
    let this = CanvasTrimUtil header_ logUtil stringUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: CanvasTrimUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    pure ()

new_ :: IO CanvasTrimUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CanvasTrimUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CanvasTrimUtil)
getInstance = do
        pure (CanvasTrimUtil.instance_)


-- throws IOException
process :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: CanvasTrimUtil))) () a1 a2 a3 a4 a5 a6

process_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_super object_ a1 a2 a3 a4 a5 a6 = (process_impl (javaCast object_ :: CanvasTrimUtil)) a1 a2 a3 a4 a5 a6

process_impl :: CanvasTrimUtil -> ImageProcessorInput.ImageProcessorInput -> Int -> Int -> Int -> Int -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_impl this imageProcessorInput cutCanvasFromLeftReduction cutCanvasFromTopReduction cutCanvasFromRightReduction cutCanvasFromBottomReduction visitor = do
        bufferedImageArray <- (ImageProcessorInput.getBufferedImageArray imageProcessorInput)
        let subBufferedImageArray = (jnewArray ((jlength bufferedImageArray)) javaNull)
        let size = (jlength bufferedImageArray)
        bufferedImage <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            assignedValue <- (BufferedImage.getSubimage ((jget bufferedImage)) cutCanvasFromLeftReduction cutCanvasFromTopReduction (((jio (BufferedImage.getWidth ((jget bufferedImage)))) - cutCanvasFromLeftReduction) - cutCanvasFromRightReduction) (((jio (BufferedImage.getHeight ((jget bufferedImage)))) - cutCanvasFromTopReduction) - cutCanvasFromBottomReduction))
            jsetIndex subBufferedImageArray (index) (assignedValue)
            Control.Monad.void (ImageProcessedVisitor.visit visitor (jindex subBufferedImageArray (index)) (jget ((jget (this).stringUtil)).eMPTY_STRING) index)
        pure ()


