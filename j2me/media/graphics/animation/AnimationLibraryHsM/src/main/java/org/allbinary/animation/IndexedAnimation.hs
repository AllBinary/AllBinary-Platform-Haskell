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
-- package org.allbinary.animation
module IndexedAnimation (module IndexedAnimation, module Animation) where

import Animation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAnimationBehavior, getAnimationBehavior_super, getAnimationBehavior_impl, reset, reset_super, reset_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, getAnimationSize, getAnimationSize_super, getAnimationSize_impl, getSize, getSize_super, getSize_impl, previousFrame, previousFrame_super, previousFrame_impl, isLastFrame, isLastFrame_super, isLastFrame_impl, setSequence, setSequence_super, setSequence_impl, getSequence, getSequence_super, getSequence_impl, setState, setState_super, setState_impl, getWidth, getWidth_super, getWidth_impl, getHeight, getHeight_super, getHeight_impl, logUtil, commonStrings, animationBehaviorP)
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
import qualified AnimationBehavior -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PrimitiveIntUtil -- org.allbinary.logic.math.PrimitiveIntUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Animation
import qualified IndexedAnimationInterface

-- implements IndexedAnimationInterface
data IndexedAnimation = IndexedAnimation
    { header_ :: JavaHeader
    , base :: Animation.Animation
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , animationBehaviorP :: IORef (AnimationBehavior.AnimationBehavior)
    }

instance JavaNull IndexedAnimation where
    javaNull = javaNullRecord "IndexedAnimation"

instance JavaEquals IndexedAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedAnimation where
    (==) = jrecordEquals

instance JavaObjectClass IndexedAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO IndexedAnimation
newRecord_ = do
    base <- Animation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    animationBehaviorP <- newIORef javaNull
    let this = IndexedAnimation header_ base logUtil commonStrings animationBehaviorP
    jregisterLevel header_ this
    IndexedAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "getAnimationBehavior" (\() -> getAnimationBehavior_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "getAnimationSize" (\() -> getAnimationSize_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "previousFrame" (\() -> previousFrame_impl this)
    jregisterMethod header_ "isLastFrame" (\() -> isLastFrame_impl this)
    jregisterMethod header_ "setSequence" (\() -> setSequence_impl this)
    jregisterMethod header_ "getSequence" (\() -> getSequence_impl this)
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    jregisterMethod header_ "getHeight" (\() -> getHeight_impl this)
    pure this

initFields_ :: IndexedAnimation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.animationBehaviorP (javaNull)
    pure ()

new_1 :: AnimationBehavior.AnimationBehavior -> IO IndexedAnimation
new_1 animationBehavior = do
    this <- newRecord_
    init_1 this animationBehavior
    pure this

init_1 :: IndexedAnimation -> AnimationBehavior.AnimationBehavior -> IO ()
init_1 this animationBehavior = do
        Animation.init_ this.base
        initFields_ this
        jset (this).animationBehaviorP (animationBehavior)
        pure ()


getAnimationBehavior :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior object_ = jmethod object_ "getAnimationBehavior" (\() -> (getAnimationBehavior_impl (javaCast object_ :: IndexedAnimation))) ()

getAnimationBehavior_super :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior_super object_ = (getAnimationBehavior_impl (javaCast object_ :: IndexedAnimation))

getAnimationBehavior_impl :: IndexedAnimation -> IO (AnimationBehavior.AnimationBehavior)
getAnimationBehavior_impl this = do
        pure ((jget (this).animationBehaviorP))


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: IndexedAnimation))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: IndexedAnimation))

reset_impl :: IndexedAnimation -> IO (())
reset_impl this = do
        Control.Monad.void (AnimationBehavior.reset ((jget (this).animationBehaviorP)))
        Control.Monad.void (IndexedAnimation.setFrame this 0)
        pure ()


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: IndexedAnimation))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: IndexedAnimation)) a1

