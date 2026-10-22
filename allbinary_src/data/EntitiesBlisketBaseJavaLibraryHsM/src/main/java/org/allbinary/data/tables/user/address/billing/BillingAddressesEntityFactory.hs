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
-- package org.allbinary.data.tables.user.address.billing
module BillingAddressesEntityFactory where

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
import qualified BillingAddressesEntity -- same package or java.lang
import qualified StreetAddressesEntity -- org.allbinary.data.tables.user.address.StreetAddressesEntity
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BillingAddressesEntityFactory = BillingAddressesEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BillingAddressesEntityFactory where
    javaNull = javaNullRecord "BillingAddressesEntityFactory"

instance JavaEquals BillingAddressesEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BillingAddressesEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass BillingAddressesEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BillingAddressesEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = BillingAddressesEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: BillingAddressesEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (BillingAddressesEntityFactory)
getInstance = do
        pure (BillingAddressesEntityFactory.instance_)

new_ :: IO BillingAddressesEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BillingAddressesEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance_1 :: (JavaObjectClass this_) => this_ -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: BillingAddressesEntityFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: BillingAddressesEntityFactory)) a1

getInstance_1_impl :: BillingAddressesEntityFactory -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance_1_impl this userName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (fmap (\value_ -> javaCast value_ :: StreetAddressesEntity.StreetAddressesEntity) (BillingAddressesEntity.new_1 userName))


