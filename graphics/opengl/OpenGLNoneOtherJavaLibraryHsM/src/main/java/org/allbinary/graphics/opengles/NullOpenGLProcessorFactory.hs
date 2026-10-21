{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module NullOpenGLProcessorFactory where

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
import qualified OpenGLProcessor -- same package or java.lang

data NullOpenGLProcessorFactory = NullOpenGLProcessorFactory
    { header_ :: JavaHeader
    }

instance JavaNull NullOpenGLProcessorFactory where
    javaNull = javaNullRecord "NullOpenGLProcessorFactory"

instance JavaEquals NullOpenGLProcessorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullOpenGLProcessorFactory where
    (==) = jrecordEquals

instance JavaObjectClass NullOpenGLProcessorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((OpenGLProcessor.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullOpenGLProcessorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullOpenGLProcessorFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: NullOpenGLProcessorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullOpenGLProcessorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullOpenGLProcessorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLProcessor.OpenGLProcessor)
getInstance = do
        pure (NullOpenGLProcessorFactory.instance_)


