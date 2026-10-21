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
module BasicItemValidation (module BasicItemValidation, module Validation) where

import Validation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil, mAXWEIGHT, mAXPRICE, itemInterface)
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
import qualified ItemInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified Validation -- org.allbinary.logic.control.validate.Validation
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasicItemValidation = BasicItemValidation
    { header_ :: JavaHeader
    , base :: Validation.Validation
    , logUtil :: IORef (LogUtil.LogUtil)
    , mAXWEIGHT :: IORef (Int)
    , mAXPRICE :: IORef (Int)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    }

instance JavaNull BasicItemValidation where
    javaNull = javaNullRecord "BasicItemValidation"

instance JavaEquals BasicItemValidation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicItemValidation where
    (==) = jrecordEquals

instance JavaObjectClass BasicItemValidation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicItemValidation
newRecord_ = do
    base <- Validation.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    mAXWEIGHT <- newIORef 0
    mAXPRICE <- newIORef 0
    itemInterface <- newIORef javaNull
    let this = BasicItemValidation header_ base logUtil mAXWEIGHT mAXPRICE itemInterface
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: BasicItemValidation -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.mAXWEIGHT (14)
    jset this.mAXPRICE (14)
    jset this.itemInterface (javaNull)
    pure ()

new_1 :: ItemInterface.ItemInterface -> IO BasicItemValidation
new_1 itemInterface = do
    this <- newRecord_
    init_1 this itemInterface
    pure this

init_1 :: BasicItemValidation -> ItemInterface.ItemInterface -> IO ()
init_1 this itemInterface = do
        Validation.init_ this.base
        initFields_ this
        jset (this).itemInterface (itemInterface)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: BasicItemValidation))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: BasicItemValidation))

isValid_impl :: BasicItemValidation -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            when ((((jio (ItemInterface.getId ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getId ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getId ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when (((jio (ItemInterface.getId ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getId ((jget (this).itemInterface)))))))) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getNumber ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getNumber ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getNumber ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when (((jio (ItemInterface.getNumber ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getNumber ((jget (this).itemInterface)))))))) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getInBaskets ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getInBaskets ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when (((jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))))))) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getWeight ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getWeight ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getWeight ((jget (this).itemInterface))))))) > (jget (this).mAXWEIGHT))) $ do
                javaReturn (False)
            when (((jio (ItemInterface.getWeight ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getWeight ((jget (this).itemInterface)))))))) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getEnabled ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getEnabled ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getEnabled ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getSummary ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getSummary ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getSummary ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getDescription ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getDescription ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getDescription ((jget (this).itemInterface))))))) > AbSqlData.mAXBLOB)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getKeywords ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getKeywords ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getKeywords ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getCategory ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getCategory ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getCategory ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getType ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getType ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getType ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                javaReturn (False)
            when (((jio (ItemInterface.getPrice ((jget (this).itemInterface)))) == javaNull) || (Prelude.not (jio (ItemInterface.isValid ((jio (ItemInterface.getPrice ((jget (this).itemInterface))))))))) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getCustoms ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getCustoms ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getCustoms ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getDownloads ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getDownloads ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getDownloads ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getGroups ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getGroups ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getGroups ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getOptions ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getOptions ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getOptions ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getPermissions ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getPermissions ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getPermissions ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            when ((((jio (ItemInterface.getSpecials ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getSpecials ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getSpecials ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                javaReturn (False)
            pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: BasicItemValidation))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: BasicItemValidation))

validationInfo_impl :: BasicItemValidation -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when ((((jio (ItemInterface.getId ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getId ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getId ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Id is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            stringValidationUtil <- (StringValidationUtil.getInstance)
            when (((jio (ItemInterface.getId ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getId ((jget (this).itemInterface)))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Id is invalid. Must be > 0.<br />")
            when ((((jio (ItemInterface.getNumber ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getNumber ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getNumber ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Number of items is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when (((jio (ItemInterface.getNumber ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getNumber ((jget (this).itemInterface)))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Number of items value is not a valid number.<br />")
            when ((((jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getInBaskets ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getInBaskets ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Number in baskets is invalid. Must be < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when (((jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getInBaskets ((jget (this).itemInterface)))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "In Baskets value is not a valid number.<br />")
            when ((((jio (ItemInterface.getWeight ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getWeight ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getWeight ((jget (this).itemInterface))))))) > (jget (this).mAXWEIGHT))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Weight value is invalid. Must be < " ++ javaToString (jget (this).mAXWEIGHT)) ++ " and > 0 digits.<br />"))
            when (((jio (ItemInterface.getWeight ((jget (this).itemInterface)))) /= javaNull) && (Prelude.not (jio (StringValidationUtil.isNumber stringValidationUtil (jio (ItemInterface.getWeight ((jget (this).itemInterface)))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Weight value is not a valid number.<br />")
            when ((((jio (ItemInterface.getEnabled ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getEnabled ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getEnabled ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("For Sale value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getNewOrUsed ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("New Or Used value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getSummary ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getSummary ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getSummary ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Summary value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getDescription ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getDescription ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getDescription ((jget (this).itemInterface))))))) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Description value is invalid. Must be < " ++ javaToString AbSqlData.mAXBLOB) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getKeywords ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getKeywords ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getKeywords ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Keywords value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getCategory ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getCategory ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getCategory ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Category value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when ((((jio (ItemInterface.getType ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getType ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getType ((jget (this).itemInterface))))))) > AbSqlData.mAXSTRING)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Type value is invalid. Must be < " ++ javaToString AbSqlData.mAXSTRING) ++ " and > 0 characters long.<br />"))
            when (((jio (ItemInterface.getPrice ((jget (this).itemInterface)))) == javaNull) || (Prelude.not (jio (ItemInterface.isValid ((jio (ItemInterface.getPrice ((jget (this).itemInterface))))))))) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Price value is invalid. Must be < " ++ javaToString (jget (this).mAXPRICE)) ++ " and > 0 in length.<br />"))
            when ((((jio (ItemInterface.getCustoms ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getCustoms ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getCustoms ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Custom items value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when ((((jio (ItemInterface.getDownloads ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getDownloads ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getDownloads ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Downloadable item value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when ((((jio (ItemInterface.getGroups ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getGroups ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getGroups ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Group item value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when ((((jio (ItemInterface.getOptions ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getOptions ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getOptions ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Option item value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when ((((jio (ItemInterface.getPermissions ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getPermissions ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getPermissions ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Permission item value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            when ((((jio (ItemInterface.getSpecials ((jget (this).itemInterface)))) == javaNull) || ((jio (ItemInterface.length ((jio (ItemInterface.getSpecials ((jget (this).itemInterface))))))) < 1)) || ((jio (ItemInterface.length ((jio (ItemInterface.getSpecials ((jget (this).itemInterface))))))) > AbSqlData.mAXNUM)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Special item value is invalid. Must be number < " ++ javaToString AbSqlData.mAXNUM) ++ " and > 0 digits.<br />"))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: BasicItemValidation))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: BasicItemValidation))

toValidationInfoDoc_impl :: BasicItemValidation -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: BasicItemValidation))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: BasicItemValidation)) a1

toValidationInfoNode_impl :: BasicItemValidation -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


