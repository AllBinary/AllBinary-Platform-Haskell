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
module GDResources where

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

data GDResources = GDResources
    { header_ :: JavaHeader
    , resourceStringArray :: IORef (JavaArray (String))
    , currentLayoutRequiredTotal :: IORef (Int)
    }

instance JavaNull GDResources where
    javaNull = javaNullRecord "GDResources"

instance JavaEquals GDResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GDResources where
    (==) = jrecordEquals

instance JavaObjectClass GDResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GDResources
newRecord_ = do
    header_ <- newJavaHeader
    resourceStringArray <- newIORef javaNull
    currentLayoutRequiredTotal <- newIORef 0
    let this = GDResources header_ resourceStringArray currentLayoutRequiredTotal
    jregisterLevel header_ this
    pure this

initFields_ :: GDResources -> IO ()
initFields_ this = do
    jset this.resourceStringArray ((jarrayFromList []))
    jset this.currentLayoutRequiredTotal (0)
    pure ()

new_ :: IO GDResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GDResources -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GDResources)
getInstance = do
        pure (GDResources.instance_)


