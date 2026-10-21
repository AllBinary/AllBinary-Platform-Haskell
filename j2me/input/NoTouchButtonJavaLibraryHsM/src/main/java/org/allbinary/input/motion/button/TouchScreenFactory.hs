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
-- package org.allbinary.input.motion.button
module TouchScreenFactory where

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
import qualified TouchScreenTypesFactory -- same package or java.lang
import qualified TouchScreenType -- same package or java.lang

data TouchScreenFactory = TouchScreenFactory
    { header_ :: JavaHeader
    , multiTouch :: IORef (Bool)
    , touch :: IORef (Bool)
    , touchScreenType :: IORef (TouchScreenType.TouchScreenType)
    }

instance JavaNull TouchScreenFactory where
    javaNull = javaNullRecord "TouchScreenFactory"

instance JavaEquals TouchScreenFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenFactory where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchScreenFactory
newRecord_ = do
    header_ <- newJavaHeader
    multiTouch <- newIORef False
    touch <- newIORef False
    touchScreenType <- newIORef javaNull
    let this = TouchScreenFactory header_ multiTouch touch touchScreenType
    jregisterLevel header_ this
    jregisterMethod header_ "isMultiTouch" (\() -> isMultiTouch_impl this)
    jregisterMethod header_ "setTouch" (\() -> setTouch_impl this)
    jregisterMethod header_ "isTouch" (\() -> isTouch_impl this)
    jregisterMethod header_ "getTouchScreenType" (\() -> getTouchScreenType_impl this)
    pure this

initFields_ :: TouchScreenFactory -> IO ()
initFields_ this = do
    jset this.multiTouch (False)
    jset this.touch (False)
    jset this.touchScreenType ((jget ((jio (TouchScreenTypesFactory.getInstance))).nOTOUCH))
    pure ()

new_ :: IO TouchScreenFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchScreenFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (TouchScreenFactory)
getInstance = do
        pure (TouchScreenFactory.sINGLETON)


isMultiTouch :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouch object_ = jmethod object_ "isMultiTouch" (\() -> (isMultiTouch_impl (javaCast object_ :: TouchScreenFactory))) ()

isMultiTouch_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMultiTouch_super object_ = (isMultiTouch_impl (javaCast object_ :: TouchScreenFactory))

isMultiTouch_impl :: TouchScreenFactory -> IO (Bool)
isMultiTouch_impl this = do
        pure ((jget (this).multiTouch))


setTouch :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTouch object_ a1 = jmethod object_ "setTouch" (\() -> (setTouch_impl (javaCast object_ :: TouchScreenFactory))) () a1

setTouch_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setTouch_super object_ a1 = (setTouch_impl (javaCast object_ :: TouchScreenFactory)) a1

setTouch_impl :: TouchScreenFactory -> Bool -> IO (())
setTouch_impl this touch = do
        pure ()


isTouch :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTouch object_ = jmethod object_ "isTouch" (\() -> (isTouch_impl (javaCast object_ :: TouchScreenFactory))) ()

isTouch_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isTouch_super object_ = (isTouch_impl (javaCast object_ :: TouchScreenFactory))

isTouch_impl :: TouchScreenFactory -> IO (Bool)
isTouch_impl this = do
        pure ((jget (this).touch))


getTouchScreenType :: (JavaObjectClass this_) => this_ -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType object_ = jmethod object_ "getTouchScreenType" (\() -> (getTouchScreenType_impl (javaCast object_ :: TouchScreenFactory))) ()

getTouchScreenType_super :: (JavaObjectClass this_) => this_ -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType_super object_ = (getTouchScreenType_impl (javaCast object_ :: TouchScreenFactory))

getTouchScreenType_impl :: TouchScreenFactory -> IO (TouchScreenType.TouchScreenType)
getTouchScreenType_impl this = do
        pure ((jget (this).touchScreenType))


