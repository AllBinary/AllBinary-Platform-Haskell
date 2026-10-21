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
module DisplayInBrowserContraintsInterface where

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

-- Java interface: the classes that implement it have these functions
data DisplayInBrowserContraintsInterface = DisplayInBrowserContraintsInterface
    { header_ :: JavaHeader
    }

instance JavaNull DisplayInBrowserContraintsInterface where
    javaNull = javaNullRecord "DisplayInBrowserContraintsInterface"

instance JavaEquals DisplayInBrowserContraintsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplayInBrowserContraintsInterface where
    (==) = jrecordEquals

instance JavaObjectClass DisplayInBrowserContraintsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> DisplayInBrowserContraintsInterface
fromHeader_ header = DisplayInBrowserContraintsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (DisplayInBrowserContraintsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isMountable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMountable object_ = jmethod object_ "isMountable" (\() -> (isMountable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) ()

isMountable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isMountable_super object_ = (isMountable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))

isMountable_impl :: DisplayInBrowserContraintsInterface -> IO (Bool)
isMountable_impl this = javaAbstractMethod "isMountable"


isFrameable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFrameable object_ = jmethod object_ "isFrameable" (\() -> (isFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) ()

isFrameable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isFrameable_super object_ = (isFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))

isFrameable_impl :: DisplayInBrowserContraintsInterface -> IO (Bool)
isFrameable_impl this = javaAbstractMethod "isFrameable"


isQuickFrameable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isQuickFrameable object_ = jmethod object_ "isQuickFrameable" (\() -> (isQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) ()

isQuickFrameable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isQuickFrameable_super object_ = (isQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))

isQuickFrameable_impl :: DisplayInBrowserContraintsInterface -> IO (Bool)
isQuickFrameable_impl this = javaAbstractMethod "isQuickFrameable"


setMountable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMountable object_ a1 = jmethod object_ "setMountable" (\() -> (setMountable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) () a1

setMountable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setMountable_super object_ a1 = (setMountable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface)) a1

setMountable_impl :: DisplayInBrowserContraintsInterface -> Bool -> IO (())
setMountable_impl this canBeMounted = javaAbstractMethod "setMountable"


setFrameable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFrameable object_ a1 = jmethod object_ "setFrameable" (\() -> (setFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) () a1

setFrameable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setFrameable_super object_ a1 = (setFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface)) a1

setFrameable_impl :: DisplayInBrowserContraintsInterface -> Bool -> IO (())
setFrameable_impl this canBeFramed = javaAbstractMethod "setFrameable"


setQuickFrameable :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setQuickFrameable object_ a1 = jmethod object_ "setQuickFrameable" (\() -> (setQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) () a1

setQuickFrameable_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setQuickFrameable_super object_ a1 = (setQuickFrameable_impl (javaCast object_ :: DisplayInBrowserContraintsInterface)) a1

setQuickFrameable_impl :: DisplayInBrowserContraintsInterface -> Bool -> IO (())
setQuickFrameable_impl this canBeQuickFramed = javaAbstractMethod "setQuickFrameable"


setMountedLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMountedLink object_ a1 = jmethod object_ "setMountedLink" (\() -> (setMountedLink_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) () a1

setMountedLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setMountedLink_super object_ a1 = (setMountedLink_impl (javaCast object_ :: DisplayInBrowserContraintsInterface)) a1

setMountedLink_impl :: DisplayInBrowserContraintsInterface -> String -> IO (())
setMountedLink_impl this mountedLink = javaAbstractMethod "setMountedLink"


getMountedLink :: (JavaObjectClass this_) => this_ -> IO (String)
getMountedLink object_ = jmethod object_ "getMountedLink" (\() -> (getMountedLink_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))) ()

getMountedLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getMountedLink_super object_ = (getMountedLink_impl (javaCast object_ :: DisplayInBrowserContraintsInterface))

getMountedLink_impl :: DisplayInBrowserContraintsInterface -> IO (String)
getMountedLink_impl this = javaAbstractMethod "getMountedLink"


