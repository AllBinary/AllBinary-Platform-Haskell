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
-- package org.allbinary.game.configuration
module GameConfigurationSingleton where

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
import qualified Any -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GameConfigurationSingleton = GameConfigurationSingleton
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull GameConfigurationSingleton where
    javaNull = javaNullRecord "GameConfigurationSingleton"

instance JavaEquals GameConfigurationSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfigurationSingleton where
    (==) = jrecordEquals

instance JavaObjectClass GameConfigurationSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameConfigurationSingleton
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    hashtable <- newIORef javaNull
    let this = GameConfigurationSingleton header_ list hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceByName" (\() -> getInstanceByName_impl this)
    jregisterMethod header_ "getOptionsBasicArrayList" (\() -> getOptionsBasicArrayList_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    pure this

initFields_ :: GameConfigurationSingleton -> IO ()
initFields_ this = do
    jset this.list (javaNull)
    jset this.hashtable (javaNull)
    pure ()


getInstance :: IO (GameConfigurationSingleton)
getInstance = do
        pure ((jget GameConfigurationSingleton.sINGLETON))

new_ :: IO GameConfigurationSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameConfigurationSingleton -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        assignedValue <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        jset (this).hashtable (assignedValue)
        pure ()


getInstanceByName :: (JavaObjectClass this_) => this_ -> String -> IO (GameConfiguration.GameConfiguration)
getInstanceByName object_ a1 = jmethod object_ "getInstanceByName" (\() -> (getInstanceByName_impl (javaCast object_ :: GameConfigurationSingleton))) () a1

getInstanceByName_super :: (JavaObjectClass this_) => this_ -> String -> IO (GameConfiguration.GameConfiguration)
getInstanceByName_super object_ a1 = (getInstanceByName_impl (javaCast object_ :: GameConfigurationSingleton)) a1

getInstanceByName_impl :: GameConfigurationSingleton -> String -> IO (GameConfiguration.GameConfiguration)
getInstanceByName_impl this name = do
        pure ((javaCast (jio (ABHashtable.get ((jget (this).hashtable)) name)) :: GameConfiguration.GameConfiguration))


getOptionsBasicArrayList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOptionsBasicArrayList object_ = jmethod object_ "getOptionsBasicArrayList" (\() -> (getOptionsBasicArrayList_impl (javaCast object_ :: GameConfigurationSingleton))) ()

getOptionsBasicArrayList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getOptionsBasicArrayList_super object_ = (getOptionsBasicArrayList_impl (javaCast object_ :: GameConfigurationSingleton))

getOptionsBasicArrayList_impl :: GameConfigurationSingleton -> IO (BasicArrayList.BasicArrayList)
getOptionsBasicArrayList_impl this = do
        pure ((jget (this).list))


add :: (JavaObjectClass this_) => this_ -> GameConfiguration.GameConfiguration -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameConfigurationSingleton))) () a1

add_super :: (JavaObjectClass this_) => this_ -> GameConfiguration.GameConfiguration -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GameConfigurationSingleton)) a1

add_impl :: GameConfigurationSingleton -> GameConfiguration.GameConfiguration -> IO (())
add_impl this gameConfiguration = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) gameConfiguration)
        pure ()


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: GameConfigurationSingleton))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: GameConfigurationSingleton))

getHashtable_impl :: GameConfigurationSingleton -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        pure ((jget (this).hashtable))


