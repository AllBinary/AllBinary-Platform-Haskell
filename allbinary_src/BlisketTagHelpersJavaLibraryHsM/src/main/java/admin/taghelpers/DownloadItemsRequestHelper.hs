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
module DownloadItemsRequestHelper (module DownloadItemsRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, logUtil, downloadableItem)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbTagData -- admin.tags.AbTagData
import qualified DownloadableItem -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem
import qualified DownloadItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified HelperTag -- tags.HelperTag
import qualified DownloadableInventoryItemView -- views.admin.inventory.download.DownloadableInventoryItemView
import qualified ModifyTable

data DownloadItemsRequestHelper = DownloadItemsRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , downloadableItem :: IORef (DownloadableItem.DownloadableItem)
    }

instance JavaNull DownloadItemsRequestHelper where
    javaNull = javaNullRecord "DownloadItemsRequestHelper"

instance JavaEquals DownloadItemsRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadItemsRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass DownloadItemsRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DownloadItemsRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    downloadableItem <- newIORef javaNull
    let this = DownloadItemsRequestHelper header_ base logUtil downloadableItem
    jregisterLevel header_ this
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: DownloadItemsRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.downloadableItem (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO DownloadItemsRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: DownloadItemsRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        let inventoryTag = (javaCast (jio (HashMap.get hashMap (AbTagData.pARENT))) :: HelperTag.HelperTag)
        inventoryItemViewParentTagHelper <- (InventoryItemViewParentTagHelper.getInstance)
        downloadableInventoryItemView <- (InventoryItemViewParentTagHelper.getDownloadableInventoryItemView inventoryItemViewParentTagHelper inventoryTag)
        assignedValue <- (DownloadableInventoryItemView.getDownloadableItem downloadableInventoryItemView)
        jset (this).downloadableItem (assignedValue)
        pure ()


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: DownloadItemsRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: DownloadItemsRequestHelper))

insert_impl :: DownloadItemsRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = (("Failed to insert " ++ javaToString (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) ++ " into downloaditems table")
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "inserts()" e)
            pure (error)
            ) $ do
            vector <- (DownloadableItem.toVector ((jget (this).downloadableItem)))
            Control.Monad.void (DownloadItemsEntity.insert ((jio (DownloadItemsEntityFactory.getDownloadItemsEntityInstance ((jio (DownloadItemsEntityFactory.getInstance)))))) vector)
            let success = (("Successfully inserted " ++ javaToString (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) ++ " into downloaditems table")
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: DownloadItemsRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: DownloadItemsRequestHelper))

delete_impl :: DownloadItemsRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to delete"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            Control.Monad.void (DownloadItemsEntity.delete ((jio (DownloadItemsEntityFactory.getDownloadItemsEntityInstance ((jio (DownloadItemsEntityFactory.getInstance)))))) (jio (DownloadableItem.getId ((jget (this).downloadableItem)))))
            let success = "Successfully deleted"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: DownloadItemsRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: DownloadItemsRequestHelper))

update_impl :: DownloadItemsRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = ("Failed to update: " ++ javaToString (jio (DownloadableItem.getId ((jget (this).downloadableItem)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Update Successful"
            values <- (DownloadableItem.toHashMap ((jget (this).downloadableItem)))
            Control.Monad.void (DownloadItemsEntity.update ((jio (DownloadItemsEntityFactory.getDownloadItemsEntityInstance ((jio (DownloadItemsEntityFactory.getInstance)))))) values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (javaToString ((jio (DownloadableItem.getId ((jget (this).downloadableItem)))) + (jget ((jio (CommonSeps.getInstance))).sPACE)) ++ success) this "update()")
            pure (success)


