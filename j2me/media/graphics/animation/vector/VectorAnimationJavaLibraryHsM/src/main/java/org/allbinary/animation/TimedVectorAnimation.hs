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
module TimedVectorAnimation (module TimedVectorAnimation, module VectorAnimation) where

import VectorAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextFrame, nextFrame_super, nextFrame_impl, timeElapsedHelper)
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
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified VectorAnimation

data TimedVectorAnimation = TimedVectorAnimation
    { header_ :: JavaHeader
    , base :: VectorAnimation.VectorAnimation
    , timeElapsedHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    }

instance JavaNull TimedVectorAnimation where
    javaNull = javaNullRecord "TimedVectorAnimation"

instance JavaEquals TimedVectorAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TimedVectorAnimation where
    (==) = jrecordEquals

instance JavaObjectClass TimedVectorAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TimedVectorAnimation
newRecord_ = do
    base <- VectorAnimation.newRecord_
    let header_ = base.header_
    timeElapsedHelper <- newIORef javaNull
    let this = TimedVectorAnimation header_ base timeElapsedHelper
    jregisterLevel header_ this
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    pure this

initFields_ :: TimedVectorAnimation -> IO ()
initFields_ this = do
    jset this.timeElapsedHelper =<< (TimeDelayHelper.new_1 200)
    pure ()

new_3 :: JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO TimedVectorAnimation
new_3 currentPoints basicColor animationBehavior = do
    this <- newRecord_
    init_3 this currentPoints basicColor animationBehavior
    pure this

init_3 :: TimedVectorAnimation -> JavaArray (JavaArray (JavaArray (Int))) -> BasicColor.BasicColor -> AnimationBehavior.AnimationBehavior -> IO ()
init_3 this currentPoints basicColor animationBehavior = do
        VectorAnimation.init_3 this.base (currentPoints) (basicColor) (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: TimedVectorAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: TimedVectorAnimation))

nextFrame_impl :: TimedVectorAnimation -> IO (())
nextFrame_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeElapsedHelper)) (jget ((jio (GameTickTimeDelayHelperFactory.getInstance))).startTime))) $ do
            Control.Monad.void (VectorAnimation.nextFrame_super this.base)
        pure ()


