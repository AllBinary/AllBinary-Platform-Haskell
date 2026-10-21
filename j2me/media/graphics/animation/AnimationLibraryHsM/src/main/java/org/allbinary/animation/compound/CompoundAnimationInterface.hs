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
-- package org.allbinary.animation.compound
module CompoundAnimationInterface (module CompoundAnimationInterface, module AnimationInterface) where

import AnimationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, nextAnimation, nextAnimation_super, nextAnimation_impl, previousAnimation, previousAnimation_super, previousAnimation_impl, setAnimation, setAnimation_super, setAnimation_impl, getCurrentAnimation, getCurrentAnimation_super, getCurrentAnimation_impl, toString)
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
import qualified AnimationInterface -- org.allbinary.animation.AnimationInterface
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation

-- Java interface: the classes that implement it have these functions
data CompoundAnimationInterface = CompoundAnimationInterface
    { header_ :: JavaHeader
    }

instance JavaNull CompoundAnimationInterface where
    javaNull = javaNullRecord "CompoundAnimationInterface"

instance JavaEquals CompoundAnimationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundAnimationInterface where
    (==) = jrecordEquals

instance JavaObjectClass CompoundAnimationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CompoundAnimationInterface
fromHeader_ header = CompoundAnimationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CompoundAnimationInterface header)
    AnimationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


nextAnimation :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation object_ = jmethod object_ "nextAnimation" (\() -> (nextAnimation_impl (javaCast object_ :: CompoundAnimationInterface))) ()

nextAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
nextAnimation_super object_ = (nextAnimation_impl (javaCast object_ :: CompoundAnimationInterface))

nextAnimation_impl :: CompoundAnimationInterface -> IO (())
nextAnimation_impl this = javaAbstractMethod "nextAnimation"


previousAnimation :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation object_ = jmethod object_ "previousAnimation" (\() -> (previousAnimation_impl (javaCast object_ :: CompoundAnimationInterface))) ()

previousAnimation_super :: (JavaObjectClass this_) => this_ -> IO (())
previousAnimation_super object_ = (previousAnimation_impl (javaCast object_ :: CompoundAnimationInterface))

previousAnimation_impl :: CompoundAnimationInterface -> IO (())
previousAnimation_impl this = javaAbstractMethod "previousAnimation"


setAnimation :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation object_ a1 = jmethod object_ "setAnimation" (\() -> (setAnimation_impl (javaCast object_ :: CompoundAnimationInterface))) () a1

setAnimation_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setAnimation_super object_ a1 = (setAnimation_impl (javaCast object_ :: CompoundAnimationInterface)) a1

setAnimation_impl :: CompoundAnimationInterface -> Int -> IO (())
setAnimation_impl this index = javaAbstractMethod "setAnimation"


getCurrentAnimation :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation object_ = jmethod object_ "getCurrentAnimation" (\() -> (getCurrentAnimation_impl (javaCast object_ :: CompoundAnimationInterface))) ()

getCurrentAnimation_super :: (JavaObjectClass this_) => this_ -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_super object_ = (getCurrentAnimation_impl (javaCast object_ :: CompoundAnimationInterface))

getCurrentAnimation_impl :: CompoundAnimationInterface -> IO (IndexedAnimation.IndexedAnimation)
getCurrentAnimation_impl this = javaAbstractMethod "getCurrentAnimation"


