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
module AnimationInterfaceFactoryInterface (module AnimationInterfaceFactoryInterface, module BasicAnimationInterfaceFactoryInterface) where

import BasicAnimationInterfaceFactoryInterface hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, setInitialScale, setInitialScale_super, setInitialScale_impl, toString)
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
import qualified Animation -- same package or java.lang
import qualified ScaleProperties -- org.allbinary.media.ScaleProperties
import qualified BasicAnimationInterfaceFactoryInterface

-- Java interface: the classes that implement it have these functions
data AnimationInterfaceFactoryInterface = AnimationInterfaceFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull AnimationInterfaceFactoryInterface where
    javaNull = javaNullRecord "AnimationInterfaceFactoryInterface"

instance JavaEquals AnimationInterfaceFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationInterfaceFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass AnimationInterfaceFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AnimationInterfaceFactoryInterface
fromHeader_ header = AnimationInterfaceFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AnimationInterfaceFactoryInterface header)
    BasicAnimationInterfaceFactoryInterface.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AnimationInterfaceFactoryInterface))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Animation.Animation)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AnimationInterfaceFactoryInterface)) a1

getInstance_impl :: AnimationInterfaceFactoryInterface -> Int -> IO (Animation.Animation)
getInstance_impl this instanceId = javaAbstractMethod "getInstance"


setInitialScale :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale object_ a1 = jmethod object_ "setInitialScale" (\() -> (setInitialScale_impl (javaCast object_ :: AnimationInterfaceFactoryInterface))) () a1

setInitialScale_super :: (JavaObjectClass this_) => this_ -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_super object_ a1 = (setInitialScale_impl (javaCast object_ :: AnimationInterfaceFactoryInterface)) a1

setInitialScale_impl :: AnimationInterfaceFactoryInterface -> ScaleProperties.ScaleProperties -> IO (())
setInitialScale_impl this scaleProperties = javaAbstractMethod "setInitialScale"


