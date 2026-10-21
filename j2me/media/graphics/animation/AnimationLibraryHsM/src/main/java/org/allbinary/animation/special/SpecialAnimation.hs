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
-- package org.allbinary.animation.special
module SpecialAnimation (module SpecialAnimation, module IndexedAnimation) where

import IndexedAnimation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, nextFrame, nextFrame_super, nextFrame_impl, setLastFrame, setLastFrame_super, setLastFrame_impl, isComplete, isComplete_super, isComplete_impl, open, open_super, open_impl, close, close_super, close_impl, process, process_super, process_impl, nULL_SPECIAL_ANIMATION)
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
import qualified AnimationBehavior -- org.allbinary.animation.AnimationBehavior
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified IndexedAnimationBehavior -- org.allbinary.animation.IndexedAnimationBehavior
import qualified SpecialAnimationInterface

-- implements SpecialAnimationInterface
data SpecialAnimation = SpecialAnimation
    { header_ :: JavaHeader
    , base :: IndexedAnimation.IndexedAnimation
    }

instance JavaNull SpecialAnimation where
    javaNull = javaNullRecord "SpecialAnimation"

instance JavaEquals SpecialAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SpecialAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SpecialAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_SPECIAL_ANIMATION #-}
nULL_SPECIAL_ANIMATION = unsafePerformIO ((new_1 (jio (IndexedAnimationBehavior.new_2 1 250))))

newRecord_ :: IO SpecialAnimation
newRecord_ = do
    base <- IndexedAnimation.newRecord_
    let header_ = base.header_
    let this = SpecialAnimation header_ base
    jregisterLevel header_ this
    SpecialAnimationInterface.registerInterface_ header_
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "setLastFrame" (\() -> setLastFrame_impl this)
    jregisterMethod header_ "isComplete" (\() -> isComplete_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: SpecialAnimation -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (SpecialAnimation)
getInstance = do
        pure (SpecialAnimation.nULL_SPECIAL_ANIMATION)

new_1 :: AnimationBehavior.AnimationBehavior -> IO SpecialAnimation
new_1 animationBehavior = do
    this <- newRecord_
    init_1 this animationBehavior
    pure this

init_1 :: SpecialAnimation -> AnimationBehavior.AnimationBehavior -> IO ()
init_1 this animationBehavior = do
        IndexedAnimation.init_1 this.base (animationBehavior)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: SpecialAnimation))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: SpecialAnimation))

nextFrame_impl :: SpecialAnimation -> IO (())
nextFrame_impl this = do
        let indexedAnimationBehavior = ((javaCast (jget (this).base.animationBehaviorP) :: IndexedAnimationBehavior.IndexedAnimationBehavior))
        jset (indexedAnimationBehavior).loopIndex ((jget (indexedAnimationBehavior).loopIndex) + 1)
        pure ()


setLastFrame :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame object_ = jmethod object_ "setLastFrame" (\() -> (setLastFrame_impl (javaCast object_ :: SpecialAnimation))) ()

setLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
setLastFrame_super object_ = (setLastFrame_impl (javaCast object_ :: SpecialAnimation))

setLastFrame_impl :: SpecialAnimation -> IO (())
setLastFrame_impl this = do
        pure ()


isComplete :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete object_ = jmethod object_ "isComplete" (\() -> (isComplete_impl (javaCast object_ :: SpecialAnimation))) ()

isComplete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete_super object_ = (isComplete_impl (javaCast object_ :: SpecialAnimation))

isComplete_impl :: SpecialAnimation -> IO (Bool)
isComplete_impl this = do
        pure (False)


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: SpecialAnimation))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: SpecialAnimation))

open_impl :: SpecialAnimation -> IO (())
open_impl this = do
        pure ()


close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: SpecialAnimation))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: SpecialAnimation))

close_impl :: SpecialAnimation -> IO (())
close_impl this = do
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: SpecialAnimation))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: SpecialAnimation))

process_impl :: SpecialAnimation -> IO (())
process_impl this = do
        pure ()


