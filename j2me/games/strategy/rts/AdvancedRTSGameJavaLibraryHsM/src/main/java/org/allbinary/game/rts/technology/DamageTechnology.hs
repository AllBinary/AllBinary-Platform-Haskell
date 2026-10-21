{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.rts.technology
module DamageTechnology where

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
import qualified UnitTechnologySingletonFactory -- same package or java.lang
import qualified RTSInterface -- org.allbinary.game.layer.RTSInterface

-- implements RTSInterface
data DamageTechnology = DamageTechnology
    { header_ :: JavaHeader
    , level :: IORef (Int)
    , maxLevel :: IORef (Int)
    }

instance JavaNull DamageTechnology where
    javaNull = javaNullRecord "DamageTechnology"

instance JavaEquals DamageTechnology where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DamageTechnology where
    (==) = jrecordEquals

instance JavaObjectClass DamageTechnology where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DamageTechnology
newRecord_ = do
    header_ <- newJavaHeader
    level <- newIORef 0
    maxLevel <- newIORef 0
    let this = DamageTechnology header_ level maxLevel
    jregisterLevel header_ this
    RTSInterface.registerInterface_ header_
    jregisterMethod header_ "isCompleted" (\() -> isCompleted_impl this)
    jregisterMethod header_ "getPercentComplete" (\() -> getPercentComplete_impl this)
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "getMaxLevel" (\() -> getMaxLevel_impl this)
    jregisterMethod header_ "getCost" (\() -> getCost_impl this)
    jregisterMethod header_ "downgrade" (\() -> downgrade_impl this)
    jregisterMethod header_ "getDowngradeCost" (\() -> getDowngradeCost_impl this)
    jregisterMethod header_ "isDowngradeable" (\() -> isDowngradeable_impl this)
    jregisterMethod header_ "getUpgradeCost" (\() -> getUpgradeCost_impl this)
    jregisterMethod header_ "isUpgradeable" (\() -> isUpgradeable_impl this)
    jregisterMethod header_ "upgrade" (\() -> upgrade_impl this)
    jregisterMethod header_ "isSelfUpgradeable" (\() -> isSelfUpgradeable_impl this)
    pure this

initFields_ :: DamageTechnology -> IO ()
initFields_ this = do
    jset this.level (0)
    jset this.maxLevel (0)
    pure ()

new_1 :: Int -> IO DamageTechnology
new_1 maxLevel = do
    this <- newRecord_
    init_1 this maxLevel
    pure this

init_1 :: DamageTechnology -> Int -> IO ()
init_1 this maxLevel = do
        initFields_ this
        jset (this).maxLevel (maxLevel)
        pure ()


isCompleted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted object_ = jmethod object_ "isCompleted" (\() -> (isCompleted_impl (javaCast object_ :: DamageTechnology))) ()

isCompleted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isCompleted_super object_ = (isCompleted_impl (javaCast object_ :: DamageTechnology))

isCompleted_impl :: DamageTechnology -> IO (Bool)
isCompleted_impl this = do
        pure (False)


getPercentComplete :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete object_ = jmethod object_ "getPercentComplete" (\() -> (getPercentComplete_impl (javaCast object_ :: DamageTechnology))) ()

getPercentComplete_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPercentComplete_super object_ = (getPercentComplete_impl (javaCast object_ :: DamageTechnology))

getPercentComplete_impl :: DamageTechnology -> IO (Int)
getPercentComplete_impl this = do
        pure (0)


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: DamageTechnology))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: DamageTechnology))

getLevel_impl :: DamageTechnology -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


getMaxLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel object_ = jmethod object_ "getMaxLevel" (\() -> (getMaxLevel_impl (javaCast object_ :: DamageTechnology))) ()

getMaxLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxLevel_super object_ = (getMaxLevel_impl (javaCast object_ :: DamageTechnology))

getMaxLevel_impl :: DamageTechnology -> IO (Int)
getMaxLevel_impl this = do
        pure ((jget (this).maxLevel))


getCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost object_ = jmethod object_ "getCost" (\() -> (getCost_impl (javaCast object_ :: DamageTechnology))) ()

getCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCost_super object_ = (getCost_impl (javaCast object_ :: DamageTechnology))

getCost_impl :: DamageTechnology -> IO (Int)
getCost_impl this = do
        pure (0)


downgrade :: (JavaObjectClass this_) => this_ -> IO (())
downgrade object_ = jmethod object_ "downgrade" (\() -> (downgrade_impl (javaCast object_ :: DamageTechnology))) ()

downgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
downgrade_super object_ = (downgrade_impl (javaCast object_ :: DamageTechnology))

downgrade_impl :: DamageTechnology -> IO (())
downgrade_impl this = do
        pure ()


getDowngradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost object_ = jmethod object_ "getDowngradeCost" (\() -> (getDowngradeCost_impl (javaCast object_ :: DamageTechnology))) ()

getDowngradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDowngradeCost_super object_ = (getDowngradeCost_impl (javaCast object_ :: DamageTechnology))

getDowngradeCost_impl :: DamageTechnology -> IO (Int)
getDowngradeCost_impl this = do
        pure (0)


isDowngradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable object_ = jmethod object_ "isDowngradeable" (\() -> (isDowngradeable_impl (javaCast object_ :: DamageTechnology))) ()

isDowngradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDowngradeable_super object_ = (isDowngradeable_impl (javaCast object_ :: DamageTechnology))

isDowngradeable_impl :: DamageTechnology -> IO (Bool)
isDowngradeable_impl this = do
        pure (False)


getUpgradeCost :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost object_ = jmethod object_ "getUpgradeCost" (\() -> (getUpgradeCost_impl (javaCast object_ :: DamageTechnology))) ()

getUpgradeCost_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getUpgradeCost_super object_ = (getUpgradeCost_impl (javaCast object_ :: DamageTechnology))

getUpgradeCost_impl :: DamageTechnology -> IO (Int)
getUpgradeCost_impl this = do
        pure (((((jio (DamageTechnology.getLevel this)) * (jio (DamageTechnology.getLevel this)))) * 1000))


isUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable object_ = jmethod object_ "isUpgradeable" (\() -> (isUpgradeable_impl (javaCast object_ :: DamageTechnology))) ()

isUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isUpgradeable_super object_ = (isUpgradeable_impl (javaCast object_ :: DamageTechnology))

isUpgradeable_impl :: DamageTechnology -> IO (Bool)
isUpgradeable_impl this = do
    javaCatchReturn $ do
        if ((jio (DamageTechnology.getLevel this)) < (jio (DamageTechnology.getMaxLevel this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


upgrade :: (JavaObjectClass this_) => this_ -> IO (())
upgrade object_ = jmethod object_ "upgrade" (\() -> (upgrade_impl (javaCast object_ :: DamageTechnology))) ()

upgrade_super :: (JavaObjectClass this_) => this_ -> IO (())
upgrade_super object_ = (upgrade_impl (javaCast object_ :: DamageTechnology))

upgrade_impl :: DamageTechnology -> IO (())
upgrade_impl this = do
        jset (this).level ((jget (this).level) + 1)
        unitTechnologySingletonFactory <- (UnitTechnologySingletonFactory.getInstance)
        Control.Monad.void (UnitTechnologySingletonFactory.setDamage unitTechnologySingletonFactory ((jio (UnitTechnologySingletonFactory.getDamage unitTechnologySingletonFactory)) + (((jio (DamageTechnology.getLevel this)) * 100))))
        pure ()


isSelfUpgradeable :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable object_ = jmethod object_ "isSelfUpgradeable" (\() -> (isSelfUpgradeable_impl (javaCast object_ :: DamageTechnology))) ()

isSelfUpgradeable_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isSelfUpgradeable_super object_ = (isSelfUpgradeable_impl (javaCast object_ :: DamageTechnology))

isSelfUpgradeable_impl :: DamageTechnology -> IO (Bool)
isSelfUpgradeable_impl this = do
        pure (False)


