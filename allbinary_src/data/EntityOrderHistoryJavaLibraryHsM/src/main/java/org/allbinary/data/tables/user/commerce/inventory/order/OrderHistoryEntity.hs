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
-- package org.allbinary.data.tables.user.commerce.inventory.order
module OrderHistoryEntity (module OrderHistoryEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, insert, insert_super, insert_impl, setStatus, setStatus_super, setStatus_impl, setPaymentMethod, setPaymentMethod_super, setPaymentMethod_impl, getStoreOrders, getStoreOrders_super, getStoreOrders_impl, getOrders, getOrders_super, getOrders_impl, getOrders, getOrders_super, getOrders_impl, getOrders, getOrders_super, getOrders_impl, getOrder, getOrder_super, getOrder_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, update, update_super, update_impl, logUtil, tableName)
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
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified Random -- java.util.Random
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified HistoryDbInitInfo -- org.allbinary.business.init.db.HistoryDbInitInfo
import qualified UserData -- org.allbinary.business.user.UserData
import qualified BillingAddressData -- org.allbinary.business.user.address.BillingAddressData
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified Basket -- org.allbinary.business.user.commerce.inventory.basket.Basket
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified Order -- org.allbinary.business.user.commerce.inventory.order.Order
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified PaymentInterface -- org.allbinary.business.user.commerce.money.payment.PaymentInterface
import qualified TaxFactory -- org.allbinary.business.user.commerce.money.tax.TaxFactory
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified ShippingMethods -- org.allbinary.business.user.commerce.shipping.ShippingMethods
import qualified ShippingInterface -- org.allbinary.business.user.commerce.shipping.modules.ShippingInterface
import qualified OrderHistoryIdGenerator -- org.allbinary.data.generator.OrderHistoryIdGenerator
import qualified TableDataFactory -- org.allbinary.data.tables.TableDataFactory
import qualified BillingAddressesEntity -- org.allbinary.data.tables.user.address.billing.BillingAddressesEntity
import qualified ShippingAddressesEntity -- org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity
import qualified PaymentEntity -- org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified OrderHistoryEntityInterface

-- implements OrderHistoryEntityInterface
data OrderHistoryEntity = OrderHistoryEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull OrderHistoryEntity where
    javaNull = javaNullRecord "OrderHistoryEntity"

