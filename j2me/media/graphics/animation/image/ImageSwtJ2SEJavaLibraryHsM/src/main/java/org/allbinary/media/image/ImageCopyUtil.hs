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
module ImageCopyUtil where

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
import qualified PlatformBitmapBase -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified OpenGLUtil -- org.allbinary.graphics.opengles.OpenGLUtil
import qualified OpenGLESDeviceImageTranslate -- org.allbinary.image.opengles.OpenGLESDeviceImageTranslate
import qualified OpenGLESImage -- org.allbinary.image.opengles.OpenGLESImage
import qualified OpenGLESImageExclusionUtil -- org.allbinary.image.opengles.OpenGLESImageExclusionUtil
import qualified OpenGLESImageProperties -- org.allbinary.image.opengles.OpenGLESImageProperties
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ImageData -- org.eclipse.swt.graphics.ImageData
import qualified SwtDeviceComponent -- org.microemu.app.ui.swt.SwtDeviceComponent
import qualified PostLoadSwtImmutableImageProcessor -- org.microemu.device.swt.PostLoadSwtImmutableImageProcessor
import qualified PostLoadSwtMutableImageProcessor -- org.microemu.device.swt.PostLoadSwtMutableImageProcessor
import qualified SwtImmutableImage -- org.microemu.device.swt.SwtImmutableImage
import qualified SwtMutableImage -- org.microemu.device.swt.SwtMutableImage

data ImageCopyUtil = ImageCopyUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameFeatureFactory :: IORef (GameFeatureFactory.GameFeatureFactory)
    , features :: IORef (Features.Features)
    , openGLFeatureFactory :: IORef (OpenGLFeatureFactory.OpenGLFeatureFactory)
    , openGLUtil :: IORef (OpenGLUtil.OpenGLUtil)
    , openGLESImageExclusionUtil :: IORef (OpenGLESImageExclusionUtil.OpenGLESImageExclusionUtil)
    , nO_COPY :: IORef (String)
    , uNABLE :: IORef (String)
    , iNFORMATION :: IORef (String)
    , lEADERBOARD :: IORef (String)
    }

instance JavaNull ImageCopyUtil where
    javaNull = javaNullRecord "ImageCopyUtil"

instance JavaEquals ImageCopyUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageCopyUtil where
    (==) = jrecordEquals

instance JavaObjectClass ImageCopyUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ImageCopyUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameFeatureFactory <- newIORef javaNull
    features <- newIORef javaNull
    openGLFeatureFactory <- newIORef javaNull
    openGLUtil <- newIORef javaNull
    openGLESImageExclusionUtil <- newIORef javaNull
    nO_COPY <- newIORef ""
    uNABLE <- newIORef ""
    iNFORMATION <- newIORef ""
    lEADERBOARD <- newIORef ""
    let this = ImageCopyUtil header_ logUtil commonStrings gameFeatureFactory features openGLFeatureFactory openGLUtil openGLESImageExclusionUtil nO_COPY uNABLE iNFORMATION lEADERBOARD
    jregisterLevel header_ this
    jregisterMethod header_ "createImageForRotation" (\() -> createImageForRotation_impl this)
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    jregisterMethod header_ "createImageWH" (\() -> createImageWH_impl this)
    jregisterMethod header_ "createImage2" (\() -> createImage2_impl this)
    jregisterMethod header_ "createImageScale" (\() -> createImageScale_impl this)
    pure this

initFields_ :: ImageCopyUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameFeatureFactory =<< (GameFeatureFactory.getInstance)
    jset this.features =<< (Features.getInstance)
    jset this.openGLFeatureFactory =<< (OpenGLFeatureFactory.getInstance)
    jset this.openGLUtil =<< (OpenGLUtil.getInstance)
    jset this.openGLESImageExclusionUtil =<< (OpenGLESImageExclusionUtil.getInstance)
    jset this.nO_COPY ("SWT should not copy images after initial loading as the alpha is not honored")
    jset this.uNABLE ("Unable to scale image without dimensions")
    jset this.iNFORMATION ("about_")
    jset this.lEADERBOARD ("leaderboard")
    pure ()


getInstance :: IO (ImageCopyUtil)
getInstance = do
        pure (ImageCopyUtil.instance_)

new_ :: IO ImageCopyUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageCopyUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
createImageForRotation :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImageForRotation object_ a1 = jmethod object_ "createImageForRotation" (\() -> (createImageForRotation_impl (javaCast object_ :: ImageCopyUtil))) () a1

