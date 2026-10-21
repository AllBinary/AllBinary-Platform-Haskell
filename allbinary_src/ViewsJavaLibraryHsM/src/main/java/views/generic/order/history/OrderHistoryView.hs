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
-- package views.generic.order.history
module OrderHistoryView (module OrderHistoryView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, request, shipped, partiallyShipped, processing, preprocessing, cancelled)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified OrderHistoryEntity -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data OrderHistoryView = OrderHistoryView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , shipped :: IORef (String)
    , partiallyShipped :: IORef (String)
    , processing :: IORef (String)
    , preprocessing :: IORef (String)
    , cancelled :: IORef (String)
    }

instance JavaNull OrderHistoryView where
    javaNull = javaNullRecord "OrderHistoryView"

instance JavaEquals OrderHistoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq OrderHistoryView where
    (==) = jrecordEquals

instance JavaObjectClass OrderHistoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO OrderHistoryView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    request <- newIORef javaNull
    shipped <- newIORef ""
    partiallyShipped <- newIORef ""
    processing <- newIORef ""
    preprocessing <- newIORef ""
    cancelled <- newIORef ""
    let this = OrderHistoryView header_ base logUtil request shipped partiallyShipped processing preprocessing cancelled
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: OrderHistoryView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.request (javaNull)
    jset this.shipped (javaNull)
    jset this.partiallyShipped (javaNull)
    jset this.processing (javaNull)
    jset this.preprocessing (javaNull)
    jset this.cancelled (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO OrderHistoryView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: OrderHistoryView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.pREPROCESSINGNAME))
        jset (this).preprocessing (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.sHIPPEDNAME))
        jset (this).shipped (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.pARTIALLYSHIPPEDNAME))
        jset (this).partiallyShipped (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.pROCESSINGNAME))
        jset (this).processing (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.cANCELLEDNAME))
        jset (this).cancelled (assignedValue)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: OrderHistoryView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: OrderHistoryView)) a1

toXmlNode_impl :: OrderHistoryView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            javaThrow (e)
            ) $ do
            node <- (Document.createElement document (OrderData.oRDERS))
            orderHistoryEntity <- (OrderHistoryEntity.new_)
            orderReviewVector <- (OrderHistoryEntity.getOrders orderHistoryEntity (jio (WeblisketSession.getUserName ((jio (HttpStoreComponentView.getWeblisketSession this))))))
            size <- (BasicArrayList.size orderReviewVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let orderHistory = (javaCast (jio (BasicArrayList.get orderReviewVector index)) :: OrderHistory.OrderHistory)
                orderHistoryNode <- (OrderHistory.toXmlNode orderHistory document)
                orderNode <- (Document.createElement document (jio (OrderHistory.getPaymentMethod orderHistory)))
                Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Attempt to View a users order history" this "view")
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pREPROCESSINGNAME) (OrderHistoryData.pREPROCESSING))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pROCESSINGNAME) (OrderHistoryData.pROCESSING))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.cANCELLEDNAME) (OrderHistoryData.cANCELLED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pARTIALLYSHIPPEDNAME) (OrderHistoryData.pARTIALLYSHIPPED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.sHIPPEDNAME) (OrderHistoryData.sHIPPED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (GLOBALS2.vIEWNAME) (GLOBALS2.vIEW))))
            pure (node)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: OrderHistoryView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: OrderHistoryView))

addDomNodeInterfaces_impl :: OrderHistoryView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: OrderHistoryView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: OrderHistoryView))

view_impl :: OrderHistoryView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (OrderHistoryView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


