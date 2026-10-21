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
-- package views.generic.inventory
module InventorySearch where

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
import qualified InventorySearchUtil -- same package or java.lang
import qualified InventorySearchProductUtil -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified StaticPagesEntity -- org.allbinary.data.tables.staticpages.StaticPagesEntity
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchParams -- org.allbinary.logic.control.search.SearchParams
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified InventoryViewSearchInterface -- views.admin.inventory.listings.InventoryViewSearchInterface

-- implements InventoryViewSearchInterface
data InventorySearch = InventorySearch
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , searchRequest :: IORef (SearchRequest.SearchRequest)
    }

instance JavaNull InventorySearch where
    javaNull = javaNullRecord "InventorySearch"

instance JavaEquals InventorySearch where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventorySearch where
    (==) = jrecordEquals

instance JavaObjectClass InventorySearch where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventorySearch
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    basicItemData <- newIORef javaNull
    searchRequest <- newIORef javaNull
    let this = InventorySearch header_ logUtil commonStrings basicItemData searchRequest
    jregisterLevel header_ this
    InventoryViewSearchInterface.registerInterface_ header_
    jregisterMethod header_ "searchSingleStaticPage" (\() -> searchSingleStaticPage_impl this)
    jregisterMethod header_ "searchSingleDynamicPage" (\() -> searchSingleDynamicPage_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    jregisterMethod header_ "getProduct" (\() -> getProduct_impl this)
    pure this

initFields_ :: InventorySearch -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.searchRequest (javaNull)
    pure ()

new_1 :: SearchRequest.SearchRequest -> IO InventorySearch
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: InventorySearch -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).searchRequest (searchRequest)
        pure ()


-- throws Exception
searchSingleStaticPage :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleStaticPage object_ = jmethod object_ "searchSingleStaticPage" (\() -> (searchSingleStaticPage_impl (javaCast object_ :: InventorySearch))) ()

searchSingleStaticPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleStaticPage_super object_ = (searchSingleStaticPage_impl (javaCast object_ :: InventorySearch))

searchSingleStaticPage_impl :: InventorySearch -> IO (String)
searchSingleStaticPage_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "searchSingleStaticPage" e)
            javaThrow ((JavaException "Exception" "Failed retrieve Single Product Page Static"))
            ) $ do
            storeFront <- (SearchRequest.getStoreFront ((jget (this).searchRequest)))
            searchParams <- (SearchRequest.getParams ((jget (this).searchRequest)))
            columnValueHashMap <- (SearchParams.get searchParams)
            file <- (StaticPagesEntity.getFile ((jio (StaticPagesEntity.new_))) (jio (StoreFrontInterface.getName storeFront)) (jio (Replace.all ((jio (Replace.new_2 "-" (jget ((jio (CommonSeps.getInstance))).sPACE)))) (javaCast (jio (HashMap.get columnValueHashMap (jget ((jget this.basicItemData)).kEYWORDS))) :: String))))
            if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) file)) then do
                javaReturn (javaNull)
            else do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostName storeFront)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostNamePath storeFront)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getStaticPath storeFront)))
                Control.Monad.void (StringMaker.append stringBuffer file)
                Control.Monad.void (StringMaker.append stringBuffer (jio (SearchParams.getEndPage ((jio (SearchRequest.getParams ((jget (this).searchRequest))))))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (InputOutputTypeData.getInstance))).dEFAULT))
                filePath <- (Replace.all ((jio (Replace.new_2 (jget ((jio (CommonSeps.getInstance))).sPACE) "%20"))) (jio (StringMaker.toString stringBuffer)))
                javaReturn (filePath)


-- throws Exception
searchSingleDynamicPage :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleDynamicPage object_ = jmethod object_ "searchSingleDynamicPage" (\() -> (searchSingleDynamicPage_impl (javaCast object_ :: InventorySearch))) ()

searchSingleDynamicPage_super :: (JavaObjectClass this_) => this_ -> IO (String)
searchSingleDynamicPage_super object_ = (searchSingleDynamicPage_impl (javaCast object_ :: InventorySearch))

searchSingleDynamicPage_impl :: InventorySearch -> IO (String)
searchSingleDynamicPage_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "searchSingleDynamicPage" e)
            javaThrow ((JavaException "Exception" "Failed retrieve Single Product Page Dynamically"))
            ) $ do
            str <- (InventorySearch.search this)
            pure ((jindex str ((jio (SearchParams.getStartPageInt ((jio (SearchRequest.getParams ((jget (this).searchRequest))))))))))


-- throws Exception
search :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
search object_ = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: InventorySearch))) ()

search_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
search_super object_ = (search_impl (javaCast object_ :: InventorySearch))

search_impl :: InventorySearch -> IO (JavaArray (String))
search_impl this = do
        abeClientInformation <- (ServiceClientInformationInterfaceFactory.getInstance)
        inventorySearchUtil <- (InventorySearchUtil.getInstance)
        vector <- (InventorySearchUtil.getBasicItemIdColumn inventorySearchUtil (jget (this).searchRequest))
        (InventorySearchUtil.search inventorySearchUtil abeClientInformation (jget this.searchRequest) vector)


-- throws Exception
getProduct :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getProduct object_ a1 = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: InventorySearch))) () a1

getProduct_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getProduct_super object_ a1 = (getProduct_impl (javaCast object_ :: InventorySearch)) a1

getProduct_impl :: InventorySearch -> String -> IO (String)
getProduct_impl this product = do
        abeClientInformation <- (ServiceClientInformationInterfaceFactory.getInstance)
        (InventorySearchProductUtil.getProduct ((jio (InventorySearchProductUtil.getInstance))) abeClientInformation (jget (this).searchRequest) product)


