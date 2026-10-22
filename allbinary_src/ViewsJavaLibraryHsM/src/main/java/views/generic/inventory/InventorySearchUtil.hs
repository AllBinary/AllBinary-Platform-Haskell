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
module InventorySearchUtil where

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
import qualified InventoryColumnUtil -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified InventoryData -- org.allbinary.business.user.commerce.inventory.InventoryData
import qualified BasketData -- org.allbinary.business.user.commerce.inventory.basket.BasketData
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchData -- org.allbinary.logic.control.search.SearchData
import qualified SearchParams -- org.allbinary.logic.control.search.SearchParams
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified StoreTransformer -- org.allbinary.logic.visual.transform.StoreTransformer
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformStoreDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory
import qualified TransformInfoHttpSearch -- org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data InventorySearchUtil = InventorySearchUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonPhoneStrings :: IORef (CommonPhoneStrings.CommonPhoneStrings)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    }

instance JavaNull InventorySearchUtil where
    javaNull = javaNullRecord "InventorySearchUtil"

instance JavaEquals InventorySearchUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventorySearchUtil where
    (==) = jrecordEquals

instance JavaObjectClass InventorySearchUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventorySearchUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonPhoneStrings <- newIORef javaNull
    basicItemData <- newIORef javaNull
    let this = InventorySearchUtil header_ logUtil commonStrings commonPhoneStrings basicItemData
    jregisterLevel header_ this
    jregisterMethod header_ "getBasicItemIdColumn" (\() -> getBasicItemIdColumn_impl this)
    jregisterMethod header_ "getNoResults" (\() -> getNoResults_impl this)
    jregisterMethod header_ "search" (\() -> search_impl this)
    pure this

initFields_ :: InventorySearchUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonPhoneStrings =<< (CommonPhoneStrings.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    pure ()

new_ :: IO InventorySearchUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventorySearchUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InventorySearchUtil)
getInstance = do
        pure (InventorySearchUtil.instance_)


-- throws Exception
getBasicItemIdColumn :: (JavaObjectClass this_) => this_ -> SearchRequest.SearchRequest -> IO (BasicArrayList.BasicArrayList)
getBasicItemIdColumn object_ a1 = jmethod object_ "getBasicItemIdColumn" (\() -> (getBasicItemIdColumn_impl (javaCast object_ :: InventorySearchUtil))) () a1

getBasicItemIdColumn_super :: (JavaObjectClass this_) => this_ -> SearchRequest.SearchRequest -> IO (BasicArrayList.BasicArrayList)
getBasicItemIdColumn_super object_ a1 = (getBasicItemIdColumn_impl (javaCast object_ :: InventorySearchUtil)) a1

getBasicItemIdColumn_impl :: InventorySearchUtil -> SearchRequest.SearchRequest -> IO (BasicArrayList.BasicArrayList)
getBasicItemIdColumn_impl this searchRequest = do
        inventoryEntityInterface <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
        storeFrontInterface <- (SearchRequest.getStoreFront searchRequest)
        inventorySearchUtil <- (InventoryColumnUtil.getInstance)
        column <- (InventoryColumnUtil.getColumnWhereLike inventorySearchUtil inventoryEntityInterface (jio (StoreFrontInterface.getCategoryPath storeFrontInterface)) (jget ((jget this.basicItemData)).iD))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Items Found: " ++ javaToString (jio (BasicArrayList.size column))) this "search")
        subStoreVector <- (StoreFrontInterface.getSubStores storeFrontInterface)
        size <- (BasicArrayList.size subStoreVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let subStore = (javaCast (jio (BasicArrayList.get subStoreVector index)) :: String)
            substoreIdColumn <- (InventoryColumnUtil.getColumnWhereLike inventorySearchUtil inventoryEntityInterface subStore (jget ((jget this.basicItemData)).iD))
            Control.Monad.void (BasicArrayList.addAllList column substoreIdColumn)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Items Found Including SubStores: " ++ javaToString (jio (BasicArrayList.size column))) this "search")
        pure (column)


-- throws Exception
getNoResults :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> Node.Node -> IO (String)
getNoResults object_ a1 a2 = jmethod object_ "getNoResults" (\() -> (getNoResults_impl (javaCast object_ :: InventorySearchUtil))) () a1 a2

getNoResults_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> Node.Node -> IO (String)
getNoResults_super object_ a1 a2 = (getNoResults_impl (javaCast object_ :: InventorySearchUtil)) a1 a2

getNoResults_impl :: InventorySearchUtil -> TransformDocumentInterface.TransformDocumentInterface -> Node.Node -> IO (String)
getNoResults_impl this viewDocumentInterface inventoryNode = do
        Control.Monad.void (Node.appendChild inventoryNode (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc viewDocumentInterface)) (SearchData.tOTAL_NUMBER_PAGES) (jget ((jget (this).commonPhoneStrings)).zERO))))
        Control.Monad.void (Node.appendChild inventoryNode (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc viewDocumentInterface)) (SearchData.tOTAL_NUMBER_ITEMS) (jget ((jget (this).commonPhoneStrings)).zERO))))
        success <- (XmlDocumentHelper.toString (jio (TransformDocumentInterface.getDoc viewDocumentInterface)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("No Results Xml: " ++ success) this "search")
        pure (success)


search :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> BasicArrayList.BasicArrayList -> IO (JavaArray (String))
search object_ a1 a2 a3 = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: InventorySearchUtil))) () a1 a2 a3

