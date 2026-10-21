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
-- package org.allbinary.media.image
module ImageUtil where

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
import qualified Image -- same package or java.lang
import qualified SWT -- org.eclipse.swt.SWT
import qualified Canvas -- org.eclipse.swt.widgets.Canvas
import qualified Composite -- org.eclipse.swt.widgets.Composite
import qualified GC -- org.eclipse.swt.graphics.GC
import qualified ImageData -- org.eclipse.swt.graphics.ImageData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified PaintEvent -- org.eclipse.swt.events.PaintEvent
import qualified PaintListener -- org.eclipse.swt.events.PaintListener
import qualified Transform -- org.eclipse.swt.graphics.Transform
import qualified Display -- org.eclipse.swt.widgets.Display
import qualified BareMain -- org.microemu.app.BareMain

data ImageUtil = ImageUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , iIOIMAGE_POOL_NAME :: IORef (String)
    , cREATE_BUFFERED_IMAGE :: IORef (String)
    }

instance JavaNull ImageUtil where
    javaNull = javaNullRecord "ImageUtil"

instance JavaEquals ImageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO ImageUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    iIOIMAGE_POOL_NAME <- newIORef ""
    cREATE_BUFFERED_IMAGE <- newIORef ""
    let this = ImageUtil header_ logUtil commonStrings commonSeps iIOIMAGE_POOL_NAME cREATE_BUFFERED_IMAGE
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "createBufferedImage" (\() -> createBufferedImage_impl this)
    jregisterMethod header_ "createBufferedImage2" (\() -> createBufferedImage2_impl this)
    jregisterMethod header_ "createBufferedImage3" (\() -> createBufferedImage3_impl this)
    jregisterMethod header_ "createBufferedImage4" (\() -> createBufferedImage4_impl this)
    jregisterMethod header_ "createBufferedImage5" (\() -> createBufferedImage5_impl this)
    jregisterMethod header_ "createBufferedImage6" (\() -> createBufferedImage6_impl this)
    jregisterMethod header_ "drawTransformedImage" (\() -> drawTransformedImage_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.iIOIMAGE_POOL_NAME ("IIOIMAGE_POOL_NAME")
    jset this.cREATE_BUFFERED_IMAGE ("createBufferedImage")
    pure ()


getInstance :: IO (ImageUtil)
getInstance = do
        pure (ImageUtil.instance_)

new_ :: IO ImageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageUtil -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).cONSTRUCTOR) e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


create :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
create object_ a1 a2 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ImageUtil))) () a1 a2

create_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Image.Image)
create_super object_ a1 a2 = (create_impl (javaCast object_ :: ImageUtil)) a1 a2

create_impl :: ImageUtil -> Int -> Int -> IO (Image.Image)
create_impl this width height = do
        display <- (getDisplay BareMain.shell)
        (Image.new_3 display width height)


