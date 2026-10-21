{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module RTSInterface where

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
data RTSInterface = RTSInterface
    { header_ :: JavaHeader
    }

instance JavaNull RTSInterface where
    javaNull = javaNullRecord "RTSInterface"

instance JavaEquals RTSInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSInterface where
    (==) = jrecordEquals

instance JavaObjectClass RTSInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> RTSInterface
fromHeader_ header = RTSInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (RTSInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


isSelfUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable object_ = jmethod object_ "isSelfUpgradeable" (\() -> (isSelfUpgradeable_impl (javaCast object_ :: RTSInterface))) ()

isSelfUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable_super object_ = (isSelfUpgradeable_impl (javaCast object_ :: RTSInterface))

isSelfUpgradeable_impl :: RTSInterface -> IO (Bool)
isSelfUpgradeable_impl this = javaAbstractMethod "isSelfUpgradeable"


isCompleted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted object_ = jmethod object_ "isCompleted" (\() -> (isCompleted_impl (javaCast object_ :: RTSInterface))) ()

isCompleted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted_super object_ = (isCompleted_impl (javaCast object_ :: RTSInterface))

isCompleted_impl :: RTSInterface -> IO (Bool)
isCompleted_impl this = javaAbstractMethod "isCompleted"


getPercentComplete :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete object_ = jmethod object_ "getPercentComplete" (\() -> (getPercentComplete_impl (javaCast object_ :: RTSInterface))) ()

getPercentComplete_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete_super object_ = (getPercentComplete_impl (javaCast object_ :: RTSInterface))

getPercentComplete_impl :: RTSInterface -> IO (Int)
getPercentComplete_impl this = javaAbstractMethod "getPercentComplete"


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: RTSInterface))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: RTSInterface))

getLevel_impl :: RTSInterface -> IO (Int)
getLevel_impl this = javaAbstractMethod "getLevel"


getMaxLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel object_ = jmethod object_ "getMaxLevel" (\() -> (getMaxLevel_impl (javaCast object_ :: RTSInterface))) ()

getMaxLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel_super object_ = (getMaxLevel_impl (javaCast object_ :: RTSInterface))

getMaxLevel_impl :: RTSInterface -> IO (Int)
getMaxLevel_impl this = javaAbstractMethod "getMaxLevel"


getCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost object_ = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: RTSInterface))) ()

getCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost_super object_ = (getCost_impl (javaCast object_ :: RTSInterface))

getCost_impl :: RTSInterface -> IO (Int)
getCost_impl this = javaAbstractMethod "getCost"


downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: RTSInterface))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: RTSInterface))

downgrade_impl :: RTSInterface -> IO (())
downgrade_impl this = javaAbstractMethod "downgrade"


getDowngradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost object_ = jmethod object_ "getDowngradeCost" (\() -> (getDowngradeCost_impl (javaCast object_ :: RTSInterface))) ()

getDowngradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost_super object_ = (getDowngradeCost_impl (javaCast object_ :: RTSInterface))

getDowngradeCost_impl :: RTSInterface -> IO (Int)
getDowngradeCost_impl this = javaAbstractMethod "getDowngradeCost"


isDowngradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable object_ = jmethod object_ "isDowngradeable" (\() -> (isDowngradeable_impl (javaCast object_ :: RTSInterface))) ()

isDowngradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable_super object_ = (isDowngradeable_impl (javaCast object_ :: RTSInterface))

isDowngradeable_impl :: RTSInterface -> IO (Bool)
isDowngradeable_impl this = javaAbstractMethod "isDowngradeable"


getUpgradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost object_ = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: RTSInterface))) ()

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost_super object_ = (getUpgradeCost_impl (javaCast object_ :: RTSInterface))

getUpgradeCost_impl :: RTSInterface -> IO (Int)
getUpgradeCost_impl this = javaAbstractMethod "getUpgradeCost"


isUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable object_ = jmethod object_ "isUpgradeable" (\() -> (isUpgradeable_impl (javaCast object_ :: RTSInterface))) ()

isUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable_super object_ = (isUpgradeable_impl (javaCast object_ :: RTSInterface))

isUpgradeable_impl :: RTSInterface -> IO (Bool)
isUpgradeable_impl this = javaAbstractMethod "isUpgradeable"


upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: RTSInterface))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: RTSInterface))

upgrade_impl :: RTSInterface -> IO (())
upgrade_impl this = javaAbstractMethod "upgrade"


