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
-- package org.allbinary.game.health
module HealthBarThreedAnimation (module HealthBarThreedAnimation, module HealthBarAnimation) where

import HealthBarAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateColor, updateColor_super, updateColor_impl, updateSize, updateSize_super, updateSize_impl, onHealthChange, onHealthChange_super, onHealthChange_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, rectangle, basicColorFactory, object3dProcessor)
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
import qualified BasicColor -- same package or java.lang
import qualified GL10 -- javax.microedition.khronos.opengles.GL10
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified ColorBufferList -- min3d.core.ColorBufferList
import qualified Number3dBufferList -- min3d.core.Number3dBufferList
import qualified Rectangle -- min3d.objectPrimitives.Rectangle
import qualified Number3d -- min3d.vos.Number3d
import qualified OpenGLESGraphics -- org.allbinary.device.OpenGLESGraphics
import qualified Object3dProcessor -- org.allbinary.graphics.threed.min3d.renderer.Object3dProcessor
import qualified Object3dProcessorUtil -- org.allbinary.graphics.threed.min3d.renderer.Object3dProcessorUtil
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified HealthBarAnimation

data HealthBarThreedAnimation = HealthBarThreedAnimation
    { header_ :: JavaHeader
    , base :: HealthBarAnimation.HealthBarAnimation
    , rectangle :: IORef (Rectangle.Rectangle)
    , basicColorFactory :: IORef (BasicColorFactory.BasicColorFactory)
    , object3dProcessor :: IORef (Object3dProcessor.Object3dProcessor)
    }

instance JavaNull HealthBarThreedAnimation where
    javaNull = javaNullRecord "HealthBarThreedAnimation"

instance JavaEquals HealthBarThreedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthBarThreedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass HealthBarThreedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HealthBarThreedAnimation
newRecord_ = do
    base <- HealthBarAnimation.newRecord_
    let header_ = base.header_
    rectangle <- newIORef javaNull
    basicColorFactory <- newIORef javaNull
    object3dProcessor <- newIORef javaNull
    let this = HealthBarThreedAnimation header_ base rectangle basicColorFactory object3dProcessor
    jregisterLevel header_ this
    jregisterMethod header_ "updateColor" (\() -> updateColor_impl this)
    jregisterMethod header_ "updateSize" (\() -> updateSize_impl this)
    jregisterMethod header_ "onHealthChange" (\() -> onHealthChange_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    pure this

initFields_ :: HealthBarThreedAnimation -> IO ()
initFields_ this = do
    jset this.rectangle (javaNull)
    jset this.basicColorFactory =<< (BasicColorFactory.getInstance)
    jset this.object3dProcessor =<< (Object3dProcessorUtil.getInstanceObject3dProcessor ((jio (Object3dProcessorUtil.getInstance))))
    pure ()

new_2 :: AllBinaryLayer.AllBinaryLayer -> Int -> IO HealthBarThreedAnimation
new_2 layerInterface location = do
    this <- newRecord_
    init_2 this layerInterface location
    pure this

init_2 :: HealthBarThreedAnimation -> AllBinaryLayer.AllBinaryLayer -> Int -> IO ()
init_2 this layerInterface location = do
        HealthBarAnimation.init_2 this.base (layerInterface) (location)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).base.base.basicColor ((jget ((jget (this).basicColorFactory)).gREEN))
        assignedValue <- (BasicColor.intValue ((jget (this).base.base.basicColor)))
        jset (this).base.base.colorP (assignedValue)
        assignedValue <- (Rectangle.new_5 0 0 1 1 (jget (this).base.base.basicColor))
        jset (this).rectangle (assignedValue)
        Control.Monad.void (Rectangle.setDoubleSidedEnabled ((jget (this).rectangle)) True)
        Control.Monad.void (Rectangle.setNormalsEnabled ((jget (this).rectangle)) False)
        Control.Monad.void (Rectangle.setTexturesEnabled ((jget (this).rectangle)) False)
        pure ()


updateColor :: (JavaObjectClass this_) => this_ -> IO (())
updateColor object_ = jmethod object_ "updateColor" (\() -> (updateColor_impl (javaCast object_ :: HealthBarThreedAnimation))) ()

