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
-- package org.allbinary.image
module GameFeatureImageCacheFactory where

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
import qualified ImageCacheFactory -- same package or java.lang
import qualified ImageCache -- same package or java.lang

data GameFeatureImageCacheFactory = GameFeatureImageCacheFactory
    { header_ :: JavaHeader
    }

instance JavaNull GameFeatureImageCacheFactory where
    javaNull = javaNullRecord "GameFeatureImageCacheFactory"

instance JavaEquals GameFeatureImageCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureImageCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureImageCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameFeatureImageCacheFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameFeatureImageCacheFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameFeatureImageCacheFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameFeatureImageCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameFeatureImageCacheFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ImageCache.ImageCache)
getInstance = do
        (ImageCacheFactory.getInstance)


init :: IO (())
init = do
        Control.Monad.void (ImageCacheFactory.init)
        pure ()


releaseAll :: IO (())
releaseAll = do
        Control.Monad.void (ImageCacheFactory.releaseAll ((jio (ImageCacheFactory.getInstance))))
        pure ()


