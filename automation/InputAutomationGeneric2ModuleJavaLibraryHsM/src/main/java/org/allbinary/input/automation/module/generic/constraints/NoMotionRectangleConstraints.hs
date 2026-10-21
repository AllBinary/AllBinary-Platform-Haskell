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
-- package org.allbinary.input.automation.module.generic.constraints
module NoMotionRectangleConstraints (module NoMotionRectangleConstraints, module MotionRectangleConstraints) where

import MotionRectangleConstraints hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl)
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
import qualified Dimension -- same package or java.lang
import qualified Rectangle -- same package or java.lang
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified MotionRectangleConstraints -- org.allbinary.input.automation.module.MotionRectangleConstraints
-- import java.awt.*

data NoMotionRectangleConstraints = NoMotionRectangleConstraints
    { header_ :: JavaHeader
    , base :: MotionRectangleConstraints.MotionRectangleConstraints
    }

instance JavaNull NoMotionRectangleConstraints where
    javaNull = javaNullRecord "NoMotionRectangleConstraints"

instance JavaEquals NoMotionRectangleConstraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoMotionRectangleConstraints where
    (==) = jrecordEquals

instance JavaObjectClass NoMotionRectangleConstraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoMotionRectangleConstraints
newRecord_ = do
    base <- MotionRectangleConstraints.newRecord_
    let header_ = base.header_
    let this = NoMotionRectangleConstraints header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: NoMotionRectangleConstraints -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NoMotionRectangleConstraints
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoMotionRectangleConstraints -> IO ()
init_ this = do
        MotionRectangleConstraints.init_ this.base
        initFields_ this
        Control.Monad.void (MotionRectangleConstraints.setMinDimension this (jio (Dimension.new_2 0 0)))
        Control.Monad.void (MotionRectangleConstraints.setMinArea this 0)
        Control.Monad.void (MotionRectangleConstraints.setMaxDimension this (jio (Dimension.new_2 (2147483647 :: Int) (2147483647 :: Int))))
        Control.Monad.void (MotionRectangleConstraints.setMaxMotionRectangles this (2147483647 :: Int))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid object_ a1 a2 a3 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: NoMotionRectangleConstraints))) () a1 a2 a3

isValid_super :: (JavaObjectClass this_) => this_ -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_super object_ a1 a2 a3 = (isValid_impl (javaCast object_ :: NoMotionRectangleConstraints)) a1 a2 a3

isValid_impl :: NoMotionRectangleConstraints -> Int64 -> BufferedImage.BufferedImage -> Rectangle.Rectangle -> IO (Bool)
isValid_impl this frame bufferedImage rectangle = do
        pure (True)