-- throws Exception
createBufferedImage :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage object_ a1 a2 a3 = jmethod object_ "createBufferedImage" (\() -> (createBufferedImage_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImage_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage_super object_ a1 a2 a3 = (createBufferedImage_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImage_impl :: ImageUtil -> JavaArray (Image.Image) -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage_impl this bufferedImageArray percent scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        bufferedImage <- newIORef (javaNull)
        imageData <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            assignedValue <- (Image.getImageData ((jget bufferedImage)))
            jset imageData (assignedValue)
            let newWidth = (Prelude.fromInteger (jnumericInteger ((((jget ((jget imageData)).width) * percent) / 100))))
            let newHeight = (Prelude.fromInteger (jnumericInteger ((((jget ((jget imageData)).height) * percent) / 100))))
            assignedValue <- (ImageUtil.createBufferedImage5 this (jget bufferedImage) newWidth newHeight scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImage2 :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Float -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage2 object_ a1 a2 a3 = jmethod object_ "createBufferedImage2" (\() -> (createBufferedImage2_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImage2_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Float -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage2_super object_ a1 a2 a3 = (createBufferedImage2_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImage2_impl :: ImageUtil -> JavaArray (Image.Image) -> Float -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage2_impl this bufferedImageArray percent scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        bufferedImage <- newIORef (javaNull)
        imageData <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            assignedValue <- (Image.getImageData ((jget bufferedImage)))
            jset imageData (assignedValue)
            let newWidth = (Prelude.fromInteger (jnumericInteger (((jget ((jget imageData)).width) * percent))))
            let newHeight = (Prelude.fromInteger (jnumericInteger (((jget ((jget imageData)).height) * percent))))
            assignedValue <- (ImageUtil.createBufferedImage5 this (jget bufferedImage) newWidth newHeight scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImage3 :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage3 object_ a1 a2 a3 a4 = jmethod object_ "createBufferedImage3" (\() -> (createBufferedImage3_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4

createBufferedImage3_super :: (JavaObjectClass this_) => this_ -> JavaArray (Image.Image) -> Int -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage3_super object_ a1 a2 a3 a4 = (createBufferedImage3_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4

createBufferedImage3_impl :: ImageUtil -> JavaArray (Image.Image) -> Int -> Int -> Bool -> IO (JavaArray (Image.Image))
createBufferedImage3_impl this bufferedImageArray width height scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ImageUtil.createBufferedImage5 this (jindex bufferedImageArray (index)) width height scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImage4 :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
createBufferedImage4 object_ a1 a2 a3 = jmethod object_ "createBufferedImage4" (\() -> (createBufferedImage4_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImage4_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> IO (Image.Image)
createBufferedImage4_super object_ a1 a2 a3 = (createBufferedImage4_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImage4_impl :: ImageUtil -> Image.Image -> Int -> Int -> IO (Image.Image)
createBufferedImage4_impl this bufferedImage newWidth newHeight = do
        (ImageUtil.createBufferedImage5 this bufferedImage newWidth newHeight True)


-- throws Exception
createBufferedImage5 :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createBufferedImage5 object_ a1 a2 a3 a4 = jmethod object_ "createBufferedImage5" (\() -> (createBufferedImage5_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4

createBufferedImage5_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createBufferedImage5_super object_ a1 a2 a3 a4 = (createBufferedImage5_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4

createBufferedImage5_impl :: ImageUtil -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createBufferedImage5_impl this bufferedImage newWidth newHeight scale = do
        (ImageUtil.createBufferedImage6 this bufferedImage newWidth newHeight scale False)


-- throws Exception
createBufferedImage6 :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> Bool -> IO (Image.Image)
createBufferedImage6 object_ a1 a2 a3 a4 a5 = jmethod object_ "createBufferedImage6" (\() -> (createBufferedImage6_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4 a5

createBufferedImage6_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> Bool -> IO (Image.Image)
createBufferedImage6_super object_ a1 a2 a3 a4 a5 = (createBufferedImage6_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4 a5

createBufferedImage6_impl :: ImageUtil -> Image.Image -> Int -> Int -> Bool -> Bool -> IO (Image.Image)
createBufferedImage6_impl this bufferedImage newWidth newHeight scale allowTranslate = do
        imageData <- (Image.getImageData bufferedImage)
        let width = (jget (imageData).width)
        let height = (jget (imageData).height)
        let d_newWidth = (Prelude.fromIntegral newWidth)
        let d_newHeight = (Prelude.fromIntegral newHeight)
        let widthRatio = (d_newWidth / width)
        let heightRatio = (d_newHeight / height)
        ratioX <- newIORef (1.0)
        ratioY <- newIORef (1.0)
        when scale $ do
            jset ratioX (widthRatio)
            jset ratioY (heightRatio)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.new_))) width))) (jget ((jget (this).commonSeps)).fORWARD_SLASH)))) height))) (jget ((jget (this).commonSeps)).cOLON)))) newWidth))) (jget ((jget (this).commonSeps)).fORWARD_SLASH)))) newHeight))) (jget ((jget (this).commonSeps)).cOLON)))) widthRatio))) (jget ((jget (this).commonSeps)).fORWARD_SLASH)))) heightRatio))))) this (jget (this).cREATE_BUFFERED_IMAGE))
        dx <- newIORef (0.0)
        dy <- newIORef (0.0)
        when ((Prelude.not scale) && allowTranslate) $ do
            jset dx (((((Prelude.fromIntegral newWidth) - width)) / 2.0))
            jset dy (((((Prelude.fromIntegral newHeight) - height)) / 2.0))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.appendfloat ((jio (StringMaker.append ((jio (StringMaker.new_))) "Translate dx: "))) (jget dx)))) " dy: "))) (jget dy)))))) this (jget (this).cREATE_BUFFERED_IMAGE))
        newBufferedImage <- (Image.new_3 (jio (getDisplay BareMain.shell)) newWidth newHeight)
        gc <- (GC.new_1 newBufferedImage)
        affineTransform <- (Transform.new_1 (jio (GC.getDevice gc)))
        Control.Monad.void (Transform.scale affineTransform (jget ratioX) (jget ratioY))
        Control.Monad.void (Transform.translate affineTransform (jget dx) (jget dy))
        Control.Monad.void (GC.setTransform gc affineTransform)
        Control.Monad.void (GC.setAntialias gc (SWT.oN))
        Control.Monad.void (GC.setInterpolation gc (SWT.hIGH))
        Control.Monad.void (GC.drawImage gc bufferedImage 0 0 (jget ((jio (Image.getBounds bufferedImage))).width) (jget ((jio (Image.getBounds bufferedImage))).height) 0 0 newWidth newHeight)
        Control.Monad.void (GC.dispose gc)
        pure (newBufferedImage)


drawTransformedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Composite.Composite -> Int -> Int -> Int -> Int -> IO (Canvas.Canvas)
drawTransformedImage object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "drawTransformedImage" (\() -> (drawTransformedImage_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4 a5 a6

drawTransformedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Composite.Composite -> Int -> Int -> Int -> Int -> IO (Canvas.Canvas)
drawTransformedImage_super object_ a1 a2 a3 a4 a5 a6 = (drawTransformedImage_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4 a5 a6

drawTransformedImage_impl :: ImageUtil -> Image.Image -> Composite.Composite -> Int -> Int -> Int -> Int -> IO (Canvas.Canvas)
drawTransformedImage_impl this image parent dx dy width height = do
        imageCanvas <- (Canvas.new_2 parent (SWT.nONE))
        Control.Monad.void (Canvas.addPaintListener imageCanvas (PaintListener.new_ {- Java anonymous class body: implement it as a record of functions
            -- paintControl
-}))
        pure (imageCanvas)


toString :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (String)
toString object_ a1 = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageUtil))) () a1

toString_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (String)
toString_super object_ a1 = (toString_impl (javaCast object_ :: ImageUtil)) a1

toString_impl :: ImageUtil -> Image.Image -> IO (String)
toString_impl this bufferedImage = do
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        imageData <- (Image.getImageData bufferedImage)
        Control.Monad.void (StringMaker.append stringBuffer " org.eclipse.swt.graphics.Image: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jget (imageData).width))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jget (imageData).height))))
        Control.Monad.void (StringMaker.append stringBuffer " Type: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jget (imageData).type_))))
        (StringMaker.toString stringBuffer)


