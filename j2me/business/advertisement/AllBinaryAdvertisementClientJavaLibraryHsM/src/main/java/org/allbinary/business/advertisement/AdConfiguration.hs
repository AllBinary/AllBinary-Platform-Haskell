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
-- package org.allbinary.business.advertisement
module AdConfiguration where

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
import qualified Any -- same package or java.lang
import qualified Direction -- org.allbinary.direction.Direction
import qualified GameState -- org.allbinary.game.state.GameState

data AdConfiguration = AdConfiguration
    { header_ :: JavaHeader
    , iNNERACTIVE :: IORef (String)
    , lEADBOLT :: IORef (String)
    , aDMOB :: IORef (String)
    }

instance JavaNull AdConfiguration where
    javaNull = javaNullRecord "AdConfiguration"

instance JavaEquals AdConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass AdConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdConfiguration
newRecord_ = do
    header_ <- newJavaHeader
    iNNERACTIVE <- newIORef ""
    lEADBOLT <- newIORef ""
    aDMOB <- newIORef ""
    let this = AdConfiguration header_ iNNERACTIVE lEADBOLT aDMOB
    jregisterLevel header_ this
    jregisterMethod header_ "getValidAdSpots" (\() -> getValidAdSpots_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "processDemo" (\() -> processDemo_impl this)
    jregisterMethod header_ "setShowAds" (\() -> setShowAds_impl this)
    jregisterMethod header_ "setToggleAds" (\() -> setToggleAds_impl this)
    jregisterMethod header_ "isShowAds" (\() -> isShowAds_impl this)
    pure this

initFields_ :: AdConfiguration -> IO ()
initFields_ this = do
    jset this.iNNERACTIVE (javaNull)
    jset this.lEADBOLT (javaNull)
    jset this.aDMOB (javaNull)
    pure ()

new_1 :: JavaArray (Any.Any) -> IO AdConfiguration
new_1 advertIdArray = do
    this <- newRecord_
    init_1 this advertIdArray
    pure this

init_1 :: AdConfiguration -> JavaArray (Any.Any) -> IO ()
init_1 this advertIdArray = do
        initFields_ this
        jset (this).iNNERACTIVE ((javaCast (jindex advertIdArray (0)) :: String))
        jset (this).aDMOB ((javaCast (jindex advertIdArray (1)) :: String))
        jset (this).lEADBOLT ((javaCast (jindex advertIdArray (2)) :: String))
        pure ()


getValidAdSpots :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Direction.Direction))
getValidAdSpots object_ = jmethod object_ "getValidAdSpots" (\() -> (getValidAdSpots_impl (javaCast object_ :: AdConfiguration))) ()

getValidAdSpots_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Direction.Direction))
getValidAdSpots_super object_ = (getValidAdSpots_impl (javaCast object_ :: AdConfiguration))

getValidAdSpots_impl :: AdConfiguration -> IO (JavaArray (Direction.Direction))
getValidAdSpots_impl this = do
        pure ((jnewArray (0) javaNull))


process :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AdConfiguration))) () a1

process_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: AdConfiguration)) a1

process_impl :: AdConfiguration -> GameState.GameState -> IO (())
process_impl this gameState = do
        pure ()


processDemo :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processDemo object_ a1 = jmethod object_ "processDemo" (\() -> (processDemo_impl (javaCast object_ :: AdConfiguration))) () a1

processDemo_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processDemo_super object_ a1 = (processDemo_impl (javaCast object_ :: AdConfiguration)) a1

processDemo_impl :: AdConfiguration -> Int -> IO (())
processDemo_impl this state = do
        pure ()


setShowAds :: (JavaObjectClass this_) => this_ -> IO (())
setShowAds object_ = jmethod object_ "setShowAds" (\() -> (setShowAds_impl (javaCast object_ :: AdConfiguration))) ()

setShowAds_super :: (JavaObjectClass this_) => this_ -> IO (())
setShowAds_super object_ = (setShowAds_impl (javaCast object_ :: AdConfiguration))

setShowAds_impl :: AdConfiguration -> IO (())
setShowAds_impl this = do
        pure ()


setToggleAds :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setToggleAds object_ a1 = jmethod object_ "setToggleAds" (\() -> (setToggleAds_impl (javaCast object_ :: AdConfiguration))) () a1

setToggleAds_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setToggleAds_super object_ a1 = (setToggleAds_impl (javaCast object_ :: AdConfiguration)) a1

setToggleAds_impl :: AdConfiguration -> Bool -> IO (())
setToggleAds_impl this showAds = do
        pure ()


isShowAds :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowAds object_ = jmethod object_ "isShowAds" (\() -> (isShowAds_impl (javaCast object_ :: AdConfiguration))) ()

isShowAds_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowAds_super object_ = (isShowAds_impl (javaCast object_ :: AdConfiguration))

isShowAds_impl :: AdConfiguration -> IO (Bool)
isShowAds_impl this = do
        pure (True)