search_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> BasicArrayList.BasicArrayList -> IO (JavaArray (String))
search_super object_ a1 a2 a3 = (search_impl (javaCast object_ :: InventorySearchUtil)) a1 a2 a3

search_impl :: InventorySearchUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> BasicArrayList.BasicArrayList -> IO (JavaArray (String))
search_impl this abeClientInformation searchRequest column = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "search" e)
            pure (javaNull)
            ) $ do
            inventoryEntityInterface <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            searchParams <- (SearchRequest.getParams searchRequest)
            let startPage = (jio (SearchParams.getStartPageInt searchParams))
            endPage <- newIORef ((jio (SearchParams.getEndPageInt searchParams)))
            pageLength <- newIORef ((jio (SearchParams.getLengthInt searchParams)))
            savedPagesInRange <- newIORef (0)
            columnValueHashMap <- (SearchParams.get searchParams)
            keyword <- newIORef =<< (Replace.all ((jio (Replace.new_2 "-" (jget ((jio (CommonSeps.getInstance))).sPACE)))) (javaCast (jio (HashMap.get columnValueHashMap (jget ((jget this.basicItemData)).kEYWORDS))) :: String))
            when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget keyword))) $ do
                javaReturn (javaNull)
            stringBuffer <- (StringMaker.new_)
            if (startPage >= 0) then do
                when ((jget pageLength) == 0) $ do
                    jset pageLength (SearchData.dEFAULT_PAGE_LENGTH)
                let mAXPAGES = 100
                let productListingPages = (jnewArray (mAXPAGES) javaNull)
                let documents = (jnewArray (mAXPAGES) javaNull)
                let inventoryNodes = (jnewArray (mAXPAGES) javaNull)
                jset keyword ((Prelude.map Data.Char.toUpper (jget keyword)))
                lastPage <- newIORef ((Prelude.negate 1))
                numberOfResultsOnCurrentPage <- newIORef (0)
                numberOfResults <- newIORef (0)
                viewDocumentInterface <- newIORef =<< (TransformStoreDocumentFactory.getInstance_1 searchRequest)
                inventoryNode <- newIORef =<< (TransformDocumentInterface.createElement ((jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface))))) (InventoryData.iNVENTORY))
                Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jget viewDocumentInterface))))) (jget inventoryNode))
                Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))) (SearchData.pAGE) (javaToString (Prelude.fromIntegral (startPage) :: Int)))))
                when ((jio (SearchRequest.getFileBaseName searchRequest)) /= javaNull) $ do
                    Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (SearchRequest.getFileBaseNameNode searchRequest (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))))))
                currentPage <- newIORef ((Prelude.negate 1))
                size <- (BasicArrayList.size column)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    product <- (jnewString (javaCast (jio (BasicArrayList.get column index)) :: String))
                    itemInterface <- (InventoryEntity.getItem inventoryEntityInterface product)
                    keywords <- newIORef =<< (ItemInterface.getKeywords itemInterface)
                    jset keywords ((Prelude.map Data.Char.toUpper (jget keywords)))
                    when ((jstringIndexOf (jget keywords) (jget keyword) 0) /= (Prelude.negate 1)) $ do
                        when ((((jget currentPage) + 1) >= startPage) && (((jget currentPage) + 1) <= (jget endPage))) $ do
                            itemNode <- (BasicItemView.toXmlNode ((jio (BasicItemView.new_2 itemInterface (jio (BasicArrayListD.new_))))) (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))))
                            Control.Monad.void (Node.appendChild itemNode (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))) (BasketData.iTEMTOTALINBASKET) (jget ((jget (this).commonPhoneStrings)).oNE))))
                            Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (Node.cloneNode itemNode True)))
                        jset currentPage (((((((jget numberOfResults) + 1)) `quot` (jget pageLength))) - 1))
                        jset numberOfResultsOnCurrentPage ((jget numberOfResultsOnCurrentPage) + 1)
                        when ((jget lastPage) < (jget currentPage)) $ do
                            when (((jget currentPage) >= startPage) && ((jget currentPage) <= (jget endPage))) $ do
                                Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))) (SearchData.tOTAL_NUMBER_ITEMS_ON_THIS_PAGE) (javaToString (Prelude.fromIntegral ((jget numberOfResultsOnCurrentPage)) :: Int)))))
                                assignedValue <- (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))
                                jsetIndex documents ((jget currentPage)) (assignedValue)
                                jsetIndex inventoryNodes ((jget currentPage)) ((jget inventoryNode))
                                jset savedPagesInRange ((jget savedPagesInRange) + 1)
                                assignedValue <- (TransformStoreDocumentFactory.getInstance_1 searchRequest)
                                jset viewDocumentInterface (assignedValue)
                                assignedValue <- (TransformDocumentInterface.createElement ((jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface))))) (InventoryData.iNVENTORY))
                                jset inventoryNode (assignedValue)
                                Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode ((jget viewDocumentInterface))))) (jget inventoryNode))
                                Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))) (SearchData.pAGE) (javaToString (Prelude.fromIntegral (((jget currentPage) + 1)) :: Int)))))
                                when ((jio (SearchRequest.getFileBaseName searchRequest)) /= javaNull) $ do
                                    Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (SearchRequest.getFileBaseNameNode searchRequest (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))))))
                            jset lastPage ((jget currentPage))
                            jset numberOfResultsOnCurrentPage (0)
                        jset numberOfResults ((jget numberOfResults) + 1)
                        when ((jget lastPage) >= (mAXPAGES - 1)) $ do
                            throwIO JavaBreak
                when (((jget numberOfResultsOnCurrentPage) > 0) && (((((jget currentPage) + 1) >= startPage) && (((jget currentPage) + 1) <= (jget endPage))))) $ do
                    Control.Monad.void (Node.appendChild ((jget inventoryNode)) (jio (ModDomHelper.createNameValueNodes_3 (jio (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))) (SearchData.tOTAL_NUMBER_ITEMS_ON_THIS_PAGE) (javaToString (Prelude.fromIntegral (((jget numberOfResultsOnCurrentPage) - 1)) :: Int)))))
                    assignedValue <- (TransformDocumentInterface.getDoc ((jget viewDocumentInterface)))
                    jsetIndex documents (((jget lastPage) + 1)) (assignedValue)
                    jsetIndex inventoryNodes (((jget lastPage) + 1)) ((jget inventoryNode))
                    jset savedPagesInRange ((jget savedPagesInRange) + 1)
                when ((jget numberOfResultsOnCurrentPage) > 0) $ do
                    jset lastPage ((jget lastPage) + 1)
                when ((jget endPage) > (mAXPAGES - 1)) $ do
                    jset endPage ((mAXPAGES - 1))
                forM_ [startPage .. (jget endPage)] $ \index -> javaIteration (pure ()) $ do
                    when (index <= (jget lastPage)) $ do
                        let tempDocument = (jindex documents (index))
                        Control.Monad.void (appendChild ((jindex inventoryNodes (index))) (jio (ModDomHelper.createNameValueNodes_3 tempDocument (SearchData.tOTAL_NUMBER_PAGES) (javaToString (Prelude.fromIntegral (((jget lastPage) + 1)) :: Int)))))
                        Control.Monad.void (appendChild ((jindex inventoryNodes (index))) (jio (ModDomHelper.createNameValueNodes_3 tempDocument (SearchData.tOTAL_NUMBER_ITEMS) (javaToString (Prelude.fromIntegral ((jget numberOfResults)) :: Int)))))
                        forM_ [0 .. (jget lastPage)] $ \pageIndex -> javaIteration (pure ()) $ do
                            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                            Control.Monad.void (StringMaker.append stringBuffer (jio (SearchRequest.getFileBaseName searchRequest)))
                            if ((jio (StringMaker.length stringBuffer)) > 0) then do
                                when (pageIndex /= 0) $ do
                                    Control.Monad.void (StringMaker.append stringBuffer (javaToString pageIndex))
                                Control.Monad.void (appendChild ((jindex inventoryNodes (index))) (jio (ModDomHelper.createNameValueNodes tempDocument (SearchData.pAGE_INFO) (javaToString pageIndex) (jio (StringMaker.toString stringBuffer)))))
                            else do
                                Control.Monad.void (appendChild ((jindex inventoryNodes (index))) (jio (ModDomHelper.createNameValueNodes tempDocument (SearchData.pAGE_INFO) (javaToString pageIndex) (SearchData.sEARCH))))
                        success <- (XmlDocumentHelper.toString tempDocument)
                        assignedValue <- (StoreTransformer.translate ((jio (StoreTransformer.new_2 abeClientInformation (javaCast (jio (TransformInfoHttpSearch.new_1 searchRequest)) :: TransformInfoInterface.TransformInfoInterface)))) success)
                        jsetIndex productListingPages (index) (assignedValue)
                when ((jget savedPagesInRange) == 0) $ do
                    result <- (InventorySearchUtil.getNoResults this (jget viewDocumentInterface) (jget inventoryNode))
                    assignedValue <- (StoreTransformer.translate ((jio (StoreTransformer.new_2 abeClientInformation (jio (TransformInfoHttpSearch.new_1 searchRequest))))) result)
                    jsetIndex productListingPages (0) (assignedValue)
                javaReturn (productListingPages)
            else do
                javaReturn (javaNull)


