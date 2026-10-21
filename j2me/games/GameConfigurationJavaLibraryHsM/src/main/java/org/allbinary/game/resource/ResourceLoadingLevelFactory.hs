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
-- package org.allbinary.game.resource
module ResourceLoadingLevelFactory where

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
import qualified ResourceLoadingLevel -- same package or java.lang

data ResourceLoadingLevelFactory = ResourceLoadingLevelFactory
    { header_ :: JavaHeader
    , lOAD_EARLY :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , lOAD_TOUCH :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , lOAD_GAME :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , lEVEL :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , mAX_LEVEL :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , lOAD_ALL :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , rESOURCE_LOADING_LEVEL_ARRAY :: IORef (JavaArray (ResourceLoadingLevel.ResourceLoadingLevel))
    }

instance JavaNull ResourceLoadingLevelFactory where
    javaNull = javaNullRecord "ResourceLoadingLevelFactory"

instance JavaEquals ResourceLoadingLevelFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ResourceLoadingLevelFactory where
    (==) = jrecordEquals

instance JavaObjectClass ResourceLoadingLevelFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ResourceLoadingLevelFactory
newRecord_ = do
    header_ <- newJavaHeader
    lOAD_EARLY <- newIORef javaNull
    lOAD_TOUCH <- newIORef javaNull
    lOAD_GAME <- newIORef javaNull
    lEVEL <- newIORef javaNull
    mAX_LEVEL <- newIORef javaNull
    lOAD_ALL <- newIORef javaNull
    rESOURCE_LOADING_LEVEL_ARRAY <- newIORef javaNull
    let this = ResourceLoadingLevelFactory header_ lOAD_EARLY lOAD_TOUCH lOAD_GAME lEVEL mAX_LEVEL lOAD_ALL rESOURCE_LOADING_LEVEL_ARRAY
    jregisterLevel header_ this
    jregisterMethod header_ "getLevelString" (\() -> getLevelString_impl this)
    pure this

initFields_ :: ResourceLoadingLevelFactory -> IO ()
initFields_ this = do
    jset this.lOAD_EARLY =<< (ResourceLoadingLevel.new_2 "Load Early" (2147483647 :: Int))
    jset this.lOAD_TOUCH =<< (ResourceLoadingLevel.new_2 "Load Touch" ((2147483647 :: Int) - 1))
    jset this.lOAD_GAME =<< (ResourceLoadingLevel.new_2 "Load Game" ((2147483647 :: Int) - 2))
    jset this.lEVEL =<< (ResourceLoadingLevel.new_2 "Level" ((2147483647 :: Int) - 99))
    jset this.mAX_LEVEL =<< (ResourceLoadingLevel.new_2 "Max Level" ((2147483647 :: Int) - 100))
    jset this.lOAD_ALL =<< (ResourceLoadingLevel.new_2 "Load All" (Prelude.negate 1))
    jset this.rESOURCE_LOADING_LEVEL_ARRAY ((jarrayFromList [(jget (this).lOAD_ALL), (jget (this).mAX_LEVEL), (jget (this).lEVEL), (jget (this).lOAD_GAME), (jget (this).lOAD_TOUCH), (jget (this).lOAD_EARLY)]))
    pure ()

new_ :: IO ResourceLoadingLevelFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ResourceLoadingLevelFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ResourceLoadingLevelFactory)
getInstance = do
        pure (ResourceLoadingLevelFactory.instance_)


getLevelString :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLevelString object_ a1 = jmethod object_ "getLevelString" (\() -> (getLevelString_impl (javaCast object_ :: ResourceLoadingLevelFactory))) () a1

getLevelString_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
getLevelString_super object_ a1 = (getLevelString_impl (javaCast object_ :: ResourceLoadingLevelFactory)) a1

getLevelString_impl :: ResourceLoadingLevelFactory -> Int -> IO (String)
getLevelString_impl this level = do
    javaCatchReturn $ do
        forM_ [0 .. (jlength (jget (this).rESOURCE_LOADING_LEVEL_ARRAY)) - 1] $ \index -> javaIteration (pure ()) $ do
            when (level == (jio (getLevel ((jindex ((jget (this).rESOURCE_LOADING_LEVEL_ARRAY)) (index)))))) $ do
                javaReturn =<< (getName ((jindex ((jget (this).rESOURCE_LOADING_LEVEL_ARRAY)) (index))))
        pure ((javaToString level))


