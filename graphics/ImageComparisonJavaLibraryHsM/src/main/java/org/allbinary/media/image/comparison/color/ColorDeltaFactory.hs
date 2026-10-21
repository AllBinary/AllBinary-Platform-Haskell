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
-- package org.allbinary.media.image.comparison.color
module ColorDeltaFactory where

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
import qualified ColorDelta -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified CacheInterfaceFactory -- org.allbinary.logic.util.cache.CacheInterfaceFactory
import qualified CachePolicyFactory -- org.allbinary.logic.util.cache.CachePolicyFactory
import qualified CacheTypeFactory -- org.allbinary.logic.util.cache.CacheTypeFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ColorDeltaFactory = ColorDeltaFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ColorDeltaFactory where
    javaNull = javaNullRecord "ColorDeltaFactory"

instance JavaEquals ColorDeltaFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorDeltaFactory where
    (==) = jrecordEquals

instance JavaObjectClass ColorDeltaFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE cacheInterface #-}
cacheInterface = unsafePerformIO (newIORef (javaNull))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorDeltaFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ColorDeltaFactory header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: ColorDeltaFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let sTATIC_BLOCK = "Static Block"
        let instance_ = "ColorDeltaFactory"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) instance_ sTATIC_BLOCK e)
            ) $ do
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).sTART) instance_ sTATIC_BLOCK)
            jset ColorDeltaFactory.cacheInterface ((javaCast (jio (CacheInterfaceFactory.getInstance (jget ((jio (CacheTypeFactory.getInstance))).cACHE) (jget ((jio (CachePolicyFactory.getInstance))).tHIRTY_MINUTES_TEN_THOUSAND_MAX))) :: AutomaticCacheInterface.AutomaticCacheInterface))
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).eND) instance_ sTATIC_BLOCK)
        pure ()

new_ :: IO ColorDeltaFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorDeltaFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: Int -> Int -> IO (ColorDelta.ColorDelta)
getInstance rgb1 rgb2 = do
        colorDelta <- newIORef ((javaCast (jio (get ((jget ColorDeltaFactory.cacheInterface)) (jio (ColorDelta.getKey rgb1 rgb2)))) :: ColorDelta.ColorDelta))
        when ((jget colorDelta) == javaNull) $ do
            assignedValue <- (ColorDelta.new_2 rgb1 rgb2)
            jset colorDelta (assignedValue)
        pure ((jget colorDelta))


