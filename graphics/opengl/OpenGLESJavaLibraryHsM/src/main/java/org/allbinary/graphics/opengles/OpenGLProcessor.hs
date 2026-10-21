{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module OpenGLProcessor where

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
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data OpenGLProcessor = OpenGLProcessor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull OpenGLProcessor where
    javaNull = javaNullRecord "OpenGLProcessor"

instance JavaEquals OpenGLProcessor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLProcessor where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLProcessor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLProcessor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = OpenGLProcessor header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: OpenGLProcessor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO OpenGLProcessor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLProcessor -> IO ()
init_ this = do
    initFields_ this


process :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: OpenGLProcessor))) () a1

process_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: OpenGLProcessor)) a1

process_impl :: OpenGLProcessor -> GL10.GL10 -> IO (())
process_impl this gl = do
        pure ()