instance JavaEquals OrderHistoryEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryEntity where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistoryEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = OrderHistoryEntity header_ base logUtil tableName
    jregisterLevel header_ this
    OrderHistoryEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    jregisterMethod header_ "setPaymentMethod" (\() -> setPaymentMethod_impl this)
    jregisterMethod header_ "getStoreOrders" (\() -> getStoreOrders_impl this)
    jregisterMethod header_ "getOrders" (\() -> getOrders_impl this)
    jregisterMethod header_ "getOrders" (\() -> getOrders_impl this)
    jregisterMethod header_ "getOrders" (\() -> getOrders_impl this)
    jregisterMethod header_ "getOrder" (\() -> getOrder_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: OrderHistoryEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("orderhistory")
    pure ()

new_ :: IO OrderHistoryEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderHistoryEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (HistoryDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> String -> Order.Order -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2

insert_impl :: OrderHistoryEntity -> String -> Order.Order -> IO (())
insert_impl this userName order = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Command Failed: " ++ javaToString vector) this iNSERT e)
            ) $ do
            paymentInterface <- (PaymentEntity.getDefault ((jio (PaymentEntity.new_))) userName)
            billingAddress <- (BillingAddressesEntity.getDefault ((jio (BillingAddressesEntity.new_1 userName))))
            shippingAddress <- (ShippingAddressesEntity.getDefault ((jio (ShippingAddressesEntity.new_1 userName))))
            abeClientInformation <- (ServiceClientInformationInterfaceFactory.getInstance)
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (Order.getStoreName order))))
            shippingInterface <- (ShippingMethods.getShippingInterface ((jio (ShippingMethods.new_2 abeClientInformation storeFrontInterface))) (jio (Order.getShippingMethod order)))
            shippingCost <- (ShippingInterface.getCost shippingInterface order)
            basketInterface <- (Order.getBasket order)
            subTotal <- (BasketInterface.getSubTotal basketInterface)
            taxRate <- (TaxFactory.getTaxRate ((jio (TaxFactory.getInstance ((jio (TaxFactory.getInstance))) abeClientInformation storeFrontInterface))) shippingAddress storeFrontInterface)
            tax <- (Money.new_)
            total <- (Money.new_)
            Control.Monad.void (Money.add total (jio (Money.toString shippingCost)))
            Control.Monad.void (Money.add total (jio (Money.toString subTotal)))
            Control.Monad.void (Money.add tax (jio (Money.toString total)))
            Control.Monad.void (Money.multiply tax taxRate)
            Control.Monad.void (Money.add total (jio (Money.toString tax)))
            let empty = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            Control.Monad.void (BasicArrayList.add vector (jio (OrderHistoryIdGenerator.getNext ((jio (OrderHistoryIdGenerator.new_))))))
            let zERO = (jget ((jio (TableDataFactory.getInstance))).zERO_STRING)
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getId order)))
            Control.Monad.void (BasicArrayList.add vector userName)
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getStoreName order)))
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (BasicArrayList.add vector zERO)
            Control.Monad.void (BasicArrayList.add vector time)
            Control.Monad.void (BasicArrayList.add vector zERO)
            Control.Monad.void (BasicArrayList.add vector zERO)
            Control.Monad.void (BasicArrayList.add vector (OrderHistoryData.pREPROCESSING))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getPaymentMethod order)))
            if (paymentInterface /= javaNull) then do
                Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getName paymentInterface)))
                Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getType paymentInterface)))
                Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getExpiration paymentInterface)))
                random <- (Random.nextInt ((jio (Random.new_))) (jget SuperCrypt.kEYMAX))
                Control.Monad.void (BasicArrayList.add vector (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 random))) (jio (PaymentInterface.getNumber paymentInterface)))))
                Control.Monad.void (BasicArrayList.add vector (javaToString (Prelude.fromIntegral (random) :: Int)))
            else do
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector zERO)
            if (billingAddress /= javaNull) then do
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getName billingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getStreet billingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCity billingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getState billingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCode billingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCountry billingAddress)))
            else do
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
            if (shippingAddress /= javaNull) then do
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getName shippingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getStreet shippingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCity shippingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getState shippingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCode shippingAddress)))
                Control.Monad.void (BasicArrayList.add vector (jio (StreetAddress.getCountry shippingAddress)))
            else do
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
                Control.Monad.void (BasicArrayList.add vector empty)
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getShippingMethod order)))
            Control.Monad.void (BasicArrayList.add vector (jio (Money.toString subTotal)))
            Control.Monad.void (BasicArrayList.add vector (jio (Money.toString shippingCost)))
            Control.Monad.void (BasicArrayList.add vector (jio (Money.toString tax)))
            Control.Monad.void (BasicArrayList.add vector (jio (Money.toString total)))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getSpecial order)))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getUserComments order)))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getUserCancelComments order)))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getStoreComments order)))
            Control.Monad.void (BasicArrayList.add vector (jio (Order.getStoreCancelComments order)))
            Control.Monad.void (OrderHistoryEntity.insert this vector)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


-- Java overload of insert with a different parameter count: give it a different name
insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderHistoryEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: OrderHistoryEntity)) a1

