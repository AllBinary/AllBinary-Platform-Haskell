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
-- package org.allbinary.animation.image
module BaseImageAnimationFactory where

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
import qualified AnimationFactoryInitializationVisitor -- same package or java.lang
import qualified Image -- javax.microedition.lcdui.Image
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehaviorFactory -- org.allbinary.animation.AnimationBehaviorFactory
import qualified AnimationInterfaceFactoryInterface -- org.allbinary.animation.AnimationInterfaceFactoryInterface
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified AnimationFactoryImageScaleUtil -- org.allbinary.image.AnimationFactoryImageScaleUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps

-- implements AnimationInterfaceFactoryInterface
data BaseImageAnimationFactory = BaseImageAnimationFactory
    { header_ :: JavaHeader
    , animationFactoryImageScaleUtil :: IORef (AnimationFactoryImageScaleUtil.AnimationFactoryImageScaleUtil)
    , image :: IORef (Image.Image)
    , animationBehaviorFactory :: IORef (AnimationBehaviorFactory.AnimationBehaviorFactory)
    , sequenceArray :: IORef (JavaArray (Int))
    , animationFactoryInitializationVisitor :: IORef (AnimationFactoryInitializationVisitor.AnimationFactoryInitializationVisitor)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    }

instance JavaNull BaseImageAnimationFactory where
    javaNull = javaNullRecord "BaseImageAnimationFactory"

instance JavaEquals BaseImageAnimationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseImageAnimationFactory where
    (==) = jrecordEquals

instance JavaObjectClass BaseImageAnimationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseImageAnimationFactory
newRecord_ = do
    header_ <- newJavaHeader
    animationFactoryImageScaleUtil <- newIORef javaNull
    image <- newIORef javaNull
    animationBehaviorFactory <- newIORef javaNull
    sequenceArray <- newIORef javaNull
    animationFactoryInitializationVisitor <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    let this = BaseImageAnimationFactory header_ animationFactoryImageScaleUtil image animationBehaviorFactory sequenceArray animationFactoryInitializationVisitor scaleProperties
    jregisterLevel header_ this
    AnimationInterfaceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "getSequenceArray" (\() -> getSequenceArray_impl this)
    jregisterMethod header_ "setInitialScale" (\() -> setInitialScale_impl this)
    jregisterMethod header_ "getAnimationFactoryInitializationVisitorP" (\() -> getAnimationFactoryInitializationVisitorP_impl this)
    jregisterMethod header_ "getScalePropertiesP" (\() -> getScalePropertiesP_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BaseImageAnimationFactory -> IO ()
initFields_ this = do
    jset this.animationFactoryImageScaleUtil =<< (AnimationFactoryImageScaleUtil.getInstance)
    jset this.image (javaNull)
    jset this.animationBehaviorFactory (javaNull)
    jset this.sequenceArray (javaNull)
    jset this.animationFactoryInitializationVisitor (javaNull)
    jset this.scaleProperties (ScaleProperties.instance_)
    pure ()


-- throws Exception
createFactoryBase :: Image.Image -> JavaArray (Int) -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO (BaseImageAnimationFactory)
createFactoryBase image sequenceArray width height animationBehaviorFactory = do
        (new_7 image sequenceArray width height 0 0 animationBehaviorFactory)

new_7 :: Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO BaseImageAnimationFactory
new_7 image sequenceArray width height dx dy animationBehaviorFactory = do
    this <- newRecord_
    init_7 this image sequenceArray width height dx dy animationBehaviorFactory
    pure this

init_7 :: BaseImageAnimationFactory -> Image.Image -> JavaArray (Int) -> Int -> Int -> Int -> Int -> AnimationBehaviorFactory.AnimationBehaviorFactory -> IO ()
init_7 this image sequenceArray width height dx dy animationBehaviorFactory = do
        initFields_ this
        assignedValue <- (AnimationFactoryInitializationVisitor.new_)
        jset (this).animationFactoryInitializationVisitor (assignedValue)
        jset (this).image (image)
        jset ((jget (this).animationFactoryInitializationVisitor)).width (width)
        jset ((jget (this).animationFactoryInitializationVisitor)).height (height)
        jset (this).animationBehaviorFactory (animationBehaviorFactory)
        jset (this).sequenceArray (sequenceArray)
        jset ((jget (this).animationFactoryInitializationVisitor)).dx (dx)
        jset ((jget (this).animationFactoryInitializationVisitor)).dy (dy)
        pure ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: BaseImageAnimationFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: BaseImageAnimationFactory)) a1

