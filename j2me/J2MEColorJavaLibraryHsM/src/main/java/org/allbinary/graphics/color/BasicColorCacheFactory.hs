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
-- package org.allbinary.graphics.color
module BasicColorCacheFactory where

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
import qualified BasicColor -- same package or java.lang
import qualified BasicColorFactory -- same package or java.lang
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data BasicColorCacheFactory = BasicColorCacheFactory
    { header_ :: JavaHeader
    , hashtable :: IORef (ABHashtable.ABHashtable)
    }

instance JavaNull BasicColorCacheFactory where
    javaNull = javaNullRecord "BasicColorCacheFactory"

instance JavaEquals BasicColorCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicColorCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicColorCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicColorCacheFactory
newRecord_ = do
    header_ <- newJavaHeader
    hashtable <- newIORef javaNull
    let this = BasicColorCacheFactory header_ hashtable
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getAndOrCreate" (\() -> getAndOrCreate_impl this)
    pure this

initFields_ :: BasicColorCacheFactory -> IO ()
initFields_ this = do
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    pure ()


getInstance :: IO (BasicColorCacheFactory)
getInstance = do
        pure (BasicColorCacheFactory.instance_)

new_ :: IO BasicColorCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicColorCacheFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BasicColorCacheFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BasicColorCacheFactory)) a1

add_impl :: BasicColorCacheFactory -> BasicColor.BasicColor -> IO (())
add_impl this basicDefaultColor = do
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (Prelude.fromIntegral ((jio (BasicColor.intValue basicDefaultColor))) :: Int) basicDefaultColor)
        pure ()


getAndOrCreate :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate object_ a1 = jmethod object_ "getAndOrCreate" (\() -> (getAndOrCreate_impl (javaCast object_ :: BasicColorCacheFactory))) () a1

getAndOrCreate_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate_super object_ a1 = (getAndOrCreate_impl (javaCast object_ :: BasicColorCacheFactory)) a1

getAndOrCreate_impl :: BasicColorCacheFactory -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate_impl this integer = do
        basicColor <- newIORef ((javaCast (jio (ABHashtable.get ((jget (this).hashtable)) integer)) :: BasicColor.BasicColor))
        when ((jget basicColor) == javaNull) $ do
            assignedValue <- (BasicColorFactory.createInstance ((jio (BasicColorFactory.getInstance))) (integer))
            jset basicColor (assignedValue)
            Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) integer (jget basicColor))
        pure ((jget basicColor))


