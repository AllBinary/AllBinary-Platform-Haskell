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
-- package org.allbinary.business.context.modules.storefronts
module BasicStoreFrontFactory where

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
import qualified BasicStoreFrontsEntity -- same package or java.lang
import qualified BasicStoreFrontInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BasicStoreFrontFactory = BasicStoreFrontFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicStoreFrontFactory where
    javaNull = javaNullRecord "BasicStoreFrontFactory"

instance JavaEquals BasicStoreFrontFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicStoreFrontFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicStoreFrontFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicStoreFrontFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BasicStoreFrontFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: BasicStoreFrontFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (BasicStoreFrontFactory)
getInstance = do
        pure (BasicStoreFrontFactory.instance_)

new_ :: IO BasicStoreFrontFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicStoreFrontFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: BasicStoreFrontFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: BasicStoreFrontFactory)) a1

getInstance_1_impl :: BasicStoreFrontFactory -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getInstance_1_impl this storeName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            storeFronts <- (BasicStoreFrontsEntity.new_)
            (BasicStoreFrontsEntity.getStoreFrontInterface storeFronts storeName)