setFrame_impl :: IndexedAnimation -> Int -> IO (())
setFrame_impl this index = do
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: IndexedAnimation))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: IndexedAnimation))

getFrame_impl :: IndexedAnimation -> IO (Int)
getFrame_impl this = do
        pure (0)


-- throws Exception
getAnimationSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize object_ = jmethod object_ "getAnimationSize" (\() -> (getAnimationSize_impl (javaCast object_ :: IndexedAnimation))) ()

getAnimationSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getAnimationSize_super object_ = (getAnimationSize_impl (javaCast object_ :: IndexedAnimation))

getAnimationSize_impl :: IndexedAnimation -> IO (Int)
getAnimationSize_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).commonStrings)).nOT_IMPLEMENTED)))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: IndexedAnimation))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: IndexedAnimation))

getSize_impl :: IndexedAnimation -> IO (Int)
getSize_impl this = do
        pure (0)


previousFrame :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame object_ = jmethod object_ "previousFrame" (\() -> (previousFrame_impl (javaCast object_ :: IndexedAnimation))) ()

previousFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
previousFrame_super object_ = (previousFrame_impl (javaCast object_ :: IndexedAnimation))

previousFrame_impl :: IndexedAnimation -> IO (())
previousFrame_impl this = do
        pure ()


isLastFrame :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame object_ = jmethod object_ "isLastFrame" (\() -> (isLastFrame_impl (javaCast object_ :: IndexedAnimation))) ()

isLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastFrame_super object_ = (isLastFrame_impl (javaCast object_ :: IndexedAnimation))

isLastFrame_impl :: IndexedAnimation -> IO (Bool)
isLastFrame_impl this = do
    javaCatchReturn $ do
        if ((jio (IndexedAnimation.getFrame this)) == ((jio (IndexedAnimation.getSize this)) - 1)) then do
            javaReturn (True)
        else do
            javaReturn (False)


setSequence :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence object_ a1 = jmethod object_ "setSequence" (\() -> (setSequence_impl (javaCast object_ :: IndexedAnimation))) () a1

setSequence_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int) -> IO (())
setSequence_super object_ a1 = (setSequence_impl (javaCast object_ :: IndexedAnimation)) a1

setSequence_impl :: IndexedAnimation -> JavaArray (Int) -> IO (())
setSequence_impl this sequence = do
        pure ()


getSequence :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence object_ = jmethod object_ "getSequence" (\() -> (getSequence_impl (javaCast object_ :: IndexedAnimation))) ()

getSequence_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getSequence_super object_ = (getSequence_impl (javaCast object_ :: IndexedAnimation))

getSequence_impl :: IndexedAnimation -> IO (JavaArray (Int))
getSequence_impl this = do
        (PrimitiveIntUtil.getArrayInstance)


setState :: (JavaObjectClass this_) => this_ -> IndexedAnimation -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: IndexedAnimation))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> IndexedAnimation -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: IndexedAnimation)) a1

setState_impl :: IndexedAnimation -> IndexedAnimation -> IO (())
setState_impl this indexedAnimation = do
        Control.Monad.void (IndexedAnimation.setFrame this (jio (IndexedAnimation.getFrame indexedAnimation)))
        Control.Monad.void (Animation.setDx this (jio (IndexedAnimation.getDx indexedAnimation)))
        Control.Monad.void (Animation.setDy this (jio (IndexedAnimation.getDy indexedAnimation)))
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: IndexedAnimation))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: IndexedAnimation))

getWidth_impl :: IndexedAnimation -> IO (Int)
getWidth_impl this = do
        pure (0)


getHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight object_ = jmethod object_ "getHeight" (\() -> (getHeight_impl (javaCast object_ :: IndexedAnimation))) ()

getHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHeight_super object_ = (getHeight_impl (javaCast object_ :: IndexedAnimation))

getHeight_impl :: IndexedAnimation -> IO (Int)
getHeight_impl this = do
        pure (0)


