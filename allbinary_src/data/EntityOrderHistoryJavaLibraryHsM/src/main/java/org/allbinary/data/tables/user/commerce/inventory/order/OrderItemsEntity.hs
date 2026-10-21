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
module OrderItemsEntity (module OrderItemsEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, setStatus, setStatus_super, setStatus_impl, isEverythingShipped, isEverythingShipped_super, isEverythingShipped_impl, getBasketReview, getBasketReview_super, getBasketReview_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, basicItemData, tableName)
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
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified ListIterator -- java.util.ListIterator
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified HistoryDbInitInfo -- org.allbinary.business.init.db.HistoryDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified UserData -- org.allbinary.business.user.UserData
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified BasketReview -- org.allbinary.business.user.commerce.inventory.basket.BasketReview
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified Item -- org.allbinary.business.user.commerce.inventory.item.Item
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified OrderItemIdGenerator -- org.allbinary.data.generator.OrderItemIdGenerator
import qualified TableDataFactory -- org.allbinary.data.tables.TableDataFactory
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified OrderItemsEntityInterface

-- implements OrderItemsEntityInterface
data OrderItemsEntity = OrderItemsEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , tableName :: IORef (String)
    }

instance JavaNull OrderItemsEntity where
    javaNull = javaNullRecord "OrderItemsEntity"

instance JavaEquals OrderItemsEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderItemsEntity where
    (==) = jrecordEquals

instance JavaObjectClass OrderItemsEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderItemsEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    tableName <- newIORef ""
    let this = OrderItemsEntity header_ base logUtil basicItemData tableName
    jregisterLevel header_ this
    OrderItemsEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "setStatus" (\() -> setStatus_impl this)
    jregisterMethod header_ "isEverythingShipped" (\() -> isEverythingShipped_impl this)
    jregisterMethod header_ "getBasketReview" (\() -> getBasketReview_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: OrderItemsEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.tableName ("orderitems")
    pure ()

new_ :: IO OrderItemsEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: OrderItemsEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (HistoryDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> String -> OrderInterface.OrderInterface -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: OrderItemsEntity))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> String -> OrderInterface.OrderInterface -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: OrderItemsEntity)) a1 a2

insert_impl :: OrderItemsEntity -> String -> OrderInterface.OrderInterface -> IO (())
insert_impl this userName order = do
        vector <- newIORef =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Command Failed: " ++ (jio (BasicArrayList.toString ((jget vector))))) this iNSERT e)
            ) $ do
            basket <- (OrderInterface.getBasket order)
            items <- (BasketInterface.getIds basket)
            let zERO_STRING = (jget ((jio (TableDataFactory.getInstance))).zERO_STRING)
            let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            inventoryEntity <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            itemsArray <- (Set.toArray items)
            let itemsSize = (jlength itemsArray)
            forM_ [0 .. itemsSize - 1] $ \i -> javaIteration (pure ()) $ do
                let item = (javaCast (jindex itemsArray (i)) :: String)
                itemInterface <- (InventoryEntity.getItem inventoryEntity item)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset vector (assignedValue)
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (OrderItemIdGenerator.getNext ((jio (OrderItemIdGenerator.new_))))))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (OrderInterface.getId order)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jget ((jio (TableDataFactory.getInstance))).iNTEGER_MAX_VALUE_STRING))
                Control.Monad.void (BasicArrayList.add ((jget vector)) userName)
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (OrderInterface.getStoreName order)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getId itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (BasketInterface.toString ((jio (BasketInterface.getNumberOf basket item))))))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getNewOrUsed itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getSummary itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getDistributor itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getIdUsedByDistributor itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getProducedBy itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getProductionDate itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getStartProductionDate itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getDescription itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getKeywords itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getCategory itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getType itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getSmallImage itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getMediumImage itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getLargeImage itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getWeight itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.toString ((jio (ItemInterface.getPrice itemInterface))))))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getComment itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getCustoms itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) (jio (ItemInterface.getDownloads itemInterface)))
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) eMPTY_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) zERO_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) zERO_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) zERO_STRING)
                Control.Monad.void (BasicArrayList.add ((jget vector)) zERO_STRING)
                Control.Monad.void (OrderItemsEntity.insert this (jget vector))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Command Success Added: " ++ javaToString (jio (Set.size items))) this iNSERT)
        pure ()


setStatus :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
setStatus object_ a1 a2 a3 = jmethod object_ "setStatus" (\() -> (setStatus_impl (javaCast object_ :: OrderItemsEntity))) () a1 a2 a3

setStatus_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
setStatus_super object_ a1 a2 a3 = (setStatus_impl (javaCast object_ :: OrderItemsEntity)) a1 a2 a3

setStatus_impl :: OrderItemsEntity -> String -> String -> String -> IO (())
setStatus_impl this orderId groupId status = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "setStatus" e)
            ) $ do
            whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            updateHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereHashMap (OrderData.iD) orderId)
            Control.Monad.void (HashMap.put whereHashMap (ShippingMethodData.gROUP) groupId)
            Control.Monad.void (HashMap.put updateHashMap (OrderHistoryData.sTATUS) status)
            Control.Monad.void (AbSqlBean.updateWhere_super this.base whereHashMap updateHashMap)
        pure ()