createImageForRotation_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImageForRotation_super object_ a1 = (createImageForRotation_impl (javaCast object_ :: ImageCopyUtil)) a1

createImageForRotation_impl :: ImageCopyUtil -> Image.Image -> IO (Image.Image)
createImageForRotation_impl this originalImage = do
    javaCatchReturn $ do
        if (jio (Features.isFeature ((jget (this).features)) (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) then do
            image <- newIORef (originalImage)
            assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) (jget image))
            jset image (assignedValue)
            javaReturn ((jget image))
        else do
            javaReturn =<< (ImageCopyUtil.createImage this originalImage)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImage object_ a1 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: ImageCopyUtil))) () a1

createImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> IO (Image.Image)
createImage_super object_ a1 = (createImage_impl (javaCast object_ :: ImageCopyUtil)) a1

createImage_impl :: ImageCopyUtil -> Image.Image -> IO (Image.Image)
createImage_impl this originalImage = do
    javaCatchReturn $ do
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (originalImage)
        originalImage2 <- newIORef (originalImage)
        when (jio (Features.isFeature ((jget (this).features)) (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) $ do
            when ((jio (Image.getType originalImage)) >= OpenGLESImage.tYPE) $ do
                let openGLESImage = ((javaCast originalImage :: OpenGLESImage.OpenGLESImage))
                assignedValue <- (PlatformBitmapBase.getImage ((jget (openGLESImage).openGLBitmap)))
                jset originalImage2 (assignedValue)
        image <- newIORef (javaNull)
        if (jio (Image.isMutable ((jget originalImage2)))) then do
            let originalMutableImage = (javaCast (jget originalImage2) :: SwtMutableImage.SwtMutableImage)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_1 (jio (SwtDeviceComponent.createImage (jio (getImageData ((jget (originalMutableImage).image))))))))
            jset image (assignedValue)
        else do
            let originalImmutableImage = (javaCast (jget originalImage2) :: SwtImmutableImage.SwtImmutableImage)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_1 (jio (SwtDeviceComponent.createImage (jio (getImageData ((jget (originalImmutableImage).image))))))))
            jset image (assignedValue)
        assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) (jget image))
        jset image (assignedValue)
        pure ((jget image))


-- throws Exception
createImageWH :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImageWH object_ a1 a2 a3 a4 = jmethod object_ "createImageWH" (\() -> (createImageWH_impl (javaCast object_ :: ImageCopyUtil))) () a1 a2 a3 a4

createImageWH_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImageWH_super object_ a1 a2 a3 a4 = (createImageWH_impl (javaCast object_ :: ImageCopyUtil)) a1 a2 a3 a4

createImageWH_impl :: ImageCopyUtil -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImageWH_impl this originalImage width height mutable = do
    javaCatchReturn $ do
        originalImage2 <- newIORef (originalImage)
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (originalImage)
        when (jio (Features.isFeature ((jget (this).features)) (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) $ do
            when (jio (OpenGLESImageExclusionUtil.isCustomScaling ((jget (this).openGLESImageExclusionUtil)) originalImage)) $ do
                javaReturn =<< (ImageCopyUtil.createImage2 this originalImage width height mutable)
            when ((jio (Image.getType originalImage)) >= OpenGLESImage.tYPE) $ do
                let openGLESImage = ((javaCast originalImage :: OpenGLESImage.OpenGLESImage))
                assignedValue <- (PlatformBitmapBase.getImage ((jget (openGLESImage).openGLBitmap)))
                jset originalImage2 (assignedValue)
        image <- newIORef (javaNull)
        if ((jio (Image.isMutable ((jget originalImage2)))) && mutable) then do
            let originalMutableImage = (javaCast (jget originalImage2) :: SwtMutableImage.SwtMutableImage)
            if ((jio (SwtMutableImage.getImage originalMutableImage)) /= javaNull) then do
                imageData2 <- (getImageData ((jget (originalMutableImage).image)))
                imageData <- (ImageData.scaledTo imageData2 width height)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_1 (jio (SwtDeviceComponent.createImage imageData))))
                jset image (assignedValue)
            else do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_2 (jio (SwtMutableImage.getName originalMutableImage)) (jio (PostLoadSwtMutableImageProcessor.new_1 originalMutableImage))))
                jset image (assignedValue)
        else do
            let originalImmutableImage = (javaCast (jget originalImage2) :: SwtImmutableImage.SwtImmutableImage)
            if ((jio (SwtImmutableImage.getImage originalImmutableImage)) /= javaNull) then do
                imageData2 <- (getImageData ((jget (originalImmutableImage).image)))
                if ((width > 0) && (height > 0)) then do
                    imageData <- (ImageData.scaledTo imageData2 width height)
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtImmutableImage.new_2 (jio (Image.getName originalImage)) (jio (SwtDeviceComponent.createImage imageData))))
                    jset image (assignedValue)
                else do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget this.uNABLE) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtImmutableImage.new_2 (jio (SwtImmutableImage.getName originalImmutableImage)) (jio (PostLoadSwtImmutableImageProcessor.new_1 originalImmutableImage))))
                    jset image (assignedValue)
            else do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtImmutableImage.new_2 (jio (SwtImmutableImage.getName originalImmutableImage)) (jio (PostLoadSwtImmutableImageProcessor.new_1 originalImmutableImage))))
                jset image (assignedValue)
        assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) (jget image))
        jset image (assignedValue)
        pure ((jget image))


