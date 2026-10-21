{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
-- package org.allbinary.logic.util.cache
module AutomaticCacheInterfaceFactory where

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
import qualified AutomaticCacheInterface -- same package or java.lang
import qualified CacheableInterfaceFactoryInterface -- same package or java.lang
import qualified CacheType -- same package or java.lang
import qualified CachePolicy -- same package or java.lang

data AutomaticCacheInterfaceFactory = AutomaticCacheInterfaceFactory
    { header_ :: JavaHeader
    }

instance JavaNull AutomaticCacheInterfaceFactory where
    javaNull = javaNullRecord "AutomaticCacheInterfaceFactory"

instance JavaEquals AutomaticCacheInterfaceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AutomaticCacheInterfaceFactory where
    (==) = jrecordEquals

instance JavaObjectClass AutomaticCacheInterfaceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AutomaticCacheInterfaceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = AutomaticCacheInterfaceFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: AutomaticCacheInterfaceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AutomaticCacheInterfaceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AutomaticCacheInterfaceFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: CacheableInterfaceFactoryInterface.CacheableInterfaceFactoryInterface -> CacheType.CacheType -> CachePolicy.CachePolicy -> IO (AutomaticCacheInterface.AutomaticCacheInterface)
getInstance cacheableInterfaceFactoryInterface cacheType cachePolicy = do
        javaThrow ((JavaException "Exception" ("No such " ++ (jio (CacheType.toString cacheType)))))


