{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.control.crypt
module Encoder where

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

data Encoder = Encoder
    { header_ :: JavaHeader
    }

instance JavaNull Encoder where
    javaNull = javaNullRecord "Encoder"

instance JavaEquals Encoder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Encoder where
    (==) = jrecordEquals

instance JavaObjectClass Encoder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Encoder
newRecord_ = do
    header_ <- newJavaHeader
    let this = Encoder header_
    jregisterLevel header_ this
    pure this

initFields_ :: Encoder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO Encoder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Encoder -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


encode :: JavaArray (Int8) -> IO (String)
encode value = do
        pure (javaNull)


decode :: String -> IO (JavaArray (Int8))
decode value = do
        pure (javaNull)


