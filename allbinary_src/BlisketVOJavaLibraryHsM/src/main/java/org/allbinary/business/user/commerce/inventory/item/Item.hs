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
-- package org.allbinary.business.user.commerce.inventory.item
module Item (module Item, module BasicItem) where

import BasicItem hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setData, setData_super, setData_impl, setGroup, setGroup_super, setGroup_impl, setTax, setTax_super, setTax_impl, setShippingType, setShippingType_super, setShippingType_impl, setShippingCost, setShippingCost_super, setShippingCost_impl, setShippingAddress, setShippingAddress_super, setShippingAddress_impl, setSpecial, setSpecial_super, setSpecial_impl, getGroup, getGroup_super, getGroup_impl, getTax, getTax_super, getTax_impl, getShippingType, getShippingType_super, getShippingType_impl, getShippingCost, getShippingCost_super, getShippingCost_impl, getShippingAddress, getShippingAddress_super, getShippingAddress_impl, getSpecial, getSpecial_super, getSpecial_impl, toHashMap, toHashMap_super, toHashMap_impl, group, tax, shippingType, shippingCost, shippedDate, shippingAddress, special)
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
import qualified HashMap -- java.util.HashMap
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicItem
import qualified OrderItemInterface

-- implements OrderItemInterface
data Item = Item
    { header_ :: JavaHeader
    , base :: BasicItem.BasicItem
    , group :: IORef (String)
    , tax :: IORef (String)
    , shippingType :: IORef (String)
    , shippingCost :: IORef (String)
    , shippedDate :: IORef (String)
    , shippingAddress :: IORef (StreetAddress.StreetAddress)
    , special :: IORef (String)
    }

instance JavaNull Item where
    javaNull = javaNullRecord "Item"

instance JavaEquals Item where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Item where
    (==) = jrecordEquals

