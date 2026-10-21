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
-- package org.allbinary.game.ag.layer.pickup.points
module PointsResources where

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

data PointsResources = PointsResources
    { header_ :: JavaHeader
    , rESOURCE :: IORef (String)
    , rESOURCE_2 :: IORef (String)
    , rESOURCE_3 :: IORef (String)
    , rESOURCE_4 :: IORef (String)
    }

instance JavaNull PointsResources where
    javaNull = javaNullRecord "PointsResources"

instance JavaEquals PointsResources where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PointsResources where
    (==) = jrecordEquals

instance JavaObjectClass PointsResources where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PointsResources
newRecord_ = do
    header_ <- newJavaHeader
    rESOURCE <- newIORef ""
    rESOURCE_2 <- newIORef ""
    rESOURCE_3 <- newIORef ""
    rESOURCE_4 <- newIORef ""
    let this = PointsResources header_ rESOURCE rESOURCE_2 rESOURCE_3 rESOURCE_4
    jregisterLevel header_ this
    pure this

initFields_ :: PointsResources -> IO ()
initFields_ this = do
    jset this.rESOURCE ("points_drop_20_by_20.png")
    jset this.rESOURCE_2 ("points_2_drop_20_by_20.png")
    jset this.rESOURCE_3 ("points_3_drop_20_by_20.png")
    jset this.rESOURCE_4 ("points_4_drop_20_by_20.png")
    pure ()

new_ :: IO PointsResources
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PointsResources -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (PointsResources)
getInstance = do
        pure (PointsResources.sINGLETON)


