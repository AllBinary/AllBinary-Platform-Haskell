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
import qualified Graphics2D -- java.awt.Graphics2D
import qualified GraphicsConfiguration -- java.awt.GraphicsConfiguration
import qualified GraphicsDevice -- java.awt.GraphicsDevice
import qualified GraphicsEnvironment -- java.awt.GraphicsEnvironment
import qualified Transparency -- java.awt.Transparency
import qualified AffineTransform -- java.awt.geom.AffineTransform
import qualified BufferedImage -- java.awt.image.BufferedImage
import qualified Image -- javax.microedition.lcdui.Image
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified J2SEImmutableImage -- org.microemu.device.j2se.J2SEImmutableImage
import qualified J2SEMutableImage -- org.microemu.device.j2se.J2SEMutableImage

data ImageUtil = ImageUtil
    { header_ :: JavaHeader
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
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    iIOIMAGE_POOL_NAME <- newIORef ""
    cREATE_BUFFERED_IMAGE <- newIORef ""
    let this = ImageUtil header_ commonStrings commonSeps iIOIMAGE_POOL_NAME cREATE_BUFFERED_IMAGE
    jregisterLevel header_ this
    jregisterMethod header_ "getDefaultConfiguration" (\() -> getDefaultConfiguration_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "createBufferedImageForResize" (\() -> createBufferedImageForResize_impl this)
    jregisterMethod header_ "createBufferedImage2" (\() -> createBufferedImage2_impl this)
    jregisterMethod header_ "createBufferedImage3" (\() -> createBufferedImage3_impl this)
    jregisterMethod header_ "createBufferedImageForSave" (\() -> createBufferedImageForSave_impl this)
    jregisterMethod header_ "createBufferedImage" (\() -> createBufferedImage_impl this)
    jregisterMethod header_ "createBufferedImageAllowTranslate" (\() -> createBufferedImageAllowTranslate_impl this)
    jregisterMethod header_ "createBufferedImageWithLargerCanvas" (\() -> createBufferedImageWithLargerCanvas_impl this)
    jregisterMethod header_ "convertToBufferedImage" (\() -> convertToBufferedImage_impl this)
    jregisterMethod header_ "getBufferedImage" (\() -> getBufferedImage_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: ImageUtil -> IO ()
initFields_ this = do
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
        pure ()
        pure ()


getDefaultConfiguration :: (JavaObjectClass this_) => this_ -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration object_ = jmethod object_ "getDefaultConfiguration" (\() -> (getDefaultConfiguration_impl (javaCast object_ :: ImageUtil))) ()

getDefaultConfiguration_super :: (JavaObjectClass this_) => this_ -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration_super object_ = (getDefaultConfiguration_impl (javaCast object_ :: ImageUtil))

getDefaultConfiguration_impl :: ImageUtil -> IO (GraphicsConfiguration.GraphicsConfiguration)
getDefaultConfiguration_impl this = do
        ge <- (GraphicsEnvironment.getLocalGraphicsEnvironment)
        gd <- (GraphicsEnvironment.getDefaultScreenDevice ge)
        (GraphicsDevice.getDefaultConfiguration gd)


create :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (BufferedImage.BufferedImage)
create object_ a1 a2 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ImageUtil))) () a1 a2

create_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (BufferedImage.BufferedImage)
create_super object_ a1 a2 = (create_impl (javaCast object_ :: ImageUtil)) a1 a2

create_impl :: ImageUtil -> Int -> Int -> IO (BufferedImage.BufferedImage)
create_impl this width height = do
        graphicsConfiguration <- (ImageUtil.getDefaultConfiguration this)
        (GraphicsConfiguration.createCompatibleImage graphicsConfiguration width height (Transparency.tRANSLUCENT))


