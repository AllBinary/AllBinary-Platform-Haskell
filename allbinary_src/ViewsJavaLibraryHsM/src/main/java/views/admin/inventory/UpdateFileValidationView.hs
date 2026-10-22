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
-- package views.admin.inventory
module UpdateFileValidationView (module UpdateFileValidationView, module InventoryItemView) where

import InventoryItemView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl, isValid_2, isValid_2_super, isValid_2_impl, isValid, validationInfo_4, validationInfo_4_super, validationInfo_4_impl, validationInfo, logUtil, uPDATEPRODUCT)
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
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicItemValidation -- org.allbinary.business.user.commerce.inventory.item.BasicItemValidation
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
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified InventoryItemView

-- implements ValidationComponentInterface
data UpdateFileValidationView = UpdateFileValidationView
    { header_ :: JavaHeader
    , base :: InventoryItemView.InventoryItemView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull UpdateFileValidationView where
    javaNull = javaNullRecord "UpdateFileValidationView"

instance JavaEquals UpdateFileValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateFileValidationView where
    (==) = jrecordEquals

instance JavaObjectClass UpdateFileValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

uPDATEPRODUCT = (jget ((jio (CommonStrings.getInstance))).uPDATE)

newRecord_ :: IO UpdateFileValidationView
newRecord_ = do
    base <- InventoryItemView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = UpdateFileValidationView header_ base logUtil
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "isValid_2" (\() -> isValid_2_impl this)
    jregisterMethod header_ "validationInfo_4" (\() -> validationInfo_4_impl this)
    pure this

initFields_ :: UpdateFileValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO UpdateFileValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: UpdateFileValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        InventoryItemView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: UpdateFileValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: UpdateFileValidationView))

isValid_impl :: UpdateFileValidationView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception in validation" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            let command = (javaCast (jio (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (GLOBALS2.aDMINCOMMAND))) :: String)
            when ((command == javaNull) || ((Prelude.fromEnum (Prelude.compare command (UpdateFileValidationView.uPDATEPRODUCT)) - 1) /= 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Invalid AdminCommand=" ++ command) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            when ((jio (BasicItemValidation.isValid ((jio (BasicItemValidation.new_1 (jget (this).base.itemInterface)))))) == False) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "BasicItem is not valid" this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (InventoryItemView.getWeblisketSession this)))))))
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface)))
            Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getCategory ((jget (this).base.itemInterface)))))
            fullCategory <- (StringMaker.toString stringBuffer)
            categoryFile <- (AbFile.createAbFile fullCategory)
            when (Prelude.not (jio (AbFile.isDirectory categoryFile))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Category Does Not Exist: " ++ fullCategory) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            inventoryEntity <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            when ((jio (InventoryEntity.getItem inventoryEntity (jio (ItemInterface.getId ((jget (this).base.itemInterface)))))) == javaNull) $ do
                javaReturn (False)
            anyType <- (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (jget ((jget this.base.basicItemData)).iMAGE))
            when (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) anyType)) $ do
                let fileItem = (javaCast anyType :: FileItem.FileItem)
                size <- (FileItem.getSize fileItem)
                fileName <- (FileItem.getName fileItem)
                Control.Monad.void (HttpFileUploadUtil.log fileItem)
                when ((jio (UpdateFileValidationView.isValid_2 this fileName size)) == False) $ do
                    javaReturn (False)
            pure (True)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: UpdateFileValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: UpdateFileValidationView))

toValidationInfoDoc_impl :: UpdateFileValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: UpdateFileValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: UpdateFileValidationView)) a1

toValidationInfoNode_impl :: UpdateFileValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: UpdateFileValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: UpdateFileValidationView))

