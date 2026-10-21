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
module GameFeatureControlledInterface where

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

-- Java interface: the classes that implement it have these functions
data GameFeatureControlledInterface = GameFeatureControlledInterface
    { header_ :: JavaHeader
    }

instance JavaNull GameFeatureControlledInterface where
    javaNull = javaNullRecord "GameFeatureControlledInterface"

instance JavaEquals GameFeatureControlledInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureControlledInterface where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureControlledInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GameFeatureControlledInterface
fromHeader_ header = GameFeatureControlledInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GameFeatureControlledInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameFeatureControlledInterface))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: GameFeatureControlledInterface)) a1

init_impl :: GameFeatureControlledInterface -> Int -> IO (())
init_impl this level = javaAbstractMethod "init"


isFeature :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature object_ = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: GameFeatureControlledInterface))) ()

isFeature_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFeature_super object_ = (isFeature_impl (javaCast object_ :: GameFeatureControlledInterface))

isFeature_impl :: GameFeatureControlledInterface -> IO (Bool)
isFeature_impl this = javaAbstractMethod "isFeature"


isLoadingLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel object_ a1 = jmethod object_ "isLoadingLevel" (\() -> (isLoadingLevel_impl (javaCast object_ :: GameFeatureControlledInterface))) () a1

isLoadingLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isLoadingLevel_super object_ a1 = (isLoadingLevel_impl (javaCast object_ :: GameFeatureControlledInterface)) a1

isLoadingLevel_impl :: GameFeatureControlledInterface -> Int -> IO (Bool)
isLoadingLevel_impl this level = javaAbstractMethod "isLoadingLevel"


