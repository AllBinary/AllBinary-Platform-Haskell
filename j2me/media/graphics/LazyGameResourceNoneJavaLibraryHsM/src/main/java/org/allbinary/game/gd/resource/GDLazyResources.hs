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
-- package org.allbinary.game.gd.resource
module GDLazyResources where

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

data GDLazyResources = GDLazyResources
    { header_ :: JavaHeader
    , imageResourceWidthArray :: IORef (JavaArray (Int))
    , imageResourceHeightArray :: IORef (JavaArray (Int))
    , requiredResourcesBeforeLoadingArray :: IORef (JavaArray (String))
    }

instance JavaNull GDLazyResources where
    javaNull = javaNullRecord "GDLazyResources"

instance JavaEquals GDLazyResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GDLazyResources where
    (==) = jrecordEquals

instance JavaObjectClass GDLazyResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GDLazyResources
newRecord_ = do
    header_ <- newJavaHeader
    imageResourceWidthArray <- newIORef javaNull
    imageResourceHeightArray <- newIORef javaNull
    requiredResourcesBeforeLoadingArray <- newIORef javaNull
    let this = GDLazyResources header_ imageResourceWidthArray imageResourceHeightArray requiredResourcesBeforeLoadingArray
    jregisterLevel header_ this
    pure this

initFields_ :: GDLazyResources -> IO ()
initFields_ this = do
    jset this.imageResourceWidthArray ((jarrayFromList []))
    jset this.imageResourceHeightArray ((jarrayFromList []))
    jset this.requiredResourcesBeforeLoadingArray ((jarrayFromList []))
    pure ()

new_ :: IO GDLazyResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GDLazyResources -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GDLazyResources)
getInstance = do
        pure (GDLazyResources.instance_)


