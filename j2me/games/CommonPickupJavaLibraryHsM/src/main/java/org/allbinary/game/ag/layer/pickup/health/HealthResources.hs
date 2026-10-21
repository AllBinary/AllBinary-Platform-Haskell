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
-- package org.allbinary.game.ag.layer.pickup.health
module HealthResources where

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

data HealthResources = HealthResources
    { header_ :: JavaHeader
    , rESOURCE :: IORef (String)
    }

instance JavaNull HealthResources where
    javaNull = javaNullRecord "HealthResources"

instance JavaEquals HealthResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HealthResources where
    (==) = jrecordEquals

instance JavaObjectClass HealthResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HealthResources
newRecord_ = do
    header_ <- newJavaHeader
    rESOURCE <- newIORef ""
    let this = HealthResources header_ rESOURCE
    jregisterLevel header_ this
    pure this

initFields_ :: HealthResources -> IO ()
initFields_ this = do
    jset this.rESOURCE ("health_drop_20_by_20.png")
    pure ()

new_ :: IO HealthResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HealthResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (HealthResources)
getInstance = do
        pure (HealthResources.sINGLETON)


