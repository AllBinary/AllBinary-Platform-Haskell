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
-- package org.allbinary.emulator.device
module TrueTypeFontUtil (module TrueTypeFontUtil, module TrueTypeFontUtilBase) where

import TrueTypeFontUtilBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getAsTextureSize, getAsTextureSize_super, getAsTextureSize_impl, getCellSize, getCellSize_super, getCellSize_impl, getFontBitmap, getFontBitmap_super, getFontBitmap_impl, saveFontAtlasAsFile, saveFontAtlasAsFile_super, saveFontAtlasAsFile_impl, getFontBitmapGL, getFontBitmapGL_super, getFontBitmapGL_impl, getFontWidths, getFontWidths_super, getFontWidths_impl, instance_, fontImage)
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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified TrueTypeFontUtilBase

data TrueTypeFontUtil = TrueTypeFontUtil
    { header_ :: JavaHeader
    , base :: TrueTypeFontUtilBase.TrueTypeFontUtilBase
    , fontImage :: IORef (OpenGLESImage.OpenGLESImage)
    }

instance JavaNull TrueTypeFontUtil where
    javaNull = javaNullRecord "TrueTypeFontUtil"

instance JavaEquals TrueTypeFontUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrueTypeFontUtil where
    (==) = jrecordEquals

instance JavaObjectClass TrueTypeFontUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO TrueTypeFontUtil
newRecord_ = do
    base <- TrueTypeFontUtilBase.newRecord_
    let header_ = base.header_
    fontImage <- newIORef javaNull
    let this = TrueTypeFontUtil header_ base fontImage
    jregisterLevel header_ this
    jregisterMethod header_ "getAsTextureSize" (\() -> getAsTextureSize_impl this)
    jregisterMethod header_ "getCellSize" (\() -> getCellSize_impl this)
    jregisterMethod header_ "getFontBitmap" (\() -> getFontBitmap_impl this)
    jregisterMethod header_ "saveFontAtlasAsFile" (\() -> saveFontAtlasAsFile_impl this)
    jregisterMethod header_ "getFontBitmapGL" (\() -> getFontBitmapGL_impl this)
    jregisterMethod header_ "getFontWidths" (\() -> getFontWidths_impl this)
    pure this

initFields_ :: TrueTypeFontUtil -> IO ()
initFields_ this = do
    jset this.fontImage (OpenGLESImage.nULL_OPENGL_IMAGE)
    pure ()


getInstance :: IO (TrueTypeFontUtil)
getInstance = do
        pure (TrueTypeFontUtil.instance_)

new_ :: IO TrueTypeFontUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrueTypeFontUtil -> IO ()
init_ this = do
        TrueTypeFontUtilBase.init_1 this.base (1)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getAsTextureSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize object_ a1 = jmethod object_ "getAsTextureSize" (\() -> (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtil))) () a1

getAsTextureSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getAsTextureSize_super object_ a1 = (getAsTextureSize_impl (javaCast object_ :: TrueTypeFontUtil)) a1

getAsTextureSize_impl :: TrueTypeFontUtil -> Int -> IO (Int)
getAsTextureSize_impl this textureSize = do
        javaThrow ((JavaException "RuntimeException" ""))


getCellSize :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize object_ a1 = jmethod object_ "getCellSize" (\() -> (getCellSize_impl (javaCast object_ :: TrueTypeFontUtil))) () a1

getCellSize_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getCellSize_super object_ a1 = (getCellSize_impl (javaCast object_ :: TrueTypeFontUtil)) a1

getCellSize_impl :: TrueTypeFontUtil -> Int -> IO (Int)
getCellSize_impl this cellSize = do
        javaThrow ((JavaException "RuntimeException" ""))


getFontBitmap :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap object_ a1 a2 a3 a4 = jmethod object_ "getFontBitmap" (\() -> (getFontBitmap_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2 a3 a4

getFontBitmap_super :: (JavaObjectClass this_) => this_ -> String -> Int -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap_super object_ a1 a2 a3 a4 = (getFontBitmap_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2 a3 a4

getFontBitmap_impl :: TrueTypeFontUtil -> String -> Int -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmap_impl this filename fontSize cellSize basicColor = do
        javaThrow ((JavaException "RuntimeException" ""))


saveFontAtlasAsFile :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile object_ = jmethod object_ "saveFontAtlasAsFile" (\() -> (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))) ()

saveFontAtlasAsFile_super :: (JavaObjectClass this_) => this_ -> IO (())
saveFontAtlasAsFile_super object_ = (saveFontAtlasAsFile_impl (javaCast object_ :: TrueTypeFontUtil))

saveFontAtlasAsFile_impl :: TrueTypeFontUtil -> IO (())
saveFontAtlasAsFile_impl this = do
        pure ()


getFontBitmapGL :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL object_ a1 a2 a3 a4 = jmethod object_ "getFontBitmapGL" (\() -> (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2 a3 a4

getFontBitmapGL_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_super object_ a1 a2 a3 a4 = (getFontBitmapGL_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2 a3 a4

getFontBitmapGL_impl :: TrueTypeFontUtil -> GL10.GL10 -> String -> Int -> BasicColor.BasicColor -> IO (Image.Image)
getFontBitmapGL_impl this gl filename cellSize basicColor = do
        javaThrow ((JavaException "RuntimeException" ""))


getFontWidths :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths object_ a1 a2 = jmethod object_ "getFontWidths" (\() -> (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil))) () a1 a2

getFontWidths_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (JavaArray (Int))
getFontWidths_super object_ a1 a2 = (getFontWidths_impl (javaCast object_ :: TrueTypeFontUtil)) a1 a2

getFontWidths_impl :: TrueTypeFontUtil -> String -> Int -> IO (JavaArray (Int))
getFontWidths_impl this filename fontSize = do
        javaThrow ((JavaException "RuntimeException" ""))


