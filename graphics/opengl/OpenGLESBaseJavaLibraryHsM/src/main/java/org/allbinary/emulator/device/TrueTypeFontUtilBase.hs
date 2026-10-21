{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.emulator.device
module TrueTypeFontUtilBase where

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
import qualified Font -- javax.microedition.lcdui.Font
import qualified AvianUtil -- org.allbinary.AvianUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data TrueTypeFontUtilBase = TrueTypeFontUtilBase
    { header_ :: JavaHeader
    , shortPattern :: IORef (String)
    , patternAsBytes :: IORef (JavaArray (Int8))
    , pattern :: IORef (String)
    , charArray :: IORef (JavaArray (Int16))
    , _characterWidth :: IORef (JavaArray (Int))
    , characterArray :: IORef (JavaArray (Char))
    , size :: IORef (Int)
    , lastCapIndex :: IORef (Int)
    , currentFont :: IORef (Font.Font)
    , scale :: IORef (Int)
    , cELLS_PER_ROW :: IORef (Int)
    , fontSize :: IORef (Int)
    , baseCharWidth :: IORef (Int)
    , cellSize :: IORef (Int)
    , textureSize :: IORef (Int)
    , actualCellsPerRow :: IORef (Int)
    }

instance JavaNull TrueTypeFontUtilBase where
    javaNull = javaNullRecord "TrueTypeFontUtilBase"

instance JavaEquals TrueTypeFontUtilBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrueTypeFontUtilBase where
    (==) = jrecordEquals

instance JavaObjectClass TrueTypeFontUtilBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TrueTypeFontUtilBase
newRecord_ = do
    header_ <- newJavaHeader
    shortPattern <- newIORef ""
    patternAsBytes <- newIORef javaNull
    pattern <- newIORef ""
    charArray <- newIORef javaNull
    _characterWidth <- newIORef javaNull
    characterArray <- newIORef javaNull
    size <- newIORef 0
    lastCapIndex <- newIORef 0
    currentFont <- newIORef javaNull
    scale <- newIORef 0
    cELLS_PER_ROW <- newIORef 0
    fontSize <- newIORef 0
    baseCharWidth <- newIORef 0
    cellSize <- newIORef 0
    textureSize <- newIORef 0
    actualCellsPerRow <- newIORef 0
    let this = TrueTypeFontUtilBase header_ shortPattern patternAsBytes pattern charArray _characterWidth characterArray size lastCapIndex currentFont scale cELLS_PER_ROW fontSize baseCharWidth cellSize textureSize actualCellsPerRow
    jregisterLevel header_ this
    jregisterMethod header_ "getAsTextureSize" (\() -> getAsTextureSize_impl this)
    jregisterMethod header_ "getCellSize" (\() -> getCellSize_impl this)
    jregisterMethod header_ "getYOffset" (\() -> getYOffset_impl this)
    pure this

initFields_ :: TrueTypeFontUtilBase -> IO ()
initFields_ this = do
    jset this.shortPattern (javaNull)
    jset this.patternAsBytes ((jarrayFromList [32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 84) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 84) :: Int)), 34, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 93) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 93) :: Int)), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 87) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 87) :: Int))]))
    jset this.pattern =<< (jnewString (jget (this).patternAsBytes))
    jset this.charArray ((jarrayFromList [0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6f, 0x50, 0x56, 0x6b, 0x51, 0x52, 0x5a, 0x6a, 0x5c, 0x60, 0x5b, 0x62, 0x72, 0x63, 0x4b, 0x73, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0x6c, 0x69, 0x74, 0x64, 0x75, 0x4c, 0x70, 0xb, 0xc, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x65, 0x76, 0x66, 0x59, 0x61, 0x53, 0x2b, 0x2c, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x67, 0x77, 0x68, 0x71, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x58, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7b, 0x0, 0x0, 0x55, 0x0, 0x79, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]))
    jset this._characterWidth ((jnewArray ((Prelude.length (jget (this).pattern))) 0))
    jset this.characterArray ((jnewArray (1) '\0'))
    jset this.size ((Prelude.length (jget (this).pattern)))
    jset this.lastCapIndex ((jstringIndexOf (jget (this).pattern) 'Z' 0))
    jset this.currentFont =<< (Font.getDefaultFont)
    jset this.scale (0)
    jset this.cELLS_PER_ROW (0)
    jset this.fontSize (0)
    jset this.baseCharWidth (0)
    jset this.cellSize (0)
    jset this.textureSize (0)
    jset this.actualCellsPerRow (0)
    pure ()

