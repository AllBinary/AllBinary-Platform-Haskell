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
-- package org.allbinary.logic.java.character
module CharArrayFactory where

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

data CharArrayFactory = CharArrayFactory
    { header_ :: JavaHeader
    , zeroCharArray :: IORef (JavaArray (Char))
    }

instance JavaNull CharArrayFactory where
    javaNull = javaNullRecord "CharArrayFactory"

instance JavaEquals CharArrayFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CharArrayFactory where
    (==) = jrecordEquals

instance JavaObjectClass CharArrayFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CharArrayFactory
newRecord_ = do
    header_ <- newJavaHeader
    zeroCharArray <- newIORef javaNull
    let this = CharArrayFactory header_ zeroCharArray
    jregisterLevel header_ this
    jregisterMethod header_ "getZeroCharArray" (\() -> getZeroCharArray_impl this)
    pure this

initFields_ :: CharArrayFactory -> IO ()
initFields_ this = do
    jset this.zeroCharArray ((jnewArray (0) '\0'))
    pure ()

new_ :: IO CharArrayFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CharArrayFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CharArrayFactory)
getInstance = do
        pure (CharArrayFactory.instance_)


getZeroCharArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getZeroCharArray object_ = jmethod object_ "getZeroCharArray" (\() -> (getZeroCharArray_impl (javaCast object_ :: CharArrayFactory))) ()

getZeroCharArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Char))
getZeroCharArray_super object_ = (getZeroCharArray_impl (javaCast object_ :: CharArrayFactory))

getZeroCharArray_impl :: CharArrayFactory -> IO (JavaArray (Char))
getZeroCharArray_impl this = do
        pure ((jget (this).zeroCharArray))


