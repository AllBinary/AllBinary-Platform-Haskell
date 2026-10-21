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
-- package org.allbinary.animation.image
module LazyImageRotationAnimation (module LazyImageRotationAnimation, module RotationAnimation) where

import RotationAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setRealAnimation, setRealAnimation_super, setRealAnimation_impl, setScale, setScale_super, setScale_impl, getAnimationBehavior, getAnimationBehavior_super, getAnimationBehavior_impl, set, set_super, set_impl, setAlpha, setAlpha_super, setAlpha_impl, setDx, setDx_super, setDx_impl, setDy, setDy_super, setDy_impl, setMaxScale, setMaxScale_super, setMaxScale_impl, nextRotation, nextRotation_super, nextRotation_impl, previousRotation, previousRotation_super, previousRotation_impl, nextRotationX, nextRotationX_super, nextRotationX_impl, previousRotationX, previousRotationX_super, previousRotationX_impl, nextRotationZ, nextRotationZ_super, nextRotationZ_impl, previousRotationZ, previousRotationZ_super, previousRotationZ_impl, changeBasicColor, changeBasicColor_super, changeBasicColor_impl, getBasicColorP, getBasicColorP_super, getBasicColorP_impl, getChangeBasicColor, getChangeBasicColor_super, getChangeBasicColor_impl, getChangeColor, getChangeColor_super, getChangeColor_impl, getColor, getColor_super, getColor_impl, getDx, getDx_super, getDx_impl, getDy, getDy_super, getDy_impl, isThreed, isThreed_super, isThreed_impl, nextFrame, nextFrame_super, nextFrame_impl, reset, reset_super, reset_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, isLastFrame, isLastFrame_super, isLastFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, getWidth, getWidth_super, getWidth_impl, paintXY, paintXY_super, paintXY_impl, paintThreedXYZ, paintThreedXYZ_super, paintThreedXYZ_impl, toString, toString_super, toString_impl, logUtil, layoutIndex, instanceId, animationInterfaceFactoryInterface, nULL_INDEX_ANIMATION, animation, scaleProperties, sET_REAL_ANIMATION)
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
import qualified BaseImageAnimationFactory -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Image -- javax.microedition.lcdui.Image
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified NullRotationAnimationFactory -- org.allbinary.animation.NullRotationAnimationFactory
import qualified RotationAnimation -- org.allbinary.animation.RotationAnimation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ImageCache -- org.allbinary.image.ImageCache
import qualified ImageCacheFactory -- org.allbinary.image.ImageCacheFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified AngleInfo -- org.allbinary.math.AngleInfo
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data LazyImageRotationAnimation = LazyImageRotationAnimation
    { header_ :: JavaHeader
    , base :: RotationAnimation.RotationAnimation
    , logUtil :: IORef (LogUtil.LogUtil)
    , layoutIndex :: IORef (Int)
    , instanceId :: IORef (Int)
    , animationInterfaceFactoryInterface :: IORef (BaseImageAnimationFactory.BaseImageAnimationFactory)
    , nULL_INDEX_ANIMATION :: IORef (IndexedAnimation.IndexedAnimation)
    , animation :: IORef (IndexedAnimation.IndexedAnimation)
    , scaleProperties :: IORef (ScaleProperties.ScaleProperties)
    }

instance JavaNull LazyImageRotationAnimation where
    javaNull = javaNullRecord "LazyImageRotationAnimation"

instance JavaEquals LazyImageRotationAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LazyImageRotationAnimation where
    (==) = jrecordEquals

instance JavaObjectClass LazyImageRotationAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

sET_REAL_ANIMATION = "setRealAnimation"

