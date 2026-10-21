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
-- package org.allbinary.canvas
module FullScreenUtil where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified CommandListener -- javax.microedition.lcdui.CommandListener

data FullScreenUtil = FullScreenUtil
    { header_ :: JavaHeader
    }

instance JavaNull FullScreenUtil where
    javaNull = javaNullRecord "FullScreenUtil"

instance JavaEquals FullScreenUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FullScreenUtil where
    (==) = jrecordEquals

instance JavaObjectClass FullScreenUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FullScreenUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = FullScreenUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "initOnRun" (\() -> initOnRun_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isScreenChange" (\() -> isScreenChange_impl this)
    jregisterMethod header_ "isScreenChangeCanvas" (\() -> isScreenChangeCanvas_impl this)
    pure this

initFields_ :: FullScreenUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FullScreenUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FullScreenUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FullScreenUtil)
getInstance = do
        pure (FullScreenUtil.instance_)


-- throws Exception
initOnRun :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> CommandListener.CommandListener -> IO (())
initOnRun object_ a1 a2 = jmethod object_ "initOnRun" (\() -> (initOnRun_impl (javaCast object_ :: FullScreenUtil))) () a1 a2

initOnRun_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> CommandListener.CommandListener -> IO (())
initOnRun_super object_ a1 a2 = (initOnRun_impl (javaCast object_ :: FullScreenUtil)) a1 a2

initOnRun_impl :: FullScreenUtil -> Canvas.Canvas -> CommandListener.CommandListener -> IO (())
initOnRun_impl this fullScreenInterface commandListener = do
        pure ()


init :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: FullScreenUtil))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: FullScreenUtil)) a1

init_impl :: FullScreenUtil -> Canvas.Canvas -> IO (())
init_impl this fullScreenInterface = do
        pure ()


isScreenChange :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
isScreenChange object_ a1 = jmethod object_ "isScreenChange" (\() -> (isScreenChange_impl (javaCast object_ :: FullScreenUtil))) () a1

isScreenChange_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (Bool)
isScreenChange_super object_ a1 = (isScreenChange_impl (javaCast object_ :: FullScreenUtil)) a1

isScreenChange_impl :: FullScreenUtil -> Bool -> IO (Bool)
isScreenChange_impl this isFullScreen = do
        pure (False)


isScreenChangeCanvas :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (Bool)
isScreenChangeCanvas object_ a1 = jmethod object_ "isScreenChangeCanvas" (\() -> (isScreenChangeCanvas_impl (javaCast object_ :: FullScreenUtil))) () a1

isScreenChangeCanvas_super :: (JavaObjectClass this_) => this_ -> Canvas.Canvas -> IO (Bool)
isScreenChangeCanvas_super object_ a1 = (isScreenChangeCanvas_impl (javaCast object_ :: FullScreenUtil)) a1

isScreenChangeCanvas_impl :: FullScreenUtil -> Canvas.Canvas -> IO (Bool)
isScreenChangeCanvas_impl this fullScreenInterface = do
        (FullScreenUtil.isScreenChange this (jio (Canvas.isFullScreenMode fullScreenInterface)))


