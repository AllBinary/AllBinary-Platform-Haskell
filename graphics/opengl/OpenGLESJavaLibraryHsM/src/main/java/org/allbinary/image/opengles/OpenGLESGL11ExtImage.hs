{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
module OpenGLESGL11ExtImage (module OpenGLESGL11ExtImage, module OpenGLESImage) where

import OpenGLESImage hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, set, set_super, set_impl, draw, draw_super, draw_impl, logUtil, a, rectangle)
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
import qualified CommonStrings -- same package or java.lang
import qualified OpenGLESImageProperties -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified GL11 -- javax.microedition.khronos.opengles.GL11
import qualified GL11Ext -- javax.microedition.khronos.opengles.GL11Ext
import qualified Image -- javax.microedition.lcdui.Image
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified OpenGLLogUtil -- org.allbinary.graphics.opengles.OpenGLLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PlatformBitmapBaseFactory -- org.allbinary.platform.graphics.PlatformBitmapBaseFactory
import qualified PlatformTextureBaseFactory -- org.allbinary.platform.opengles.PlatformTextureBaseFactory
import qualified OpenGLESImage

data OpenGLESGL11ExtImage = OpenGLESGL11ExtImage
    { header_ :: JavaHeader
    , base :: OpenGLESImage.OpenGLESImage
    , logUtil :: IORef (LogUtil.LogUtil)
    , a :: IORef (Int)
    , rectangle :: IORef (JavaArray (Int))
    }

instance JavaNull OpenGLESGL11ExtImage where
    javaNull = javaNullRecord "OpenGLESGL11ExtImage"

instance JavaEquals OpenGLESGL11ExtImage where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLESGL11ExtImage where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLESGL11ExtImage where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OpenGLESGL11ExtImage
newRecord_ = do
    base <- OpenGLESImage.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    a <- newIORef 0
    rectangle <- newIORef javaNull
    let this = OpenGLESGL11ExtImage header_ base logUtil a rectangle
    jregisterLevel header_ this
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "draw" (\() -> draw_impl this)
    pure this

initFields_ :: OpenGLESGL11ExtImage -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.a (0)
    jset this.rectangle (javaNull)
    pure ()

new_3 :: Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO OpenGLESGL11ExtImage
new_3 image bitmapFactory textureFactory = do
    this <- newRecord_
    init_3 this image bitmapFactory textureFactory
    pure this

init_3 :: OpenGLESGL11ExtImage -> Image.Image -> PlatformBitmapBaseFactory.PlatformBitmapBaseFactory -> PlatformTextureBaseFactory.PlatformTextureBaseFactory -> IO ()
init_3 this image bitmapFactory textureFactory = do
        OpenGLESImage.init_3 this.base (image) (bitmapFactory) (textureFactory)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (OpenGLESGL11ExtImage.onDisplayChangeEvent this (jget ((jio (DisplayInfoSingleton.getInstance))).displayChangeEvent))
        jset (this).rectangle ((jarrayFromList [0, (jio (OpenGLESImage.getHeight this)), (jio (OpenGLESImage.getWidth this)), (Prelude.negate (jio (OpenGLESImage.getHeight this)))]))
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: OpenGLESGL11ExtImage))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: OpenGLESGL11ExtImage)) a1

onDisplayChangeEvent_impl :: OpenGLESGL11ExtImage -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "onResize" e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "onResize")
            jset (this).a (((jio (DisplayInfoSingleton.getLastHeight ((jio (DisplayInfoSingleton.getInstance))))) - (jio (OpenGLESImage.getHeight this))))
        pure ()


set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLESGL11ExtImage))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLESGL11ExtImage)) a1

set_impl :: OpenGLESGL11ExtImage -> GL.GL -> IO (())
set_impl this gl = do
        Control.Monad.void (OpenGLESGL11ExtImage.onDisplayChangeEvent this (jget ((jio (DisplayInfoSingleton.getInstance))).displayChangeEvent))
        let gl11 = (javaCast gl :: GL11.GL11)
        when (jio (OpenGLESImage.initTexture_super this.base gl11)) $ do
            Control.Monad.void (PlatformTextureBaseFactory.load ((jget (this).base.textureFactory)) (javaCast gl11) (GL10.gL_TEXTURE_2D) 0 (javaCast this) 0 True)
            Control.Monad.void (GL11.glTexParameteriv gl11 (GL10.gL_TEXTURE_2D) (GL11Ext.gL_TEXTURE_CROP_RECT_OES) (jget (this).rectangle) 0)
            Control.Monad.void (GL11.glDisable gl11 (GL10.gL_TEXTURE_2D))
            Control.Monad.void (OpenGLLogUtil.logError_2 ((jio (OpenGLLogUtil.getInstance))) (javaCast gl11) (javaCast this))
        pure ()


draw :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw object_ a1 a2 a3 a4 = jmethod object_ "draw" (\() -> (draw_impl (javaCast object_ :: OpenGLESGL11ExtImage))) () a1 a2 a3 a4

draw_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_super object_ a1 a2 a3 a4 = (draw_impl (javaCast object_ :: OpenGLESGL11ExtImage)) a1 a2 a3 a4

draw_impl :: OpenGLESGL11ExtImage -> GL10.GL10 -> Int -> Int -> Int -> IO (())
draw_impl this gl x y z = do
        Control.Monad.void (GL10.glEnable gl (GL10.gL_TEXTURE_2D))
        Control.Monad.void (GL10.glBindTexture gl (GL10.gL_TEXTURE_2D) (jget ((jget (this).base.openGLESImageProperties)).textureID))
        let gl11Ext = (javaCast gl :: GL11Ext.GL11Ext)
        Control.Monad.void (GL11Ext.glDrawTexfOES gl11Ext (Prelude.fromIntegral x) (Prelude.fromIntegral (((jget (this).a) - y))) (Prelude.fromIntegral z) (Prelude.realToFrac (jnumericDouble (jio (OpenGLESImage.getWidth this)))) (Prelude.realToFrac (jnumericDouble (jio (OpenGLESImage.getHeight this)))))
        Control.Monad.void (GL10.glDisable gl (GL10.gL_TEXTURE_2D))
        pure ()