insert_impl :: OrderHistoryEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setStatus object_ a1 a2 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setStatus_super object_ a1 a2 = (setStatus_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2

setStatus_impl :: OrderHistoryEntity -> String -> String -> IO (())
setStatus_impl this orderId status = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "setStatus" e)
            ) $ do
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            updateHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put updateHashMap (OrderHistoryData.sTATUS) status)
            if ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.cANCELLED)) - 1) == 0) then do
                Control.Monad.void (HashMap.put updateHashMap (OrderHistoryData.cANCELDATE) time)
            else when ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.sHIPPED)) - 1) == 0) $ do
                Control.Monad.void (HashMap.put updateHashMap (OrderHistoryData.sHIPPEDDATE) time)
            Control.Monad.void (AbSqlBean.updateWhere_super this.base (OrderData.iD) orderId updateHashMap)
        pure ()


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setPaymentMethod object_ a1 a2 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
setPaymentMethod_super object_ a1 a2 = (setPaymentMethod_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2

setPaymentMethod_impl :: OrderHistoryEntity -> String -> String -> IO (())
setPaymentMethod_impl this orderId paymentMethod = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "setPaymentMethod" e)
            ) $ do
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            updateHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put updateHashMap (PaymentData.mETHOD) paymentMethod)
            Control.Monad.void (HashMap.put updateHashMap (OrderHistoryData.tRANSDATE) time)
            Control.Monad.void (AbSqlBean.updateWhere_super this.base (OrderData.iD) orderId updateHashMap)
        pure ()


-- throws Exception
getStoreOrders :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders object_ a1 = jmethod object_ "getStoreOrders" (\() -> (getStoreOrders_impl (javaCast object_ :: OrderHistoryEntity))) () a1

getStoreOrders_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders_super object_ a1 = (getStoreOrders_impl (javaCast object_ :: OrderHistoryEntity)) a1

getStoreOrders_impl :: OrderHistoryEntity -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreOrders_impl this storeFrontInterface = do
        orderReviewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put whereHashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jio (StoreFrontInterface.getName storeFrontInterface)))
        orderHashMapVector <- (AbSqlBean.getRows_super this.base whereHashMap)
        size <- (BasicArrayList.size orderHashMapVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let orderReviewHashMap = (javaCast (jio (BasicArrayList.get orderHashMapVector i)) :: HashMap.HashMap)
            orderReview <- (OrderHistory.new_2 (jio (Basket.new_)) orderReviewHashMap)
            Control.Monad.void (BasicArrayList.add orderReviewVector orderReview)
        pure (orderReviewVector)


-- throws Exception
getOrders :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getOrders object_ a1 = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: OrderHistoryEntity))) () a1

getOrders_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_super object_ a1 = (getOrders_impl (javaCast object_ :: OrderHistoryEntity)) a1

