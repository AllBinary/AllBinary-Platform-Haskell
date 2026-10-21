{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
module ABImageStringItem where

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

data ABImageStringItem = ABImageStringItem
    { header_ :: JavaHeader
    }

instance JavaNull ABImageStringItem where
    javaNull = javaNullRecord "ABImageStringItem"

instance JavaEquals ABImageStringItem where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABImageStringItem where
    (==) = jrecordEquals

instance JavaObjectClass ABImageStringItem where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABImageStringItem
newRecord_ = do
    header_ <- newJavaHeader
    let this = ABImageStringItem header_
    jregisterLevel header_ this
    pure this

initFields_ :: ABImageStringItem -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ABImageStringItem
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABImageStringItem -> IO ()
init_ this = do
    initFields_ this


