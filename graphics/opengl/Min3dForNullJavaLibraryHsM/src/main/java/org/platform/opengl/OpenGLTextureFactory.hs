{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.platform.opengl
module OpenGLTextureFactory (module OpenGLTextureFactory, module PlatformTextureBaseFactory) where

import PlatformTextureBaseFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, load, load_super, load_impl, instance_, gluUtils)
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
import qualified OpenGLGLUUtils -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory

data OpenGLTextureFactory = OpenGLTextureFactory
    { header_ :: JavaHeader
    , base :: PlatformTextureBaseFactory.PlatformTextureBaseFactory
    , gluUtils :: IORef (OpenGLGLUUtils.OpenGLGLUUtils)
    }

instance JavaNull OpenGLTextureFactory where
    javaNull = javaNullRecord "OpenGLTextureFactory"

instance JavaEquals OpenGLTextureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLTextureFactory where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLTextureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO OpenGLTextureFactory
newRecord_ = do
    base <- PlatformTextureBaseFactory.newRecord_
    let header_ = base.header_
    gluUtils <- newIORef javaNull
    let this = OpenGLTextureFactory header_ base gluUtils
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    pure this

initFields_ :: OpenGLTextureFactory -> IO ()
initFields_ this = do
    jset this.gluUtils =<< (OpenGLGLUUtils.getInstance)
    pure ()


getInstance :: IO (OpenGLTextureFactory)
getInstance = do
        pure (OpenGLTextureFactory.instance_)

new_ :: IO OpenGLTextureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLTextureFactory -> IO ()
init_ this = do
        PlatformTextureBaseFactory.init_ this.base
        initFields_ this
        pure ()
        pure ()


load :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: OpenGLTextureFactory))) () a1 a2 a3 a4 a5 a6

load_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load_super object_ a1 a2 a3 a4 a5 a6 = (load_impl (javaCast object_ :: OpenGLTextureFactory)) a1 a2 a3 a4 a5 a6

load_impl :: OpenGLTextureFactory -> GL10.GL10 -> Int -> Int -> Image.Image -> Int -> Bool -> IO (())
load_impl this gl target level image border flip = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


