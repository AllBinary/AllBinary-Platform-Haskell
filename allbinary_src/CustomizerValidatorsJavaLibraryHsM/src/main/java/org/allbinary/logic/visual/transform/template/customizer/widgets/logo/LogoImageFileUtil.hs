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
-- package org.allbinary.logic.visual.transform.template.customizer.widgets.logo
module LogoImageFileUtil where

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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified FileItem -- org.apache.commons.fileupload.FileItem

data LogoImageFileUtil = LogoImageFileUtil
    { header_ :: JavaHeader
    , directory :: IORef (Directory.Directory)
    , fileName :: IORef (String)
    , imageFileAbPath :: IORef (AbPath.AbPath)
    }

instance JavaNull LogoImageFileUtil where
    javaNull = javaNullRecord "LogoImageFileUtil"

instance JavaEquals LogoImageFileUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogoImageFileUtil where
    (==) = jrecordEquals

instance JavaObjectClass LogoImageFileUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogoImageFileUtil
newRecord_ = do
    header_ <- newJavaHeader
    directory <- newIORef javaNull
    fileName <- newIORef ""
    imageFileAbPath <- newIORef javaNull
    let this = LogoImageFileUtil header_ directory fileName imageFileAbPath
    jregisterLevel header_ this
    jregisterMethod header_ "saveFiles" (\() -> saveFiles_impl this)
    pure this

initFields_ :: LogoImageFileUtil -> IO ()
initFields_ this = do
    jset this.directory =<< (Directory.getInstance)
    jset this.fileName (javaNull)
    jset this.imageFileAbPath (javaNull)
    pure ()

new_2 :: AbPath.AbPath -> String -> IO LogoImageFileUtil
new_2 imageAbPath imageFile = do
    this <- newRecord_
    init_2 this imageAbPath imageFile
    pure this

init_2 :: LogoImageFileUtil -> AbPath.AbPath -> String -> IO ()
init_2 this imageAbPath imageFile = do
        initFields_ this
        jset (this).fileName (imageFile)
        jset (this).imageFileAbPath (imageAbPath)
        pure ()


-- throws Exception
saveFiles :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
saveFiles object_ a1 = jmethod object_ "saveFiles" (\() -> (saveFiles_impl (javaCast object_ :: LogoImageFileUtil))) () a1

saveFiles_super :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
saveFiles_super object_ a1 = (saveFiles_impl (javaCast object_ :: LogoImageFileUtil)) a1

saveFiles_impl :: LogoImageFileUtil -> FileItem.FileItem -> IO (())
saveFiles_impl this fileItem = do
        when ((jget (this).fileName) == javaNull) $ do
            javaThrow ((JavaException "Exception" "Image File Name Was Null"))
        when (Prelude.not (jio (Directory.create ((jget (this).directory)) (jget (this).imageFileAbPath)))) $ do
            javaThrow ((JavaException "Exception" "Unable to save file to non creatable directory"))
        originalImageFile <- (AbFile.createAbFile ((jio (AbPath.toString ((jget (this).imageFileAbPath)))) ++ (jget (this).fileName)))
        Control.Monad.void (AbFile.createNewFile originalImageFile)
        Control.Monad.void (FileUtil.write ((jio (FileUtil.getInstance))) (jio (ByteArrayInputStream.new_1 (jio (FileItem.get fileItem)))) originalImageFile)
        pure ()