validationInfo_impl :: UpdateFileValidationView -> IO (String)
validationInfo_impl this = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        let command = (javaCast (jio (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (GLOBALS2.aDMINCOMMAND))) :: String)
        when ((command == javaNull) || ((Prelude.fromEnum (Prelude.compare command (UpdateFileValidationView.uPDATEPRODUCT)) - 1) /= 0)) $ do
            javaReturn ((jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicItemValidation.validationInfo ((jio (BasicItemValidation.new_1 (jget (this).base.itemInterface)))))))
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (InventoryItemView.getWeblisketSession this)))))))
        let fullCategory = (((javaCast (jio (URLGLOBALS.getWebappPath)) :: String) + (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface))) + (jio (ItemInterface.getCategory ((jget (this).base.itemInterface)))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Category: " ++ fullCategory) this "validationInfo()")
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Existing Item With MoneyException" this "validationInfo()")
            ) $ do
            when ((jio (InventoryEntity.getItem ((jio (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance)))))) (jio (ItemInterface.getId ((jget (this).base.itemInterface)))))) == javaNull) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Item does not exist.<br>")
        anyType <- (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (jget ((jget this.base.basicItemData)).iMAGE))
        when (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) anyType)) $ do
            let fileItem = (javaCast anyType :: FileItem.FileItem)
            size <- (FileItem.getSize fileItem)
            fileName <- (FileItem.getName fileItem)
            fileItemFieldName <- (FileItem.getFieldName fileItem)
            Control.Monad.void (UpdateFileValidationView.validationInfo_4 this stringBuffer fileName fileItemFieldName size)
        (StringMaker.toString stringBuffer)


-- throws Exception
isValid_2 :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (Bool)
isValid_2 object_ a1 a2 = jmethod object_ "isValid_2" (\() -> (isValid_2_impl (javaCast object_ :: UpdateFileValidationView))) () a1 a2

isValid_2_super :: (JavaObjectClass this_) => this_ -> String -> Int64 -> IO (Bool)
isValid_2_super object_ a1 a2 = (isValid_2_impl (javaCast object_ :: UpdateFileValidationView)) a1 a2

isValid_2_impl :: UpdateFileValidationView -> String -> Int64 -> IO (Bool)
isValid_2_impl this fileName size = do
    javaCatchReturn $ do
        fileData <- (FileData.getInstance)
        when (size > (Prelude.fromIntegral (jget (fileData).mINIMAGEFILESIZE))) $ do
            if (size < (Prelude.fromIntegral (jget (fileData).mAXIMAGEFILESIZE))) then do
                when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) fileName (jget (fileData).mINLEN) (jget (fileData).mAXLEN)))) $ do
                    javaReturn (False)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "File Size To Large: ")
                    Control.Monad.void (StringMaker.appendlong stringBuffer size)
                    Control.Monad.void (StringMaker.append stringBuffer ">")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXIMAGEFILESIZE))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
                javaReturn (False)
            Control.Monad.void (InventoryItemView.processImageFiles this)
        pure (True)


validationInfo_4 :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> String -> String -> Int64 -> IO (())
validationInfo_4 object_ a1 a2 a3 a4 = jmethod object_ "validationInfo_4" (\() -> (validationInfo_4_impl (javaCast object_ :: UpdateFileValidationView))) () a1 a2 a3 a4

validationInfo_4_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> String -> String -> Int64 -> IO (())
validationInfo_4_super object_ a1 a2 a3 a4 = (validationInfo_4_impl (javaCast object_ :: UpdateFileValidationView)) a1 a2 a3 a4

validationInfo_4_impl :: UpdateFileValidationView -> StringMaker.StringMaker -> String -> String -> Int64 -> IO (())
validationInfo_4_impl this stringBuffer fileName fileItemFieldName size = do
        fileData <- (FileData.getInstance)
        when (size > (Prelude.fromIntegral (jget (fileData).mINIMAGEFILESIZE))) $ do
            when ((Prelude.fromEnum (Prelude.compare fileItemFieldName (jget ((jget this.base.basicItemData)).iMAGE)) - 1) == 0) $ do
                if (size < (Prelude.fromIntegral (jget (fileData).mAXIMAGEFILESIZE))) then do
                    when (Prelude.not (jio (StringValidationUtil.isValidRequired ((jio (StringValidationUtil.getInstance))) fileName (jget (fileData).mINLEN) (jget (fileData).mAXLEN)))) $ do
                        Control.Monad.void (StringMaker.append stringBuffer "FileName must be >")
                        Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mINLEN))
                        Control.Monad.void (StringMaker.append stringBuffer "and <")
                        Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXLEN))
                        Control.Monad.void (StringMaker.append stringBuffer "<br />")
                else do
                    Control.Monad.void (StringMaker.append stringBuffer "Image File Is Not The Right Size. ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mINIMAGEFILESIZE))
                    Control.Monad.void (StringMaker.append stringBuffer "< > ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (jget (fileData).mAXIMAGEFILESIZE))
                    Control.Monad.void (StringMaker.append stringBuffer "<br />")
        pure ()


