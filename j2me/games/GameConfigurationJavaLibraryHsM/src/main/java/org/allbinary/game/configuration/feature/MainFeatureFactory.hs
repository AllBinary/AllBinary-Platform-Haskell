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
module MainFeatureFactory where

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
import qualified Feature -- same package or java.lang

data MainFeatureFactory = MainFeatureFactory
    { header_ :: JavaHeader
    , fULL_SCREEN :: IORef (Feature.Feature)
    , tITLE_BAR :: IORef (Feature.Feature)
    , sTATIC :: IORef (Feature.Feature)
    , lOAD_ONDEMAND :: IORef (Feature.Feature)
    , lOAD_ALL :: IORef (Feature.Feature)
    }

instance JavaNull MainFeatureFactory where
    javaNull = javaNullRecord "MainFeatureFactory"

instance JavaEquals MainFeatureFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MainFeatureFactory where
    (==) = jrecordEquals

instance JavaObjectClass MainFeatureFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MainFeatureFactory
newRecord_ = do
    header_ <- newJavaHeader
    fULL_SCREEN <- newIORef javaNull
    tITLE_BAR <- newIORef javaNull
    sTATIC <- newIORef javaNull
    lOAD_ONDEMAND <- newIORef javaNull
    lOAD_ALL <- newIORef javaNull
    let this = MainFeatureFactory header_ fULL_SCREEN tITLE_BAR sTATIC lOAD_ONDEMAND lOAD_ALL
    jregisterLevel header_ this
    pure this

initFields_ :: MainFeatureFactory -> IO ()
initFields_ this = do
    jset this.fULL_SCREEN =<< (Feature.new_1 "Full Screen")
    jset this.tITLE_BAR =<< (Feature.new_1 "Title Bar")
    jset this.sTATIC =<< (Feature.new_1 "Static Dependent Feature")
    jset this.lOAD_ONDEMAND =<< (Feature.new_1 "Load OnDemand")
    jset this.lOAD_ALL =<< (Feature.new_1 "Load All")
    pure ()

new_ :: IO MainFeatureFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MainFeatureFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MainFeatureFactory)
getInstance = do
        pure (MainFeatureFactory.instance_)


