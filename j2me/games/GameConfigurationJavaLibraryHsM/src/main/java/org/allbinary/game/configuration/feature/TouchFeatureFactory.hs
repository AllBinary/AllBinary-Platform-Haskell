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
-- package org.allbinary.game.configuration.feature
module TouchFeatureFactory where

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
import qualified TouchFeature -- same package or java.lang

data TouchFeatureFactory = TouchFeatureFactory
    { header_ :: JavaHeader
    , tOUCH_ENABLED :: IORef (TouchFeature.TouchFeature)
    , sHOW_SCREEN_BUTTONS :: IORef (TouchFeature.TouchFeature)
    , aUTO_HIDE_SHOW_SCREEN_BUTTONS :: IORef (TouchFeature.TouchFeature)
    , hIDE_SCREEN_BUTTONS :: IORef (TouchFeature.TouchFeature)
    }

instance JavaNull TouchFeatureFactory where
    javaNull = javaNullRecord "TouchFeatureFactory"

instance JavaEquals TouchFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    tOUCH_ENABLED <- newIORef javaNull
    sHOW_SCREEN_BUTTONS <- newIORef javaNull
    aUTO_HIDE_SHOW_SCREEN_BUTTONS <- newIORef javaNull
    hIDE_SCREEN_BUTTONS <- newIORef javaNull
    let this = TouchFeatureFactory header_ tOUCH_ENABLED sHOW_SCREEN_BUTTONS aUTO_HIDE_SHOW_SCREEN_BUTTONS hIDE_SCREEN_BUTTONS
    jregisterLevel header_ this
    pure this

initFields_ :: TouchFeatureFactory -> IO ()
initFields_ this = do
    jset this.tOUCH_ENABLED =<< (TouchFeature.new_1 "Touch Enabled")
    jset this.sHOW_SCREEN_BUTTONS =<< (TouchFeature.new_1 "Show")
    jset this.aUTO_HIDE_SHOW_SCREEN_BUTTONS =<< (TouchFeature.new_1 "Auto Hide (One Level)")
    jset this.hIDE_SCREEN_BUTTONS =<< (TouchFeature.new_1 "Hide")
    pure ()


getInstance :: IO (TouchFeatureFactory)
getInstance = do
        pure (TouchFeatureFactory.instance_)

new_ :: IO TouchFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchFeatureFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


