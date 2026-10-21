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
-- package org.allbinary.game.layer.hud
module LapInfo where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data LapInfo = LapInfo
    { header_ :: JavaHeader
    , numberOfLaps :: IORef (Int)
    , totalLaps :: IORef (Int)
    }

instance JavaNull LapInfo where
    javaNull = javaNullRecord "LapInfo"

instance JavaEquals LapInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LapInfo where
    (==) = jrecordEquals

instance JavaObjectClass LapInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_LAP_INFO #-}
nULL_LAP_INFO = unsafePerformIO ((new_1 (Prelude.negate 1)) >>= newIORef)

newRecord_ :: IO LapInfo
newRecord_ = do
    header_ <- newJavaHeader
    numberOfLaps <- newIORef 0
    totalLaps <- newIORef 0
    let this = LapInfo header_ numberOfLaps totalLaps
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getCurrentLap" (\() -> getCurrentLap_impl this)
    jregisterMethod header_ "getTotalLaps" (\() -> getTotalLaps_impl this)
    jregisterMethod header_ "isDone" (\() -> isDone_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: LapInfo -> IO ()
initFields_ this = do
    jset this.numberOfLaps (0)
    jset this.totalLaps (0)
    pure ()

new_1 :: Int -> IO LapInfo
new_1 totalLaps = do
    this <- newRecord_
    init_1 this totalLaps
    pure this

init_1 :: LapInfo -> Int -> IO ()
init_1 this totalLaps = do
        initFields_ this
        jset (this).totalLaps (totalLaps)
        jset (this).numberOfLaps (1)
        pure ()


add :: (JavaObjectClass this_) => this_ -> IO (())
add object_ = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: LapInfo))) ()

add_super :: (JavaObjectClass this_) => this_ -> IO (())
add_super object_ = (add_impl (javaCast object_ :: LapInfo))

add_impl :: LapInfo -> IO (())
add_impl this = do
        jset (this).numberOfLaps ((jget (this).numberOfLaps) + 1)
        pure ()


getCurrentLap :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentLap object_ = jmethod object_ "getCurrentLap" (\() -> (getCurrentLap_impl (javaCast object_ :: LapInfo))) ()

getCurrentLap_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentLap_super object_ = (getCurrentLap_impl (javaCast object_ :: LapInfo))

getCurrentLap_impl :: LapInfo -> IO (Int)
getCurrentLap_impl this = do
        pure ((jget (this).numberOfLaps))


getTotalLaps :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLaps object_ = jmethod object_ "getTotalLaps" (\() -> (getTotalLaps_impl (javaCast object_ :: LapInfo))) ()

getTotalLaps_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalLaps_super object_ = (getTotalLaps_impl (javaCast object_ :: LapInfo))

getTotalLaps_impl :: LapInfo -> IO (Int)
getTotalLaps_impl this = do
        pure ((jget (this).totalLaps))


isDone :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone object_ = jmethod object_ "isDone" (\() -> (isDone_impl (javaCast object_ :: LapInfo))) ()

isDone_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDone_super object_ = (isDone_impl (javaCast object_ :: LapInfo))

isDone_impl :: LapInfo -> IO (Bool)
isDone_impl this = do
    javaCatchReturn $ do
        when ((jget (this).numberOfLaps) >= (jget (this).totalLaps)) $ do
            javaReturn (True)
        pure (False)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LapInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LapInfo))

toString_impl :: LapInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "isDone: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (LapInfo.isDone this)))
        Control.Monad.void (StringMaker.append stringBuffer " CurrentLap: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (LapInfo.getCurrentLap this)))
        Control.Monad.void (StringMaker.append stringBuffer " Total Laps: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (LapInfo.getTotalLaps this)))
        (StringMaker.toString stringBuffer)


