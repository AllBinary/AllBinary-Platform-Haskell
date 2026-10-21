{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.util
module ABCharacter where

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
import qualified JsType -- jsinterop.annotations.JsType

data ABCharacter = ABCharacter
    { header_ :: JavaHeader
    }

instance JavaNull ABCharacter where
    javaNull = javaNullRecord "ABCharacter"

instance JavaEquals ABCharacter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABCharacter where
    (==) = jrecordEquals

instance JavaObjectClass ABCharacter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ABCharacter
newRecord_ = do
    header_ <- newJavaHeader
    let this = ABCharacter header_
    jregisterLevel header_ this
    pure this

initFields_ :: ABCharacter -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABCharacter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABCharacter -> IO ()
init_ this = do
    initFields_ this


toString :: Char -> IO (String)
toString ch = do
        pure ((javaToString ch))


