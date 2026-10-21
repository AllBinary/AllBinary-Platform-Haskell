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
-- package org.allbinary.animation
module AnimationBehaviorFactory where

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

data AnimationBehaviorFactory = AnimationBehaviorFactory
    { header_ :: JavaHeader
    }

instance JavaNull AnimationBehaviorFactory where
    javaNull = javaNullRecord "AnimationBehaviorFactory"

instance JavaEquals AnimationBehaviorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AnimationBehaviorFactory where
    (==) = jrecordEquals

instance JavaObjectClass AnimationBehaviorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AnimationBehaviorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AnimationBehaviorFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getOrCreateInstance" (\() -> getOrCreateInstance_impl this)
    pure this

initFields_ :: AnimationBehaviorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AnimationBehaviorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AnimationBehaviorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AnimationBehaviorFactory)
getInstance = do
        pure (AnimationBehaviorFactory.instance_)


getOrCreateInstance :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance object_ = jmethod object_ "getOrCreateInstance" (\() -> (getOrCreateInstance_impl (javaCast object_ :: AnimationBehaviorFactory))) ()

getOrCreateInstance_super :: (JavaObjectClass this_) => this_ -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance_super object_ = (getOrCreateInstance_impl (javaCast object_ :: AnimationBehaviorFactory))

getOrCreateInstance_impl :: AnimationBehaviorFactory -> IO (AnimationBehavior.AnimationBehavior)
getOrCreateInstance_impl this = do
        (AnimationBehavior.getInstance)


