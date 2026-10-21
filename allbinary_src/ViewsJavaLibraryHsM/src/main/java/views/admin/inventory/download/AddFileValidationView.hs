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
module AddFileValidationView (module AddFileValidationView, module DownloadableInventoryItemView) where

import DownloadableInventoryItemView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, logUtil, basicItemData, aDDPRODUCT, aDDANOTHERDOWNLOADABLE)
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
import qualified ItemInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicItemValidation -- org.allbinary.business.user.commerce.inventory.item.BasicItemValidation
import qualified DownloadItemData -- org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData
import qualified DownloadableItem -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem
import qualified DownloadableItemValidation -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified HttpFileUploadUtil -- org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileData -- org.allbinary.logic.io.file.FileData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified DownloadableInventoryItemView

-- implements ValidationComponentInterface
data AddFileValidationView = AddFileValidationView
    { header_ :: JavaHeader
    , base :: DownloadableInventoryItemView.DownloadableInventoryItemView
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    }

instance JavaNull AddFileValidationView where
    javaNull = javaNullRecord "AddFileValidationView"

instance JavaEquals AddFileValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AddFileValidationView where
    (==) = jrecordEquals

instance JavaObjectClass AddFileValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

aDDPRODUCT = "Finish"

aDDANOTHERDOWNLOADABLE = "Add Another"

newRecord_ :: IO AddFileValidationView
newRecord_ = do
    base <- DownloadableInventoryItemView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    let this = AddFileValidationView header_ base logUtil basicItemData
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: AddFileValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO AddFileValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: AddFileValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        DownloadableInventoryItemView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AddFileValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: AddFileValidationView))

isValid_impl :: AddFileValidationView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception in validation" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let command = (javaCast (jio (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (GLOBALS2.aDMINCOMMAND))) :: String)
            when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) command)) || ((((Prelude.fromEnum (Prelude.compare command (AddFileValidationView.aDDPRODUCT)) - 1) /= 0) && ((Prelude.fromEnum (Prelude.compare command aDDANOTHERDOWNLOADABLE) - 1) /= 0)))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Invalid AdminCommand=" ++ command) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            handle (\(e :: JavaException) -> do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Existing Item With MoneyException" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
                ) $ do
                inventoryEntity <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
                assignedValue <- (InventoryEntity.getItem inventoryEntity (jget (this).base.id))
                jset (this).base.itemInterface (assignedValue)
            when ((jget (this).base.itemInterface) == javaNull) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Item Does Not Exist" this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            when ((jio (BasicItemValidation.isValid ((jio (BasicItemValidation.new_1 (jget (this).base.itemInterface)))))) == False) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "BasicItem is not valid" this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (DownloadableInventoryItemView.getWeblisketSession this)))))))
            fullCategory <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (URLGLOBALS.getWebappPath))))) (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface))))) (jio (ItemInterface.getCategory ((jget (this).base.itemInterface))))))))
            categoryFile <- (AbFile.createAbFile fullCategory)
            when (Prelude.not (jio (AbFile.isDirectory categoryFile))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Category Does Not Exist: " ++ fullCategory) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            downloadableFileObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.fILE))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) downloadableFileObject)) then do
                let fileItem = (javaCast downloadableFileObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (HttpFileUploadUtil.log fileItem)
                if ((jio (AddFileValidationView.isValid this fileName size)) == False) then do
                    javaReturn (False)
                else do
                    Control.Monad.void (DownloadableInventoryItemView.processFile this fileItem)
                    Control.Monad.void (HashMap.put ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.sIZE) (javaToString size))
            else do
                Control.Monad.void (HashMap.remove ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.fILE))
            licenseFileObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.lICENSE_FILE))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) licenseFileObject)) then do
                let fileItem = (javaCast licenseFileObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (HttpFileUploadUtil.log fileItem)
                if ((jio (AddFileValidationView.isValid this fileName size)) == False) then do
                    pure ()
                else do
                    Control.Monad.void (DownloadableInventoryItemView.processFile this fileItem)
            else do
                Control.Monad.void (HashMap.remove ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.lICENSE_FILE))
            extraFilesObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.eXTRA_FILES))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) extraFilesObject)) then do
                let fileItem = (javaCast extraFilesObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (HttpFileUploadUtil.log fileItem)
                if ((jio (AddFileValidationView.isValid this fileName size)) == False) then do
                    pure ()
                else do
                    Control.Monad.void (DownloadableInventoryItemView.processFile this fileItem)
                    Control.Monad.void (DownloadableInventoryItemView.unzip this fileItem)
            else do
                Control.Monad.void (HashMap.remove ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.eXTRA_FILES))
            hashMap <- (DownloadableInventoryItemView.getRequestHashMap this)
            Control.Monad.void (HashMap.put hashMap (jget ((jget this.basicItemData)).iD) (jio (ItemInterface.getId ((jget (this).base.itemInterface)))))
            licenseObject <- (HashMap.get hashMap (DownloadItemData.lICENSE_FILE))
            if (licenseObject /= javaNull) then do
                Control.Monad.void (HashMap.put hashMap (DownloadItemData.lICENSE_FILE) (jio (getName (((javaCast licenseObject :: FileItem.FileItem))))))
            else do
                Control.Monad.void (HashMap.put hashMap (DownloadItemData.lICENSE_FILE) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            fileObject <- (HashMap.get hashMap (DownloadItemData.fILE))
            if (fileObject /= javaNull) then do
                Control.Monad.void (HashMap.put hashMap (DownloadItemData.fILE) (jio (getName (((javaCast fileObject :: FileItem.FileItem))))))
            else do
                Control.Monad.void (HashMap.put hashMap (DownloadItemData.fILE) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            assignedValue <- (DownloadableItem.new_1 hashMap)
            jset (this).base.downloadableItem (assignedValue)
            downloadableItemValidation <- (DownloadableItemValidation.new_1 (jget (this).base.downloadableItem))
            when ((jio (DownloadableItemValidation.isValid downloadableItemValidation)) == False) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "DownloadableItem is not valid" this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            pure (True)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: AddFileValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: AddFileValidationView))

