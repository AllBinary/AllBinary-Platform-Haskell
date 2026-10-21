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
-- package org.allbinary.data.tables.user.address.shipping
module ShippingAddressesEntityFactory where

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
import qualified ShippingAddressesEntity -- same package or java.lang
import qualified StreetAddressesEntity -- org.allbinary.data.tables.user.address.StreetAddressesEntity
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ShippingAddressesEntityFactory = ShippingAddressesEntityFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull ShippingAddressesEntityFactory where
    javaNull = javaNullRecord "ShippingAddressesEntityFactory"

instance JavaEquals ShippingAddressesEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressesEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressesEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ShippingAddressesEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = ShippingAddressesEntityFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: ShippingAddressesEntityFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (ShippingAddressesEntityFactory)
getInstance = do
        pure (ShippingAddressesEntityFactory.instance_)

new_ :: IO ShippingAddressesEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShippingAddressesEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ShippingAddressesEntityFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ShippingAddressesEntityFactory)) a1

getInstance_impl :: ShippingAddressesEntityFactory -> String -> IO (StreetAddressesEntity.StreetAddressesEntity)
getInstance_impl this userName = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getShippingAddressesEntityInstance()" e)
            pure (javaNull)
            ) $ do
            (fmap (\value_ -> javaCast value_ :: StreetAddressesEntity.StreetAddressesEntity) (ShippingAddressesEntity.new_1 userName))


