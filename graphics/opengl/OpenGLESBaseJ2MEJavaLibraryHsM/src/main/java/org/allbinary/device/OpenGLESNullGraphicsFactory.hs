{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.device
module OpenGLESNullGraphicsFactory where

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
import qualified OpenGLESGraphics -- same package or java.lang

data OpenGLESNullGraphicsFactory = OpenGLESNullGraphicsFactory
    { header_ :: JavaHeader
    }

instance JavaNull OpenGLESNullGraphicsFactory where
    javaNull = javaNullRecord "OpenGLESNullGraphicsFactory"

instance JavaEquals OpenGLESNullGraphicsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESNullGraphicsFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESNullGraphicsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((OpenGLESGraphics.new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLESNullGraphicsFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = OpenGLESNullGraphicsFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLESNullGraphicsFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO OpenGLESNullGraphicsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLESNullGraphicsFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLESGraphics.OpenGLESGraphics)
getInstance = do
        pure (OpenGLESNullGraphicsFactory.instance_)


