{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.image.sprite
module AnimationFactorySpriteScaleUtil where

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
import qualified Image -- javax.microedition.lcdui.Image
import qualified Sprite -- javax.microedition.lcdui.game.Sprite
import qualified SpriteFactory -- org.allbinary.game.layer.SpriteFactory
import qualified OpenGLUtil -- org.allbinary.graphics.opengles.OpenGLUtil
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified OpenGLESImageExclusionUtil -- org.allbinary.image.opengles.OpenGLESImageExclusionUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified J2SEMath -- org.allbinary.logic.math.J2SEMath
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ImageScaleUtil -- org.allbinary.media.image.ImageScaleUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AnimationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil
    { header_ :: JavaHeader
    , imageCache :: IORef (ImageCache.ImageCache)
    , imageScaleUtil :: IORef (ImageScaleUtil.ImageScaleUtil)
    , openGLUtil :: IORef (OpenGLUtil.OpenGLUtil)
    , j2seMath :: IORef (J2SEMath.J2SEMath)
    , openGLESImageExclusionUtil :: IORef (OpenGLESImageExclusionUtil.OpenGLESImageExclusionUtil)
    }

instance JavaNull AnimationFactorySpriteScaleUtil where
    javaNull = javaNullRecord "AnimationFactorySpriteScaleUtil"

instance JavaEquals AnimationFactorySpriteScaleUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationFactorySpriteScaleUtil where
    (==) = jrecordEquals

instance JavaObjectClass AnimationFactorySpriteScaleUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnimationFactorySpriteScaleUtil
newRecord_ = do
    header_ <- newJavaHeader
    imageCache <- newIORef javaNull
    imageScaleUtil <- newIORef javaNull
    openGLUtil <- newIORef javaNull
    j2seMath <- newIORef javaNull
    openGLESImageExclusionUtil <- newIORef javaNull
    let this = AnimationFactorySpriteScaleUtil header_ imageCache imageScaleUtil openGLUtil j2seMath openGLESImageExclusionUtil
    jregisterLevel header_ this
    jregisterMethod header_ "createImage" (\() -> createImage_impl this)
    pure this

initFields_ :: AnimationFactorySpriteScaleUtil -> IO ()
initFields_ this = do
    jset this.imageCache =<< (ImageCacheFactory.getInstance)
    jset this.imageScaleUtil =<< (ImageScaleUtil.getInstance)
    jset this.openGLUtil =<< (OpenGLUtil.getInstance)
    jset this.j2seMath =<< (J2SEMath.getInstance)
    jset this.openGLESImageExclusionUtil =<< (OpenGLESImageExclusionUtil.getInstance)
    pure ()

new_ :: IO AnimationFactorySpriteScaleUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnimationFactorySpriteScaleUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AnimationFactorySpriteScaleUtil)
getInstance = do
        pure (AnimationFactorySpriteScaleUtil.instance_)


-- throws Exception
createImage :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> IO (Sprite.Sprite)
createImage object_ a1 a2 a3 a4 a5 = jmethod object_ "createImage" (\() -> (createImage_impl (javaCast object_ :: AnimationFactorySpriteScaleUtil))) () a1 a2 a3 a4 a5

createImage_super :: (JavaObjectClass this_) => this_ -> Image.Image -> Int -> Int -> Int -> Int -> IO (Sprite.Sprite)
createImage_super object_ a1 a2 a3 a4 a5 = (createImage_impl (javaCast object_ :: AnimationFactorySpriteScaleUtil)) a1 a2 a3 a4 a5

createImage_impl :: AnimationFactorySpriteScaleUtil -> Image.Image -> Int -> Int -> Int -> Int -> IO (Sprite.Sprite)
createImage_impl this image width height scaleWidth scaleHeight = do
        spriteFactory <- (SpriteFactory.getInstance)
        sprite <- newIORef (javaNull)
        scaledImage <- newIORef (javaNull)
        if ((scaleWidth /= 0) && (scaleHeight /= 0)) then do
            scaleX <- newIORef ((((Prelude.fromIntegral scaleWidth)) / ((Prelude.fromIntegral width))))
            scaleY <- newIORef ((((Prelude.fromIntegral scaleHeight)) / ((Prelude.fromIntegral height))))
            if (((((jget scaleX) == 1.0) && ((jget scaleY) == 1.0))) || ((((jget scaleX) == 0.0) || ((jget scaleY) == 0.0)))) then do
                assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) image)
                jset scaledImage (assignedValue)
                assignedValue <- (SpriteFactory.createSprite spriteFactory (jget scaledImage) width height)
                jset sprite (assignedValue)
            else do
                when (jio (OpenGLESImageExclusionUtil.isCustomScaling ((jget (this).openGLESImageExclusionUtil)) image)) $ do
                    width2 <- (J2SEMath.round ((jget (this).j2seMath)) ((Prelude.fromIntegral (scaleWidth)) - 0.5))
                    height2 <- (J2SEMath.round ((jget (this).j2seMath)) ((Prelude.fromIntegral (scaleHeight)) - 0.5))
                    let multiplesOf16Width = (width2 `quot` 16)
                    let by16Width = (multiplesOf16Width * 16)
                    jset scaleX ((((Prelude.fromIntegral by16Width)) / (Prelude.fromIntegral width)))
                    let multiplesOf16Height = (height2 `quot` 16)
                    let by16Height = (multiplesOf16Height * 16)
                    jset scaleY ((((Prelude.fromIntegral by16Height)) / (Prelude.fromIntegral height)))
                    when (scaleWidth < width) $ do
                        jset scaleX (((jget scaleX) * 2.35))
                    when (scaleHeight < height) $ do
                        jset scaleY (((jget scaleY) * 2.35))
                assignedValue <- (ImageScaleUtil.createImage2 ((jget (this).imageScaleUtil)) (jget (this).imageCache) image (jget scaleX) (1.0) (jget scaleY) (1.0) True)
                jset scaledImage (assignedValue)
                assignedValue <- (SpriteFactory.createSprite spriteFactory (jget scaledImage) (Prelude.truncate (((Prelude.fromIntegral width) * (jget scaleX)))) (Prelude.truncate (((Prelude.fromIntegral height) * (jget scaleY)))))
                jset sprite (assignedValue)
        else do
            assignedValue <- (OpenGLUtil.addImage ((jget (this).openGLUtil)) image)
            jset scaledImage (assignedValue)
            assignedValue <- (SpriteFactory.createSprite spriteFactory (jget scaledImage) width height)
            jset sprite (assignedValue)
        pure ((jget sprite))


