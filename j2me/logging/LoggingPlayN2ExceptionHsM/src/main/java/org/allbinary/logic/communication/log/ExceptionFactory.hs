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
-- package org.allbinary.logic.communication.log
module ExceptionFactory where

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

data ExceptionFactory = ExceptionFactory
    { header_ :: JavaHeader
    }

instance JavaNull ExceptionFactory where
    javaNull = javaNullRecord "ExceptionFactory"

instance JavaEquals ExceptionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ExceptionFactory where
    (==) = jrecordEquals

instance JavaObjectClass ExceptionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ExceptionFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ExceptionFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ExceptionFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ExceptionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ExceptionFactory -> IO ()
init_ this = do
    initFields_ this


createThrowable :: String -> IO (JavaException)
createThrowable message = do
        pure ((JavaException "Throwable" message))


