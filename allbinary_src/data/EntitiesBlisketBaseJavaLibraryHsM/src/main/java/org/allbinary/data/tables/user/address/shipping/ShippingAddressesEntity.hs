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
module ShippingAddressesEntity (module ShippingAddressesEntity, module StreetAddressesEntity) where

import StreetAddressesEntity hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, tABLENAME)
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
import qualified StreetAddressesEntity -- org.allbinary.data.tables.user.address.StreetAddressesEntity

data ShippingAddressesEntity = ShippingAddressesEntity
    { header_ :: JavaHeader
    , base :: StreetAddressesEntity.StreetAddressesEntity
    , tABLENAME :: IORef (String)
    }

instance JavaNull ShippingAddressesEntity where
    javaNull = javaNullRecord "ShippingAddressesEntity"

instance JavaEquals ShippingAddressesEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingAddressesEntity where
    (==) = jrecordEquals

instance JavaObjectClass ShippingAddressesEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingAddressesEntity
newRecord_ = do
    base <- StreetAddressesEntity.newRecord_
    let header_ = base.header_
    tABLENAME <- newIORef ""
    let this = ShippingAddressesEntity header_ base tABLENAME
    jregisterLevel header_ this
    pure this

initFields_ :: ShippingAddressesEntity -> IO ()
initFields_ this = do
    jset this.tABLENAME ("shipping")
    pure ()

new_1 :: String -> IO ShippingAddressesEntity
new_1 userName = do
    this <- newRecord_
    init_1 this userName
    pure this

init_1 :: ShippingAddressesEntity -> String -> IO ()
init_1 this userName = do
        StreetAddressesEntity.init_1 this.base (userName)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (StreetAddressesEntity.setTableName this (jget (this).tABLENAME))
        pure ()


