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
-- package views.admin.orderhistory
module DateRangeOrderHistoryView (module DateRangeOrderHistoryView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, toXmlNode, toXmlNode_super, toXmlNode_impl, isValid, isValid_super, isValid_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, validationInfo, validationInfo_super, validationInfo_impl, logUtil, vIEWALLORDERS, vIEWORDERSINLASTHOUR, vIEWORDERSINLASTDAY, vIEWORDERSINLASTWEEK, vIEWORDERSINLAST30DAYS, request, shipped, partiallyShipped, processing, preprocessing, cancelled, dateType, toDate, fromDate, fromYear, fromMonth, fromDay, fromHour, toYear, toMonth, toDay, toHour, command, oN, mAXLEN)
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
import qualified Calendar -- java.util.Calendar
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified OrderData -- org.allbinary.business.user.commerce.inventory.order.OrderData
import qualified OrderHistory -- org.allbinary.business.user.commerce.inventory.order.OrderHistory
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified OrderHistoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TimeUtil -- org.allbinary.time.TimeUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements ValidationComponentInterface
-- implements DomNodeInterface
data DateRangeOrderHistoryView = DateRangeOrderHistoryView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , vIEWALLORDERS :: IORef (String)
    , vIEWORDERSINLASTHOUR :: IORef (String)
    , vIEWORDERSINLASTDAY :: IORef (String)
    , vIEWORDERSINLASTWEEK :: IORef (String)
    , vIEWORDERSINLAST30DAYS :: IORef (String)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , shipped :: IORef (String)
    , partiallyShipped :: IORef (String)
    , processing :: IORef (String)
    , preprocessing :: IORef (String)
    , cancelled :: IORef (String)
    , dateType :: IORef (String)
    , toDate :: IORef (String)
    , fromDate :: IORef (String)
    , fromYear :: IORef (String)
    , fromMonth :: IORef (String)
    , fromDay :: IORef (String)
    , fromHour :: IORef (String)
    , toYear :: IORef (String)
    , toMonth :: IORef (String)
    , toDay :: IORef (String)
    , toHour :: IORef (String)
    , command :: IORef (String)
    , oN :: IORef (String)
    , mAXLEN :: IORef (Int)
    }

instance JavaNull DateRangeOrderHistoryView where
    javaNull = javaNullRecord "DateRangeOrderHistoryView"

instance JavaEquals DateRangeOrderHistoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DateRangeOrderHistoryView where
    (==) = jrecordEquals

instance JavaObjectClass DateRangeOrderHistoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DateRangeOrderHistoryView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    vIEWALLORDERS <- newIORef ""
    vIEWORDERSINLASTHOUR <- newIORef ""
    vIEWORDERSINLASTDAY <- newIORef ""
    vIEWORDERSINLASTWEEK <- newIORef ""
    vIEWORDERSINLAST30DAYS <- newIORef ""
    request <- newIORef javaNull
    shipped <- newIORef ""
    partiallyShipped <- newIORef ""
    processing <- newIORef ""
    preprocessing <- newIORef ""
    cancelled <- newIORef ""
    dateType <- newIORef ""
    toDate <- newIORef ""
    fromDate <- newIORef ""
    fromYear <- newIORef ""
    fromMonth <- newIORef ""
    fromDay <- newIORef ""
    fromHour <- newIORef ""
    toYear <- newIORef ""
    toMonth <- newIORef ""
    toDay <- newIORef ""
    toHour <- newIORef ""
    command <- newIORef ""
    oN <- newIORef ""
    mAXLEN <- newIORef 0
    let this = DateRangeOrderHistoryView header_ base logUtil vIEWALLORDERS vIEWORDERSINLASTHOUR vIEWORDERSINLASTDAY vIEWORDERSINLASTWEEK vIEWORDERSINLAST30DAYS request shipped partiallyShipped processing preprocessing cancelled dateType toDate fromDate fromYear fromMonth fromDay fromHour toYear toMonth toDay toHour command oN mAXLEN
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    pure this

initFields_ :: DateRangeOrderHistoryView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.vIEWALLORDERS ("View All")
    jset this.vIEWORDERSINLASTHOUR ("Last Hour")
    jset this.vIEWORDERSINLASTDAY ("Last Day")
    jset this.vIEWORDERSINLASTWEEK ("Last Week")
    jset this.vIEWORDERSINLAST30DAYS ("30 Days")
    jset this.request (javaNull)
    jset this.shipped ("")
    jset this.partiallyShipped ("")
    jset this.processing ("")
    jset this.preprocessing ("")
    jset this.cancelled ("")
    jset this.dateType ("")
    jset this.toDate ("")
    jset this.fromDate ("")
    jset this.fromYear ("")
    jset this.fromMonth ("")
    jset this.fromDay ("")
    jset this.fromHour ("")
    jset this.toYear ("")
    jset this.toMonth ("")
    jset this.toDay ("")
    jset this.toHour ("")
    jset this.command ("")
    jset this.oN ("on")
    jset this.mAXLEN (15)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO DateRangeOrderHistoryView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: DateRangeOrderHistoryView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (DateRangeOrderHistoryView.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: DateRangeOrderHistoryView))

