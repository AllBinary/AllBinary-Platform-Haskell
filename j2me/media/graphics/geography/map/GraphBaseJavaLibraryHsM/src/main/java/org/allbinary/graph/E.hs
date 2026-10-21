{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graph
module E where

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

data E = E
    { header_ :: JavaHeader
    }

instance JavaNull E where
    javaNull = javaNullRecord "E"

instance JavaEquals E where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq E where
    (==) = jrecordEquals

instance JavaObjectClass E where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE e #-}
e = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO E
newRecord_ = do
    header_ <- newJavaHeader
    let this = E header_
    jregisterLevel header_ this
    jregisterMethod header_ "newInstance" (\() -> newInstance_impl this)
    pure this

initFields_ :: E -> IO ()
initFields_ this = do
    pure ()

new_ :: IO E
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: E -> IO ()
init_ this = do
    initFields_ this


newInstance :: (JavaObjectClass this_) => this_ -> IO (E)
newInstance object_ = jmethod object_ "newInstance" (\() -> (newInstance_impl (javaCast object_ :: E))) ()

newInstance_super :: (JavaObjectClass this_) => this_ -> IO (E)
newInstance_super object_ = (newInstance_impl (javaCast object_ :: E))

newInstance_impl :: E -> IO (E)
newInstance_impl this = do
        pure (E.e)


