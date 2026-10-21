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
module IndexedAnimationInterface (module IndexedAnimationInterface, module SequentialAnimationInterface) where

import SequentialAnimationInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, reset, reset_super, reset_impl, setFrame, setFrame_super, setFrame_impl, getFrame, getFrame_super, getFrame_impl, toString)
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
import qualified SequentialAnimationInterface

-- Java interface: the classes that implement it have these functions
data IndexedAnimationInterface = IndexedAnimationInterface
    { header_ :: JavaHeader
    }

instance JavaNull IndexedAnimationInterface where
    javaNull = javaNullRecord "IndexedAnimationInterface"

instance JavaEquals IndexedAnimationInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq IndexedAnimationInterface where
    (==) = jrecordEquals

instance JavaObjectClass IndexedAnimationInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> IndexedAnimationInterface
fromHeader_ header = IndexedAnimationInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (IndexedAnimationInterface header)
    SequentialAnimationInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: IndexedAnimationInterface))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: IndexedAnimationInterface))

reset_impl :: IndexedAnimationInterface -> IO (())
reset_impl this = javaAbstractMethod "reset"


setFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: IndexedAnimationInterface))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: IndexedAnimationInterface)) a1

setFrame_impl :: IndexedAnimationInterface -> Int -> IO (())
setFrame_impl this index = javaAbstractMethod "setFrame"


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: IndexedAnimationInterface))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: IndexedAnimationInterface))

getFrame_impl :: IndexedAnimationInterface -> IO (Int)
getFrame_impl this = javaAbstractMethod "getFrame"


