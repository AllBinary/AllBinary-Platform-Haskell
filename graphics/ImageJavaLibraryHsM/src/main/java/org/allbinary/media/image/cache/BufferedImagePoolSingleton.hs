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
-- package org.allbinary.media.image.cache
module BufferedImagePoolSingleton where

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
import qualified BufferedImageCacheableFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CachePolicyFactory -- org.allbinary.logic.util.cache.CachePolicyFactory
import qualified PoolInterface -- org.allbinary.logic.util.cache.PoolInterface
import qualified PoolInterfaceFactory -- org.allbinary.logic.util.cache.PoolInterfaceFactory
import qualified PoolTypeFactory -- org.allbinary.logic.util.cache.PoolTypeFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BufferedImagePoolSingleton = BufferedImagePoolSingleton
    { header_ :: JavaHeader
    }

instance JavaNull BufferedImagePoolSingleton where
    javaNull = javaNullRecord "BufferedImagePoolSingleton"

instance JavaEquals BufferedImagePoolSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedImagePoolSingleton where
    (==) = jrecordEquals

instance JavaObjectClass BufferedImagePoolSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE poolInterface #-}
poolInterface = unsafePerformIO (newIORef (javaNull))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedImagePoolSingleton
newRecord_ = do
    header_ <- newJavaHeader
    let this = BufferedImagePoolSingleton header_
    jregisterLevel header_ this
    pure this

initFields_ :: BufferedImagePoolSingleton -> IO ()
initFields_ this = do
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let sTATIC_BLOCK = "Static Block"
        let instance_ = "BufferedImagePoolSingleton"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) instance_ sTATIC_BLOCK e)
            ) $ do
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).sTART) instance_ sTATIC_BLOCK)
            assignedValue <- (PoolInterfaceFactory.getInstance (javaCast (jio (BufferedImageCacheableFactory.new_))) (jget ((jio (PoolTypeFactory.getInstance))).vECTOR_POOL) (jget ((jio (CachePolicyFactory.getInstance))).mAX_TIME_THOUSAND_MAX))
            jset BufferedImagePoolSingleton.poolInterface (assignedValue)
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).eND) instance_ sTATIC_BLOCK)
        pure ()

new_ :: IO BufferedImagePoolSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BufferedImagePoolSingleton -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (PoolInterface.PoolInterface)
getInstance = do
        pure ((jget BufferedImagePoolSingleton.poolInterface))


