{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game
module BasicGameInfoFactory where

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

data BasicGameInfoFactory = BasicGameInfoFactory
    { header_ :: JavaHeader
    , currentReleaseIndex :: IORef (Int)
    , currentDestroyIndex :: IORef (Int)
    , total :: IORef (Int)
    }

instance JavaNull BasicGameInfoFactory where
    javaNull = javaNullRecord "BasicGameInfoFactory"

instance JavaEquals BasicGameInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGameInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGameInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicGameInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    currentReleaseIndex <- newIORef 0
    currentDestroyIndex <- newIORef 0
    total <- newIORef 0
    let this = BasicGameInfoFactory header_ currentReleaseIndex currentDestroyIndex total
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isPeaked" (\() -> isPeaked_impl this)
    jregisterMethod header_ "howManyLeft" (\() -> howManyLeft_impl this)
    pure this

initFields_ :: BasicGameInfoFactory -> IO ()
initFields_ this = do
    jset this.currentReleaseIndex (0)
    jset this.currentDestroyIndex (0)
    jset this.total (0)
    pure ()


getInstance :: IO (BasicGameInfoFactory)
getInstance = do
        pure (BasicGameInfoFactory.sINGLETON)

new_ :: IO BasicGameInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGameInfoFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicGameInfoFactory))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: BasicGameInfoFactory)) a1

init_impl :: BasicGameInfoFactory -> Int -> IO (())
init_impl this total = do
        jset (this).currentReleaseIndex (0)
        jset (this).currentDestroyIndex (0)
        jset (this).total (total)
        pure ()


isPeaked :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPeaked object_ = jmethod object_ "isPeaked" (\() -> (isPeaked_impl (javaCast object_ :: BasicGameInfoFactory))) ()

isPeaked_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPeaked_super object_ = (isPeaked_impl (javaCast object_ :: BasicGameInfoFactory))

isPeaked_impl :: BasicGameInfoFactory -> IO (Bool)
isPeaked_impl this = do
    javaCatchReturn $ do
        if ((jget (this).currentDestroyIndex) >= (jget (this).total)) then do
            javaReturn (True)
        else do
            javaReturn (False)


howManyLeft :: (JavaObjectClass this_) => this_ -> IO (Int)
howManyLeft object_ = jmethod object_ "howManyLeft" (\() -> (howManyLeft_impl (javaCast object_ :: BasicGameInfoFactory))) ()

howManyLeft_super :: (JavaObjectClass this_) => this_ -> IO (Int)
howManyLeft_super object_ = (howManyLeft_impl (javaCast object_ :: BasicGameInfoFactory))

howManyLeft_impl :: BasicGameInfoFactory -> IO (Int)
howManyLeft_impl this = do
        pure (((jget (this).total) - (jget (this).currentDestroyIndex)))


