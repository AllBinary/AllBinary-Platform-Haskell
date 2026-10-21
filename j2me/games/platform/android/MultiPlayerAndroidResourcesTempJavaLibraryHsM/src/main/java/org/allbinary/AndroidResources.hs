{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary
module AndroidResources where

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
import qualified R -- org.allbinary.game.testgamedemo.R

data AndroidResources = AndroidResources
    { header_ :: JavaHeader
    , drawable :: IORef (drawable.drawable)
    , id :: IORef (id.id)
    , layout :: IORef (layout.layout)
    , raw :: IORef (raw.raw)
    , string :: IORef (string.string)
    }

instance JavaNull AndroidResources where
    javaNull = javaNullRecord "AndroidResources"

instance JavaEquals AndroidResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidResources where
    (==) = jrecordEquals

instance JavaObjectClass AndroidResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AndroidResources
newRecord_ = do
    header_ <- newJavaHeader
    drawable <- newIORef javaNull
    id <- newIORef javaNull
    layout <- newIORef javaNull
    raw <- newIORef javaNull
    string <- newIORef javaNull
    let this = AndroidResources header_ drawable id layout raw string
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidResources -> IO ()
initFields_ this = do
    jset this.drawable =<< (drawable.new_)
    jset this.id =<< (id.new_)
    jset this.layout =<< (layout.new_)
    jset this.raw =<< (raw.new_)
    jset this.string =<< (string.new_)
    pure ()

new_ :: IO AndroidResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidResources -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AndroidResources)
getInstance = do
        pure (AndroidResources.instance_)


