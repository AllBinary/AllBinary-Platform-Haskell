{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graph
module V where

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

data V = V
    { header_ :: JavaHeader
    }

instance JavaNull V where
    javaNull = javaNullRecord "V"

instance JavaEquals V where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq V where
    (==) = jrecordEquals

instance JavaObjectClass V where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO V
newRecord_ = do
    header_ <- newJavaHeader
    let this = V header_
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: V -> IO ()
initFields_ this = do
    pure ()

new_ :: IO V
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: V -> IO ()
init_ this = do
    initFields_ this


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: V))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: V))

getId_impl :: V -> IO (Int)
getId_impl this = do
        pure (0)