toValidationInfoDoc_impl :: AddFileValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: AddFileValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: AddFileValidationView)) a1

toValidationInfoNode_impl :: AddFileValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: AddFileValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: AddFileValidationView))

validationInfo_impl :: AddFileValidationView -> IO (String)
validationInfo_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            let command = (javaCast (jio (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (GLOBALS2.aDMINCOMMAND))) :: String)
            when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) command)) || ((((Prelude.fromEnum (Prelude.compare command (AddFileValidationView.aDDPRODUCT)) - 1) /= 0) && ((Prelude.fromEnum (Prelude.compare command aDDANOTHERDOWNLOADABLE) - 1) /= 0)))) $ do
                javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when ((jget (this).base.itemInterface) == javaNull) $ do
                let iTEM_NOT_FOUND = "Item Does Not Exist"
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) iTEM_NOT_FOUND this "validationInfo()")
                javaReturn (iTEM_NOT_FOUND)
            basicItemValidation <- (BasicItemValidation.new_1 (jget (this).base.itemInterface))
            when ((jio (BasicItemValidation.isValid basicItemValidation)) == False) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (BasicItemValidation.validationInfo basicItemValidation)))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>")
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (DownloadableInventoryItemView.getWeblisketSession this)))))))
            fullCategory <- (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (URLGLOBALS.getWebappPath))))) (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface))))) (jio (ItemInterface.getCategory ((jget (this).base.itemInterface))))))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Category: " ++ fullCategory) this "validationInfo()")
            categoryFile <- (AbFile.createAbFile fullCategory)
            when (Prelude.not (jio (AbFile.isDirectory categoryFile))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Category ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getCategory ((jget (this).base.itemInterface)))))
                Control.Monad.void (StringMaker.append stringBuffer " does not exist.")
                Control.Monad.void (StringMaker.append stringBuffer "<br />")
            downloadableFileObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.fILE))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) downloadableFileObject)) then do
                let fileItem = (javaCast downloadableFileObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (AddFileValidationView.validationInfo this stringBuffer fileName size)
            else do
                Control.Monad.void (StringMaker.append stringBuffer "Download File Missing")
                Control.Monad.void (StringMaker.append stringBuffer "<br/>")
            licenseFileObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.lICENSE_FILE))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) licenseFileObject)) then do
                let fileItem = (javaCast licenseFileObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (AddFileValidationView.validationInfo this stringBuffer fileName size)
            else do
                pure ()
            extraFilesObject <- (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (DownloadItemData.eXTRA_FILES))
            if (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) extraFilesObject)) then do
                let fileItem = (javaCast extraFilesObject :: FileItem.FileItem)
                fileName <- (FileItem.getName fileItem)
                size <- (FileItem.getSize fileItem)
                Control.Monad.void (AddFileValidationView.validationInfo this stringBuffer fileName size)
            else do
                pure ()
            when ((jget (this).base.downloadableItem) /= javaNull) $ do
                downloadableItemValidation <- (DownloadableItemValidation.new_1 (jget (this).base.downloadableItem))
                when ((jio (DownloadableItemValidation.isValid downloadableItemValidation)) == False) $ do
                    log <- (DownloadableItemValidation.validationInfo downloadableItemValidation)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) log this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                    Control.Monad.void (StringMaker.append stringBuffer log)
                    Control.Monad.void (StringMaker.append stringBuffer "<br/>")
            (StringMaker.toString stringBuffer)