-- throws Exception
createImage2 :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImage2 object_ a1 a2 a3 a4 = jmethod object_ "createImage2" (\() -> (createImage2_impl (javaCast object_ :: ImageCopyUtil))) () a1 a2 a3 a4

createImage2_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImage2_super object_ a1 a2 a3 a4 = (createImage2_impl (javaCast object_ :: ImageCopyUtil)) a1 a2 a3 a4

createImage2_impl :: ImageCopyUtil -> Image.Image -> Int -> Int -> Bool -> IO (Image.Image)
createImage2_impl this originalImage width height mutable = do
    javaCatchReturn $ do
        let originalImage2 = originalImage
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (originalImage)
        image <- newIORef (javaNull)
        if (jio (Features.isFeature ((jget (this).features)) (javaCast (jget ((jget (this).openGLFeatureFactory)).oPENGL)))) then do
            displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
            if ((jio (Image.getType originalImage)) >= OpenGLESImage.tYPE) then do
                let openGLESImage = ((javaCast originalImage :: OpenGLESImage.OpenGLESImage))
                let openGLESImageProperties = (jget (openGLESImage).openGLESImageProperties)
                openGLWidth <- (PlatformBitmapBase.getWidth ((jget (openGLESImage).openGLBitmap)))
                openGLHeight <- (PlatformBitmapBase.getHeight ((jget (openGLESImage).openGLBitmap)))
                jset (openGLESImageProperties).scaleX2 (((((Prelude.fromIntegral width)) / (Prelude.fromIntegral openGLWidth))))
                jset (openGLESImageProperties).scaleX ((jget (openGLESImageProperties).scaleX2))
                jset (openGLESImageProperties).scaleY2 (((((Prelude.fromIntegral height)) / (Prelude.fromIntegral openGLHeight))))
                jset (openGLESImageProperties).scaleY ((jget (openGLESImageProperties).scaleY2))
                jset (openGLESImageProperties).scaleX (((jget (openGLESImageProperties).scaleX) * 0.75))
                jset (openGLESImageProperties).scaleY (((jget (openGLESImageProperties).scaleY) * 0.75))
                when (((jio (Image.getHeight originalImage)) `rem` 2) /= 0) $ do
                    jset (openGLESImageProperties).scaleX2 (((jget (openGLESImageProperties).scaleX2) + (1.0 / (Prelude.fromIntegral openGLWidth))))
                    jset (openGLESImageProperties).scaleY2 (((jget (openGLESImageProperties).scaleY2) + (1.0 / (Prelude.fromIntegral openGLHeight))))
                jset image (openGLESImage)
            else do
                jset image (originalImage)
                let openGLESImage = (javaCast (jio (OpenGLUtil.addImage ((jget (this).openGLUtil)) (jget image))) :: OpenGLESImage.OpenGLESImage)
                let openGLESImageProperties = (jget (openGLESImage).openGLESImageProperties)
                jset (openGLESImageProperties).scaleX2 ((Prelude.realToFrac (jnumericDouble ((((Prelude.fromIntegral width)) / (jio (OpenGLESImage.getWidth openGLESImage)))))))
                jset (openGLESImageProperties).scaleX ((jget (openGLESImageProperties).scaleX2))
                jset (openGLESImageProperties).scaleY2 ((Prelude.realToFrac (jnumericDouble ((((Prelude.fromIntegral height)) / (jio (OpenGLESImage.getHeight openGLESImage)))))))
                jset (openGLESImageProperties).scaleY ((jget (openGLESImageProperties).scaleY2))
                if (jio (Image.startsWith ((jio (Image.getName ((jget image))))) (jget (this).iNFORMATION))) then do
                    assignedValue <- (OpenGLESDeviceImageTranslate.new_)
                    jset (openGLESImage).openGLESImageTranslate (assignedValue)
                    let openGLESDeviceImageTranslate = (javaCast (jget (openGLESImage).openGLESImageTranslate) :: OpenGLESDeviceImageTranslate.OpenGLESDeviceImageTranslate)
                    jset (openGLESDeviceImageTranslate).translateX ((((Prelude.fromIntegral (jio (DisplayInfoSingleton.getLastWidth displayInfoSingleton))) / 1.4) / (jget (openGLESImageProperties).scaleX)))
                    jset (openGLESDeviceImageTranslate).translateY (((Prelude.fromIntegral ((jio (DisplayInfoSingleton.getLastHeight displayInfoSingleton)) `quot` 4)) / (jget (openGLESImageProperties).scaleY)))
                    jset (openGLESImageProperties).scaleX (((jget (openGLESImageProperties).scaleX) * 0.25))
                    jset (openGLESImageProperties).scaleY (((jget (openGLESImageProperties).scaleY) * 0.25))
                else do
                    jset (openGLESImageProperties).scaleX (((jget (openGLESImageProperties).scaleX) * 0.75))
                    jset (openGLESImageProperties).scaleY (((jget (openGLESImageProperties).scaleY) * 0.75))
                    when (jio (Image.startsWith ((jio (Image.getName ((jget image))))) (jget (this).lEADERBOARD))) $ do
                        assignedValue <- (OpenGLESDeviceImageTranslate.new_)
                        jset (openGLESImage).openGLESImageTranslate (assignedValue)
                        let openGLESDeviceImageTranslate = (javaCast (jget (openGLESImage).openGLESImageTranslate) :: OpenGLESDeviceImageTranslate.OpenGLESDeviceImageTranslate)
                        jset (openGLESDeviceImageTranslate).translateX (((Prelude.fromIntegral ((Prelude.negate (jio (DisplayInfoSingleton.getLastWidth displayInfoSingleton))) `quot` 40)) / (jget (openGLESImageProperties).scaleX)))
                    if (jio (Image.startsWith ((jio (Image.getName ((jget image))))) (jget (this).lEADERBOARD))) then do
                        pure ()
                    else do
                        jset (openGLESImageProperties).scaleX (1.0)
                        jset (openGLESImageProperties).scaleY (1.0)
                jset image (openGLESImage)
        else do
            if ((jio (Image.isMutable originalImage2)) && mutable) then do
                let originalMutableImage = (javaCast originalImage2 :: SwtMutableImage.SwtMutableImage)
                if ((jio (SwtMutableImage.getImage originalMutableImage)) /= javaNull) then do
                    imageData2 <- (getImageData ((jget (originalMutableImage).image)))
                    imageData <- (ImageData.scaledTo imageData2 width height)
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_1 (jio (SwtDeviceComponent.createImage imageData))))
                    jset image (assignedValue)
                else do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtMutableImage.new_2 (jio (SwtMutableImage.getName originalMutableImage)) (jio (PostLoadSwtMutableImageProcessor.new_1 originalMutableImage))))
                    jset image (assignedValue)
            else do
                let originalImmutableImage = (javaCast originalImage2 :: SwtImmutableImage.SwtImmutableImage)
                if ((jio (SwtImmutableImage.getImage originalImmutableImage)) /= javaNull) then do
                    imageData2 <- (getImageData ((jget (originalImmutableImage).image)))
                    imageData <- (ImageData.scaledTo imageData2 width height)
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtImmutableImage.new_2 (jio (Image.getName originalImage)) (jio (SwtDeviceComponent.createImage imageData))))
                    jset image (assignedValue)
                else do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: Image.Image) (SwtImmutableImage.new_2 (jio (SwtImmutableImage.getName originalImmutableImage)) (jio (PostLoadSwtImmutableImageProcessor.new_1 originalImmutableImage))))
                    jset image (assignedValue)
            assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) (jget image))
            jset image (assignedValue)
        pure ((jget image))


