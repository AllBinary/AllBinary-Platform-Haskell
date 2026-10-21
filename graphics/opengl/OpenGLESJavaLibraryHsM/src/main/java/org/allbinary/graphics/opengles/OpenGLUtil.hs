{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
module OpenGLUtil where

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
import qualified OpenGLCapabilities -- same package or java.lang
import qualified OpenGLLogUtil -- same package or java.lang
import qualified Runnable -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Image -- javax.microedition.lcdui.Image
import qualified LoadTextures -- org.allbinary.device.LoadTextures
import qualified OpenGLESGraphics -- org.allbinary.device.OpenGLESGraphics
import qualified ProgressCanvas -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified RendererStrings -- org.allbinary.graphics.opengles.renderer.RendererStrings
import qualified PreResourceImageUtil -- org.allbinary.image.PreResourceImageUtil
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified OpenGLImageCache -- org.allbinary.image.opengles.OpenGLImageCache
import qualified OpenGLImageCacheFactory -- org.allbinary.image.opengles.OpenGLImageCacheFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SynchObject -- org.allbinary.thread.SynchObject
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data OpenGLUtil = OpenGLUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , renderStrings :: IORef (RendererStrings.RendererStrings)
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , preResourceImageUtil :: IORef (PreResourceImageUtil.PreResourceImageUtil)
    , lockObject :: IORef (SynchObject.SynchObject)
    , anyType :: IORef (SynchObject.SynchObject)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , runnableList :: IORef (BasicArrayList.BasicArrayList)
    , created :: IORef (Bool)
    , surfaceCreatedAndInitialized :: IORef (Bool)
    }

instance JavaNull OpenGLUtil where
    javaNull = javaNullRecord "OpenGLUtil"

instance JavaEquals OpenGLUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OpenGLUtil where
    (==) = jrecordEquals

instance JavaObjectClass OpenGLUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO OpenGLUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    renderStrings <- newIORef javaNull
    canvasStrings <- newIORef javaNull
    displayInfoSingleton <- newIORef javaNull
    preResourceImageUtil <- newIORef javaNull
    lockObject <- newIORef javaNull
    anyType <- newIORef javaNull
    list <- newIORef javaNull
    runnableList <- newIORef javaNull
    created <- newIORef False
    surfaceCreatedAndInitialized <- newIORef False
    let this = OpenGLUtil header_ logUtil commonStrings renderStrings canvasStrings displayInfoSingleton preResourceImageUtil lockObject anyType list runnableList created surfaceCreatedAndInitialized
    jregisterLevel header_ this
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    jregisterMethod header_ "onSurfaceCreated" (\() -> onSurfaceCreated_impl this)
    jregisterMethod header_ "onSurfaceChanged" (\() -> onSurfaceChanged_impl this)
    jregisterMethod header_ "addImage" (\() -> addImage_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "addRunnable" (\() -> addRunnable_impl this)
    jregisterMethod header_ "processRunnables" (\() -> processRunnables_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: OpenGLUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.renderStrings =<< (RendererStrings.getInstance)
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.preResourceImageUtil =<< (PreResourceImageUtil.getInstance)
    jset this.lockObject =<< (SynchObject.new_)
    jset this.anyType =<< (SynchObject.new_)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.runnableList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.created (False)
    jset this.surfaceCreatedAndInitialized (False)
    pure ()

new_ :: IO OpenGLUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OpenGLUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (OpenGLUtil)
getInstance = do
        pure (OpenGLUtil.instance_)


onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onSurfaceCreated object_ a1 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: OpenGLUtil))) () a1

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
onSurfaceCreated_super object_ a1 = (onSurfaceCreated_impl (javaCast object_ :: OpenGLUtil)) a1

onSurfaceCreated_impl :: OpenGLUtil -> GL10.GL10 -> IO (())
onSurfaceCreated_impl this gl = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED) e)
            ) $ do
            when (Prelude.not (jget (this).created)) $ do
                jset (this).created (True)
                Control.Monad.void (PreLogUtil.put (javaToString (jget ((jio (CommonLabels.getInstance))).sTART_LABEL) ++ (jio (OpenGLCapabilities.toString ((jio (OpenGLCapabilities.getInstance)))))) this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED))
        pure ()


-- Java overload of onSurfaceCreated with a different parameter count: give it a different name
onSurfaceCreated :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> LoadTextures.LoadTextures -> IO (())
onSurfaceCreated object_ a1 a2 = jmethod object_ "onSurfaceCreated" (\() -> (onSurfaceCreated_impl (javaCast object_ :: OpenGLUtil))) () a1 a2

onSurfaceCreated_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> LoadTextures.LoadTextures -> IO (())
onSurfaceCreated_super object_ a1 a2 = (onSurfaceCreated_impl (javaCast object_ :: OpenGLUtil)) a1 a2

