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
-- package org.allbinary.game.configuration.feature
module GameFeatureChoiceGroups where

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
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GameFeatureChoiceGroups = GameFeatureChoiceGroups
    { header_ :: JavaHeader
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull GameFeatureChoiceGroups where
    javaNull = javaNullRecord "GameFeatureChoiceGroups"

instance JavaEquals GameFeatureChoiceGroups where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureChoiceGroups where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureChoiceGroups where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE gameFeatureChoiceGroupsExclusive #-}
gameFeatureChoiceGroupsExclusive = unsafePerformIO ((new_) >>= newIORef)

{-# NOINLINE gameFeatureChoiceGroupsMultiple #-}
gameFeatureChoiceGroupsMultiple = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureChoiceGroups
newRecord_ = do
    header_ <- newJavaHeader
    hashtable <- newIORef javaNull
    let this = GameFeatureChoiceGroups header_ hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: GameFeatureChoiceGroups -> IO ()
initFields_ this = do
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()

new_ :: IO GameFeatureChoiceGroups
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureChoiceGroups -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getExclusiveInstance :: IO (GameFeatureChoiceGroups)
getExclusiveInstance = do
        pure ((jget GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive))


getMultipleInstance :: IO (GameFeatureChoiceGroups)
getMultipleInstance = do
        pure ((jget GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple))


get :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: GameFeatureChoiceGroups))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
get_super object_ = (get_impl (javaCast object_ :: GameFeatureChoiceGroups))

get_impl :: GameFeatureChoiceGroups -> IO (ABHashtable.ABHashtable)
get_impl this = do
        pure ((jget (this).hashtable))


add :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameFeatureChoiceGroups))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> BasicArrayList.BasicArrayList -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: GameFeatureChoiceGroups)) a1 a2

add_impl :: GameFeatureChoiceGroups -> String -> BasicArrayList.BasicArrayList -> IO (())
add_impl this name list = do
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) name list)
        pure ()


