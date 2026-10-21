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
-- package org.allbinary.business.user.commerce.inventory.item.download
module DownloadableItemValidation (module DownloadableItemValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil, downloadableItem)
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
import qualified DownloadableItem -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data DownloadableItemValidation = DownloadableItemValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , downloadableItem :: IORef (DownloadableItem.DownloadableItem)
    }

instance JavaNull DownloadableItemValidation where
    javaNull = javaNullRecord "DownloadableItemValidation"

instance JavaEquals DownloadableItemValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadableItemValidation where
    (==) = jrecordEquals

instance JavaObjectClass DownloadableItemValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DownloadableItemValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    downloadableItem <- newIORef javaNull
    let this = DownloadableItemValidation header_ base logUtil downloadableItem
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: DownloadableItemValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.downloadableItem (javaNull)
    pure ()

new_1 :: DownloadableItem.DownloadableItem -> IO DownloadableItemValidation
new_1 downloadableItem = do
    this <- newRecord_
    init_1 this downloadableItem
    pure this

init_1 :: DownloadableItemValidation -> DownloadableItem.DownloadableItem -> IO ()
init_1 this downloadableItem = do
        Validation.init_ this.base
        initFields_ this
        jset (this).downloadableItem (downloadableItem)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: DownloadableItemValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: DownloadableItemValidation))

isValid_impl :: DownloadableItemValidation -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            when ((((jio (DownloadableItem.getId ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when (((jio (DownloadableItem.getId ((jget (this).downloadableItem)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jio (DownloadableItem.getId ((jget (this).downloadableItem)))))))) $ do
                javaReturn (False)
            when ((((jio (DownloadableItem.getSystem ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getSystem ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getSystem ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (DownloadableItem.getPlatform ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getPlatform ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getPlatform ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem))))) < 0)) || ((Prelude.length (jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (DownloadableItem.getVersion ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getVersion ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getVersion ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (DownloadableItem.getChanges ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getChanges ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getChanges ((jget (this).downloadableItem))))) > AbSqlData.mAXBLOB)) $ do
                javaReturn (False)
            if ((jio (DownloadableItem.getSize ((jget (this).downloadableItem)))) == javaNull) then do
                javaReturn (False)
            else do
                let size = (javaToString (jio (DownloadableItem.getSize ((jget (this).downloadableItem)))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    javaReturn (False)
            if ((jio (DownloadableItem.getValidTime ((jget (this).downloadableItem)))) == javaNull) then do
                javaReturn (False)
            else do
                let size = (javaToString (jio (DownloadableItem.getValidTime ((jget (this).downloadableItem)))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    javaReturn (False)
            if ((jio (DownloadableItem.getRetries ((jget (this).downloadableItem)))) == javaNull) then do
                javaReturn (False)
            else do
                let size = (jio (DownloadableItem.getRetries ((jget (this).downloadableItem))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    javaReturn (False)
            pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: DownloadableItemValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: DownloadableItemValidation))

validationInfo_impl :: DownloadableItemValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when ((((jio (DownloadableItem.getId ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getId ((jget (this).downloadableItem))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Id is invalid. Must be number < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXNUM))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 digits.<br/>")
            when (((jio (DownloadableItem.getId ((jget (this).downloadableItem)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jio (DownloadableItem.getId ((jget (this).downloadableItem)))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Id is invalid. Must be > 0.<br/>")
            when ((((jio (DownloadableItem.getSystem ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getSystem ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getSystem ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "System value is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXSTRING))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters long.<br/>")
            when ((((jio (DownloadableItem.getPlatform ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getPlatform ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getPlatform ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Platform value is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXSTRING))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters long.<br/>")
            when ((((jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem))))) < 0)) || ((Prelude.length (jio (DownloadableItem.getSpecialName ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Special Name value is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXSTRING))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters long.<br/>")
            when ((((jio (DownloadableItem.getVersion ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getVersion ((jget (this).downloadableItem))))) < 1)) || ((Prelude.length (jio (DownloadableItem.getVersion ((jget (this).downloadableItem))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Version value is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXSTRING))
                Control.Monad.void (StringMaker.append stringBuffer " and > 0 characters long.<br/>")
            when ((((jio (DownloadableItem.getChanges ((jget (this).downloadableItem)))) == javaNull) || ((Prelude.length (jio (DownloadableItem.getChanges ((jget (this).downloadableItem))))) < 0)) || ((Prelude.length (jio (DownloadableItem.getChanges ((jget (this).downloadableItem))))) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Changes value is invalid. Must be < ")
                Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXBLOB))
                Control.Monad.void (StringMaker.append stringBuffer " and >= 0 characters long.<br/>")
            if ((jio (DownloadableItem.getSize ((jget (this).downloadableItem)))) == javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer "File Size is null")
            else do
                let size = (javaToString (jio (DownloadableItem.getSize ((jget (this).downloadableItem)))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer "File Size is invalid. Must be number < ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXNUM))
                    Control.Monad.void (StringMaker.append stringBuffer " and > 0 digits.<br/>")
            if ((jio (DownloadableItem.getValidTime ((jget (this).downloadableItem)))) == javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer "Valid Time is null")
            else do
                let size = (javaToString (jio (DownloadableItem.getValidTime ((jget (this).downloadableItem)))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer "Valid Time is invalid. Must be number < ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXNUM))
                    Control.Monad.void (StringMaker.append stringBuffer " and > 0 digits.<br/>")
            if ((jio (DownloadableItem.getRetries ((jget (this).downloadableItem)))) == javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer "Retries is null")
            else do
                let size = (jio (DownloadableItem.getRetries ((jget (this).downloadableItem))))
                when (((Prelude.length size) < 1) || ((Prelude.length size) > AbSqlData.mAXNUM)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer "Retries is invalid. Must be number < ")
                    Control.Monad.void (StringMaker.appendint stringBuffer (AbSqlData.mAXNUM))
                    Control.Monad.void (StringMaker.append stringBuffer " and > 0 digits.<br/>")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: DownloadableItemValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: DownloadableItemValidation))

toValidationInfoDoc_impl :: DownloadableItemValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: DownloadableItemValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: DownloadableItemValidation)) a1

toValidationInfoNode_impl :: DownloadableItemValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


