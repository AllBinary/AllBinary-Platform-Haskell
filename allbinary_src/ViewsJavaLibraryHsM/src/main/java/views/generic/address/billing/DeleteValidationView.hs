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
-- package views.generic.address.billing
module DeleteValidationView (module DeleteValidationView, module BillingAddressView) where

import BillingAddressView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, value)
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
import qualified StreetAddress -- same package or java.lang
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified BillingAddressesEntity -- org.allbinary.data.tables.user.address.billing.BillingAddressesEntity
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified BillingAddressView

-- implements ValidationComponentInterface
data DeleteValidationView = DeleteValidationView
    { header_ :: JavaHeader
    , base :: BillingAddressView.BillingAddressView
    , value :: IORef (String)
    }

instance JavaNull DeleteValidationView where
    javaNull = javaNullRecord "DeleteValidationView"

instance JavaEquals DeleteValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DeleteValidationView where
    (==) = jrecordEquals

instance JavaObjectClass DeleteValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DeleteValidationView
newRecord_ = do
    base <- BillingAddressView.newRecord_
    let header_ = base.header_
    value <- newIORef ""
    let this = DeleteValidationView header_ base value
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: DeleteValidationView -> IO ()
initFields_ this = do
    jset this.value (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO DeleteValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: DeleteValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        BillingAddressView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpTransformInfoInterface = (javaCast (jio (BillingAddressView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        assignedValue <- (TransformInfoHttpInterface.getParameter ((jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))))) (StreetAddressData.iD))
        jset (this).value (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: DeleteValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: DeleteValidationView))

isValid_impl :: DeleteValidationView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        when ((jio (WeblisketSession.getUserName ((jio (BillingAddressView.getWeblisketSession this))))) /= javaNull) $ do
            javaReturn (False)
        billingAddressesEntity <- (BillingAddressesEntity.new_1 (jio (WeblisketSession.getUserName ((jio (BillingAddressView.getWeblisketSession this))))))
        assignedValue <- (BillingAddressesEntity.get_1 billingAddressesEntity (Prelude.fromIntegral ((jget (this).value)) :: Int))
        jset (this).base.streetAddress (assignedValue)
        when ((jget (this).base.streetAddress) == javaNull) $ do
            javaReturn (False)
        (StreetAddress.isValid ((jget (this).base.streetAddress)))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: DeleteValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: DeleteValidationView))

validationInfo_impl :: DeleteValidationView -> IO (String)
validationInfo_impl this = do
        (StreetAddress.validationInfo ((jget (this).base.streetAddress)))


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: DeleteValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: DeleteValidationView))

toValidationInfoDoc_impl :: DeleteValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: DeleteValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: DeleteValidationView)) a1

toValidationInfoNode_impl :: DeleteValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


