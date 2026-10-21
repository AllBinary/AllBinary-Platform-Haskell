{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary
module KotlinUtil where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data KotlinUtil = KotlinUtil
    { header_ :: JavaHeader
    }

instance JavaNull KotlinUtil where
    javaNull = javaNullRecord "KotlinUtil"

instance JavaEquals KotlinUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KotlinUtil where
    (==) = jrecordEquals

instance JavaObjectClass KotlinUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KotlinUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = KotlinUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: KotlinUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO KotlinUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KotlinUtil -> IO ()
init_ this = do
    initFields_ this


isKotlin :: IO (Bool)
isKotlin = do
        pure (False)


getShortName :: IO (String)
getShortName = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


