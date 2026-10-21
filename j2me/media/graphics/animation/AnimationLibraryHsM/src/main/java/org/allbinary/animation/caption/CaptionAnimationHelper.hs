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
-- package org.allbinary.animation.caption
module CaptionAnimationHelper (module CaptionAnimationHelper, module CaptionAnimationHelperBase) where

import CaptionAnimationHelperBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isShowing, isShowing_super, isShowing_impl, tick, tick_super, tick_impl, update, update_super, update_impl, paintXY, paintXY_super, paintXY_impl, timeHelper, textAnimation, captionAnimation, animation)
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
import qualified CaptionAnimation -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified TextAnimation -- org.allbinary.animation.text.TextAnimation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified CaptionAnimationHelperBase

data CaptionAnimationHelper = CaptionAnimationHelper
    { header_ :: JavaHeader
    , base :: CaptionAnimationHelperBase.CaptionAnimationHelperBase
    , timeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , textAnimation :: IORef (TextAnimation.TextAnimation)
    , captionAnimation :: IORef (Animation.Animation)
    , animation :: IORef (Animation.Animation)
    }

instance JavaNull CaptionAnimationHelper where
    javaNull = javaNullRecord "CaptionAnimationHelper"

instance JavaEquals CaptionAnimationHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CaptionAnimationHelper where
    (==) = jrecordEquals

instance JavaObjectClass CaptionAnimationHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CaptionAnimationHelper
newRecord_ = do
    base <- CaptionAnimationHelperBase.newRecord_
    let header_ = base.header_
    timeHelper <- newIORef javaNull
    textAnimation <- newIORef javaNull
    captionAnimation <- newIORef javaNull
    animation <- newIORef javaNull
    let this = CaptionAnimationHelper header_ base timeHelper textAnimation captionAnimation animation
    jregisterLevel header_ this
    jregisterMethod header_ "isShowing" (\() -> isShowing_impl this)
    jregisterMethod header_ "tick" (\() -> tick_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    pure this

initFields_ :: CaptionAnimationHelper -> IO ()
initFields_ this = do
    jset this.timeHelper =<< (TimeDelayHelper.new_1 620)
    jset this.textAnimation =<< (TextAnimation.new_2 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jio (AnimationBehavior.getInstance)))
    jset this.captionAnimation (javaNull)
    jset this.animation =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    pure ()

new_5 :: Animation.Animation -> Int -> Int -> Int -> Int -> IO CaptionAnimationHelper
new_5 captionAnimation captionDx captionDy dx dy = do
    this <- newRecord_
    init_5 this captionAnimation captionDx captionDy dx dy
    pure this

init_5 :: CaptionAnimationHelper -> Animation.Animation -> Int -> Int -> Int -> Int -> IO ()
init_5 this captionAnimation captionDx captionDy dx dy = do
        CaptionAnimationHelperBase.init_ this.base
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (CaptionAnimation.new_6 captionAnimation (jget (this).textAnimation) captionDx captionDy dx dy))
        jset (this).captionAnimation (assignedValue)
        pure ()


isShowing :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowing object_ = jmethod object_ "isShowing" (\() -> (isShowing_impl (javaCast object_ :: CaptionAnimationHelper))) ()

isShowing_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowing_super object_ = (isShowing_impl (javaCast object_ :: CaptionAnimationHelper))

isShowing_impl :: CaptionAnimationHelper -> IO (Bool)
isShowing_impl this = do
    javaCatchReturn $ do
        if ((jget (this).animation) == (jget (this).captionAnimation)) then do
            javaReturn (True)
        else do
            javaReturn (False)


tick :: (JavaObjectClass this_) => this_ -> IO (())
tick object_ = jmethod object_ "tick" (\() -> (tick_impl (javaCast object_ :: CaptionAnimationHelper))) ()

tick_super :: (JavaObjectClass this_) => this_ -> IO (())
tick_super object_ = (tick_impl (javaCast object_ :: CaptionAnimationHelper))

tick_impl :: CaptionAnimationHelper -> IO (())
tick_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            assignedValue <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
            jset (this).animation (assignedValue)
        pure ()


update :: (JavaObjectClass this_) => this_ -> String -> BasicColor.BasicColor -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CaptionAnimationHelper))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> BasicColor.BasicColor -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: CaptionAnimationHelper)) a1 a2

update_impl :: CaptionAnimationHelper -> String -> BasicColor.BasicColor -> IO (())
update_impl this message basicColor = do
        Control.Monad.void (TextAnimation.setBasicColorP ((jget (this).textAnimation)) basicColor)
        Control.Monad.void (TextAnimation.setText ((jget (this).textAnimation)) message)
        jset (this).animation ((jget (this).captionAnimation))
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).timeHelper)))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: CaptionAnimationHelper))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: CaptionAnimationHelper)) a1 a2 a3

paintXY_impl :: CaptionAnimationHelper -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (Animation.paintXY ((jget (this).animation)) graphics x y)
        pure ()


