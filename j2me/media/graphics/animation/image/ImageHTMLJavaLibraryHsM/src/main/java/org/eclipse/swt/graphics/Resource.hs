{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.eclipse.swt.graphics
module Resource where

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

data Resource = Resource
    { header_ :: JavaHeader
    }

instance JavaNull Resource where
    javaNull = javaNullRecord "Resource"

instance JavaEquals Resource where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Resource where
    (==) = jrecordEquals

instance JavaObjectClass Resource where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Resource
newRecord_ = do
    header_ <- newJavaHeader
    let this = Resource header_
    jregisterLevel header_ this
    jregisterMethod header_ "dispose" (\() -> dispose_impl this)
    jregisterMethod header_ "isDisposed" (\() -> isDisposed_impl this)
    pure this

initFields_ :: Resource -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Resource
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Resource -> IO ()
init_ this = do
    initFields_ this


dispose :: (JavaObjectClass this_) => this_ -> IO (())
dispose object_ = jmethod object_ "dispose" (\() -> (dispose_impl (javaCast object_ :: Resource))) ()

dispose_super :: (JavaObjectClass this_) => this_ -> IO (())
dispose_super object_ = (dispose_impl (javaCast object_ :: Resource))

dispose_impl :: Resource -> IO (())
dispose_impl this = do
        pure ()


isDisposed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisposed object_ = jmethod object_ "isDisposed" (\() -> (isDisposed_impl (javaCast object_ :: Resource))) ()

isDisposed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDisposed_super object_ = (isDisposed_impl (javaCast object_ :: Resource))

isDisposed_impl :: Resource -> IO (Bool)
isDisposed_impl this = do
        pure (False)


