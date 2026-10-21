{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.graphics.displayable
module GameTickDisplayInfoSingleton where

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
import qualified DisplayInfoSingleton -- same package or java.lang

data GameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton
    { header_ :: JavaHeader
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , lastWidth :: IORef (Int)
    , lastHeight :: IORef (Int)
    , lastHalfWidth :: IORef (Int)
    , lastHalfHeight :: IORef (Int)
    }

instance JavaNull GameTickDisplayInfoSingleton where
    javaNull = javaNullRecord "GameTickDisplayInfoSingleton"

instance JavaEquals GameTickDisplayInfoSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameTickDisplayInfoSingleton where
    (==) = jrecordEquals

instance JavaObjectClass GameTickDisplayInfoSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameTickDisplayInfoSingleton
newRecord_ = do
    header_ <- newJavaHeader
    displayInfoSingleton <- newIORef javaNull
    lastWidth <- newIORef 0
    lastHeight <- newIORef 0
    lastHalfWidth <- newIORef 0
    lastHalfHeight <- newIORef 0
    let this = GameTickDisplayInfoSingleton header_ displayInfoSingleton lastWidth lastHeight lastHalfWidth lastHalfHeight
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getLastWidth" (\() -> getLastWidth_impl this)
    jregisterMethod header_ "getLastHeight" (\() -> getLastHeight_impl this)
    jregisterMethod header_ "getLastHalfWidth" (\() -> getLastHalfWidth_impl this)
    jregisterMethod header_ "getLastHalfHeight" (\() -> getLastHalfHeight_impl this)
    pure this

initFields_ :: GameTickDisplayInfoSingleton -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.lastWidth =<< (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))
    jset this.lastHeight =<< (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfoSingleton)))
    jset this.lastHalfWidth =<< (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))
    jset this.lastHalfHeight =<< (DisplayInfoSingleton.getLastHalfHeight ((jget (this).displayInfoSingleton)))
    pure ()

new_ :: IO GameTickDisplayInfoSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameTickDisplayInfoSingleton -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameTickDisplayInfoSingleton)
getInstance = do
        pure (GameTickDisplayInfoSingleton.instance_)


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameTickDisplayInfoSingleton))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameTickDisplayInfoSingleton))

update_impl :: GameTickDisplayInfoSingleton -> IO (())
update_impl this = do
        assignedValue <- (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))
        jset (this).lastWidth (assignedValue)
        assignedValue <- (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfoSingleton)))
        jset (this).lastHeight (assignedValue)
        assignedValue <- (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))
        jset (this).lastHalfWidth (assignedValue)
        assignedValue <- (DisplayInfoSingleton.getLastHalfHeight ((jget (this).displayInfoSingleton)))
        jset (this).lastHalfHeight (assignedValue)
        pure ()


getLastWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastWidth object_ = jmethod object_ "getLastWidth" (\() -> (getLastWidth_impl (javaCast object_ :: GameTickDisplayInfoSingleton))) ()

getLastWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastWidth_super object_ = (getLastWidth_impl (javaCast object_ :: GameTickDisplayInfoSingleton))

getLastWidth_impl :: GameTickDisplayInfoSingleton -> IO (Int)
getLastWidth_impl this = do
        pure ((jget (this).lastWidth))


getLastHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHeight object_ = jmethod object_ "getLastHeight" (\() -> (getLastHeight_impl (javaCast object_ :: GameTickDisplayInfoSingleton))) ()

getLastHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHeight_super object_ = (getLastHeight_impl (javaCast object_ :: GameTickDisplayInfoSingleton))

getLastHeight_impl :: GameTickDisplayInfoSingleton -> IO (Int)
getLastHeight_impl this = do
        pure ((jget (this).lastHeight))


getLastHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfWidth object_ = jmethod object_ "getLastHalfWidth" (\() -> (getLastHalfWidth_impl (javaCast object_ :: GameTickDisplayInfoSingleton))) ()

getLastHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfWidth_super object_ = (getLastHalfWidth_impl (javaCast object_ :: GameTickDisplayInfoSingleton))

getLastHalfWidth_impl :: GameTickDisplayInfoSingleton -> IO (Int)
getLastHalfWidth_impl this = do
        pure ((jget (this).lastHalfWidth))


getLastHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfHeight object_ = jmethod object_ "getLastHalfHeight" (\() -> (getLastHalfHeight_impl (javaCast object_ :: GameTickDisplayInfoSingleton))) ()

getLastHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfHeight_super object_ = (getLastHalfHeight_impl (javaCast object_ :: GameTickDisplayInfoSingleton))

getLastHalfHeight_impl :: GameTickDisplayInfoSingleton -> IO (Int)
getLastHalfHeight_impl this = do
        pure ((jget (this).lastHalfHeight))


