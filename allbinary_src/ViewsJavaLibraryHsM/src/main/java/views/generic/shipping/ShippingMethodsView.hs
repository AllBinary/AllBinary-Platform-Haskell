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
-- package views.generic.shipping
module ShippingMethodsView (module ShippingMethodsView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, shippingMethods, storeFrontInterface)
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
import qualified CommonStrings -- same package or java.lang
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified OrderInterface -- org.allbinary.business.user.commerce.inventory.order.OrderInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified TaxFactory -- org.allbinary.business.user.commerce.money.tax.TaxFactory
import qualified ShippingMethods -- org.allbinary.business.user.commerce.shipping.ShippingMethods
import qualified ShippingMethodsData -- org.allbinary.business.user.commerce.shipping.ShippingMethodsData
import qualified ShippingInterface -- org.allbinary.business.user.commerce.shipping.modules.ShippingInterface
import qualified StreetAddressesEntityInterface -- org.allbinary.data.tables.user.address.StreetAddressesEntityInterface
import qualified ShippingAddressesEntityFactory -- org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data ShippingMethodsView = ShippingMethodsView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , shippingMethods :: IORef (ShippingMethods.ShippingMethods)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    }

instance JavaNull ShippingMethodsView where
    javaNull = javaNullRecord "ShippingMethodsView"

instance JavaEquals ShippingMethodsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethodsView where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethodsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingMethodsView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    shippingMethods <- newIORef javaNull
    storeFrontInterface <- newIORef javaNull
    let this = ShippingMethodsView header_ base logUtil shippingMethods storeFrontInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: ShippingMethodsView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.shippingMethods (javaNull)
    jset this.storeFrontInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO ShippingMethodsView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: ShippingMethodsView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (StoreFrontFactory.getInstance (jio (TransformInfoInterface.getStoreName ((jio (HttpStoreComponentView.getTransformInfoInterface this))))))
        jset (this).storeFrontInterface (assignedValue)
        assignedValue <- (ShippingMethods.new_2 (jget (this).base.base.abeClientInformation) (jget (this).storeFrontInterface))
        jset (this).shippingMethods (assignedValue)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ShippingMethodsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ShippingMethodsView)) a1

toXmlNode_impl :: ShippingMethodsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            shippingMethodsNode <- (Document.createElement document (ShippingMethodsData.sHIPPINGMETHODSORDERSUMMARIES))
            order <- (WeblisketSession.getOrder ((jio (HttpStoreComponentView.getWeblisketSession this))))
            basket <- (WeblisketSession.getBasket ((jio (WeblisketSession.getOrder ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
            shippingAddressesEntityInterface <- (fmap (\value_ -> javaCast value_ :: StreetAddressesEntityInterface.StreetAddressesEntityInterface) (ShippingAddressesEntityFactory.getInstance_1 ((jio (ShippingAddressesEntityFactory.getInstance))) (jio (WeblisketSession.getUserName ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
            streetAddress <- (StreetAddressesEntityInterface.getDefault shippingAddressesEntityInterface)
            shippingVector <- (ShippingMethods.get ((jget (this).shippingMethods)))
            size <- (BasicArrayList.size shippingVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                shippingMethodNode <- (Document.createElement document (ShippingMethodsData.sHIPPINGMETHODORDERSUMMARY))
                let shipping = (javaCast (jio (BasicArrayList.get shippingVector index)) :: ShippingInterface.ShippingInterface)
                let shippingView = (javaCast shipping :: DomNodeInterface.DomNodeInterface)
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (DomNodeInterface.toXmlNode shippingView document)))
                shippingCost <- (ShippingInterface.getCost shipping order)
                subTotal <- (BasketInterface.getSubTotal basket)
                taxRate <- (TaxFactory.getTaxRate ((jio (TaxFactory.getInstance_2 ((jio (TaxFactory.getInstance))) (jget (this).base.base.abeClientInformation) (jget this.storeFrontInterface)))) streetAddress (jget this.storeFrontInterface))
                tax <- (Money.new_)
                total <- (Money.new_)
                Control.Monad.void (Money.add total (jio (Money.toString shippingCost)))
                Control.Monad.void (Money.add total (jio (Money.toString subTotal)))
                Control.Monad.void (Money.add tax (jio (Money.toString total)))
                Control.Monad.void (Money.multiply tax taxRate)
                Control.Monad.void (Money.add total (jio (Money.toString tax)))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodsData.sHIPPINGCOST) (jio (Money.toString shippingCost)))))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodsData.tAXRATE) (javaToString taxRate))))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodsData.sUBTOTAL) (jio (Money.toString subTotal)))))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodsData.tAX) (jio (Money.toString tax)))))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (ShippingMethodsData.tOTAL) (jio (Money.toString total)))))
                Control.Monad.void (Node.appendChild shippingMethodNode (jio (ModDomHelper.createNameValueNodes_3 document (jget ((jio (EntryData.getInstance))).dEFAULT) (jio (ShippingInterface.getName ((jio (ShippingMethods.getDefault ((jget (this).shippingMethods))))))))))
                Control.Monad.void (Node.appendChild shippingMethodsNode shippingMethodNode)
            pure (shippingMethodsNode)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: ShippingMethodsView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: ShippingMethodsView))

addDomNodeInterfaces_impl :: ShippingMethodsView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: ShippingMethodsView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: ShippingMethodsView))

view_impl :: ShippingMethodsView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view ShippingMethods"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            pure (error)
            ) $ do
            Control.Monad.void (ShippingMethodsView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