new_1 :: Int -> IO TrueTypeFontUtilBase
new_1 scale = do
    this <- newRecord_
    init_1 this scale
    pure this

init_1 :: TrueTypeFontUtilBase -> Int -> IO ()
init_1 this scale = do
        initFields_ this
        shortPattern <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        if (jio (AvianUtil.isAvian)) then do
            let shortPatterAsByteArray = (jarrayFromList [32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 84) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 84) :: Int)), 34, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 93) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 93) :: Int)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 87) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 87) :: Int))])
            assignedValue <- (jnewString shortPatterAsByteArray)
            jset shortPattern (assignedValue)
        else do
            let shortPatterAsByteArray = (jarrayFromList [32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 84) :: Int)), 34, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 93) :: Int)), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 82) :: Int)), (Prelude.fromIntegral ((Prelude.negate 62) :: Int)), (Prelude.fromIntegral ((Prelude.negate 87) :: Int))])
            assignedValue <- (jnewString shortPatterAsByteArray)
            jset shortPattern (assignedValue)
        jset (this).shortPattern ((jget shortPattern))
        jset (this).scale (scale)
        jset (this).cELLS_PER_ROW (16)
        jset (this).fontSize ((((20 + 6)) * (jget (this).scale)))
        jset (this).baseCharWidth (((jget (this).fontSize) + ((6 * (jget (this).scale)))))
        jset (this).cellSize (((jget (this).fontSize) + ((6 * (jget (this).scale)))))
        assignedValue <- (TrueTypeFontUtilBase.getAsTextureSize this ((jget (this).cELLS_PER_ROW) * (jget (this).cellSize)))
        jset (this).textureSize (assignedValue)
        jset (this).actualCellsPerRow (((jget (this).textureSize) `quot` (jget (this).cellSize)))
        pure ()


getAsTextureSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize object_ a1 = jmethod object_ "getAsTextureSize" (\() -> (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtilBase))) () a1

getAsTextureSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize_super object_ a1 = (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtilBase)) a1

getAsTextureSize_impl :: TrueTypeFontUtilBase -> Int -> IO (Int)
getAsTextureSize_impl this textureSize = do
        textureSize <- newIORef textureSize
        if ((jget textureSize) <= 64) then do
            jset textureSize (64)
        else if ((jget textureSize) <= 128) then do
            jset textureSize (128)
        else if ((jget textureSize) <= 256) then do
            jset textureSize (256)
        else if ((jget textureSize) <= 512) then do
            jset textureSize (512)
        else when ((jget textureSize) <= 1024) $ do
            jset textureSize (1024)
        pure ((jget textureSize))


getCellSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize object_ a1 = jmethod object_ "getCellSize" (\() -> (getCellSize_impl (javaCast object_ :: TrueTypeFontUtilBase))) () a1

getCellSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize_super object_ a1 = (getCellSize_impl (javaCast object_ :: TrueTypeFontUtilBase)) a1

getCellSize_impl :: TrueTypeFontUtilBase -> Int -> IO (Int)
getCellSize_impl this cellSize = do
        cellSize <- newIORef cellSize
        if ((jget cellSize) <= 16) then do
            jset cellSize (16)
        else if ((jget cellSize) <= 32) then do
            jset cellSize (32)
        else if ((jget cellSize) <= 64) then do
            jset cellSize (64)
        else if ((jget cellSize) <= 128) then do
            jset cellSize (128)
        else when ((jget cellSize) <= 256) $ do
            jset cellSize (256)
        pure ((jget cellSize))


getYOffset :: (JavaObjectClass this_) => this_ -> IO (Int)
getYOffset object_ = jmethod object_ "getYOffset" (\() -> (getYOffset_impl (javaCast object_ :: TrueTypeFontUtilBase))) ()

getYOffset_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getYOffset_super object_ = (getYOffset_impl (javaCast object_ :: TrueTypeFontUtilBase))

getYOffset_impl :: TrueTypeFontUtilBase -> IO (Int)
getYOffset_impl this = do
        pure ((((((jget (this).scale) - 1)) * (jget (this).cellSize))))


