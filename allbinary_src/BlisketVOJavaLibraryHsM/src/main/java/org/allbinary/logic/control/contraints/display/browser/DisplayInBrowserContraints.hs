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
-- package org.allbinary.logic.control.contraints.display.browser
module DisplayInBrowserContraints where

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
import qualified Node -- org.w3c.dom.Node
import qualified DisplayInBrowserContraintsInterface

-- implements DisplayInBrowserContraintsInterface
data DisplayInBrowserContraints = DisplayInBrowserContraints
    { header_ :: JavaHeader
    , frameable :: IORef (Bool)
    , mountable :: IORef (Bool)
    , quickFrameable :: IORef (Bool)
    , mountedLink :: IORef (String)
    }

instance JavaNull DisplayInBrowserContraints where
    javaNull = javaNullRecord "DisplayInBrowserContraints"

instance JavaEquals DisplayInBrowserContraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplayInBrowserContraints where
    (==) = jrecordEquals

instance JavaObjectClass DisplayInBrowserContraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DisplayInBrowserContraints
newRecord_ = do
    header_ <- newJavaHeader
    frameable <- newIORef False
    mountable <- newIORef False
    quickFrameable <- newIORef False
    mountedLink <- newIORef ""
    let this = DisplayInBrowserContraints header_ frameable mountable quickFrameable mountedLink
    jregisterLevel header_ this
    DisplayInBrowserContraintsInterface.registerInterface_ header_
    jregisterMethod header_ "isMountable" (\() -> isMountable_impl this)
    jregisterMethod header_ "setMountable" (\() -> setMountable_impl this)
    jregisterMethod header_ "isFrameable" (\() -> isFrameable_impl this)
    jregisterMethod header_ "setFrameable" (\() -> setFrameable_impl this)
    jregisterMethod header_ "isQuickFrameable" (\() -> isQuickFrameable_impl this)
    jregisterMethod header_ "setQuickFrameable" (\() -> setQuickFrameable_impl this)
    jregisterMethod header_ "getMountedLink" (\() -> getMountedLink_impl this)
    jregisterMethod header_ "setMountedLink" (\() -> setMountedLink_impl this)
    pure this

initFields_ :: DisplayInBrowserContraints -> IO ()
initFields_ this = do
    jset this.frameable (False)
    jset this.mountable (False)
    jset this.quickFrameable (False)
    jset this.mountedLink ("")
    pure ()

new_1 :: Node.Node -> IO DisplayInBrowserContraints
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: DisplayInBrowserContraints -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        pure ()
        pure ()


isMountable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMountable object_ = jmethod object_ "isMountable" (\() -> (isMountable_impl (javaCast object_ :: DisplayInBrowserContraints))) ()

isMountable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMountable_super object_ = (isMountable_impl (javaCast object_ :: DisplayInBrowserContraints))

isMountable_impl :: DisplayInBrowserContraints -> IO (Bool)
isMountable_impl this = do
        pure ((jget (this).mountable))


setMountable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMountable object_ a1 = jmethod object_ "setMountable" (\() -> (setMountable_impl (javaCast object_ :: DisplayInBrowserContraints))) () a1

setMountable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMountable_super object_ a1 = (setMountable_impl (javaCast object_ :: DisplayInBrowserContraints)) a1

setMountable_impl :: DisplayInBrowserContraints -> Bool -> IO (())
setMountable_impl this mountable = do
        jset (this).mountable (mountable)
        pure ()


isFrameable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFrameable object_ = jmethod object_ "isFrameable" (\() -> (isFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))) ()

isFrameable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFrameable_super object_ = (isFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))

isFrameable_impl :: DisplayInBrowserContraints -> IO (Bool)
isFrameable_impl this = do
        pure ((jget (this).frameable))


setFrameable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFrameable object_ a1 = jmethod object_ "setFrameable" (\() -> (setFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))) () a1

setFrameable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFrameable_super object_ a1 = (setFrameable_impl (javaCast object_ :: DisplayInBrowserContraints)) a1

setFrameable_impl :: DisplayInBrowserContraints -> Bool -> IO (())
setFrameable_impl this frameable = do
        jset (this).frameable (frameable)
        pure ()


isQuickFrameable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isQuickFrameable object_ = jmethod object_ "isQuickFrameable" (\() -> (isQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))) ()

isQuickFrameable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isQuickFrameable_super object_ = (isQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))

isQuickFrameable_impl :: DisplayInBrowserContraints -> IO (Bool)
isQuickFrameable_impl this = do
        pure ((jget (this).quickFrameable))


setQuickFrameable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setQuickFrameable object_ a1 = jmethod object_ "setQuickFrameable" (\() -> (setQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraints))) () a1

setQuickFrameable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setQuickFrameable_super object_ a1 = (setQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraints)) a1

setQuickFrameable_impl :: DisplayInBrowserContraints -> Bool -> IO (())
setQuickFrameable_impl this quickFrameable = do
        jset (this).quickFrameable (quickFrameable)
        pure ()


getMountedLink :: (JavaObjectClass this_) => this_ -> IO (String)
getMountedLink object_ = jmethod object_ "getMountedLink" (\() -> (getMountedLink_impl (javaCast object_ :: DisplayInBrowserContraints))) ()

getMountedLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMountedLink_super object_ = (getMountedLink_impl (javaCast object_ :: DisplayInBrowserContraints))

getMountedLink_impl :: DisplayInBrowserContraints -> IO (String)
getMountedLink_impl this = do
        pure ((jget (this).mountedLink))


setMountedLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMountedLink object_ a1 = jmethod object_ "setMountedLink" (\() -> (setMountedLink_impl (javaCast object_ :: DisplayInBrowserContraints))) () a1

setMountedLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMountedLink_super object_ a1 = (setMountedLink_impl (javaCast object_ :: DisplayInBrowserContraints)) a1

setMountedLink_impl :: DisplayInBrowserContraints -> String -> IO (())
setMountedLink_impl this mountedLink = do
        jset (this).mountedLink (mountedLink)
        pure ()


