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
-- package org.allbinary.view
module CenterStaticViewPositionFactory where

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
import qualified StaticViewPosition -- same package or java.lang
import qualified ViewPositionBase -- same package or java.lang
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton

data CenterStaticViewPositionFactory = CenterStaticViewPositionFactory
    { header_ :: JavaHeader
    }

instance JavaNull CenterStaticViewPositionFactory where
    javaNull = javaNullRecord "CenterStaticViewPositionFactory"

instance JavaEquals CenterStaticViewPositionFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CenterStaticViewPositionFactory where
    (==) = jrecordEquals

instance JavaObjectClass CenterStaticViewPositionFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CenterStaticViewPositionFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CenterStaticViewPositionFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: CenterStaticViewPositionFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CenterStaticViewPositionFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CenterStaticViewPositionFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> Int -> IO (ViewPositionBase.ViewPositionBase)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CenterStaticViewPositionFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> Int -> IO (ViewPositionBase.ViewPositionBase)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: CenterStaticViewPositionFactory)) a1

getInstance_impl :: CenterStaticViewPositionFactory -> Int -> IO (ViewPositionBase.ViewPositionBase)
getInstance_impl this z = do
        displayInfoSingleton <- (DisplayInfoSingleton.getInstance)
        (fmap (\value_ -> javaCast value_ :: ViewPositionBase.ViewPositionBase) (StaticViewPosition.new_3 (((jio (DisplayInfoSingleton.getLastWidth displayInfoSingleton)) `Data.Bits.shiftR` 1)) (((jio (DisplayInfoSingleton.getLastHeight displayInfoSingleton)) `Data.Bits.shiftR` 1)) z))


