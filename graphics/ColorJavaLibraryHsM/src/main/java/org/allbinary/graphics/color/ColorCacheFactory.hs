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
module ColorCacheFactory where

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
import qualified ColorCacheableFactory -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AutomaticCacheInterface -- org.allbinary.logic.util.cache.AutomaticCacheInterface
import qualified AutomaticCacheInterfaceFactory -- org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory
import qualified CachePolicyFactory -- org.allbinary.logic.util.cache.CachePolicyFactory
import qualified CacheTypeFactory -- org.allbinary.logic.util.cache.CacheTypeFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ColorCacheFactory = ColorCacheFactory
    { header_ :: JavaHeader
    }

instance JavaNull ColorCacheFactory where
    javaNull = javaNullRecord "ColorCacheFactory"

instance JavaEquals ColorCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass ColorCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE cacheInterface #-}
cacheInterface = unsafePerformIO (newIORef (javaNull))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorCacheFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ColorCacheFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ColorCacheFactory -> IO ()
initFields_ this = do
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let sTATIC_BLOCK = "Static Block"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) ("ColorCacheFactory") sTATIC_BLOCK e)
            ) $ do
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).sTART) ("ColorCacheFactory") sTATIC_BLOCK)
            assignedValue <- (AutomaticCacheInterfaceFactory.getInstance (javaCast (jio (ColorCacheableFactory.new_))) (jget ((jio (CacheTypeFactory.getInstance))).cACHE) (jget ((jio (CachePolicyFactory.getInstance))).tHIRTY_MINUTES_TEN_THOUSAND_MAX))
            jset ColorCacheFactory.cacheInterface (assignedValue)
            Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).eND) ("ColorCacheFactory") sTATIC_BLOCK)
        pure ()

new_ :: IO ColorCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorCacheFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (AutomaticCacheInterface.AutomaticCacheInterface)
getInstance = do
        pure ((jget ColorCacheFactory.cacheInterface))


