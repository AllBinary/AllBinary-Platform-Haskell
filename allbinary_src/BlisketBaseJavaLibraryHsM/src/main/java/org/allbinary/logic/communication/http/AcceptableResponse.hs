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
-- package org.allbinary.logic.communication.http
module AcceptableResponse where

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
import qualified AcceptableResponseUtil -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AcceptableResponse = AcceptableResponse
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull AcceptableResponse where
    javaNull = javaNullRecord "AcceptableResponse"

instance JavaEquals AcceptableResponse where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AcceptableResponse where
    (==) = jrecordEquals

instance JavaObjectClass AcceptableResponse where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AcceptableResponse
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = AcceptableResponse header_ logUtil commonStrings
    jregisterLevel header_ this
    pure this

initFields_ :: AcceptableResponse -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_3 :: String -> String -> Int -> IO AcceptableResponse
new_3 candidate tagName index = do
    this <- newRecord_
    init_3 this candidate tagName index
    pure this

init_3 :: AcceptableResponse -> String -> String -> Int -> IO ()
init_3 this candidate tagName index = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) tagName this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        acceptableResponseUtil <- (AcceptableResponseUtil.getInstance)
        Control.Monad.void (BasicArrayList.addAt ((jget (acceptableResponseUtil).candidateVector)) index candidate)
        Control.Monad.void (BasicArrayList.addAt ((jget (acceptableResponseUtil).tagNameVector)) index tagName)
        pure ()


