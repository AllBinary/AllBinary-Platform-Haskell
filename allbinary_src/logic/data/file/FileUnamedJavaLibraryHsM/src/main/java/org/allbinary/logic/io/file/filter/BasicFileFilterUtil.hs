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
-- package org.allbinary.logic.io.file.filter
module BasicFileFilterUtil where

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
import qualified VisitorFileFilter -- same package or java.lang
import qualified FileFilter -- java.io.FileFilter
import qualified IncludeFileExtensionsBooleanFileVisitor -- org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicFileFilterUtil = BasicFileFilterUtil
    { header_ :: JavaHeader
    }

instance JavaNull BasicFileFilterUtil where
    javaNull = javaNullRecord "BasicFileFilterUtil"

instance JavaEquals BasicFileFilterUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicFileFilterUtil where
    (==) = jrecordEquals

instance JavaObjectClass BasicFileFilterUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicFileFilterUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = BasicFileFilterUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: BasicFileFilterUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BasicFileFilterUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicFileFilterUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: String -> IO (FileFilter.FileFilter)
getInstance extension = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add vector extension)
        includeFileExtensionsBooleanFileVisitor <- (IncludeFileExtensionsBooleanFileVisitor.new_1 vector)
        pure ((javaCast (jio (VisitorFileFilter.new_1 includeFileExtensionsBooleanFileVisitor)) :: FileFilter.FileFilter))


