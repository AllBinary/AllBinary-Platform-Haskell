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
module BottomLimiter where

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
import qualified GameAdStateFactory -- same package or java.lang
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton

data BottomLimiter = BottomLimiter
    { header_ :: JavaHeader
    , bottom :: IORef (Int)
    , deltaY :: IORef (Int)
    , lower :: IORef (Int)
    , higher :: IORef (Int)
    }

instance JavaNull BottomLimiter where
    javaNull = javaNullRecord "BottomLimiter"

instance JavaEquals BottomLimiter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BottomLimiter where
    (==) = jrecordEquals

instance JavaObjectClass BottomLimiter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BottomLimiter
newRecord_ = do
    header_ <- newJavaHeader
    bottom <- newIORef 0
    deltaY <- newIORef 0
    lower <- newIORef 0
    higher <- newIORef 0
    let this = BottomLimiter header_ bottom deltaY lower higher
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getDeltaY" (\() -> getDeltaY_impl this)
    jregisterMethod header_ "getBottom" (\() -> getBottom_impl this)
    pure this

initFields_ :: BottomLimiter -> IO ()
initFields_ this = do
    jset this.bottom (0)
    jset this.deltaY (0)
    jset this.lower (0)
    jset this.higher (0)
    pure ()


getInstance :: IO (BottomLimiter)
getInstance = do
        pure (BottomLimiter.instance_)

new_ :: IO BottomLimiter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BottomLimiter -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BottomLimiter))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: BottomLimiter)) a1 a2

init_impl :: BottomLimiter -> Int -> Int -> IO (())
init_impl this lower higher = do
        jset (this).lower (lower)
        jset (this).higher (higher)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BottomLimiter))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: BottomLimiter))

update_impl :: BottomLimiter -> IO (())
update_impl this = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jio (GameAdStateFactory.getInstance))))
        if (jio (GameAdState.isShowingAt gameAdState)) then do
            jset (this).deltaY ((jget (this).higher))
        else do
            jset (this).deltaY ((jget (this).lower))
        jset (this).bottom (((jio (DisplayInfoSingleton.getLastHeight displayInfo)) - (jget (this).deltaY)))
        pure ()


getDeltaY :: (JavaObjectClass this_) => this_ -> IO (Int)
getDeltaY object_ = jmethod object_ "getDeltaY" (\() -> (getDeltaY_impl (javaCast object_ :: BottomLimiter))) ()

getDeltaY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDeltaY_super object_ = (getDeltaY_impl (javaCast object_ :: BottomLimiter))

getDeltaY_impl :: BottomLimiter -> IO (Int)
getDeltaY_impl this = do
        pure ((jget (this).deltaY))


getBottom :: (JavaObjectClass this_) => this_ -> IO (Int)
getBottom object_ = jmethod object_ "getBottom" (\() -> (getBottom_impl (javaCast object_ :: BottomLimiter))) ()

getBottom_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getBottom_super object_ = (getBottom_impl (javaCast object_ :: BottomLimiter))

getBottom_impl :: BottomLimiter -> IO (Int)
getBottom_impl this = do
        pure ((jget (this).bottom))


