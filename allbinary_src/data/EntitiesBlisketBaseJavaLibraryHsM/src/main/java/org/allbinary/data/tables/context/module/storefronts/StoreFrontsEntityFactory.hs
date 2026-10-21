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
-- package org.allbinary.data.tables.context.module.storefronts
module StoreFrontsEntityFactory where

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
import qualified StoreFrontsEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StoreFrontsEntityFactory = StoreFrontsEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreFrontsEntityFactory where
    javaNull = javaNullRecord "StoreFrontsEntityFactory"

instance JavaEquals StoreFrontsEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreFrontsEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreFrontsEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreFrontsEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StoreFrontsEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getStoreFrontsEntityInstance" (\() -> getStoreFrontsEntityInstance_impl this)
    pure this

initFields_ :: StoreFrontsEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StoreFrontsEntityFactory)
getInstance = do
        pure (StoreFrontsEntityFactory.instance_)

new_ :: IO StoreFrontsEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreFrontsEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getStoreFrontsEntityInstance :: (JavaObjectClass this_) => this_ -> IO (StoreFrontsEntity.StoreFrontsEntity)
getStoreFrontsEntityInstance object_ = jmethod object_ "getStoreFrontsEntityInstance" (\() -> (getStoreFrontsEntityInstance_impl (javaCast object_ :: StoreFrontsEntityFactory))) ()

getStoreFrontsEntityInstance_super :: (JavaObjectClass this_) => this_ -> IO (StoreFrontsEntity.StoreFrontsEntity)
getStoreFrontsEntityInstance_super object_ = (getStoreFrontsEntityInstance_impl (javaCast object_ :: StoreFrontsEntityFactory))

getStoreFrontsEntityInstance_impl :: StoreFrontsEntityFactory -> IO (StoreFrontsEntity.StoreFrontsEntity)
getStoreFrontsEntityInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (StoreFrontsEntity.new_)


