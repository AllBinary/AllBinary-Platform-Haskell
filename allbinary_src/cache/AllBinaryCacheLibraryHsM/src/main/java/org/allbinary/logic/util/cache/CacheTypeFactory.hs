{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
module CacheTypeFactory where

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
import qualified CacheType -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data CacheTypeFactory = CacheTypeFactory
    { header_ :: JavaHeader
    , nO_CACHE :: IORef (CacheType.CacheType)
    , cACHE :: IORef (CacheType.CacheType)
    , sET :: IORef (CacheType.CacheType)
    , cACHE_VECTOR :: IORef (CacheType.CacheType)
    }

instance JavaNull CacheTypeFactory where
    javaNull = javaNullRecord "CacheTypeFactory"

instance JavaEquals CacheTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CacheTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass CacheTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CacheTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nO_CACHE <- newIORef javaNull
    cACHE <- newIORef javaNull
    sET <- newIORef javaNull
    cACHE_VECTOR <- newIORef javaNull
    let this = CacheTypeFactory header_ nO_CACHE cACHE sET cACHE_VECTOR
    jregisterLevel header_ this
    pure this

initFields_ :: CacheTypeFactory -> IO ()
initFields_ this = do
    jset this.nO_CACHE =<< (CacheType.new_2 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.cACHE =<< (CacheType.new_2 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.sET =<< (CacheType.new_2 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) "Set")
    jset this.cACHE_VECTOR =<< (CacheType.new_2 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_ :: IO CacheTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CacheTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (CacheTypeFactory)
getInstance = do
        pure (CacheTypeFactory.instance_)


