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
-- package admin.taghelpers
module InventoryRequestHelper (module InventoryRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, getItemInterface, getItemInterface_super, getItemInterface_impl, logUtil, basicItemData, itemInterface)
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
import qualified InventoryItemViewParentTagHelper -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbTagData -- admin.tags.AbTagData
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified HelperTag -- tags.HelperTag
import qualified InventoryItemView -- views.admin.inventory.InventoryItemView
import qualified ModifyTable

data InventoryRequestHelper = InventoryRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    }

instance JavaNull InventoryRequestHelper where
    javaNull = javaNullRecord "InventoryRequestHelper"

instance JavaEquals InventoryRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass InventoryRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventoryRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    itemInterface <- newIORef javaNull
    let this = InventoryRequestHelper header_ base logUtil basicItemData itemInterface
    jregisterLevel header_ this
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getItemInterface" (\() -> getItemInterface_impl this)
    pure this

initFields_ :: InventoryRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.itemInterface (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO InventoryRequestHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: InventoryRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        let inventoryTag = (javaCast (jio (HashMap.get propertiesHashMap (AbTagData.pARENT))) :: HelperTag.HelperTag)
        itemView <- (InventoryItemViewParentTagHelper.getInventoryItemView ((jio (InventoryItemViewParentTagHelper.getInstance))) inventoryTag)
        assignedValue <- (InventoryItemView.getItemInterface itemView)
        jset (this).itemInterface (assignedValue)
        pure ()


-- throws Exception
insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: InventoryRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: InventoryRequestHelper))

insert_impl :: InventoryRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add item to Inventory"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "insert()" e)
            pure (error)
            ) $ do
            let dataMappingInterface = (javaCast (jio (InventoryRequestHelper.getItemInterface this)) :: TableMappingInterface.TableMappingInterface)
            values <- (TableMappingInterface.toVector dataMappingInterface)
            Control.Monad.void (InventoryEntity.insert ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))) values)
            let success = "Successfully Added Product"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: InventoryRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: InventoryRequestHelper))

delete_impl :: InventoryRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to remove item with from Inventory"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget this.base.tagStrings)).dO_START_TAG) e)
            pure (error)
            ) $ do
            let dataMappingInterface = (javaCast (jio (InventoryRequestHelper.getItemInterface this)) :: TableMappingInterface.TableMappingInterface)
            let id = (javaCast (jio (TableMappingInterface.getKey dataMappingInterface)) :: String)
            Control.Monad.void (InventoryEntity.deleteWhere ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))) (jget ((jget this.basicItemData)).iD) id)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Successfully Removed the item with ")
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget this.basicItemData)).iD))
            Control.Monad.void (StringMaker.append stringBuffer "=")
            Control.Monad.void (StringMaker.append stringBuffer id)
            Control.Monad.void (StringMaker.append stringBuffer " from to the Inventory table")
            success <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this (jget ((jget this.base.tagStrings)).dO_START_TAG))
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: InventoryRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: InventoryRequestHelper))

update_impl :: InventoryRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed To Update Item"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            Control.Monad.void (InventoryRequestHelper.delete this)
            Control.Monad.void (InventoryRequestHelper.insert this)
            let success = "Item Successfully Updated"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure (success)


getItemInterface :: (JavaObjectClass this_) => this_ -> IO (ItemInterface.ItemInterface)
getItemInterface object_ = jmethod object_ "getItemInterface" (\() -> (getItemInterface_impl (javaCast object_ :: InventoryRequestHelper))) ()

getItemInterface_super :: (JavaObjectClass this_) => this_ -> IO (ItemInterface.ItemInterface)
getItemInterface_super object_ = (getItemInterface_impl (javaCast object_ :: InventoryRequestHelper))

getItemInterface_impl :: InventoryRequestHelper -> IO (ItemInterface.ItemInterface)
getItemInterface_impl this = do
        pure ((jget (this).itemInterface))


