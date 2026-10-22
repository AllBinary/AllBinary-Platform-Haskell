{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module OpenGLLogUtil where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified OpenGLStrings -- org.allbinary.image.opengles.OpenGLStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil

data OpenGLLogUtil = OpenGLLogUtil
    { header_ :: JavaHeader
    , mAX_TEXTURE :: IORef (String)
    , lOG_ERROR :: IORef (String)
    , iMAGE :: IORef (String)
    }

instance JavaNull OpenGLLogUtil where
    javaNull = javaNullRecord "OpenGLLogUtil"

instance JavaEquals OpenGLLogUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLLogUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLLogUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLLogUtil
newRecord_ = do
    header_ <- newJavaHeader
    mAX_TEXTURE <- newIORef ""
    lOG_ERROR <- newIORef ""
    iMAGE <- newIORef ""
    let this = OpenGLLogUtil header_ mAX_TEXTURE lOG_ERROR iMAGE
    jregisterLevel header_ this
    jregisterMethod header_ "logError" (\() -> logError_impl this)
    jregisterMethod header_ "logError_2" (\() -> logError_2_impl this)
    pure this

initFields_ :: OpenGLLogUtil -> IO ()
initFields_ this = do
    jset this.mAX_TEXTURE (" Max Texture Size: ")
    jset this.lOG_ERROR ("logError")
    jset this.iMAGE (" Image: ")
    pure ()

new_ :: IO OpenGLLogUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLLogUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLLogUtil)
getInstance = do
        pure (OpenGLLogUtil.instance_)


logError :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
logError object_ a1 = jmethod object_ "logError" (\() -> (logError_impl (javaCast object_ :: OpenGLLogUtil))) () a1

logError_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
logError_super object_ a1 = (logError_impl (javaCast object_ :: OpenGLLogUtil)) a1

logError_impl :: OpenGLLogUtil -> GL10.GL10 -> IO (())
logError_impl this gl = do
        error <- (GL10.glGetError gl)
        when (error /= GL10.gL_NO_ERROR) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (OpenGLStrings.getInstance))).gL_ERROR_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer error)
            when (error == 1281) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).mAX_TEXTURE))
                let maxTextureSize = (jnewArray (1) 0)
                Control.Monad.void (GL10.glGetIntegerv gl (GL10.gL_MAX_TEXTURE_SIZE) maxTextureSize 0)
                Control.Monad.void (StringMaker.appendint stringBuffer (jindex maxTextureSize (0)))
            if (error == 1280) then do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this (jget ((jio (OpenGLStrings.getInstance))).sET))
            else do
                Control.Monad.void (ForcedLogUtil.log (jio (StringMaker.toString stringBuffer)) this)
        pure ()


logError_2 :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Image.Image -> IO (())
logError_2 object_ a1 a2 = jmethod object_ "logError_2" (\() -> (logError_2_impl (javaCast object_ :: OpenGLLogUtil))) () a1 a2

logError_2_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Image.Image -> IO (())
logError_2_super object_ a1 a2 = (logError_2_impl (javaCast object_ :: OpenGLLogUtil)) a1 a2

logError_2_impl :: OpenGLLogUtil -> GL10.GL10 -> Image.Image -> IO (())
logError_2_impl this gl image = do
        error <- (GL10.glGetError gl)
        when (error /= GL10.gL_NO_ERROR) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (OpenGLStrings.getInstance))).gL_ERROR_LABEL))
            Control.Monad.void (StringMaker.appendint stringBuffer error)
            when (error == 1281) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).mAX_TEXTURE))
                let maxTextureSize = (jnewArray (1) 0)
                Control.Monad.void (GL10.glGetIntegerv gl (GL10.gL_MAX_TEXTURE_SIZE) maxTextureSize 0)
                Control.Monad.void (StringMaker.appendint stringBuffer (jindex maxTextureSize (0)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iMAGE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (Image.toString image)))
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString stringBuffer)) this (jget (this).lOG_ERROR))
        pure ()