newRecord_ :: IO LazyImageRotationAnimation
newRecord_ = do
    base <- RotationAnimation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    layoutIndex <- newIORef 0
    instanceId <- newIORef 0
    animationInterfaceFactoryInterface <- newIORef javaNull
    nULL_INDEX_ANIMATION <- newIORef javaNull
    animation <- newIORef javaNull
    scaleProperties <- newIORef javaNull
    let this = LazyImageRotationAnimation header_ base logUtil layoutIndex instanceId animationInterfaceFactoryInterface nULL_INDEX_ANIMATION animation scaleProperties
    jregisterLevel header_ this
    jregisterMethod header_ "setRealAnimation" (\() -> setRealAnimation_impl this)
    jregisterMethod header_ "setScale" (\() -> setScale_impl this)
    jregisterMethod header_ "getAnimationBehavior" (\() -> getAnimationBehavior_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "setAlpha" (\() -> setAlpha_impl this)
    jregisterMethod header_ "setDx" (\() -> setDx_impl this)
    jregisterMethod header_ "setDy" (\() -> setDy_impl this)
    jregisterMethod header_ "setMaxScale" (\() -> setMaxScale_impl this)
    jregisterMethod header_ "nextRotation" (\() -> nextRotation_impl this)
    jregisterMethod header_ "previousRotation" (\() -> previousRotation_impl this)
    jregisterMethod header_ "nextRotationX" (\() -> nextRotationX_impl this)
    jregisterMethod header_ "previousRotationX" (\() -> previousRotationX_impl this)
    jregisterMethod header_ "nextRotationZ" (\() -> nextRotationZ_impl this)
    jregisterMethod header_ "previousRotationZ" (\() -> previousRotationZ_impl this)
    jregisterMethod header_ "changeBasicColor" (\() -> changeBasicColor_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "getChangeBasicColor" (\() -> getChangeBasicColor_impl this)
    jregisterMethod header_ "getChangeColor" (\() -> getChangeColor_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    jregisterMethod header_ "isThreed" (\() -> isThreed_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "isLastFrame" (\() -> isLastFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreedXYZ" (\() -> paintThreedXYZ_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: LazyImageRotationAnimation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.layoutIndex (0)
    jset this.instanceId (0)
    jset this.animationInterfaceFactoryInterface (javaNull)
    jset this.nULL_INDEX_ANIMATION (javaNull)
    jset this.animation (javaNull)
    jset this.scaleProperties (ScaleProperties.instance_)
    pure ()

new_5 :: Int -> Int -> ScaleProperties.ScaleProperties -> BaseImageAnimationFactory.BaseImageAnimationFactory -> AnimationBehavior.AnimationBehavior -> IO LazyImageRotationAnimation
new_5 layoutIndex instanceId scaleProperties animationInterfaceFactoryInterface animationBehavior = do
    this <- newRecord_
    init_5 this layoutIndex instanceId scaleProperties animationInterfaceFactoryInterface animationBehavior
    pure this

init_5 :: LazyImageRotationAnimation -> Int -> Int -> ScaleProperties.ScaleProperties -> BaseImageAnimationFactory.BaseImageAnimationFactory -> AnimationBehavior.AnimationBehavior -> IO ()
init_5 this layoutIndex instanceId scaleProperties animationInterfaceFactoryInterface animationBehavior = do
        RotationAnimation.init_3 this.base (jio (AngleInfo.getInstance (jget ((jio (AngleFactory.getInstance))).qUARTER_TOTAL_ANGLE))) (jio (CircularIndexUtil.createInstance 4)) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).layoutIndex (layoutIndex)
        jset (this).instanceId (instanceId)
        jset (this).animationInterfaceFactoryInterface (animationInterfaceFactoryInterface)
        imageCache <- (ImageCacheFactory.getInstance)
        Control.Monad.void (ImageCache.add imageCache this)
        jset (this).scaleProperties (scaleProperties)
        jset (this).nULL_INDEX_ANIMATION ((javaCast (jio (NullRotationAnimationFactory.getInstance ((jio (NullRotationAnimationFactory.getFactoryInstance))) 0)) :: IndexedAnimation.IndexedAnimation))
        -- Java nested class ActualRotationAnimation: move it to its own module

        assignedValue <- (fmap (\value_ -> javaCast value_ :: IndexedAnimation.IndexedAnimation) (ActualRotationAnimation.new_1 this))
        jset (this).animation (assignedValue)
        pure ()


setRealAnimation :: (JavaObjectClass this_) => this_ -> IO (())
setRealAnimation object_ = jmethod object_ "setRealAnimation" (\() -> (setRealAnimation_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

setRealAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
setRealAnimation_super object_ = (setRealAnimation_impl (javaCast object_ :: LazyImageRotationAnimation))

setRealAnimation_impl :: LazyImageRotationAnimation -> IO (())
setRealAnimation_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (LazyImageRotationAnimation.sET_REAL_ANIMATION) e)
            ) $ do
            let animation = (jget (this).animation)
            Control.Monad.void (BaseImageAnimationFactory.setInitialScale ((jget (this).animationInterfaceFactoryInterface)) (jget (this).scaleProperties))
            jset (this).animation ((javaCast (jio (BaseImageAnimationFactory.getInstance ((jget (this).animationInterfaceFactoryInterface)) (jget (this).instanceId))) :: IndexedAnimation.IndexedAnimation))
            Control.Monad.void (IndexedAnimation.setState ((jget (this).animation)) animation)
        pure ()


setScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale object_ a1 a2 = jmethod object_ "setScale" (\() -> (setScale_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1 a2

setScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setScale_super object_ a1 a2 = (setScale_impl (javaCast object_ :: LazyImageRotationAnimation)) a1 a2

setScale_impl :: LazyImageRotationAnimation -> Float -> Float -> IO (())
setScale_impl this scaleX scaleY = do
        Control.Monad.void (IndexedAnimation.setScale ((jget (this).animation)) scaleX scaleY)
        pure ()


getAnimationBehavior :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior object_ = jmethod object_ "getAnimationBehavior" (\() -> (getAnimationBehavior_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getAnimationBehavior_super :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior_super object_ = (getAnimationBehavior_impl (javaCast object_ :: LazyImageRotationAnimation))

getAnimationBehavior_impl :: LazyImageRotationAnimation -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior_impl this = do
        (IndexedAnimation.getAnimationBehavior ((jget (this).animation)))


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

set_impl :: LazyImageRotationAnimation -> GL.GL -> IO (())
set_impl this gl = do
        Control.Monad.void (IndexedAnimation.set ((jget (this).animation)) gl)
        pure ()


setAlpha :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha object_ a1 = jmethod object_ "setAlpha" (\() -> (setAlpha_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

setAlpha_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAlpha_super object_ a1 = (setAlpha_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

setAlpha_impl :: LazyImageRotationAnimation -> Int -> IO (())
setAlpha_impl this alpha = do
        Control.Monad.void (IndexedAnimation.setAlpha ((jget (this).animation)) alpha)
        pure ()


setDx :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx object_ a1 = jmethod object_ "setDx" (\() -> (setDx_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

setDx_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDx_super object_ a1 = (setDx_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

setDx_impl :: LazyImageRotationAnimation -> Int -> IO (())
setDx_impl this dx = do
        Control.Monad.void (IndexedAnimation.setDx ((jget (this).animation)) dx)
        pure ()


setDy :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy object_ a1 = jmethod object_ "setDy" (\() -> (setDy_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

setDy_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDy_super object_ a1 = (setDy_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

setDy_impl :: LazyImageRotationAnimation -> Int -> IO (())
setDy_impl this dy = do
        Control.Monad.void (IndexedAnimation.setDy ((jget (this).animation)) dy)
        pure ()


setMaxScale :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale object_ a1 a2 = jmethod object_ "setMaxScale" (\() -> (setMaxScale_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1 a2

setMaxScale_super :: (JavaObjectClass this_) => this_ -> Float -> Float -> IO (())
setMaxScale_super object_ a1 a2 = (setMaxScale_impl (javaCast object_ :: LazyImageRotationAnimation)) a1 a2

setMaxScale_impl :: LazyImageRotationAnimation -> Float -> Float -> IO (())
setMaxScale_impl this maxScaleX maxScaleY = do
        Control.Monad.void (IndexedAnimation.setMaxScale ((jget (this).animation)) maxScaleX maxScaleY)
        pure ()


nextRotation :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation object_ = jmethod object_ "nextRotation" (\() -> (nextRotation_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

nextRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotation_super object_ = (nextRotation_impl (javaCast object_ :: LazyImageRotationAnimation))

nextRotation_impl :: LazyImageRotationAnimation -> IO (())
nextRotation_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.nextRotation rotationAnimation)
        pure ()


previousRotation :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation object_ = jmethod object_ "previousRotation" (\() -> (previousRotation_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

previousRotation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotation_super object_ = (previousRotation_impl (javaCast object_ :: LazyImageRotationAnimation))

previousRotation_impl :: LazyImageRotationAnimation -> IO (())
previousRotation_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.previousRotation rotationAnimation)
        pure ()


nextRotationX :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationX object_ = jmethod object_ "nextRotationX" (\() -> (nextRotationX_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

nextRotationX_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationX_super object_ = (nextRotationX_impl (javaCast object_ :: LazyImageRotationAnimation))

nextRotationX_impl :: LazyImageRotationAnimation -> IO (())
nextRotationX_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.nextRotationX rotationAnimation)
        pure ()


previousRotationX :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationX object_ = jmethod object_ "previousRotationX" (\() -> (previousRotationX_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

previousRotationX_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationX_super object_ = (previousRotationX_impl (javaCast object_ :: LazyImageRotationAnimation))

previousRotationX_impl :: LazyImageRotationAnimation -> IO (())
previousRotationX_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.previousRotationX rotationAnimation)
        pure ()


nextRotationZ :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationZ object_ = jmethod object_ "nextRotationZ" (\() -> (nextRotationZ_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

nextRotationZ_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRotationZ_super object_ = (nextRotationZ_impl (javaCast object_ :: LazyImageRotationAnimation))

nextRotationZ_impl :: LazyImageRotationAnimation -> IO (())
nextRotationZ_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.nextRotationZ rotationAnimation)
        pure ()


previousRotationZ :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationZ object_ = jmethod object_ "previousRotationZ" (\() -> (previousRotationZ_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

previousRotationZ_super :: (JavaObjectClass this_) => this_ -> IO (())
previousRotationZ_super object_ = (previousRotationZ_impl (javaCast object_ :: LazyImageRotationAnimation))

previousRotationZ_impl :: LazyImageRotationAnimation -> IO (())
previousRotationZ_impl this = do
        let rotationAnimation = ((javaCast (jget (this).animation) :: RotationAnimation.RotationAnimation))
        Control.Monad.void (RotationAnimation.previousRotationZ rotationAnimation)
        pure ()


changeBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor object_ a1 = jmethod object_ "changeBasicColor" (\() -> (changeBasicColor_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

changeBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
changeBasicColor_super object_ a1 = (changeBasicColor_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

changeBasicColor_impl :: LazyImageRotationAnimation -> BasicColor.BasicColor -> IO (())
changeBasicColor_impl this basicColor = do
        Control.Monad.void (IndexedAnimation.changeBasicColor ((jget (this).animation)) basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: LazyImageRotationAnimation))

getBasicColorP_impl :: LazyImageRotationAnimation -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        (IndexedAnimation.getBasicColorP ((jget (this).animation)))


getChangeBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getChangeBasicColor object_ = jmethod object_ "getChangeBasicColor" (\() -> (getChangeBasicColor_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getChangeBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getChangeBasicColor_super object_ = (getChangeBasicColor_impl (javaCast object_ :: LazyImageRotationAnimation))

getChangeBasicColor_impl :: LazyImageRotationAnimation -> IO (BasicColor.BasicColor)
getChangeBasicColor_impl this = do
        (IndexedAnimation.getChangeBasicColor ((jget (this).animation)))


getChangeColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getChangeColor object_ = jmethod object_ "getChangeColor" (\() -> (getChangeColor_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getChangeColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getChangeColor_super object_ = (getChangeColor_impl (javaCast object_ :: LazyImageRotationAnimation))

getChangeColor_impl :: LazyImageRotationAnimation -> IO (Int)
getChangeColor_impl this = do
        (IndexedAnimation.getChangeColor ((jget (this).animation)))


getColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor_super object_ = (getColor_impl (javaCast object_ :: LazyImageRotationAnimation))

getColor_impl :: LazyImageRotationAnimation -> IO (Int)
getColor_impl this = do
        (IndexedAnimation.getColor ((jget (this).animation)))


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: LazyImageRotationAnimation))

getDx_impl :: LazyImageRotationAnimation -> IO (Int)
getDx_impl this = do
        (IndexedAnimation.getDx ((jget (this).animation)))


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: LazyImageRotationAnimation))

getDy_impl :: LazyImageRotationAnimation -> IO (Int)
getDy_impl this = do
        (IndexedAnimation.getDy ((jget (this).animation)))


isThreed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isThreed object_ = jmethod object_ "isThreed" (\() -> (isThreed_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

isThreed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isThreed_super object_ = (isThreed_impl (javaCast object_ :: LazyImageRotationAnimation))

isThreed_impl :: LazyImageRotationAnimation -> IO (Bool)
isThreed_impl this = do
        (IndexedAnimation.isThreed ((jget (this).animation)))


-- throws Exception
nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: LazyImageRotationAnimation))

nextFrame_impl :: LazyImageRotationAnimation -> IO (())
nextFrame_impl this = do
        Control.Monad.void (IndexedAnimation.nextFrame ((jget (this).animation)))
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: LazyImageRotationAnimation))

reset_impl :: LazyImageRotationAnimation -> IO (())
reset_impl this = do
        Control.Monad.void (IndexedAnimation.reset ((jget (this).animation)))
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

setFrame_impl :: LazyImageRotationAnimation -> Int -> IO (())
setFrame_impl this index = do
        Control.Monad.void (IndexedAnimation.setFrame ((jget (this).animation)) index)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: LazyImageRotationAnimation))

getFrame_impl :: LazyImageRotationAnimation -> IO (Int)
getFrame_impl this = do
        (IndexedAnimation.getFrame ((jget (this).animation)))


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: LazyImageRotationAnimation))

getAnimationSize_impl :: LazyImageRotationAnimation -> IO (Int)
getAnimationSize_impl this = do
        (IndexedAnimation.getAnimationSize ((jget (this).animation)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: LazyImageRotationAnimation))

getSize_impl :: LazyImageRotationAnimation -> IO (Int)
getSize_impl this = do
        (IndexedAnimation.getSize ((jget (this).animation)))


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: LazyImageRotationAnimation))

previousFrame_impl :: LazyImageRotationAnimation -> IO (())
previousFrame_impl this = do
        Control.Monad.void (IndexedAnimation.previousFrame ((jget (this).animation)))
        pure ()


isLastFrame :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame object_ = jmethod object_ "isLastFrame" (\() -> (isLastFrame_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

isLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame_super object_ = (isLastFrame_impl (javaCast object_ :: LazyImageRotationAnimation))

isLastFrame_impl :: LazyImageRotationAnimation -> IO (Bool)
isLastFrame_impl this = do
        (IndexedAnimation.isLastFrame ((jget (this).animation)))


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: LazyImageRotationAnimation)) a1

setSequence_impl :: LazyImageRotationAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        Control.Monad.void (IndexedAnimation.setSequence ((jget (this).animation)) sequence)
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: LazyImageRotationAnimation))

getSequence_impl :: LazyImageRotationAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (IndexedAnimation.getSequence ((jget (this).animation)))


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: LazyImageRotationAnimation))

getWidth_impl :: LazyImageRotationAnimation -> IO (Int)
getWidth_impl this = do
        (IndexedAnimation.getWidth ((jget (this).animation)))


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: LazyImageRotationAnimation)) a1 a2 a3

paintXY_impl :: LazyImageRotationAnimation -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).pROCESS) e)
            ) $ do
            Control.Monad.void (IndexedAnimation.paintXY ((jget (this).animation)) graphics x y)
        pure ()


paintThreedXYZ :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ object_ a1 a2 a3 a4 = jmethod object_ "paintThreedXYZ" (\() -> (paintThreedXYZ_impl (javaCast object_ :: LazyImageRotationAnimation))) () a1 a2 a3 a4

paintThreedXYZ_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_super object_ a1 a2 a3 a4 = (paintThreedXYZ_impl (javaCast object_ :: LazyImageRotationAnimation)) a1 a2 a3 a4

paintThreedXYZ_impl :: LazyImageRotationAnimation -> Graphics.Graphics -> Int -> Int -> Int -> IO (())
paintThreedXYZ_impl this graphics x y z = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).pROCESS) e)
            ) $ do
            Control.Monad.void (IndexedAnimation.paintThreedXYZ ((jget (this).animation)) graphics x y z)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LazyImageRotationAnimation))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LazyImageRotationAnimation))

toString_impl :: LazyImageRotationAnimation -> IO (String)
toString_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        image <- (BaseImageAnimationFactory.getImage ((jget (this).animationInterfaceFactoryInterface)))
        (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (RotationAnimation.toString_super this.base))))) (jget (commonSeps).sPACE)))) (jio (Image.getName image))))) (jget (commonSeps).sPACE)))) (Prelude.fromInteger (jnumericInteger (jio (Image.getWidth image))))))) (jget (commonSeps).sPACE)))) (Prelude.fromInteger (jnumericInteger (jio (Image.getHeight image))))))))


