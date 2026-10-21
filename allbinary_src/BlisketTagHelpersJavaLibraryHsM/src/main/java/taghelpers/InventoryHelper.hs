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
-- package taghelpers
module InventoryHelper (module InventoryHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, viewSummary, viewSummary_super, viewSummary_impl, search, search_super, search_impl, logUtil, basicItemData, weblisketSession, response, request, streetAddress, id, searchRequest)
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
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpServletResponse -- javax.servlet.http.HttpServletResponse
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TagHelper -- admin.taghelpers.TagHelper
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified AcceptableResponseGenerator -- org.allbinary.logic.communication.http.AcceptableResponseGenerator
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchParams -- org.allbinary.logic.control.search.SearchParams
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified InventoryViewFactory -- views.admin.inventory.listings.InventoryViewFactory
import qualified InventoryViewSearchInterface -- views.admin.inventory.listings.InventoryViewSearchInterface

data InventoryHelper = InventoryHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , weblisketSession :: IORef (WeblisketSession.WeblisketSession)
    , response :: IORef (HttpServletResponse.HttpServletResponse)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , streetAddress :: IORef (StreetAddress.StreetAddress)
    , id :: IORef (String)
    , searchRequest :: IORef (SearchRequest.SearchRequest)
    }

instance JavaNull InventoryHelper where
    javaNull = javaNullRecord "InventoryHelper"

instance JavaEquals InventoryHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryHelper where
    (==) = jrecordEquals

instance JavaObjectClass InventoryHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventoryHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    weblisketSession <- newIORef javaNull
    response <- newIORef javaNull
    request <- newIORef javaNull
    streetAddress <- newIORef javaNull
    id <- newIORef ""
    searchRequest <- newIORef javaNull
    let this = InventoryHelper header_ base logUtil basicItemData weblisketSession response request streetAddress id searchRequest
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "viewSummary" (\() -> viewSummary_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    pure this

initFields_ :: InventoryHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.weblisketSession (javaNull)
    jset this.response (javaNull)
    jset this.request (javaNull)
    jset this.streetAddress (javaNull)
    jset this.id ("")
    jset this.searchRequest (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO InventoryHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: InventoryHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        jset (this).response ((javaCast (jio (PageContext.getResponse pageContext)) :: HttpServletResponse.HttpServletResponse))
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        let storeName = (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String)
        let xslFile = (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (TransformInfoData.getInstance))).tEMPLATEFILENAME))) :: String)
        when (storeName /= javaNull) $ do
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance storeName))
            contentType <- (AcceptableResponseGenerator.get ((jio (AcceptableResponseGenerator.getInstance))) (jget (this).request))
            searchParams <- (SearchParams.new_1 (jget (this).request))
            assignedValue <- (SearchRequest.new_6 storeFrontInterface searchParams xslFile contentType propertiesHashMap pageContext)
            jset (this).searchRequest (assignedValue)
        Control.Monad.void (InventoryHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: InventoryHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: InventoryHelper))

getFormData_impl :: InventoryHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jget this.basicItemData)).iD))
        jset (this).id (assignedValue)
        pure ()


viewSummary :: (JavaObjectClass this_) => this_ -> IO (String)
viewSummary object_ = jmethod object_ "viewSummary" (\() -> (viewSummary_impl (javaCast object_ :: InventoryHelper))) ()

viewSummary_super :: (JavaObjectClass this_) => this_ -> IO (String)
viewSummary_super object_ = (viewSummary_impl (javaCast object_ :: InventoryHelper))

viewSummary_impl :: InventoryHelper -> IO (String)
viewSummary_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to View Summary"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "viewSummary()" e)
            pure (((((error ++ "<br>") ++ "Exception: ") ++ javaToString e) ++ "<br>"))
            ) $ do
            inventoryViewSearchInterface <- (InventoryViewFactory.getInstance (jget (this).searchRequest))
            result <- (InventoryViewSearchInterface.getProduct inventoryViewSearchInterface (jget (this).id))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successfull Inventory View Summary" this "viewSummary()")
            pure (result)


search :: (JavaObjectClass this_) => this_ -> IO (String)
search object_ = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: InventoryHelper))) ()

search_super :: (JavaObjectClass this_) => this_ -> IO (String)
search_super object_ = (search_impl (javaCast object_ :: InventoryHelper))

search_impl :: InventoryHelper -> IO (String)
search_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            let error = "Failed to search Inventory by keyword"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "searchSingleDynamicPage()" e)
            pure (((((error ++ "<br>") ++ "Exception: ") ++ javaToString e) ++ "<br>"))
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            let keywords = (javaCast (jio (HashMap.get ((jio (SearchParams.get ((jio (SearchRequest.getParams ((jget (this).searchRequest)))))))) (jget ((jget this.basicItemData)).kEYWORDS))) :: String)
            when ((keywords == javaNull) || ((Prelude.fromEnum (Prelude.compare keywords (jget (stringUtil).eMPTY_STRING)) - 1) == 0)) $ do
                javaReturn ("Please enter a keyword in the search field above the Search button.")
            inventoryViewSearchInterface <- (InventoryViewFactory.getInstance (jget (this).searchRequest))
            result <- (InventoryViewSearchInterface.searchSingleDynamicPage inventoryViewSearchInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Successful Inventory Dynamic Search" this "searchSingleDynamicPage()")
            pure (result)