-- throws Exception
-- Java overload of isValid with a different parameter count: give it a different name
isValid :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (Bool)
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: AddFileValidationView))) () a1 a2

isValid_super :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (Bool)
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: AddFileValidationView)) a1 a2

isValid_impl :: AddFileValidationView -> String -> Int64 -> IO (Bool)
isValid_impl this fileName size = do
    javaCatchReturn $ do
        fileData <- (FileData.getInstance)
        if (size > (Prelude.fromIntegral (jget (fileData).mINDOWNLOADABLEFILESIZE))) then do
            if (size < (Prelude.fromIntegral (jget (fileData).mAXDOWNLOADABLEFILESIZE))) then do
                if (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) fileName (jget (fileData).mINLEN) (jget (fileData).mAXLEN)))) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                        stringBuffer <- (StringMaker.new_)
                        Control.Monad.void (StringMaker.append stringBuffer "File name is not valid: ")
                        Control.Monad.void (StringMaker.append stringBuffer fileName)
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                    javaReturn (False)
                else do
                    pure ()
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "File Size To Large: ")
                    Control.Monad.void (StringMaker.appendlong stringBuffer size)
                    Control.Monad.void (StringMaker.append stringBuffer ">")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXDOWNLOADABLEFILESIZE))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "File Size To Small: ")
                Control.Monad.void (StringMaker.appendlong stringBuffer size)
                Control.Monad.void (StringMaker.append stringBuffer ">")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mINDOWNLOADABLEFILESIZE))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
            javaReturn (False)
        pure (True)


-- Java overload of validationInfo with a different parameter count: give it a different name
validationInfo :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> String -> Int64 -> IO (())
validationInfo object_ a1 a2 a3 = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: AddFileValidationView))) () a1 a2 a3

validationInfo_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> String -> Int64 -> IO (())
validationInfo_super object_ a1 a2 a3 = (validationInfo_impl (javaCast object_ :: AddFileValidationView)) a1 a2 a3

validationInfo_impl :: AddFileValidationView -> StringMaker.StringMaker -> String -> Int64 -> IO (())
validationInfo_impl this stringBuffer fileName size = do
        fileData <- (FileData.getInstance)
        when (size > (Prelude.fromIntegral (jget (fileData).mINDOWNLOADABLEFILESIZE))) $ do
            if (size < (Prelude.fromIntegral (jget (fileData).mAXDOWNLOADABLEFILESIZE))) then do
                if (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) fileName (jget (fileData).mINLEN) (jget (fileData).mAXLEN)))) then do
                    Control.Monad.void (StringMaker.append stringBuffer "File Name must be more than ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mINLEN))
                    Control.Monad.void (StringMaker.append stringBuffer " and less than ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXLEN))
                    Control.Monad.void (StringMaker.append stringBuffer " characters in length: ")
                    Control.Monad.void (StringMaker.append stringBuffer fileName)
                    Control.Monad.void (StringMaker.append stringBuffer "<br/>")
                else do
                    pure ()
            else do
                Control.Monad.void (StringMaker.append stringBuffer "File Is Not The Right Size. ")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mINDOWNLOADABLEFILESIZE))
                Control.Monad.void (StringMaker.append stringBuffer "< >")
                Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXDOWNLOADABLEFILESIZE))
                Control.Monad.void (StringMaker.append stringBuffer "<br/>")
        pure ()


