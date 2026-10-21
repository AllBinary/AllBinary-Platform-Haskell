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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathCacheFactory where

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
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil

data PathCacheFactory = PathCacheFactory
    { header_ :: JavaHeader
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull PathCacheFactory where
    javaNull = javaNullRecord "PathCacheFactory"

instance JavaEquals PathCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass PathCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE pathFactory #-}
pathFactory = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathCacheFactory
newRecord_ = do
    header_ <- newJavaHeader
    basicArrayListUtil <- newIORef javaNull
    hashtable <- newIORef javaNull
    let this = PathCacheFactory header_ basicArrayListUtil hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeAll" (\() -> removeAll_impl this)
    jregisterMethod header_ "getOrCreate" (\() -> getOrCreate_impl this)
    pure this

initFields_ :: PathCacheFactory -> IO ()
initFields_ this = do
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()

new_ :: IO PathCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathCacheFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (PathCacheFactory)
getInstance = do
        pure ((jget PathCacheFactory.pathFactory))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: PathCacheFactory))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: PathCacheFactory))

getSize_impl :: PathCacheFactory -> IO (Int)
getSize_impl this = do
        (ABHashtable.size ((jget (this).hashtable)))


add :: (JavaObjectClass this_) => this_ -> Int -> BasicArrayList.BasicArrayList -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PathCacheFactory))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> Int -> BasicArrayList.BasicArrayList -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: PathCacheFactory)) a1 a2

add_impl :: PathCacheFactory -> Int -> BasicArrayList.BasicArrayList -> IO (())
add_impl this pathId list = do
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) pathId list)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: PathCacheFactory))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: PathCacheFactory)) a1

remove_impl :: PathCacheFactory -> Int -> IO (())
remove_impl this pathId = do
        Control.Monad.void (ABHashtable.remove ((jget (this).hashtable)) pathId)
        pure ()


-- throws Exception
removeAll :: (JavaObjectClass this_) => this_ -> IO (())
removeAll object_ = jmethod object_ "removeAll" (\() -> (removeAll_impl (javaCast object_ :: PathCacheFactory))) ()

removeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
removeAll_super object_ = (removeAll_impl (javaCast object_ :: PathCacheFactory))

removeAll_impl :: PathCacheFactory -> IO (())
removeAll_impl this = do
        Control.Monad.void (ABHashtable.clear ((jget (this).hashtable)))
        when ((jio (ABHashtable.size ((jget (this).hashtable)))) > 0) $ do
            javaThrow ((JavaException "Exception" "Did not clear"))
        pure ()


-- throws Exception
getOrCreate :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getOrCreate object_ a1 = jmethod object_ "getOrCreate" (\() -> (getOrCreate_impl (javaCast object_ :: PathCacheFactory))) () a1

getOrCreate_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getOrCreate_super object_ a1 = (getOrCreate_impl (javaCast object_ :: PathCacheFactory)) a1

getOrCreate_impl :: PathCacheFactory -> Int -> IO (BasicArrayList.BasicArrayList)
getOrCreate_impl this pathIdInteger = do
        listCanBeNull <- newIORef =<< (ABHashtable.get ((jget (this).hashtable)) pathIdInteger)
        when ((jget listCanBeNull) == javaNull) $ do
            assignedValue <- (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
            jset listCanBeNull (assignedValue)
        pure ((javaCast (jget listCanBeNull) :: BasicArrayList.BasicArrayList))


