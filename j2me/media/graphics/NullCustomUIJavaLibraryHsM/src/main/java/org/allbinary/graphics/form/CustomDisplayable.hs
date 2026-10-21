{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
module CustomDisplayable where

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

data CustomDisplayable = CustomDisplayable
    { header_ :: JavaHeader
    }

instance JavaNull CustomDisplayable where
    javaNull = javaNullRecord "CustomDisplayable"

instance JavaEquals CustomDisplayable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomDisplayable where
    (==) = jrecordEquals

instance JavaObjectClass CustomDisplayable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomDisplayable
newRecord_ = do
    header_ <- newJavaHeader
    let this = CustomDisplayable header_
    jregisterLevel header_ this
    jregisterMethod header_ "setTitle" (\() -> setTitle_impl this)
    pure this

initFields_ :: CustomDisplayable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CustomDisplayable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomDisplayable -> IO ()
init_ this = do
    initFields_ this


setTitle :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle object_ a1 = jmethod object_ "setTitle" (\() -> (setTitle_impl (javaCast object_ :: CustomDisplayable))) () a1

setTitle_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle_super object_ a1 = (setTitle_impl (javaCast object_ :: CustomDisplayable)) a1

setTitle_impl :: CustomDisplayable -> String -> IO (())
setTitle_impl this title = do
        pure ()