getFormData_impl :: DateRangeOrderHistoryView -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.dATETYPE))
        jset (this).dateType (assignedValue)
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
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.fROMYEAR))
        jset (this).fromYear (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.fROMMONTH))
        jset (this).fromMonth (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.fROMDAY))
        jset (this).fromDay (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.fROMHOUR))
        jset (this).fromHour (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tOYEAR))
        jset (this).toYear (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tOMONTH))
        jset (this).toMonth (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tODAY))
        jset (this).toDay (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (OrderHistoryData.tOHOUR))
        jset (this).toHour (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (GLOBALS2.aDMINCOMMAND))
        jset (this).command (assignedValue)
        pure ()


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: DateRangeOrderHistoryView))

addDomNodeInterfaces_impl :: DateRangeOrderHistoryView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: DateRangeOrderHistoryView))

view_impl :: DateRangeOrderHistoryView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (DateRangeOrderHistoryView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: DateRangeOrderHistoryView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: DateRangeOrderHistoryView)) a1

toXmlNode_impl :: DateRangeOrderHistoryView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Attempt to View orders in (fromDate=")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).fromDate))
                Control.Monad.void (StringMaker.append stringBuffer ",toDate=")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).toDate))
                Control.Monad.void (StringMaker.append stringBuffer ") and status")
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "view")
            node <- (Document.createElement document (OrderData.oRDERS))
            when (((jget (this).preprocessing) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).preprocessing) (jget (this).oN)) - 1) == 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Adding Preprocessing Orders" this "toXmlNode")
                orderHistoryVector <- (OrderHistoryEntity.getOrders ((jio (OrderHistoryEntityFactory.getInstance))) (OrderHistoryData.pREPROCESSING) (jget this.fromDate) (jget this.toDate))
                size <- (BasicArrayList.size orderHistoryVector)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let orderHistory = (javaCast (jio (BasicArrayList.get orderHistoryVector index)) :: OrderHistory.OrderHistory)
                    Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            when (((jget (this).shipped) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).shipped) (jget (this).oN)) - 1) == 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Adding Shipped Orders" this "toXmlNode")
                orderHistoryVector <- (OrderHistoryEntity.getOrders ((jio (OrderHistoryEntityFactory.getInstance))) (OrderHistoryData.sHIPPED) (jget this.fromDate) (jget this.toDate))
                size <- (BasicArrayList.size orderHistoryVector)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let orderHistory = (javaCast (jio (BasicArrayList.get orderHistoryVector index)) :: OrderHistory.OrderHistory)
                    Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            when (((jget (this).partiallyShipped) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).partiallyShipped) (jget (this).oN)) - 1) == 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Adding Partially Shipped Orders" this "toDomNode")
                orderHistoryVector <- (OrderHistoryEntity.getOrders ((jio (OrderHistoryEntityFactory.getInstance))) (OrderHistoryData.pARTIALLYSHIPPED) (jget this.fromDate) (jget this.toDate))
                size <- (BasicArrayList.size orderHistoryVector)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let orderHistory = (javaCast (jio (BasicArrayList.get orderHistoryVector index)) :: OrderHistory.OrderHistory)
                    Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            when (((jget (this).processing) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).processing) (jget (this).oN)) - 1) == 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Adding Processing Orders" this "toXmlNode")
                orderHistoryVector <- (OrderHistoryEntity.getOrders ((jio (OrderHistoryEntityFactory.getInstance))) (OrderHistoryData.pROCESSING) (jget this.fromDate) (jget this.toDate))
                size <- (BasicArrayList.size orderHistoryVector)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let orderHistory = (javaCast (jio (BasicArrayList.get orderHistoryVector index)) :: OrderHistory.OrderHistory)
                    Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            when (((jget (this).cancelled) /= javaNull) && ((Prelude.fromEnum (Prelude.compare (jget (this).cancelled) (jget (this).oN)) - 1) == 0)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Adding Cancelled Orders" this "view")
                orderHistoryVector <- (OrderHistoryEntity.getOrders ((jio (OrderHistoryEntityFactory.getInstance))) (OrderHistoryData.cANCELLED) (jget this.fromDate) (jget this.toDate))
                size <- (BasicArrayList.size orderHistoryVector)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let orderHistory = (javaCast (jio (BasicArrayList.get orderHistoryVector index)) :: OrderHistory.OrderHistory)
                    Control.Monad.void (Node.appendChild node (jio (OrderHistory.toXmlNode orderHistory document)))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pREPROCESSINGNAME) (OrderHistoryData.pREPROCESSING))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pROCESSINGNAME) (OrderHistoryData.pROCESSING))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.cANCELLEDNAME) (OrderHistoryData.cANCELLED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.pARTIALLYSHIPPEDNAME) (OrderHistoryData.pARTIALLYSHIPPED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (OrderHistoryData.sHIPPEDNAME) (OrderHistoryData.sHIPPED))))
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document (GLOBALS2.vIEWNAME) (GLOBALS2.vIEW))))
            pure (node)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: DateRangeOrderHistoryView))