onSurfaceCreated_impl :: OpenGLUtil -> GL10.GL10 -> LoadTextures.LoadTextures -> IO (())
onSurfaceCreated_impl this gl loadTextures = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).renderStrings)).oN_SURFACE_CREATED) e)
            ) $ do
            Control.Monad.void (LoadTextures.load loadTextures gl)
            Control.Monad.void (OpenGLLogUtil.logError ((jio (OpenGLLogUtil.getInstance))) gl)
        pure ()


-- throws Exception
onSurfaceChanged :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESGraphics.OpenGLESGraphics -> IO (())
onSurfaceChanged object_ a1 a2 = jmethod object_ "onSurfaceChanged" (\() -> (onSurfaceChanged_impl (javaCast object_ :: OpenGLUtil))) () a1 a2

onSurfaceChanged_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> OpenGLESGraphics.OpenGLESGraphics -> IO (())
onSurfaceChanged_super object_ a1 a2 = (onSurfaceChanged_impl (javaCast object_ :: OpenGLUtil)) a1 a2

onSurfaceChanged_impl :: OpenGLUtil -> GL10.GL10 -> OpenGLESGraphics.OpenGLESGraphics -> IO (())
onSurfaceChanged_impl this gl graphics = do
        when (Prelude.not (jget (this).surfaceCreatedAndInitialized)) $ do
            Control.Monad.void (OpenGLESGraphics.init graphics)
            jset (this).surfaceCreatedAndInitialized (True)
        Control.Monad.void (OpenGLESGraphics.update graphics)
        progressCanvas <- (ProgressCanvasFactory.getInstance)
        Control.Monad.void (ProgressCanvas.update progressCanvas graphics)
        Control.Monad.void (update (((javaCast (jio (OpenGLImageCacheFactory.getInstance)) :: OpenGLImageCache.OpenGLImageCache))) gl)
        Control.Monad.void (OpenGLUtil.processRunnables this)
        Control.Monad.void (OpenGLUtil.set this gl)
        pure ()


addImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
addImage object_ a1 = jmethod object_ "addImage" (\() -> (addImage_impl (javaCast object_ :: OpenGLUtil))) () a1

addImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
addImage_super object_ a1 = (addImage_impl (javaCast object_ :: OpenGLUtil)) a1

addImage_impl :: OpenGLUtil -> Image.Image -> IO (Image.Image)
addImage_impl this image = do
    javaCatchReturn $ do
        encapsulateImage <- (PreResourceImageUtil.encapsulate ((jget (this).preResourceImageUtil)) image)
        when (encapsulateImage /= image) $ do
            do -- synchronized
                Control.Monad.void (BasicArrayList.add ((jget (this).list)) encapsulateImage)
            javaReturn (encapsulateImage)
        pure (image)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: OpenGLUtil))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: OpenGLUtil))

clear_impl :: OpenGLUtil -> IO (())
clear_impl this = do
        do -- synchronized
            Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


addRunnable :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
addRunnable object_ a1 = jmethod object_ "addRunnable" (\() -> (addRunnable_impl (javaCast object_ :: OpenGLUtil))) () a1

addRunnable_super :: (JavaObjectClass this_) => this_ -> Runnable.Runnable -> IO (())
addRunnable_super object_ a1 = (addRunnable_impl (javaCast object_ :: OpenGLUtil)) a1

addRunnable_impl :: OpenGLUtil -> Runnable.Runnable -> IO (())
addRunnable_impl this runnable = do
        do -- synchronized
            when (Prelude.not (jio (BasicArrayList.contains ((jget (this).runnableList)) runnable))) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).runnableList)) runnable)
                Control.Monad.void (DisplayInfoSingleton.add ((jget (this).displayInfoSingleton)) (jget ((jget (this).canvasStrings)).sCALED_IMAGES))
        pure ()


processRunnables :: (JavaObjectClass this_) => this_ -> IO (())
processRunnables object_ = jmethod object_ "processRunnables" (\() -> (processRunnables_impl (javaCast object_ :: OpenGLUtil))) ()

processRunnables_super :: (JavaObjectClass this_) => this_ -> IO (())
processRunnables_super object_ = (processRunnables_impl (javaCast object_ :: OpenGLUtil))

processRunnables_impl :: OpenGLUtil -> IO (())
processRunnables_impl this = do
        do -- synchronized
            runnable <- newIORef (javaNull)
            size <- (BasicArrayList.size ((jget (this).runnableList)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset runnable ((javaCast (jio (BasicArrayList.get ((jget (this).runnableList)) index)) :: Runnable.Runnable))
                Control.Monad.void (Runnable.run ((jget runnable)))
            Control.Monad.void (BasicArrayList.clear ((jget (this).runnableList)))
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: OpenGLUtil))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL10.GL10 -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: OpenGLUtil)) a1

set_impl :: OpenGLUtil -> GL10.GL10 -> IO (())
set_impl this gl = do
        size <- (BasicArrayList.size ((jget (this).list)))
        image <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index2 -> javaIteration (pure ()) $ do
            jset image ((javaCast (jio (BasicArrayList.get ((jget (this).list)) index2)) :: OpenGLESImage.OpenGLESImage))
            Control.Monad.void (Image.set ((jget image)) gl)
        pure ()


