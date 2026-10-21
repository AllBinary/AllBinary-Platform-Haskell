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
-- package org.allbinary.media
module ScaleProperties where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data ScaleProperties = ScaleProperties
    { header_ :: JavaHeader
    , scaleX :: IORef (Float)
    , scaleY :: IORef (Float)
    , scaleWidth :: IORef (Int)
    , scaleHeight :: IORef (Int)
    , shouldScale :: IORef (Bool)
    }

instance JavaNull ScaleProperties where
    javaNull = javaNullRecord "ScaleProperties"

instance JavaEquals ScaleProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScaleProperties where
    (==) = jrecordEquals

instance JavaObjectClass ScaleProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO ScaleProperties
newRecord_ = do
    header_ <- newJavaHeader
    scaleX <- newIORef 0.0
    scaleY <- newIORef 0.0
    scaleWidth <- newIORef 0
    scaleHeight <- newIORef 0
    shouldScale <- newIORef False
    let this = ScaleProperties header_ scaleX scaleY scaleWidth scaleHeight shouldScale
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ScaleProperties -> IO ()
initFields_ this = do
    jset this.scaleX (1.0)
    jset this.scaleY (1.0)
    jset this.scaleWidth (0)
    jset this.scaleHeight (0)
    jset this.shouldScale (False)
    pure ()

new_ :: IO ScaleProperties
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScaleProperties -> IO ()
init_ this = do
    initFields_ this


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ScaleProperties))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ScaleProperties))

toString_impl :: ScaleProperties -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendboolean ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).cOLON_SEP)))) (jget (this).shouldScale)))) "scaleX: "))) (jget (this).scaleX)))) "scaleY: "))) (jget (this).scaleY)))) "scaleWidth: "))) (jget (this).scaleWidth)))) "scaleHeight: "))) (jget (this).scaleHeight)))))


