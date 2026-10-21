{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.visual.media
module MediaIOUtil where

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
import qualified ImageIO -- javax.imageio.ImageIO

data MediaIOUtil = MediaIOUtil
    { header_ :: JavaHeader
    }

instance JavaNull MediaIOUtil where
    javaNull = javaNullRecord "MediaIOUtil"

instance JavaEquals MediaIOUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MediaIOUtil where
    (==) = jrecordEquals

instance JavaObjectClass MediaIOUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MediaIOUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = MediaIOUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "getReaderFormatNames" (\() -> getReaderFormatNames_impl this)
    jregisterMethod header_ "getWriterFormatNames" (\() -> getWriterFormatNames_impl this)
    pure this

initFields_ :: MediaIOUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MediaIOUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MediaIOUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MediaIOUtil)
getInstance = do
        pure (MediaIOUtil.instance_)


getReaderFormatNames :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getReaderFormatNames object_ = jmethod object_ "getReaderFormatNames" (\() -> (getReaderFormatNames_impl (javaCast object_ :: MediaIOUtil))) ()

getReaderFormatNames_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getReaderFormatNames_super object_ = (getReaderFormatNames_impl (javaCast object_ :: MediaIOUtil))

getReaderFormatNames_impl :: MediaIOUtil -> IO (JavaArray (String))
getReaderFormatNames_impl this = do
        (ImageIO.getReaderFormatNames)


getWriterFormatNames :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getWriterFormatNames object_ = jmethod object_ "getWriterFormatNames" (\() -> (getWriterFormatNames_impl (javaCast object_ :: MediaIOUtil))) ()

getWriterFormatNames_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
getWriterFormatNames_super object_ = (getWriterFormatNames_impl (javaCast object_ :: MediaIOUtil))

getWriterFormatNames_impl :: MediaIOUtil -> IO (JavaArray (String))
getWriterFormatNames_impl this = do
        (ImageIO.getWriterFormatNames)


