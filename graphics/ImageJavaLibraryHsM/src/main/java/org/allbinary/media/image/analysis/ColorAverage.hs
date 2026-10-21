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
-- package org.allbinary.media.image.analysis
module ColorAverage where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data ColorAverage = ColorAverage
    { header_ :: JavaHeader
    , avgRed :: IORef (Float)
    , avgGreen :: IORef (Float)
    , avgBlue :: IORef (Float)
    }

instance JavaNull ColorAverage where
    javaNull = javaNullRecord "ColorAverage"

instance JavaEquals ColorAverage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorAverage where
    (==) = jrecordEquals

instance JavaObjectClass ColorAverage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorAverage
newRecord_ = do
    header_ <- newJavaHeader
    avgRed <- newIORef 0.0
    avgGreen <- newIORef 0.0
    avgBlue <- newIORef 0.0
    let this = ColorAverage header_ avgRed avgGreen avgBlue
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getAvgRed" (\() -> getAvgRed_impl this)
    jregisterMethod header_ "setAvgRed" (\() -> setAvgRed_impl this)
    jregisterMethod header_ "getAvgGreen" (\() -> getAvgGreen_impl this)
    jregisterMethod header_ "setAvgGreen" (\() -> setAvgGreen_impl this)
    jregisterMethod header_ "getAvgBlue" (\() -> getAvgBlue_impl this)
    jregisterMethod header_ "setAvgBlue" (\() -> setAvgBlue_impl this)
    pure this

initFields_ :: ColorAverage -> IO ()
initFields_ this = do
    jset this.avgRed (0.0)
    jset this.avgGreen (0.0)
    jset this.avgBlue (0.0)
    pure ()

new_ :: IO ColorAverage
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorAverage -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (ColorAverage.setAvgRed this 0)
        Control.Monad.void (ColorAverage.setAvgGreen this 0)
        Control.Monad.void (ColorAverage.setAvgBlue this 0)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ColorAverage))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ColorAverage))

toString_impl :: ColorAverage -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "getAvgRed(): ")
        Control.Monad.void (StringMaker.appendfloat stringBuffer (jio (ColorAverage.getAvgRed this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getAvgRed(): ")
        Control.Monad.void (StringMaker.appendfloat stringBuffer (jio (ColorAverage.getAvgRed this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getAvgGreen(): ")
        Control.Monad.void (StringMaker.appendfloat stringBuffer (jio (ColorAverage.getAvgGreen this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString stringBuffer)


getAvgRed :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgRed object_ = jmethod object_ "getAvgRed" (\() -> (getAvgRed_impl (javaCast object_ :: ColorAverage))) ()

getAvgRed_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgRed_super object_ = (getAvgRed_impl (javaCast object_ :: ColorAverage))

getAvgRed_impl :: ColorAverage -> IO (Float)
getAvgRed_impl this = do
        pure ((jget (this).avgRed))


setAvgRed :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgRed object_ a1 = jmethod object_ "setAvgRed" (\() -> (setAvgRed_impl (javaCast object_ :: ColorAverage))) () a1

setAvgRed_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgRed_super object_ a1 = (setAvgRed_impl (javaCast object_ :: ColorAverage)) a1

setAvgRed_impl :: ColorAverage -> Float -> IO (())
setAvgRed_impl this avgRed = do
        jset (this).avgRed (avgRed)
        pure ()


getAvgGreen :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgGreen object_ = jmethod object_ "getAvgGreen" (\() -> (getAvgGreen_impl (javaCast object_ :: ColorAverage))) ()

getAvgGreen_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgGreen_super object_ = (getAvgGreen_impl (javaCast object_ :: ColorAverage))

getAvgGreen_impl :: ColorAverage -> IO (Float)
getAvgGreen_impl this = do
        pure ((jget (this).avgGreen))


setAvgGreen :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgGreen object_ a1 = jmethod object_ "setAvgGreen" (\() -> (setAvgGreen_impl (javaCast object_ :: ColorAverage))) () a1

setAvgGreen_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgGreen_super object_ a1 = (setAvgGreen_impl (javaCast object_ :: ColorAverage)) a1

setAvgGreen_impl :: ColorAverage -> Float -> IO (())
setAvgGreen_impl this avgGreen = do
        jset (this).avgGreen (avgGreen)
        pure ()


getAvgBlue :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgBlue object_ = jmethod object_ "getAvgBlue" (\() -> (getAvgBlue_impl (javaCast object_ :: ColorAverage))) ()

getAvgBlue_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getAvgBlue_super object_ = (getAvgBlue_impl (javaCast object_ :: ColorAverage))

getAvgBlue_impl :: ColorAverage -> IO (Float)
getAvgBlue_impl this = do
        pure ((jget (this).avgBlue))


setAvgBlue :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgBlue object_ a1 = jmethod object_ "setAvgBlue" (\() -> (setAvgBlue_impl (javaCast object_ :: ColorAverage))) () a1

setAvgBlue_super :: (JavaObjectClass this_) => this_ -> Float -> IO (())
setAvgBlue_super object_ a1 = (setAvgBlue_impl (javaCast object_ :: ColorAverage)) a1

setAvgBlue_impl :: ColorAverage -> Float -> IO (())
setAvgBlue_impl this avgBlue = do
        jset (this).avgBlue (avgBlue)
        pure ()


