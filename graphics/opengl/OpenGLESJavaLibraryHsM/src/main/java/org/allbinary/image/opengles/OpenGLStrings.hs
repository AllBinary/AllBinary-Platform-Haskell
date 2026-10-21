{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
module OpenGLStrings where

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

data OpenGLStrings = OpenGLStrings
    { header_ :: JavaHeader
    , gL_ERROR_LABEL :: IORef (String)
    , sET :: IORef (String)
    }

instance JavaNull OpenGLStrings where
    javaNull = javaNullRecord "OpenGLStrings"

instance JavaEquals OpenGLStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLStrings where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLStrings
newRecord_ = do
    header_ <- newJavaHeader
    gL_ERROR_LABEL <- newIORef ""
    sET <- newIORef ""
    let this = OpenGLStrings header_ gL_ERROR_LABEL sET
    jregisterLevel header_ this
    pure this

initFields_ :: OpenGLStrings -> IO ()
initFields_ this = do
    jset this.gL_ERROR_LABEL ("GLError: ")
    jset this.sET ("set(GL10)")
    pure ()

new_ :: IO OpenGLStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLStrings)
getInstance = do
        pure (OpenGLStrings.instance_)


