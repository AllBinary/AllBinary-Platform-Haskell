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
module ImageArrayRotationUtil where

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
import qualified ImageJ2SERotationUtil -- same package or java.lang
import qualified ImageProcessorInput -- same package or java.lang
import qualified ImageProcessedVisitor -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified IOException -- java.io.IOException
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageArrayRotationUtil = ImageArrayRotationUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tOTAL_ANGLE :: IORef (String)
    }

instance JavaNull ImageArrayRotationUtil where
    javaNull = javaNullRecord "ImageArrayRotationUtil"

instance JavaEquals ImageArrayRotationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageArrayRotationUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageArrayRotationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageArrayRotationUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    tOTAL_ANGLE <- newIORef ""
    let this = ImageArrayRotationUtil header_ logUtil commonStrings tOTAL_ANGLE
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: ImageArrayRotationUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tOTAL_ANGLE ("totalAngle: ")
    pure ()

new_ :: IO ImageArrayRotationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageArrayRotationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageArrayRotationUtil)
getInstance = do
        pure (ImageArrayRotationUtil.instance_)


-- throws IOException
process :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: ImageArrayRotationUtil))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> ImageProcessorInput.ImageProcessorInput -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: ImageArrayRotationUtil)) a1 a2 a3

process_impl :: ImageArrayRotationUtil -> ImageProcessorInput.ImageProcessorInput -> String -> ImageProcessedVisitor.ImageProcessedVisitor -> IO (())
process_impl this imageProcessorInput input visitor = do
        totalAngle <- newIORef (javaNull)
        if (input == (jget ((jget (this).commonStrings)).uP)) then do
            jset totalAngle ((javaToString (Prelude.negate 90)))
        else if (input == (jget ((jget (this).commonStrings)).dOWN)) then do
            jset totalAngle ((javaToString 90))
        else do
            jset totalAngle ((javaToString input))
        generatedBufferedImage <- newIORef (javaNull)
        bufferedImageArray <- (ImageProcessorInput.getBufferedImageArray imageProcessorInput)
        forM_ [0 .. (jlength bufferedImageArray) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).tOTAL_ANGLE) ++ javaToString (jget totalAngle)) this (jget ((jget (this).commonStrings)).rUN))
            assignedValue <- (ImageJ2SERotationUtil.getRotatedImage ((jio (ImageJ2SERotationUtil.getInstance))) (jindex bufferedImageArray (index)) (jget totalAngle))
            jset generatedBufferedImage (assignedValue)
            Control.Monad.void (ImageProcessedVisitor.visit visitor (jget generatedBufferedImage) input index)
        pure ()


