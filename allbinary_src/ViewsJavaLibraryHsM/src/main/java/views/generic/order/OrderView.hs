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
-- package views.generic.order
module OrderView (module OrderView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request, order, orderHistory, basketReview)
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
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified Basket -- org.allbinary.business.user.commerce.inventory.basket.Basket
import qualified BasketReview -- org.allbinary.business.user.commerce.inventory.basket.BasketReview
import qualified Order -- org.allbinary.business.user.commerce.inventory.order.Order
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data OrderView = OrderView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , order :: IORef (Order.Order)
    , orderHistory :: IORef (OrderHistory.OrderHistory)
    , basketReview :: IORef (BasketReview.BasketReview)
    }

instance JavaNull OrderView where
    javaNull = javaNullRecord "OrderView"

instance JavaEquals OrderView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderView where
    (==) = jrecordEquals

instance JavaObjectClass OrderView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    order <- newIORef javaNull
    orderHistory <- newIORef javaNull
    basketReview <- newIORef javaNull
    let this = OrderView header_ base logUtil request order orderHistory basketReview
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: OrderView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.order (javaNull)
    jset this.orderHistory (javaNull)
    jset this.basketReview (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO OrderView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: OrderView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (OrderView.getFormData this)
        pure ()


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: OrderView))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: OrderView))

getFormData_impl :: OrderView -> IO (())
getFormData_impl this = do
        id <- newIORef =<< (HttpServletRequest.getParameter ((jget (this).request)) (OrderData.iD))
        when ((jget id) == javaNull) $ do
            assignedValue <- (WeblisketSession.getId ((jio (WeblisketSession.getOrder ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
            jset id (assignedValue)
        assignedValue <- (Order.new_1 (jio (Basket.new_)))
        jset (this).order (assignedValue)
        Control.Monad.void (Order.setId ((jget (this).order)) (jget id))
        pure ()


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: OrderView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: OrderView)) a1

toXmlNode_impl :: OrderView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            orderHistoryNode <- (OrderHistory.toXmlNode ((jget (this).orderHistory)) document)
            node <- (Document.createElement document (jio (OrderHistory.getPaymentMethod ((jget (this).orderHistory)))))
            Control.Monad.void (Node.appendChild orderHistoryNode (jio (BasketReview.toXmlNode ((jget (this).basketReview)) document)))
            Control.Monad.void (Node.appendChild node orderHistoryNode)
            pure (node)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: OrderView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: OrderView))

addDomNodeInterfaces_impl :: OrderView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: OrderView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: OrderView))

view_impl :: OrderView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (OrderView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