isValid_impl :: DateRangeOrderHistoryView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Exception in validation" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            isValid <- newIORef (True)
            when (((jget (this).dateType) == javaNull) || ((((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPELONG)) - 1) /= 0) && ((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPECAESAR)) - 1) /= 0)))) $ do
                jset isValid (False)
            when ((jget (this).dateType) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPELONG)) - 1) == 0) then do
                    calendar <- (Calendar.getInstance)
                    currentTime <- (Calendar.getTimeInMillis calendar)
                    rangeDate <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                    if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget (this).vIEWORDERSINLASTHOUR)) - 1) == 0) then do
                        let oneHour = ((60 * 60) * 1000)
                        jset rangeDate ((javaToString (Prelude.fromIntegral (oneHour) :: Int64)))
                    else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget (this).vIEWORDERSINLASTDAY)) - 1) == 0) then do
                        let oneDay = (((24 * 60) * 60) * 1000)
                        jset rangeDate ((javaToString (Prelude.fromIntegral (oneDay) :: Int64)))
                    else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget (this).vIEWORDERSINLASTWEEK)) - 1) == 0) then do
                        let oneWeek = ((((7 * 24) * 60) * 60) * 1000)
                        jset rangeDate ((javaToString (Prelude.fromIntegral (oneWeek) :: Int64)))
                    else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget (this).vIEWORDERSINLAST30DAYS)) - 1) == 0) then do
                        let thirtyDays = ((((30 * 24) * 60) * 60) * 1000)
                        jset rangeDate ((javaToString (Prelude.fromIntegral (thirtyDays) :: Int64)))
                    else when ((Prelude.fromEnum (Prelude.compare (jget (this).command) (jget (this).vIEWALLORDERS)) - 1) == 0) $ do
                        jset rangeDate ((javaToString (Prelude.fromIntegral (currentTime) :: Int64)))
                    let rangeDateLong = (Prelude.fromIntegral ((jget rangeDate)) :: Int64)
                    jset (this).fromDate ((javaToString (Prelude.fromIntegral ((currentTime - rangeDateLong)) :: Int64)))
                    time <- (jnewString (javaToString (Prelude.fromIntegral (currentTime) :: Int64)))
                    jset (this).toDate (time)
                else when ((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPECAESAR)) - 1) == 0) $ do
                    calendar <- (Calendar.getInstance)
                    Control.Monad.void (TimeUtil.setCalendar ((jio (TimeUtil.getInstance))) calendar (jget (this).fromYear) (jget (this).fromMonth) (jget (this).fromDay) (jget (this).fromHour))
                    jset (this).fromDate ((javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
                    Control.Monad.void (TimeUtil.setCalendar ((jio (TimeUtil.getInstance))) calendar (jget (this).toYear) (jget (this).toMonth) (jget (this).toDay) (jget (this).toHour))
                    jset (this).toDate ((javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
                when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).toDate))) || ((Prelude.length (jget (this).toDate)) > (jget (this).mAXLEN))) $ do
                    jset isValid (False)
                when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).fromDate))) || ((Prelude.length (jget (this).fromDate)) > (jget (this).mAXLEN))) $ do
                    jset isValid (False)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Attempt to View orders in (fromDate=")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).fromDate))
                Control.Monad.void (StringMaker.append stringBuffer ",toDate=")
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).toDate))
                Control.Monad.void (StringMaker.append stringBuffer ")")
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).base.commonStrings)).iS_VALID))
            pure ((jget isValid))


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: DateRangeOrderHistoryView))

toValidationInfoDoc_impl :: DateRangeOrderHistoryView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: DateRangeOrderHistoryView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: DateRangeOrderHistoryView)) a1

toValidationInfoNode_impl :: DateRangeOrderHistoryView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: DateRangeOrderHistoryView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: DateRangeOrderHistoryView))

validationInfo_impl :: DateRangeOrderHistoryView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            result <- (StringMaker.new_)
            when (((jget (this).dateType) == javaNull) || ((((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPELONG)) - 1) /= 0) && ((Prelude.fromEnum (Prelude.compare (jget (this).dateType) (OrderHistoryData.tYPECAESAR)) - 1) /= 0)))) $ do
                Control.Monad.void (StringMaker.append result "DATETYPE not recognized")
            when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).toDate))) || ((Prelude.length (jget (this).toDate)) > (jget (this).mAXLEN))) $ do
                Control.Monad.void (StringMaker.append result "Invalid To Date")
            when ((jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).fromDate))) || ((Prelude.length (jget (this).fromDate)) > (jget (this).mAXLEN))) $ do
                Control.Monad.void (StringMaker.append result "Invalid From Date")
            (StringMaker.toString result)


