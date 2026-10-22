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
-- package views.generic.address.shipping
module UpdateTaxValidationView (module UpdateTaxValidationView, module ShippingAddressView) where

import ShippingAddressView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified ShippingAddressData -- org.allbinary.business.user.address.ShippingAddressData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified TaxFactory -- org.allbinary.business.user.commerce.money.tax.TaxFactory
import qualified ShippingAddressesEntity -- org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ShippingAddressView

-- implements ValidationComponentInterface
data UpdateTaxValidationView = UpdateTaxValidationView
    { header_ :: JavaHeader
    , base :: ShippingAddressView.ShippingAddressView
    }

instance JavaNull UpdateTaxValidationView where
    javaNull = javaNullRecord "UpdateTaxValidationView"

instance JavaEquals UpdateTaxValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateTaxValidationView where
    (==) = jrecordEquals

instance JavaObjectClass UpdateTaxValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpdateTaxValidationView
newRecord_ = do
    base <- ShippingAddressView.newRecord_
    let header_ = base.header_
    let this = UpdateTaxValidationView header_ base
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: UpdateTaxValidationView -> IO ()
initFields_ this = do
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO UpdateTaxValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: UpdateTaxValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        ShippingAddressView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: UpdateTaxValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: UpdateTaxValidationView))

isValid_impl :: UpdateTaxValidationView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        assignedValue <- (StreetAddress.new_1 (jio (ShippingAddressView.getRequest this)))
        jset (this).base.streetAddress (assignedValue)
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (TransformInfoInterface.getStoreName ((jio (ShippingAddressView.getTransformInfoInterface this)))))))
        when ((jio (TaxFactory.isValid ((jio (TaxFactory.getInstance_2 ((jio (TaxFactory.getInstance))) (jget (this).base.base.base.abeClientInformation) storeFrontInterface))) (jget (this).base.streetAddress) storeFrontInterface)) == False) $ do
            javaReturn (False)
        billingAddressesEntity <- (ShippingAddressesEntity.new_1 (jio (WeblisketSession.getUserName ((jio (ShippingAddressView.getWeblisketSession this))))))
        streetAddressList <- (ShippingAddressesEntity.get billingAddressesEntity)
        when (streetAddressList == javaNull) $ do
            javaReturn (False)
        count <- newIORef (0)
        size <- (BasicArrayList.size streetAddressList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let aStreetAddress = (javaCast (jio (BasicArrayList.get streetAddressList index)) :: StreetAddress.StreetAddress)
            when ((Prelude.fromEnum (Prelude.compare (jio (StreetAddress.getName aStreetAddress)) (ShippingAddressData.tAX)) - 1) == 0) $ do
                jset count ((jget count) + 1)
        when ((jget count) /= 1) $ do
            pure (False)
        pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: UpdateTaxValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: UpdateTaxValidationView))

validationInfo_impl :: UpdateTaxValidationView -> IO (String)
validationInfo_impl this = do
        pure ("Unable to update tax location.")


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: UpdateTaxValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: UpdateTaxValidationView))

toValidationInfoDoc_impl :: UpdateTaxValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: UpdateTaxValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: UpdateTaxValidationView)) a1

toValidationInfoNode_impl :: UpdateTaxValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


