{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
module PoolTypeFactory where

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
import qualified PoolType -- same package or java.lang
import qualified CacheTypeFactory -- same package or java.lang

data PoolTypeFactory = PoolTypeFactory
    { header_ :: JavaHeader
    , vECTOR_POOL :: IORef (PoolType.PoolType)
    }

instance JavaNull PoolTypeFactory where
    javaNull = javaNullRecord "PoolTypeFactory"

instance JavaEquals PoolTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PoolTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass PoolTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PoolTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    vECTOR_POOL <- newIORef javaNull
    let this = PoolTypeFactory header_ vECTOR_POOL
    jregisterLevel header_ this
    pure this

initFields_ :: PoolTypeFactory -> IO ()
initFields_ this = do
    jset this.vECTOR_POOL =<< (PoolType.new_1 (jget ((jio (CacheTypeFactory.getInstance))).nO_CACHE))
    pure ()

new_ :: IO PoolTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PoolTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PoolTypeFactory)
getInstance = do
        pure (PoolTypeFactory.instance_)


