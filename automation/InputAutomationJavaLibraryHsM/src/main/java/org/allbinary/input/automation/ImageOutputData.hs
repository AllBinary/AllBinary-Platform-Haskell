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
-- package org.allbinary.input.automation
module ImageOutputData where

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
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data ImageOutputData = ImageOutputData
    { header_ :: JavaHeader
    }

instance JavaNull ImageOutputData where
    javaNull = javaNullRecord "ImageOutputData"

instance JavaEquals ImageOutputData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageOutputData where
    (==) = jrecordEquals

instance JavaObjectClass ImageOutputData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sAVE_PATH #-}
sAVE_PATH = unsafePerformIO ((StringMaker.toString ((jio (StringMaker.appendchar ((jio (StringMaker.append ((jio (StringMaker.appendchar ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (jgetProperty "user.dir"))))) (jget ((jio (FilePathData.getInstance))).sEPARATORCHAR)))) "saves"))) (jget ((jio (FilePathData.getInstance))).sEPARATORCHAR))))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageOutputData
newRecord_ = do
    header_ <- newJavaHeader
    let this = ImageOutputData header_
    jregisterLevel header_ this
    pure this

initFields_ :: ImageOutputData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ImageOutputData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageOutputData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


