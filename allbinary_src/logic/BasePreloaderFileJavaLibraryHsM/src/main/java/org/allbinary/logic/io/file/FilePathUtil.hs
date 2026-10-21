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
-- package org.allbinary.logic.io.file
module FilePathUtil where

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
import qualified FilePathData -- same package or java.lang
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data FilePathUtil = FilePathUtil
    { header_ :: JavaHeader
    }

instance JavaNull FilePathUtil where
    javaNull = javaNullRecord "FilePathUtil"

instance JavaEquals FilePathUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FilePathUtil where
    (==) = jrecordEquals

instance JavaObjectClass FilePathUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FilePathUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = FilePathUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: FilePathUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FilePathUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FilePathUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


adjust :: String -> IO (String)
adjust path = do
    path <- newIORef path
    javaCatchReturn $ do
        abPathData <- (AbPathData.getInstance)
        stringValidationUtil <- (StringValidationUtil.getInstance)
        filePathData <- (FilePathData.getInstance)
        when (jio (StringValidationUtil.isEmpty stringValidationUtil (jget path))) $ do
            javaReturn ((jget (filePathData).pATH_START))
        jset path ((jstringReplace (jget path) (jget (abPathData).sEPARATORCHAR) (jget (filePathData).sEPARATORCHAR)))
        pure ((jget path))


