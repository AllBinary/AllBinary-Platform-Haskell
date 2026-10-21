{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.graphics.geography.pathfinding
module BasicGeographicMapExtractedPathCacheFactory (module BasicGeographicMapExtractedPathCacheFactory, module BaseBasicArrayListCache) where

import BaseBasicArrayListCache hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, init, init_super, init_impl, getPath, getPath_super, getPath_impl, release, release_super, release_impl, instance_, maxConcurrentPaths, maxPaths)
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
import qualified BaseBasicArrayListCache -- org.allbinary.logic.util.cache.BaseBasicArrayListCache
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListS -- org.allbinary.util.BasicArrayListS

data BasicGeographicMapExtractedPathCacheFactory = BasicGeographicMapExtractedPathCacheFactory
    { header_ :: JavaHeader
    , base :: BaseBasicArrayListCache.BaseBasicArrayListCache
    , maxConcurrentPaths :: IORef (Int)
    , maxPaths :: IORef (Int)
    }

instance JavaNull BasicGeographicMapExtractedPathCacheFactory where
    javaNull = javaNullRecord "BasicGeographicMapExtractedPathCacheFactory"

instance JavaEquals BasicGeographicMapExtractedPathCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGeographicMapExtractedPathCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicGeographicMapExtractedPathCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO BasicGeographicMapExtractedPathCacheFactory
newRecord_ = do
    base <- BaseBasicArrayListCache.newRecord_
    let header_ = base.header_
    maxConcurrentPaths <- newIORef 0
    maxPaths <- newIORef 0
    let this = BasicGeographicMapExtractedPathCacheFactory header_ base maxConcurrentPaths maxPaths
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getPath" (\() -> getPath_impl this)
    jregisterMethod header_ "release" (\() -> release_impl this)
    pure this

initFields_ :: BasicGeographicMapExtractedPathCacheFactory -> IO ()
initFields_ this = do
    jset this.maxConcurrentPaths (0)
    jset this.maxPaths (0)
    pure ()


getInstance :: IO (BasicGeographicMapExtractedPathCacheFactory)
getInstance = do
        pure (BasicGeographicMapExtractedPathCacheFactory.instance_)

new_ :: IO BasicGeographicMapExtractedPathCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGeographicMapExtractedPathCacheFactory -> IO ()
init_ this = do
        BaseBasicArrayListCache.init_ this.base
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory)) a1 a2

init_impl :: BasicGeographicMapExtractedPathCacheFactory -> Int -> Int -> IO (())
init_impl this maxConcurrentPaths maxPaths = do
        when (maxConcurrentPaths /= (jget (this).maxConcurrentPaths)) $ do
            forM_ [maxConcurrentPaths, maxConcurrentPaths + (-1) .. (jget (this).maxConcurrentPaths)] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).base.list)) (jio (BasicArrayListS.new_1 maxPaths)))
            jset (this).maxConcurrentPaths (maxConcurrentPaths)
        jset (this).maxPaths (maxPaths)
        pure ()


getPath :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPath object_ = jmethod object_ "getPath" (\() -> (getPath_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory))) ()

getPath_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPath_super object_ = (getPath_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory))

getPath_impl :: BasicGeographicMapExtractedPathCacheFactory -> IO (BasicArrayList.BasicArrayList)
getPath_impl this = do
    javaCatchReturn $ do
        if ((jio (BasicArrayList.size ((jget (this).base.list)))) > 0) then do
            javaReturn ((javaCast (jio (BasicArrayList.removeAt ((jget (this).base.list)) 0)) :: BasicArrayList.BasicArrayList))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListS.new_1 (jget (this).maxPaths)))


release :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
release object_ a1 = jmethod object_ "release" (\() -> (release_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory))) () a1

release_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
release_super object_ a1 = (release_impl (javaCast object_ :: BasicGeographicMapExtractedPathCacheFactory)) a1

release_impl :: BasicGeographicMapExtractedPathCacheFactory -> BasicArrayList.BasicArrayList -> IO (())
release_impl this list = do
        Control.Monad.void (BasicArrayList.clear list)
        Control.Monad.void (BasicArrayList.add ((jget (this).base.list)) list)
        pure ()


