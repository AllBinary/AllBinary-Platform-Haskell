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
-- package org.allbinary.media.image
module ImageStrings where

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

data ImageStrings = ImageStrings
    { header_ :: JavaHeader
    , pNG :: IORef (String)
    , pNG_EXTENSION :: IORef (String)
    }

instance JavaNull ImageStrings where
    javaNull = javaNullRecord "ImageStrings"

instance JavaEquals ImageStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageStrings where
    (==) = jrecordEquals

instance JavaObjectClass ImageStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageStrings
newRecord_ = do
    header_ <- newJavaHeader
    pNG <- newIORef ""
    pNG_EXTENSION <- newIORef ""
    let this = ImageStrings header_ pNG pNG_EXTENSION
    jregisterLevel header_ this
    pure this

initFields_ :: ImageStrings -> IO ()
initFields_ this = do
    jset this.pNG ("PNG")
    jset this.pNG_EXTENSION (".png")
    pure ()

new_ :: IO ImageStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageStrings)
getInstance = do
        pure (ImageStrings.instance_)