instance JavaObjectClass Item where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO Item
newRecord_ = do
    base <- BasicItem.newRecord_
    let header_ = base.header_
    group <- newIORef ""
    tax <- newIORef ""
    shippingType <- newIORef ""
    shippingCost <- newIORef ""
    shippedDate <- newIORef ""
    shippingAddress <- newIORef javaNull
    special <- newIORef ""
    let this = Item header_ base group tax shippingType shippingCost shippedDate shippingAddress special
    jregisterLevel header_ this
    OrderItemInterface.registerInterface_ header_
    jregisterMethod header_ "setData" (\() -> setData_impl this)
    jregisterMethod header_ "setGroup" (\() -> setGroup_impl this)
    jregisterMethod header_ "setTax" (\() -> setTax_impl this)
    jregisterMethod header_ "setShippingType" (\() -> setShippingType_impl this)
    jregisterMethod header_ "setShippingCost" (\() -> setShippingCost_impl this)
    jregisterMethod header_ "setShippingAddress" (\() -> setShippingAddress_impl this)
    jregisterMethod header_ "setSpecial" (\() -> setSpecial_impl this)
    jregisterMethod header_ "getGroup" (\() -> getGroup_impl this)
    jregisterMethod header_ "getTax" (\() -> getTax_impl this)
    jregisterMethod header_ "getShippingType" (\() -> getShippingType_impl this)
    jregisterMethod header_ "getShippingCost" (\() -> getShippingCost_impl this)
    jregisterMethod header_ "getShippingAddress" (\() -> getShippingAddress_impl this)
    jregisterMethod header_ "getSpecial" (\() -> getSpecial_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: Item -> IO ()
initFields_ this = do
    jset this.group (javaNull)
    jset this.tax (javaNull)
    jset this.shippingType (javaNull)
    jset this.shippingCost (javaNull)
    jset this.shippedDate ("")
    jset this.shippingAddress (javaNull)
    jset this.special ("")
    pure ()

new_1 :: HashMap.HashMap -> IO Item
new_1 itemHashMap = do
    this <- newRecord_
    init_1 this itemHashMap
    pure this

init_1 :: Item -> HashMap.HashMap -> IO ()
init_1 this itemHashMap = do
        BasicItem.init_1 this.base (itemHashMap)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (Item.setData this itemHashMap)
        pure ()

new_ :: IO Item
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Item -> IO ()
init_ this = do
        BasicItem.init_ this.base
        initFields_ this
        let eMPTY = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        jset (this).group (eMPTY)
        jset (this).tax (eMPTY)
        jset (this).shippingType (eMPTY)
        jset (this).shippingCost (eMPTY)
        assignedValue <- (StreetAddress.new_)
        jset (this).shippingAddress (assignedValue)
        pure ()


setData :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setData object_ a1 = jmethod object_ "setData" (\() -> (setData_impl (javaCast object_ :: Item))) () a1

setData_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setData_super object_ a1 = (setData_impl (javaCast object_ :: Item)) a1

setData_impl :: Item -> HashMap.HashMap -> IO (())
setData_impl this itemHashMap = do
        jset (this).group ((javaCast (jio (HashMap.get itemHashMap (ShippingMethodData.gROUP))) :: String))
        jset (this).tax ((javaCast (jio (HashMap.get itemHashMap (OrderHistoryData.tAX))) :: String))
        jset (this).shippingType ((javaCast (jio (HashMap.get itemHashMap (ShippingMethodData.nAME))) :: String))
        jset (this).shippingCost ((javaCast (jio (HashMap.get itemHashMap (ShippingMethodData.cOST))) :: String))
        jset (this).shippedDate ((javaCast (jio (HashMap.get itemHashMap (OrderHistoryData.sHIPPEDDATE))) :: String))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.nAME) (jio (HashMap.get itemHashMap (ShippingAddressData.nAME))))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.sTREET) (jio (HashMap.get itemHashMap (ShippingAddressData.sTREET))))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.cITY) (jio (HashMap.get itemHashMap (ShippingAddressData.cITY))))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.sTATE) (jio (HashMap.get itemHashMap (ShippingAddressData.sTATE))))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.cODE) (jio (HashMap.get itemHashMap (ShippingAddressData.cODE))))
        Control.Monad.void (HashMap.put itemHashMap (StreetAddressData.cOUNTRY) (jio (HashMap.get itemHashMap (ShippingAddressData.cOUNTRY))))
        assignedValue <- (StreetAddress.new_1 itemHashMap)
        jset (this).shippingAddress (assignedValue)
        pure ()


setGroup :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroup object_ a1 = jmethod object_ "setGroup" (\() -> (setGroup_impl (javaCast object_ :: Item))) () a1

setGroup_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setGroup_super object_ a1 = (setGroup_impl (javaCast object_ :: Item)) a1

setGroup_impl :: Item -> String -> IO (())
setGroup_impl this value = do
        jset (this).group (value)
        pure ()


setTax :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTax object_ a1 = jmethod object_ "setTax" (\() -> (setTax_impl (javaCast object_ :: Item))) () a1

setTax_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTax_super object_ a1 = (setTax_impl (javaCast object_ :: Item)) a1

setTax_impl :: Item -> String -> IO (())
setTax_impl this value = do
        jset (this).tax (value)
        pure ()


setShippingType :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingType object_ a1 = jmethod object_ "setShippingType" (\() -> (setShippingType_impl (javaCast object_ :: Item))) () a1

setShippingType_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingType_super object_ a1 = (setShippingType_impl (javaCast object_ :: Item)) a1

setShippingType_impl :: Item -> String -> IO (())
setShippingType_impl this value = do
        jset (this).shippingType (value)
        pure ()


setShippingCost :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingCost object_ a1 = jmethod object_ "setShippingCost" (\() -> (setShippingCost_impl (javaCast object_ :: Item))) () a1

setShippingCost_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingCost_super object_ a1 = (setShippingCost_impl (javaCast object_ :: Item)) a1