getInstance_impl :: BaseImageAnimationFactory -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = do
        (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) instanceId)


getImage :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: BaseImageAnimationFactory))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (Image.Image)
getImage_super object_ = (getImage_impl (javaCast object_ :: BaseImageAnimationFactory))

getImage_impl :: BaseImageAnimationFactory -> IO (Image.Image)
getImage_impl this = do
        pure ((jget (this).image))


getSequenceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequenceArray object_ = jmethod object_ "getSequenceArray" (\() -> (getSequenceArray_impl (javaCast object_ :: BaseImageAnimationFactory))) ()

getSequenceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequenceArray_super object_ = (getSequenceArray_impl (javaCast object_ :: BaseImageAnimationFactory))

getSequenceArray_impl :: BaseImageAnimationFactory -> IO (JavaArray (Int))
getSequenceArray_impl this = do
        pure ((jget (this).sequenceArray))


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: BaseImageAnimationFactory))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: BaseImageAnimationFactory)) a1

setInitialScale_impl :: BaseImageAnimationFactory -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = do
        jset (this).scaleProperties (scaleProperties)
        if (jget ((jget (this).scaleProperties)).shouldScale) then do
            jset ((jget (this).scaleProperties)).scaleWidth ((Prelude.truncate (((Prelude.fromIntegral (jget ((jget (this).animationFactoryInitializationVisitor)).width)) * (jget ((jget (this).scaleProperties)).scaleX)))))
            jset ((jget (this).scaleProperties)).scaleHeight ((Prelude.truncate (((Prelude.fromIntegral (jget ((jget (this).animationFactoryInitializationVisitor)).height)) * (jget ((jget (this).scaleProperties)).scaleY)))))
        else do
            pure ()
        pure ()


getAnimationFactoryInitializationVisitorP :: (JavaObjectClass this_) => this_ -> IO (AnimationFactoryInitializationVisitor.AnimationFactoryInitializationVisitor)
getAnimationFactoryInitializationVisitorP object_ = jmethod object_ "getAnimationFactoryInitializationVisitorP" (\() -> (getAnimationFactoryInitializationVisitorP_impl (javaCast object_ :: BaseImageAnimationFactory))) ()

getAnimationFactoryInitializationVisitorP_super :: (JavaObjectClass this_) => this_ -> IO (AnimationFactoryInitializationVisitor.AnimationFactoryInitializationVisitor)
getAnimationFactoryInitializationVisitorP_super object_ = (getAnimationFactoryInitializationVisitorP_impl (javaCast object_ :: BaseImageAnimationFactory))

getAnimationFactoryInitializationVisitorP_impl :: BaseImageAnimationFactory -> IO (AnimationFactoryInitializationVisitor.AnimationFactoryInitializationVisitor)
getAnimationFactoryInitializationVisitorP_impl this = do
        pure ((jget (this).animationFactoryInitializationVisitor))


getScalePropertiesP :: (JavaObjectClass this_) => this_ -> IO (ScaleProperties.ScaleProperties)
getScalePropertiesP object_ = jmethod object_ "getScalePropertiesP" (\() -> (getScalePropertiesP_impl (javaCast object_ :: BaseImageAnimationFactory))) ()

getScalePropertiesP_super :: (JavaObjectClass this_) => this_ -> IO (ScaleProperties.ScaleProperties)
getScalePropertiesP_super object_ = (getScalePropertiesP_impl (javaCast object_ :: BaseImageAnimationFactory))

getScalePropertiesP_impl :: BaseImageAnimationFactory -> IO (ScaleProperties.ScaleProperties)
getScalePropertiesP_impl this = do
        pure ((jget (this).scaleProperties))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BaseImageAnimationFactory))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BaseImageAnimationFactory))

toString_impl :: BaseImageAnimationFactory -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (.toString_super this.base)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (Prelude.fromInteger (jnumericInteger (jio (Image.getHeight ((jget (this).image)))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AnimationFactoryInitializationVisitor.toString ((jget (this).animationFactoryInitializationVisitor)))))
        (StringMaker.toString stringBuffer)


