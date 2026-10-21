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
module ColorRange where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
-- import java.awt.*
import qualified ColorRangeInterface

-- implements ColorRangeInterface
data ColorRange = ColorRange
    { header_ :: JavaHeader
    , minRed :: IORef (Int)
    , maxRed :: IORef (Int)
    , minGreen :: IORef (Int)
    , maxGreen :: IORef (Int)
    , minBlue :: IORef (Int)
    , maxBlue :: IORef (Int)
    }

instance JavaNull ColorRange where
    javaNull = javaNullRecord "ColorRange"

instance JavaEquals ColorRange where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorRange where
    (==) = jrecordEquals

instance JavaObjectClass ColorRange where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ColorRange
newRecord_ = do
    header_ <- newJavaHeader
    minRed <- newIORef 0
    maxRed <- newIORef 0
    minGreen <- newIORef 0
    maxGreen <- newIORef 0
    minBlue <- newIORef 0
    maxBlue <- newIORef 0
    let this = ColorRange header_ minRed maxRed minGreen maxGreen minBlue maxBlue
    jregisterLevel header_ this
    ColorRangeInterface.registerInterface_ header_
    jregisterMethod header_ "getMinRed" (\() -> getMinRed_impl this)
    jregisterMethod header_ "setMinRed" (\() -> setMinRed_impl this)
    jregisterMethod header_ "getMaxRed" (\() -> getMaxRed_impl this)
    jregisterMethod header_ "setMaxRed" (\() -> setMaxRed_impl this)
    jregisterMethod header_ "getMinGreen" (\() -> getMinGreen_impl this)
    jregisterMethod header_ "setMinGreen" (\() -> setMinGreen_impl this)
    jregisterMethod header_ "getMaxGreen" (\() -> getMaxGreen_impl this)
    jregisterMethod header_ "setMaxGreen" (\() -> setMaxGreen_impl this)
    jregisterMethod header_ "getMinBlue" (\() -> getMinBlue_impl this)
    jregisterMethod header_ "setMinBlue" (\() -> setMinBlue_impl this)
    jregisterMethod header_ "getMaxBlue" (\() -> getMaxBlue_impl this)
    jregisterMethod header_ "setMaxBlue" (\() -> setMaxBlue_impl this)
    jregisterMethod header_ "isInRange" (\() -> isInRange_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ColorRange -> IO ()
initFields_ this = do
    jset this.minRed (0)
    jset this.maxRed (0)
    jset this.minGreen (0)
    jset this.maxGreen (0)
    jset this.minBlue (0)
    jset this.maxBlue (0)
    pure ()

new_ :: IO ColorRange
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorRange -> IO ()
init_ this = do
        initFields_ this
        jset (this).minRed (0)
        jset (this).maxRed (0)
        jset (this).minGreen (0)
        jset (this).maxGreen (0)
        jset (this).minBlue (0)
        jset (this).maxBlue (0)
        pure ()


getMinRed :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinRed object_ = jmethod object_ "getMinRed" (\() -> (getMinRed_impl (javaCast object_ :: ColorRange))) ()

getMinRed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinRed_super object_ = (getMinRed_impl (javaCast object_ :: ColorRange))

getMinRed_impl :: ColorRange -> IO (Int)
getMinRed_impl this = do
        pure ((jget (this).minRed))


setMinRed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinRed object_ a1 = jmethod object_ "setMinRed" (\() -> (setMinRed_impl (javaCast object_ :: ColorRange))) () a1

setMinRed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinRed_super object_ a1 = (setMinRed_impl (javaCast object_ :: ColorRange)) a1

setMinRed_impl :: ColorRange -> Int -> IO (())
setMinRed_impl this minRed = do
        jset (this).minRed (minRed)
        pure ()


getMaxRed :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxRed object_ = jmethod object_ "getMaxRed" (\() -> (getMaxRed_impl (javaCast object_ :: ColorRange))) ()

getMaxRed_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxRed_super object_ = (getMaxRed_impl (javaCast object_ :: ColorRange))

getMaxRed_impl :: ColorRange -> IO (Int)
getMaxRed_impl this = do
        pure ((jget (this).maxRed))


setMaxRed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxRed object_ a1 = jmethod object_ "setMaxRed" (\() -> (setMaxRed_impl (javaCast object_ :: ColorRange))) () a1

setMaxRed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxRed_super object_ a1 = (setMaxRed_impl (javaCast object_ :: ColorRange)) a1

setMaxRed_impl :: ColorRange -> Int -> IO (())
setMaxRed_impl this maxRed = do
        jset (this).maxRed (maxRed)
        pure ()


getMinGreen :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinGreen object_ = jmethod object_ "getMinGreen" (\() -> (getMinGreen_impl (javaCast object_ :: ColorRange))) ()

getMinGreen_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinGreen_super object_ = (getMinGreen_impl (javaCast object_ :: ColorRange))

getMinGreen_impl :: ColorRange -> IO (Int)
getMinGreen_impl this = do
        pure ((jget (this).minGreen))


setMinGreen :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinGreen object_ a1 = jmethod object_ "setMinGreen" (\() -> (setMinGreen_impl (javaCast object_ :: ColorRange))) () a1

setMinGreen_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinGreen_super object_ a1 = (setMinGreen_impl (javaCast object_ :: ColorRange)) a1

setMinGreen_impl :: ColorRange -> Int -> IO (())
setMinGreen_impl this minGreen = do
        jset (this).minGreen (minGreen)
        pure ()


getMaxGreen :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxGreen object_ = jmethod object_ "getMaxGreen" (\() -> (getMaxGreen_impl (javaCast object_ :: ColorRange))) ()

getMaxGreen_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxGreen_super object_ = (getMaxGreen_impl (javaCast object_ :: ColorRange))

getMaxGreen_impl :: ColorRange -> IO (Int)
getMaxGreen_impl this = do
        pure ((jget (this).maxGreen))


setMaxGreen :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxGreen object_ a1 = jmethod object_ "setMaxGreen" (\() -> (setMaxGreen_impl (javaCast object_ :: ColorRange))) () a1

setMaxGreen_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxGreen_super object_ a1 = (setMaxGreen_impl (javaCast object_ :: ColorRange)) a1

setMaxGreen_impl :: ColorRange -> Int -> IO (())
setMaxGreen_impl this maxGreen = do
        jset (this).maxGreen (maxGreen)
        pure ()


getMinBlue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinBlue object_ = jmethod object_ "getMinBlue" (\() -> (getMinBlue_impl (javaCast object_ :: ColorRange))) ()

getMinBlue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMinBlue_super object_ = (getMinBlue_impl (javaCast object_ :: ColorRange))

getMinBlue_impl :: ColorRange -> IO (Int)
getMinBlue_impl this = do
        pure ((jget (this).minBlue))


setMinBlue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinBlue object_ a1 = jmethod object_ "setMinBlue" (\() -> (setMinBlue_impl (javaCast object_ :: ColorRange))) () a1

setMinBlue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMinBlue_super object_ a1 = (setMinBlue_impl (javaCast object_ :: ColorRange)) a1

setMinBlue_impl :: ColorRange -> Int -> IO (())
setMinBlue_impl this minBlue = do
        jset (this).minBlue (minBlue)
        pure ()


getMaxBlue :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxBlue object_ = jmethod object_ "getMaxBlue" (\() -> (getMaxBlue_impl (javaCast object_ :: ColorRange))) ()

getMaxBlue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxBlue_super object_ = (getMaxBlue_impl (javaCast object_ :: ColorRange))

getMaxBlue_impl :: ColorRange -> IO (Int)
getMaxBlue_impl this = do
        pure ((jget (this).maxBlue))


setMaxBlue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxBlue object_ a1 = jmethod object_ "setMaxBlue" (\() -> (setMaxBlue_impl (javaCast object_ :: ColorRange))) () a1

setMaxBlue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxBlue_super object_ a1 = (setMaxBlue_impl (javaCast object_ :: ColorRange)) a1

setMaxBlue_impl :: ColorRange -> Int -> IO (())
setMaxBlue_impl this maxBlue = do
        jset (this).maxBlue (maxBlue)
        pure ()


isInRange :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isInRange object_ a1 = jmethod object_ "isInRange" (\() -> (isInRange_impl (javaCast object_ :: ColorRange))) () a1

isInRange_super :: (JavaObjectClass this_) => this_ -> Color.Color -> IO (Bool)
isInRange_super object_ a1 = (isInRange_impl (javaCast object_ :: ColorRange)) a1

isInRange_impl :: ColorRange -> Color.Color -> IO (Bool)
isInRange_impl this color = do
    javaCatchReturn $ do
        if (((((((jio (Color.getRed color)) >= (jio (ColorRange.getMinRed this))) && ((jio (Color.getRed color)) <= (jio (ColorRange.getMaxRed this)))) && ((jio (Color.getGreen color)) >= (jio (ColorRange.getMinGreen this)))) && ((jio (Color.getGreen color)) <= (jio (ColorRange.getMaxGreen this)))) && ((jio (Color.getBlue color)) >= (jio (ColorRange.getMinBlue this)))) && ((jio (Color.getBlue color)) <= (jio (ColorRange.getMaxBlue this)))) then do
            javaReturn (True)
        else do
            javaReturn (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ColorRange))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: ColorRange))

toString_impl :: ColorRange -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "getMinRed(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMinRed this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getMaxRed(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMaxRed this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getMinGreen(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMinGreen this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getMaxGreen(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMaxGreen this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getMinBlue(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMinGreen this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer "getMaxBlue(): ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (ColorRange.getMaxBlue this)))
        (StringMaker.toString stringBuffer)


