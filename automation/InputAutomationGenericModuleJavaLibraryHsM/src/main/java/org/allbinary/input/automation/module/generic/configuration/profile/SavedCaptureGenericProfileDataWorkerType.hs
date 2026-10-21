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
-- package org.allbinary.input.automation.module.generic.configuration.profile
module SavedCaptureGenericProfileDataWorkerType (module SavedCaptureGenericProfileDataWorkerType, module GenericProfileDataWorkerType) where

import GenericProfileDataWorkerType hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getPath, getPath_super, getPath_impl, setPath, setPath_super, setPath_impl, getLastFrame, getLastFrame_super, getLastFrame_impl, setLastFrame, setLastFrame_super, setLastFrame_impl, sAVED_CAPTURE, path, lastFrame)
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
import qualified InputImageType -- org.allbinary.input.media.image.InputImageType
import qualified GenericProfileDataWorkerType

data SavedCaptureGenericProfileDataWorkerType = SavedCaptureGenericProfileDataWorkerType
    { header_ :: JavaHeader
    , base :: GenericProfileDataWorkerType.GenericProfileDataWorkerType
    , path :: IORef (String)
    , lastFrame :: IORef (Int)
    }

instance JavaNull SavedCaptureGenericProfileDataWorkerType where
    javaNull = javaNullRecord "SavedCaptureGenericProfileDataWorkerType"

instance JavaEquals SavedCaptureGenericProfileDataWorkerType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SavedCaptureGenericProfileDataWorkerType where
    (==) = jrecordEquals

instance JavaObjectClass SavedCaptureGenericProfileDataWorkerType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sAVED_CAPTURE #-}
sAVED_CAPTURE = unsafePerformIO ((new_3 ("Saved " ++ (jio (InputImageType.getName ((jget InputImageType.cAPTURE))))) "c:\\share\\captures\\2\\" 100) >>= newIORef)

newRecord_ :: IO SavedCaptureGenericProfileDataWorkerType
newRecord_ = do
    base <- GenericProfileDataWorkerType.newRecord_
    let header_ = base.header_
    path <- newIORef ""
    lastFrame <- newIORef 0
    let this = SavedCaptureGenericProfileDataWorkerType header_ base path lastFrame
    jregisterLevel header_ this
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "setPath" (\() -> setPath_impl this)
    jregisterMethod header_ "getLastFrame" (\() -> getLastFrame_impl this)
    jregisterMethod header_ "setLastFrame" (\() -> setLastFrame_impl this)
    pure this

initFields_ :: SavedCaptureGenericProfileDataWorkerType -> IO ()
initFields_ this = do
    jset this.path ("")
    jset this.lastFrame (0)
    pure ()

new_3 :: String -> String -> Int -> IO SavedCaptureGenericProfileDataWorkerType
new_3 name path lastFrame = do
    this <- newRecord_
    init_3 this name path lastFrame
    pure this

init_3 :: SavedCaptureGenericProfileDataWorkerType -> String -> String -> Int -> IO ()
init_3 this name path lastFrame = do
        GenericProfileDataWorkerType.init_1 this.base (name)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (SavedCaptureGenericProfileDataWorkerType.setPath this path)
        Control.Monad.void (SavedCaptureGenericProfileDataWorkerType.setLastFrame this lastFrame)
        pure ()


getPath :: (JavaObjectClass this_) => this_ -> IO (String)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPath_super object_ = (getPath_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))

getPath_impl :: SavedCaptureGenericProfileDataWorkerType -> IO (String)
getPath_impl this = do
        pure ((jget (this).path))


setPath :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath object_ a1 = jmethod object_ "setPath" (\() -> (setPath_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))) () a1

setPath_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPath_super object_ a1 = (setPath_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType)) a1

setPath_impl :: SavedCaptureGenericProfileDataWorkerType -> String -> IO (())
setPath_impl this path = do
        jset (this).path (path)
        pure ()


getLastFrame :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastFrame object_ = jmethod object_ "getLastFrame" (\() -> (getLastFrame_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))) ()

getLastFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastFrame_super object_ = (getLastFrame_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))

getLastFrame_impl :: SavedCaptureGenericProfileDataWorkerType -> IO (Int)
getLastFrame_impl this = do
        pure ((jget (this).lastFrame))


setLastFrame :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastFrame object_ a1 = jmethod object_ "setLastFrame" (\() -> (setLastFrame_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType))) () a1

setLastFrame_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLastFrame_super object_ a1 = (setLastFrame_impl (javaCast object_ :: SavedCaptureGenericProfileDataWorkerType)) a1

setLastFrame_impl :: SavedCaptureGenericProfileDataWorkerType -> Int -> IO (())
setLastFrame_impl this lastFrame = do
        jset (this).lastFrame (lastFrame)
        pure ()