-- throws Exception
createBufferedImageForResize :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImageForResize object_ a1 a2 a3 = jmethod object_ "createBufferedImageForResize" (\() -> (createBufferedImageForResize_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImageForResize_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImageForResize_super object_ a1 a2 a3 = (createBufferedImageForResize_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImageForResize_impl :: ImageUtil -> JavaArray (BufferedImage.BufferedImage) -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImageForResize_impl this bufferedImageArray percent scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        bufferedImage <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            let newWidth = (Prelude.fromInteger (jnumericInteger ((((jio (BufferedImage.getWidth ((jget bufferedImage)))) * percent) / 100))))
            let newHeight = (Prelude.fromInteger (jnumericInteger ((((jio (BufferedImage.getHeight ((jget bufferedImage)))) * percent) / 100))))
            assignedValue <- (ImageUtil.createBufferedImage this (jget bufferedImage) newWidth newHeight scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImage2 :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Float -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage2 object_ a1 a2 a3 = jmethod object_ "createBufferedImage2" (\() -> (createBufferedImage2_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImage2_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Float -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage2_super object_ a1 a2 a3 = (createBufferedImage2_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImage2_impl :: ImageUtil -> JavaArray (BufferedImage.BufferedImage) -> Float -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage2_impl this bufferedImageArray percent scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        bufferedImage <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset bufferedImage ((jindex bufferedImageArray (index)))
            let newWidth = (Prelude.fromInteger (jnumericInteger (((jio (BufferedImage.getWidth ((jget bufferedImage)))) * percent))))
            let newHeight = (Prelude.fromInteger (jnumericInteger (((jio (BufferedImage.getHeight ((jget bufferedImage)))) * percent))))
            assignedValue <- (ImageUtil.createBufferedImage this (jget bufferedImage) newWidth newHeight scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImage3 :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage3 object_ a1 a2 a3 a4 = jmethod object_ "createBufferedImage3" (\() -> (createBufferedImage3_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4

createBufferedImage3_super :: (JavaObjectClass this_) => this_ -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage3_super object_ a1 a2 a3 a4 = (createBufferedImage3_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4

createBufferedImage3_impl :: ImageUtil -> JavaArray (BufferedImage.BufferedImage) -> Int -> Int -> Bool -> IO (JavaArray (BufferedImage.BufferedImage))
createBufferedImage3_impl this bufferedImageArray width height scale = do
        let size = (jlength bufferedImageArray)
        let scaledBufferedImageArray = (jnewArray (size) javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ImageUtil.createBufferedImage this (jindex bufferedImageArray (index)) width height scale)
            jsetIndex scaledBufferedImageArray (index) (assignedValue)
        pure (scaledBufferedImageArray)


-- throws Exception
createBufferedImageForSave :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageForSave object_ a1 a2 a3 = jmethod object_ "createBufferedImageForSave" (\() -> (createBufferedImageForSave_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImageForSave_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageForSave_super object_ a1 a2 a3 = (createBufferedImageForSave_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImageForSave_impl :: ImageUtil -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageForSave_impl this bufferedImage newWidth newHeight = do
        (ImageUtil.createBufferedImage this bufferedImage newWidth newHeight True)


-- throws Exception
createBufferedImage :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImage object_ a1 a2 a3 a4 = jmethod object_ "createBufferedImage" (\() -> (createBufferedImage_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4

createBufferedImage_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImage_super object_ a1 a2 a3 a4 = (createBufferedImage_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4

createBufferedImage_impl :: ImageUtil -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImage_impl this bufferedImage newWidth newHeight scale = do
        (ImageUtil.createBufferedImageAllowTranslate this bufferedImage newWidth newHeight scale False)


-- throws Exception
createBufferedImageAllowTranslate :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImageAllowTranslate object_ a1 a2 a3 a4 a5 = jmethod object_ "createBufferedImageAllowTranslate" (\() -> (createBufferedImageAllowTranslate_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3 a4 a5

createBufferedImageAllowTranslate_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImageAllowTranslate_super object_ a1 a2 a3 a4 a5 = (createBufferedImageAllowTranslate_impl (javaCast object_ :: ImageUtil)) a1 a2 a3 a4 a5

createBufferedImageAllowTranslate_impl :: ImageUtil -> BufferedImage.BufferedImage -> Int -> Int -> Bool -> Bool -> IO (BufferedImage.BufferedImage)
createBufferedImageAllowTranslate_impl this bufferedImage newWidth newHeight scale allowTranslate = do
        width <- (BufferedImage.getWidth bufferedImage)
        height <- (BufferedImage.getHeight bufferedImage)
        let d_newWidth = (Prelude.fromIntegral newWidth)
        let d_newHeight = (Prelude.fromIntegral newHeight)
        let widthRatio = (d_newWidth / width)
        let heightRatio = (d_newHeight / height)
        ratioX <- newIORef (1.0)
        ratioY <- newIORef (1.0)
        when scale $ do
            jset ratioX (widthRatio)
            jset ratioY (heightRatio)
        affineTransform <- (AffineTransform.getScaleInstance (jget ratioX) (jget ratioY))
        when ((Prelude.not scale) && allowTranslate) $ do
            let dx = ((((Prelude.fromIntegral newWidth) - width)) / 2.0)
            let dy = ((((Prelude.fromIntegral newHeight) - height)) / 2.0)
            Control.Monad.void (AffineTransform.translate affineTransform dx dy)
        newBufferedImage <- (BufferedImage.new_3 newWidth newHeight (BufferedImage.tYPE_INT_ARGB_PRE))
        graphics <- (BufferedImage.createGraphics newBufferedImage)
        Control.Monad.void (Graphics2D.drawRenderedImage graphics bufferedImage affineTransform)
        pure (newBufferedImage)


-- throws Exception
createBufferedImageWithLargerCanvas :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageWithLargerCanvas object_ a1 a2 a3 = jmethod object_ "createBufferedImageWithLargerCanvas" (\() -> (createBufferedImageWithLargerCanvas_impl (javaCast object_ :: ImageUtil))) () a1 a2 a3

createBufferedImageWithLargerCanvas_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageWithLargerCanvas_super object_ a1 a2 a3 = (createBufferedImageWithLargerCanvas_impl (javaCast object_ :: ImageUtil)) a1 a2 a3

createBufferedImageWithLargerCanvas_impl :: ImageUtil -> BufferedImage.BufferedImage -> Int -> Int -> IO (BufferedImage.BufferedImage)
createBufferedImageWithLargerCanvas_impl this bufferedImage newWidth newHeight = do
        width <- (BufferedImage.getWidth bufferedImage)
        height <- (BufferedImage.getHeight bufferedImage)
        let d_newWidth = (Prelude.fromIntegral newWidth)
        let d_newHeight = (Prelude.fromIntegral newHeight)
        let widthRatio = (d_newWidth / width)
        let heightRatio = (d_newHeight / height)
        let dx2 = (Prelude.truncate (((Prelude.fromIntegral newWidth) - width)))
        let dy2 = (Prelude.truncate (((Prelude.fromIntegral newHeight) - height)))
        let dx = (dx2 `quot` 2)
        let dy = (dy2 `quot` 2)
        let dx4 = (dx2 `quot` 4)
        let dy4 = (dy2 `quot` 4)
        newBufferedImage <- (BufferedImage.new_3 newWidth newHeight (BufferedImage.tYPE_INT_ARGB_PRE))
        graphics <- (BufferedImage.createGraphics newBufferedImage)
        Control.Monad.void (Graphics2D.drawImage graphics bufferedImage dx4 dy4 javaNull)
        pure (newBufferedImage)


convertToBufferedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (BufferedImage.BufferedImage)
convertToBufferedImage object_ a1 = jmethod object_ "convertToBufferedImage" (\() -> (convertToBufferedImage_impl (javaCast object_ :: ImageUtil))) () a1

convertToBufferedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (BufferedImage.BufferedImage)
convertToBufferedImage_super object_ a1 = (convertToBufferedImage_impl (javaCast object_ :: ImageUtil)) a1

convertToBufferedImage_impl :: ImageUtil -> Image.Image -> IO (BufferedImage.BufferedImage)
convertToBufferedImage_impl this toolkitImage = do
    javaCatchReturn $ do
        when (toolkitImage == javaNull) $ do
            javaReturn (javaNull)
        bufferedImage <- (BufferedImage.new_3 (jio (Image.getWidth toolkitImage javaNull)) (jio (Image.getHeight toolkitImage javaNull)) (BufferedImage.tYPE_INT_ARGB))
        g2d <- (BufferedImage.createGraphics bufferedImage)
        Control.Monad.void (Graphics2D.drawImage g2d toolkitImage 0 0 javaNull)
        Control.Monad.void (Graphics2D.dispose g2d)
        pure (bufferedImage)


getBufferedImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (BufferedImage.BufferedImage)
getBufferedImage object_ a1 = jmethod object_ "getBufferedImage" (\() -> (getBufferedImage_impl (javaCast object_ :: ImageUtil))) () a1

getBufferedImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (BufferedImage.BufferedImage)
getBufferedImage_super object_ a1 = (getBufferedImage_impl (javaCast object_ :: ImageUtil)) a1

getBufferedImage_impl :: ImageUtil -> Image.Image -> IO (BufferedImage.BufferedImage)
getBufferedImage_impl this image = do
        bufferedImage <- newIORef (javaNull)
        if (jio (Image.isMutable image)) then do
            let j2seImage = (javaCast image :: J2SEMutableImage.J2SEMutableImage)
            jset bufferedImage ((javaCast (jio (J2SEImmutableImage.getImage j2seImage)) :: BufferedImage.BufferedImage))
        else do
            let j2seImage = (javaCast image :: J2SEImmutableImage.J2SEImmutableImage)
            jset bufferedImage ((javaCast (jio (J2SEImmutableImage.getImage j2seImage)) :: BufferedImage.BufferedImage))
        pure ((jget bufferedImage))


toString :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (String)
toString object_ a1 = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: ImageUtil))) () a1

toString_super :: (JavaObjectClass this_) => this_ -> BufferedImage.BufferedImage -> IO (String)
toString_super object_ a1 = (toString_impl (javaCast object_ :: ImageUtil)) a1

toString_impl :: ImageUtil -> BufferedImage.BufferedImage -> IO (String)
toString_impl this bufferedImage = do
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer " BufferedImage -")
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (BufferedImage.getWidth bufferedImage)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (BufferedImage.getHeight bufferedImage)))))
        Control.Monad.void (StringMaker.append stringBuffer " Type: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (BufferedImage.getType bufferedImage)))))
        (StringMaker.toString stringBuffer)


