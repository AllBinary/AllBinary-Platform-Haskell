{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package javax.microedition.khronos.egl
module EGLConfig where

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

data EGLConfig = EGLConfig
    { header_ :: JavaHeader
    }

instance JavaNull EGLConfig where
    javaNull = javaNullRecord "EGLConfig"

instance JavaEquals EGLConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EGLConfig where
    (==) = jrecordEquals

instance JavaObjectClass EGLConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EGLConfig
newRecord_ = do
    header_ <- newJavaHeader
    let this = EGLConfig header_
    jregisterLevel header_ this
    pure this

initFields_ :: EGLConfig -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EGLConfig
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EGLConfig -> IO ()
init_ this = do
        initFields_ this
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


