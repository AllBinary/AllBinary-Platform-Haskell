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
-- package org.allbinary.game.configuration.event
module ChangedGameFeatureListener (module ChangedGameFeatureListener, module BaseChangedGameFeatureListener) where

import BaseChangedGameFeatureListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, isChangedGameConfiguration, isChangedGameConfiguration_super, isChangedGameConfiguration_impl, gameFeatureListener)
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
import qualified BasicArrayList -- same package or java.lang
import qualified GameConfiguration -- org.allbinary.game.configuration.GameConfiguration
import qualified BaseChangedGameFeatureListener

data ChangedGameFeatureListener = ChangedGameFeatureListener
    { header_ :: JavaHeader
    , base :: BaseChangedGameFeatureListener.BaseChangedGameFeatureListener
    }

instance JavaNull ChangedGameFeatureListener where
    javaNull = javaNullRecord "ChangedGameFeatureListener"

instance JavaEquals ChangedGameFeatureListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ChangedGameFeatureListener where
    (==) = jrecordEquals

instance JavaObjectClass ChangedGameFeatureListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE gameFeatureListener #-}
gameFeatureListener = unsafePerformIO ((new_))

newRecord_ :: IO ChangedGameFeatureListener
newRecord_ = do
    base <- BaseChangedGameFeatureListener.newRecord_
    let header_ = base.header_
    let this = ChangedGameFeatureListener header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "isChangedGameConfiguration" (\() -> isChangedGameConfiguration_impl this)
    pure this

initFields_ :: ChangedGameFeatureListener -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ChangedGameFeatureListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ChangedGameFeatureListener -> IO ()
init_ this = do
    BaseChangedGameFeatureListener.init_ this.base
    initFields_ this


getInstance :: IO (ChangedGameFeatureListener)
getInstance = do
        pure (ChangedGameFeatureListener.gameFeatureListener)


isChangedGameConfiguration :: (JavaObjectClass this_) => this_ -> GameConfiguration.GameConfiguration -> IO (Bool)
isChangedGameConfiguration object_ a1 = jmethod object_ "isChangedGameConfiguration" (\() -> (isChangedGameConfiguration_impl (javaCast object_ :: ChangedGameFeatureListener))) () a1

isChangedGameConfiguration_super :: (JavaObjectClass this_) => this_ -> GameConfiguration.GameConfiguration -> IO (Bool)
isChangedGameConfiguration_super object_ a1 = (isChangedGameConfiguration_impl (javaCast object_ :: ChangedGameFeatureListener)) a1

isChangedGameConfiguration_impl :: ChangedGameFeatureListener -> GameConfiguration.GameConfiguration -> IO (Bool)
isChangedGameConfiguration_impl this gameConfiguration = do
        (BasicArrayList.contains ((jget (this).base.list)) gameConfiguration)