setShippingCost_impl :: Item -> String -> IO (())
setShippingCost_impl this value = do
        jset (this).shippingCost (value)
        pure ()


setShippingAddress :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setShippingAddress object_ a1 = jmethod object_ "setShippingAddress" (\() -> (setShippingAddress_impl (javaCast object_ :: Item))) () a1

setShippingAddress_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
setShippingAddress_super object_ a1 = (setShippingAddress_impl (javaCast object_ :: Item)) a1

setShippingAddress_impl :: Item -> StreetAddress.StreetAddress -> IO (())
setShippingAddress_impl this value = do
        jset (this).shippingAddress (value)
        pure ()


setSpecial :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial object_ a1 = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: Item))) () a1

setSpecial_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial_super object_ a1 = (setSpecial_impl (javaCast object_ :: Item)) a1

setSpecial_impl :: Item -> String -> IO (())
setSpecial_impl this value = do
        jset (this).special (value)
        pure ()


getGroup :: (JavaObjectClass this_) => this_ -> IO (String)
getGroup object_ = jmethod object_ "getGroup" (\() -> (getGroup_impl (javaCast object_ :: Item))) ()

getGroup_super :: (JavaObjectClass this_) => this_ -> IO (String)
getGroup_super object_ = (getGroup_impl (javaCast object_ :: Item))

getGroup_impl :: Item -> IO (String)
getGroup_impl this = do
        pure ((jget (this).group))


getTax :: (JavaObjectClass this_) => this_ -> IO (String)
getTax object_ = jmethod object_ "getTax" (\() -> (getTax_impl (javaCast object_ :: Item))) ()

getTax_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTax_super object_ = (getTax_impl (javaCast object_ :: Item))

getTax_impl :: Item -> IO (String)
getTax_impl this = do
        pure ((jget (this).tax))


getShippingType :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingType object_ = jmethod object_ "getShippingType" (\() -> (getShippingType_impl (javaCast object_ :: Item))) ()

getShippingType_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingType_super object_ = (getShippingType_impl (javaCast object_ :: Item))

getShippingType_impl :: Item -> IO (String)
getShippingType_impl this = do
        pure ((jget (this).shippingType))


getShippingCost :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingCost object_ = jmethod object_ "getShippingCost" (\() -> (getShippingCost_impl (javaCast object_ :: Item))) ()

getShippingCost_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingCost_super object_ = (getShippingCost_impl (javaCast object_ :: Item))

getShippingCost_impl :: Item -> IO (String)
getShippingCost_impl this = do
        pure ((jget (this).shippingCost))


getShippingAddress :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress object_ = jmethod object_ "getShippingAddress" (\() -> (getShippingAddress_impl (javaCast object_ :: Item))) ()

getShippingAddress_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getShippingAddress_super object_ = (getShippingAddress_impl (javaCast object_ :: Item))

getShippingAddress_impl :: Item -> IO (StreetAddress.StreetAddress)
getShippingAddress_impl this = do
        pure ((jget (this).shippingAddress))


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: Item))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: Item))

getSpecial_impl :: Item -> IO (String)
getSpecial_impl this = do
        pure ((jget (this).special))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: Item))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: Item))

toHashMap_impl :: Item -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (BasicItem.toHashMap_super this.base)
        Control.Monad.void (HashMap.put hashMap (ShippingMethodData.gROUP) (jget (this).group))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.tAX) (jget (this).tax))
        Control.Monad.void (HashMap.put hashMap (ShippingMethodData.nAME) (jget (this).shippingType))
        Control.Monad.void (HashMap.put hashMap (ShippingMethodData.cOST) (jget (this).shippingCost))
        Control.Monad.void (HashMap.put hashMap (OrderHistoryData.sHIPPEDDATE) (jget (this).shippedDate))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).sPECIAL) (jget (this).special))
        pure (hashMap)