getOrders_impl :: OrderHistoryEntity -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_impl this userName = do
        orderReviewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put whereHashMap (UserData.uSERNAME) userName)
        orderHashMapVector <- (AbSqlBean.getRows_super this.base whereHashMap)
        size <- (BasicArrayList.size orderHashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let orderReviewHashMap = (javaCast (jio (BasicArrayList.get orderHashMapVector index)) :: HashMap.HashMap)
            orderReview <- (OrderHistory.new_2 (jio (Basket.new_)) orderReviewHashMap)
            Control.Monad.void (BasicArrayList.add orderReviewVector orderReview)
        pure (orderReviewVector)


-- throws Exception
-- Java overload of getOrders with a different parameter count: give it a different name
getOrders :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders object_ a1 a2 a3 = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2 a3

getOrders_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_super object_ a1 a2 a3 = (getOrders_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2 a3

getOrders_impl :: OrderHistoryEntity -> String -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_impl this status fromDate toDate = do
        orderReviewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put whereHashMap (OrderHistoryData.sTATUS) status)
        orderHashMapVector <- (AbSqlBean.getRowsWhereBetween_super this.base whereHashMap (OrderHistoryData.oRDERDATE) fromDate toDate)
        size <- (BasicArrayList.size orderHashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let orderReviewHashMap = (javaCast (jio (BasicArrayList.get orderHashMapVector index)) :: HashMap.HashMap)
            orderReview <- (OrderHistory.new_2 (jio (Basket.new_)) orderReviewHashMap)
            Control.Monad.void (BasicArrayList.add orderReviewVector orderReview)
        pure (orderReviewVector)


-- throws Exception
-- Java overload of getOrders with a different parameter count: give it a different name
getOrders :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders object_ a1 a2 = jmethod object_ "getOrders" (\() -> (getOrders_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2

getOrders_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_super object_ a1 a2 = (getOrders_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2

getOrders_impl :: OrderHistoryEntity -> String -> String -> IO (BasicArrayList.BasicArrayList)
getOrders_impl this fromDate toDate = do
        orderReviewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        orderHashMapVector <- (AbSqlBean.getRowsWhereBetween_super this.base (OrderHistoryData.oRDERDATE) fromDate toDate)
        size <- (BasicArrayList.size orderHashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let orderReviewHashMap = (javaCast (jio (BasicArrayList.get orderHashMapVector index)) :: HashMap.HashMap)
            orderReview <- (OrderHistory.new_2 (jio (Basket.new_)) orderReviewHashMap)
            Control.Monad.void (BasicArrayList.add orderReviewVector orderReview)
        pure (orderReviewVector)


-- throws Exception
getOrder :: (JavaObjectClass this_) => this_ -> String -> IO (OrderHistory.OrderHistory)
getOrder object_ a1 = jmethod object_ "getOrder" (\() -> (getOrder_impl (javaCast object_ :: OrderHistoryEntity))) () a1

getOrder_super :: (JavaObjectClass this_) => this_ -> String -> IO (OrderHistory.OrderHistory)
getOrder_super object_ a1 = (getOrder_impl (javaCast object_ :: OrderHistoryEntity)) a1

getOrder_impl :: OrderHistoryEntity -> String -> IO (OrderHistory.OrderHistory)
getOrder_impl this id = do
    javaCatchReturn $ do
        whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put whereHashMap (OrderData.iD) id)
        orderReviewHashMap <- (AbSqlBean.getRow_super this.base whereHashMap)
        if (orderReviewHashMap /= javaNull) then do
            orderHistory <- (OrderHistory.new_2 (jio (Basket.new_)) orderReviewHashMap)
            javaReturn (orderHistory)
        else do
            javaReturn (javaNull)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: OrderHistoryEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: OrderHistoryEntity))

createTableStatement_impl :: OrderHistoryEntity -> IO (String)
createTableStatement_impl this = do
        entryData <- (EntryData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "CREATE TABLE ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer " (")
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).iD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderData.iD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (UserData.uSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (StoreFrontData.getInstance))).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sHIPPEDDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.oRDERDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.tRANSDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.cANCELDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sTATUS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.mETHOD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.nAME))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.tYPE))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.eXPIRATION))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.nUMBER))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).eNCRYPTION))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.sTREET))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.cITY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.sTATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.cODE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (BillingAddressData.cOUNTRY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.sTREET))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.cITY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.sTATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.cODE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingAddressData.cOUNTRY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingMethodData.nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sUBTOTAL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sHIPPINGCOST))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.tAX))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.tOTAL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).sPECIAL))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderData.cUSTOMERCOMMENT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderData.cUSTOMERCANCELCOMMENT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderData.sTORECOMMENT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderData.sTORECANCELCOMMENT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer "PRIMARY KEY(")
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).iD))
        Control.Monad.void (StringMaker.append stringBuffer ") )")
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: OrderHistoryEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: OrderHistoryEntity))

createTable_impl :: OrderHistoryEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (OrderHistoryEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: OrderHistoryEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: OrderHistoryEntity))

dropTable_impl :: OrderHistoryEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: OrderHistoryEntity))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: OrderHistoryEntity)) a1 a2

update_impl :: OrderHistoryEntity -> HashMap.HashMap -> HashMap.HashMap -> IO (())
update_impl this whereHashMap orderHashMap = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            Control.Monad.void (AbSqlBean.updateWhere this whereHashMap orderHashMap)
        pure ()


