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
-- package org.allbinary
module ThreedResources where

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

data ThreedResources = ThreedResources
    { header_ :: JavaHeader
    }

instance JavaNull ThreedResources where
    javaNull = javaNullRecord "ThreedResources"

instance JavaEquals ThreedResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThreedResources where
    (==) = jrecordEquals

instance JavaObjectClass ThreedResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE threedResources #-}
threedResources = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThreedResources
newRecord_ = do
    header_ <- newJavaHeader
    let this = ThreedResources header_
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: ThreedResources -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ThreedResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThreedResources -> IO ()
init_ this = do
    initFields_ this


getThreedResources :: IO (ThreedResources)
getThreedResources = do
        pure (ThreedResources.threedResources)


add :: (JavaObjectClass this_) => this_ -> IO (())
add object_ = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: ThreedResources))) ()

add_super :: (JavaObjectClass this_) => this_ -> IO (())
add_super object_ = (add_impl (javaCast object_ :: ThreedResources))

add_impl :: ThreedResources -> IO (())
add_impl this = do
        pure ()