isEverythingShipped :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEverythingShipped object_ a1 = jmethod object_ "isEverythingShipped" (\() -> (isEverythingShipped_impl (javaCast object_ :: OrderItemsEntity))) () a1

isEverythingShipped_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEverythingShipped_super object_ a1 = (isEverythingShipped_impl (javaCast object_ :: OrderItemsEntity)) a1

isEverythingShipped_impl :: OrderItemsEntity -> String -> IO (Bool)
isEverythingShipped_impl this orderId = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "isEverythingShipped" e)
            pure (False)
            ) $ do
            itemStatusVector <- (AbSqlBean.getColumnWhere_super this.base (OrderHistoryData.sTATUS) (OrderData.iD) orderId)
            size <- (BasicArrayList.size itemStatusVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let status = (javaCast (jio (BasicArrayList.get itemStatusVector index)) :: String)
                when ((Prelude.fromEnum (Prelude.compare status (OrderHistoryData.sHIPPED)) - 1) /= 0) $ do
                    javaReturn (False)
            pure (True)


getBasketReview :: (JavaObjectClass this_) => this_ -> String -> IO (BasketReview.BasketReview)
getBasketReview object_ a1 = jmethod object_ "getBasketReview" (\() -> (getBasketReview_impl (javaCast object_ :: OrderItemsEntity))) () a1

getBasketReview_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasketReview.BasketReview)
getBasketReview_super object_ a1 = (getBasketReview_impl (javaCast object_ :: OrderItemsEntity)) a1

getBasketReview_impl :: OrderItemsEntity -> String -> IO (BasketReview.BasketReview)
getBasketReview_impl this orderId = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "getBasketReview" e)
            pure (javaNull)
            ) $ do
            basketReview <- (BasketReview.new_)
            keyValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keyValues (OrderData.iD) orderId)
            items <- (AbSqlBean.getRows_super this.base keyValues)
            entryData <- (EntryData.getInstance)
            if ((items /= javaNull) && ((jio (BasicArrayList.size items)) > 0)) then do
                let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
                itemsArray <- (BasicArrayList.toArray items)
                let itemsSize = (jlength itemsArray)
                forM_ [0 .. itemsSize - 1] $ \i -> javaIteration (pure ()) $ do
                    let itemHashMap = (javaCast (jindex itemsArray (i)) :: HashMap.HashMap)
                    Control.Monad.void (HashMap.put itemHashMap (jget ((jget this.basicItemData)).iNBASKETS) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget (entryData).eNABLE) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget (entryData).tIMECREATED) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget (entryData).lASTMODIFIED) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget ((jget this.basicItemData)).gROUPS) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget ((jget this.basicItemData)).oPTIONS) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget ((jget this.basicItemData)).pERMISSIONS) eMPTY_STRING)
                    Control.Monad.void (HashMap.put itemHashMap (jget ((jget this.basicItemData)).sPECIALS) eMPTY_STRING)
                    item <- (Item.new_1 itemHashMap)
                    Control.Monad.void (BasketReview.addItem basketReview item)
                javaReturn (basketReview)
            else do
                javaReturn (javaNull)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: OrderItemsEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: OrderItemsEntity))

createTableStatement_impl :: OrderItemsEntity -> IO (String)
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
        Control.Monad.void (StringMaker.append stringBuffer (ShippingMethodData.gROUP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (UserData.uSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (StoreFrontData.getInstance))).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).iD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).nUMBER))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).nEWORUSED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).sUMMARY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).dISTRIBUTOR))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).iDUSEDBYDISTRIBUTOR))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).pRODUCEDBY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).pRODUCTIONDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).sTARTPRODUCTIONDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).dESCRIPTION))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).kEYWORDS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).cATEGORY))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).tYPE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).sMALLIMAGE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).mEDIUMIMAGE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).lARGEIMAGE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).wEIGHT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).pRICE))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(20) NOT NULL,")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).cOMMENT))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).cUSTOMS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).dOWNLOADS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (ShippingMethodData.cOST))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.tAX))
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
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).sPECIAL))
        Control.Monad.void (StringMaker.append stringBuffer " VARCHAR(255) ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sTATUS))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.cANCELINFO))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.cANCELTYPE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.sHIPPEDDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.oRDERDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.tRANSDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer (OrderHistoryData.cANCELDATE))
        Control.Monad.void (StringMaker.append stringBuffer " BIGINT(19) UNSIGNED ,")
        Control.Monad.void (StringMaker.append stringBuffer "PRIMARY KEY(")
        Control.Monad.void (StringMaker.append stringBuffer (jget (entryData).iD))
        Control.Monad.void (StringMaker.append stringBuffer ") )")
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: OrderItemsEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: OrderItemsEntity))

createTable_impl :: OrderItemsEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (OrderItemsEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: OrderItemsEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: OrderItemsEntity))

dropTable_impl :: OrderItemsEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