-- throws Exception
createImageScale :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale object_ a1 a2 a3 = jmethod object_ "createImageScale" (\() -> (createImageScale_impl (javaCast object_ :: ImageCopyUtil))) () a1 a2 a3

createImageScale_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale_super object_ a1 a2 a3 = (createImageScale_impl (javaCast object_ :: ImageCopyUtil)) a1 a2 a3

createImageScale_impl :: ImageCopyUtil -> Image.Image -> Float -> Bool -> IO (Image.Image)
createImageScale_impl this originalImage canvasScale resize = do
    javaCatchReturn $ do
        when (Prelude.not (jio (Features.isFeature ((jget (this).features)) (jget ((jget (this).gameFeatureFactory)).pOST_IMAGE_LOADING_MODIFICATION)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).nO_COPY) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            javaReturn (originalImage)
        newWidth <- newIORef ((Prelude.fromInteger (jnumericInteger (((jio (Image.getWidth originalImage)) * canvasScale)))))
        newHeight <- newIORef ((Prelude.fromInteger (jnumericInteger (((jio (Image.getHeight originalImage)) * canvasScale)))))
        when resize $ do
            when ((jget newWidth) < (jget newHeight)) $ do
                jset newWidth ((jget newHeight))
            when ((jget newHeight) < (jget newWidth)) $ do
                jset newHeight ((jget newWidth))
        image <- (ImageCopyUtil.createImageWH this originalImage (jget newWidth) (jget newHeight) True)
        if (jio (Image.isMutable image)) then do
            originalImageData <- (getImageData (((javaCast (jio (Image.getImage originalImage)) :: Image.Image))))
            let mutableImage2 = (javaCast image :: SwtMutableImage.SwtMutableImage)
            let halfWidthDelta = ((((jget newWidth) - (jio (Image.getWidth originalImage)))) / 2)
            let halfHeightDelta = ((((jget newHeight) - (jio (Image.getHeight originalImage)))) / 2)
            let originalPixelArray = (jnewArray (((jio (Image.getWidth originalImage)) * (jio (Image.getHeight originalImage)))) 0)
            let newPixelArray = (jnewArray (((jio (Image.getWidth image)) * (jio (Image.getHeight image)))) 0)
            width <- (Image.getWidth originalImage)
            height <- (Image.getHeight originalImage)
            forM_ [0 .. height - 1] $ \i -> javaIteration (pure ()) $ do
                Control.Monad.void (ImageData.getPixels originalImageData 0 i width originalPixelArray ((i * width)))
            forM_ [halfWidthDelta .. width - 1] $ \index -> javaIteration (pure ()) $ do
                forM_ [halfHeightDelta .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jsetIndex newPixelArray ((index + ((index2 * width)))) ((jindex originalPixelArray ((((index - halfWidthDelta)) + ((((index2 - halfHeightDelta)) * width))))))
            Control.Monad.void (setPixels ((jio (getImageData (((javaCast (jio (SwtMutableImage.getImage mutableImage2)) :: Image.Image)))))) 0 0 (jio (Image.getWidth image)) newPixelArray 0)
            javaReturn (image)
        else do
            let originalImmutableImage = (javaCast image :: SwtImmutableImage.SwtImmutableImage)
            originalImageData <- (getImageData (((javaCast (jio (Image.getImage originalImage)) :: Image.Image))))
            let halfWidthDelta = ((((jget newWidth) - (jio (Image.getWidth originalImage)))) / 2)
            let halfHeightDelta = ((((jget newHeight) - (jio (Image.getHeight originalImage)))) / 2)
            let originalPixelArray = (jnewArray (((jio (Image.getWidth originalImage)) * (jio (Image.getHeight originalImage)))) 0)
            let newPixelArray = (jnewArray (((jio (Image.getWidth image)) * (jio (Image.getHeight image)))) 0)
            width <- (Image.getWidth originalImage)
            height <- (Image.getHeight originalImage)
            forM_ [0 .. height - 1] $ \i -> javaIteration (pure ()) $ do
                Control.Monad.void (ImageData.getPixels originalImageData 0 i width originalPixelArray ((i * width)))
            forM_ [halfWidthDelta .. width - 1] $ \index -> javaIteration (pure ()) $ do
                forM_ [halfHeightDelta .. height - 1] $ \index2 -> javaIteration (pure ()) $ do
                    jsetIndex newPixelArray ((index + ((index2 * width)))) ((jindex originalPixelArray ((((index - halfWidthDelta)) + ((((index2 - halfHeightDelta)) * width))))))
            Control.Monad.void (setPixels ((jio (getImageData (((javaCast (jio (SwtImmutableImage.getImage originalImmutableImage)) :: Image.Image)))))) 0 0 (jio (Image.getWidth image)) newPixelArray 0)
            javaReturn (image)


