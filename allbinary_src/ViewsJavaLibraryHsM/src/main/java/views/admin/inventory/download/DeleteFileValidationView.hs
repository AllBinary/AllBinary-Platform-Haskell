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
-- package views.admin.inventory.download
module DeleteFileValidationView (module DeleteFileValidationView, module DownloadableInventoryItemView) where

import DownloadableInventoryItemView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl, downloadItemId)
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
import qualified HttpServletRequest -- same package or java.lang
import qualified ItemInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified DownloadItemData -- org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified DownloadItemsEntity -- org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity
import qualified DownloadItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified DownloadableInventoryItemView

-- implements ValidationComponentInterface
data DeleteFileValidationView = DeleteFileValidationView
    { header_ :: JavaHeader
    , base :: DownloadableInventoryItemView.DownloadableInventoryItemView
    , downloadItemId :: IORef (String)
    }

instance JavaNull DeleteFileValidationView where
    javaNull = javaNullRecord "DeleteFileValidationView"

instance JavaEquals DeleteFileValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DeleteFileValidationView where
    (==) = jrecordEquals

instance JavaObjectClass DeleteFileValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DeleteFileValidationView
newRecord_ = do
    base <- DownloadableInventoryItemView.newRecord_
    let header_ = base.header_
    downloadItemId <- newIORef ""
    let this = DeleteFileValidationView header_ base downloadItemId
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: DeleteFileValidationView -> IO ()
initFields_ this = do
    jset this.downloadItemId ("")
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO DeleteFileValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: DeleteFileValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        DownloadableInventoryItemView.init_2 this.base (transformInfoInterface) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (DeleteFileValidationView.getFormData this)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: DeleteFileValidationView))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: DeleteFileValidationView))

getFormData_impl :: DeleteFileValidationView -> IO (())
getFormData_impl this = do
        hashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 (jget this.base.request)))))
        when (hashMap == javaNull) $ do
            javaThrow ((JavaException "Exception" "No Request Params Found"))
        jset (this).base.id ((javaCast (jio (HashMap.get hashMap (jget ((jget this.base.basicItemData)).iD))) :: String))
        jset (this).downloadItemId ((javaCast (jio (HashMap.get hashMap (DownloadItemData.iD))) :: String))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: DeleteFileValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: DeleteFileValidationView))

isValid_impl :: DeleteFileValidationView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            when (((jget this.base.id) == javaNull) || (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jget (this).base.id))))) $ do
                javaReturn (False)
            inventoryEntity <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            assignedValue <- (InventoryEntity.getItem inventoryEntity (jget (this).base.id))
            jset (this).base.itemInterface (assignedValue)
            when ((jget (this).base.itemInterface) == javaNull) $ do
                javaReturn (False)
            downloadItemsEntity <- (DownloadItemsEntityFactory.getDownloadItemsEntityInstance ((jio (DownloadItemsEntityFactory.getInstance))))
            vector <- (DownloadItemsEntity.getForItem downloadItemsEntity (jget (this).base.id) (jget (this).downloadItemId))
            when ((jio (BasicArrayList.size vector)) /= 1) $ do
                javaReturn (False)
            pure (True)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: DeleteFileValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: DeleteFileValidationView))

toValidationInfoDoc_impl :: DeleteFileValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: DeleteFileValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: DeleteFileValidationView)) a1

toValidationInfoNode_impl :: DeleteFileValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: DeleteFileValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: DeleteFileValidationView))

validationInfo_impl :: DeleteFileValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            pure ("Unkown Validation Error.<br />")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when (((jget (this).base.id) == javaNull) || (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jget (this).base.id))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Id is not valid.<br />")
            when ((jio (InventoryEntity.getItem ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))) (jget (this).base.id))) == javaNull) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Item does not exist.<br />")
            downloadItemsEntity <- (DownloadItemsEntityFactory.getDownloadItemsEntityInstance ((jio (DownloadItemsEntityFactory.getInstance))))
            vector <- (DownloadItemsEntity.getForItem downloadItemsEntity (jget (this).base.id) (jget (this).downloadItemId))
            when ((jio (BasicArrayList.size vector)) == 0) $ do
                Control.Monad.void (StringMaker.append stringBuffer "DownloadItem does not exist.<br />")
            when ((jio (BasicArrayList.size vector)) > 1) $ do
                Control.Monad.void (StringMaker.append stringBuffer "To Many DownloadItems exist.<br />")
            (StringMaker.toString stringBuffer)