updateColor_super :: (JavaObjectClass this_) => this_ -> IO (())
updateColor_super object_ = (updateColor_impl (javaCast object_ :: HealthBarThreedAnimation))

updateColor_impl :: HealthBarThreedAnimation -> IO (())
updateColor_impl this = do
        colorBufferList <- (Rectangle.getColor4BufferList ((jio (Rectangle.getVertices ((jget (this).rectangle))))))
        size <- (ColorBufferList.size colorBufferList)
        index <- newIORef (size)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (ColorBufferList.set colorBufferList (jget index) (jget (this).base.base.basicColor))
        pure ()


updateSize :: (JavaObjectClass this_) => this_ -> IO (())
updateSize object_ = jmethod object_ "updateSize" (\() -> (updateSize_impl (javaCast object_ :: HealthBarThreedAnimation))) ()

updateSize_super :: (JavaObjectClass this_) => this_ -> IO (())
updateSize_super object_ = (updateSize_impl (javaCast object_ :: HealthBarThreedAnimation))

updateSize_impl :: HealthBarThreedAnimation -> IO (())
updateSize_impl this = do
        number3dBufferList <- (Rectangle.getPointsOnFacesNumber3dBufferList ((jio (Rectangle.getVertices ((jget (this).rectangle))))))
        let width = (jget (this).base.x2)
        let height = ((jget (this).base.thickness) * 2)
        let segsH = 1
        let segsW = 1
        row <- newIORef (0)
        col <- newIORef (0)
        let w = (Prelude.fromIntegral (width `quot` segsW))
        let h = (Prelude.fromIntegral (height `quot` segsH))
        let width5 = ((Prelude.fromIntegral width) / 2.0)
        let height5 = ((Prelude.fromIntegral height) / 2.0)
        index <- newIORef (0)
        forM_ [0 .. segsH] $ \row -> javaIteration (pure ()) $ do
            forM_ [0 .. segsW] $ \col -> javaIteration (pure ()) $ do
                Control.Monad.void (Number3dBufferList.set number3dBufferList (jpostIncrement index (+ 1)) (((Prelude.fromIntegral (jget col)) * w) - width5) (((Prelude.fromIntegral (jget row)) * h) - height5) (0.0))
        pure ()


onHealthChange :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onHealthChange object_ a1 = jmethod object_ "onHealthChange" (\() -> (onHealthChange_impl (javaCast object_ :: HealthBarThreedAnimation))) () a1

onHealthChange_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
onHealthChange_super object_ a1 = (onHealthChange_impl (javaCast object_ :: HealthBarThreedAnimation)) a1

onHealthChange_impl :: HealthBarThreedAnimation -> Int -> IO (())
onHealthChange_impl this newX2 = do
        Control.Monad.void (HealthBarAnimation.onHealthChange_super this.base newX2)
        Control.Monad.void (HealthBarThreedAnimation.updateColor this)
        Control.Monad.void (HealthBarThreedAnimation.updateSize this)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: HealthBarThreedAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: HealthBarThreedAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: HealthBarThreedAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        let openGLESGraphics = (javaCast graphics :: OpenGLESGraphics.OpenGLESGraphics)
        gl <- (OpenGLESGraphics.getGl10 openGLESGraphics)
        viewPosition <- (AllBinaryLayer.getViewPosition ((jget (this).base.allbinaryLayer)))
        positionNumber3d <- (Rectangle.getPosition ((jget (this).rectangle)))
        jset (positionNumber3d).x ((Prelude.negate ((Prelude.fromIntegral (jio (ViewPositionBase.getX viewPosition))))))
        jset (positionNumber3d).z ((Prelude.negate ((Prelude.fromIntegral (jio (ViewPositionBase.getY viewPosition))))))
        jset (positionNumber3d).y ((Prelude.fromIntegral ((jio (ViewPositionBase.getZ viewPosition)) + (jio (AllBinaryLayer.getHeight ((jget (this).base.allbinaryLayer)))))))
        Control.Monad.void (Object3dProcessor.drawObject ((jget (this).object3dProcessor)) gl (jget (this).rectangle))
        pure ()


