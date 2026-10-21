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
-- package org.allbinary.input.media.image
module InputImageIOInterfaceFactory where

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
import qualified InputImageType -- same package or java.lang
import qualified CapturedImageInputOutput -- org.allbinary.input.media.image.capture.CapturedImageInputOutput
import qualified ComparisonImageInputOutput -- org.allbinary.media.image.comparison.ComparisonImageInputOutput
import qualified MotionRectanglesImageInputOutput -- org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput
import qualified ImageIOInterface -- org.allbinary.media.image.io.ImageIOInterface

data InputImageIOInterfaceFactory = InputImageIOInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull InputImageIOInterfaceFactory where
    javaNull = javaNullRecord "InputImageIOInterfaceFactory"

instance JavaEquals InputImageIOInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputImageIOInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass InputImageIOInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputImageIOInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InputImageIOInterfaceFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: InputImageIOInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InputImageIOInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputImageIOInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: InputImageType.InputImageType -> IO (ImageIOInterface.ImageIOInterface)
getInstance imageType = do
    javaCatchReturn $ do
        if (imageType == (jget InputImageType.cAPTURE)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ImageIOInterface.ImageIOInterface) (CapturedImageInputOutput.new_))
        else if (imageType == (jget InputImageType.cOMPARISON)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ImageIOInterface.ImageIOInterface) (ComparisonImageInputOutput.new_))
        else if (imageType == (jget InputImageType.mOTION)) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ImageIOInterface.ImageIOInterface) (MotionRectanglesImageInputOutput.new_))
        else do
            javaThrow ((JavaException "Exception" ("No ImageIOInterface for: " ++ (jio (InputImageType.toString imageType)))))


