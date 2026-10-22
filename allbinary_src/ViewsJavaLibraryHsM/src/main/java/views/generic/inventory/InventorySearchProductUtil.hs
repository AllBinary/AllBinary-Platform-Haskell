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
module InventorySearchProductUtil where

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
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified StoreTransformer -- org.allbinary.logic.visual.transform.StoreTransformer
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformStoreDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory
import qualified TransformInfoHttpSearch -- org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InventorySearchProductUtil = InventorySearchProductUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , iTEM_NOT_FOUND :: IORef (String)
    }

instance JavaNull InventorySearchProductUtil where
    javaNull = javaNullRecord "InventorySearchProductUtil"

instance JavaEquals InventorySearchProductUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventorySearchProductUtil where
    (==) = jrecordEquals

instance JavaObjectClass InventorySearchProductUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventorySearchProductUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    iTEM_NOT_FOUND <- newIORef ""
    let this = InventorySearchProductUtil header_ logUtil commonStrings iTEM_NOT_FOUND
    jregisterLevel header_ this
    jregisterMethod header_ "getProduct" (\() -> getProduct_impl this)
    pure this

initFields_ :: InventorySearchProductUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.iTEM_NOT_FOUND ("Item Not Found.")
    pure ()

new_ :: IO InventorySearchProductUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventorySearchProductUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InventorySearchProductUtil)
getInstance = do
        pure (InventorySearchProductUtil.instance_)


-- throws Exception
getProduct :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> String -> IO (String)
getProduct object_ a1 a2 a3 = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: InventorySearchProductUtil))) () a1 a2 a3

getProduct_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> String -> IO (String)
getProduct_super object_ a1 a2 a3 = (getProduct_impl (javaCast object_ :: InventorySearchProductUtil)) a1 a2 a3

getProduct_impl :: InventorySearchProductUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> SearchRequest.SearchRequest -> String -> IO (String)
getProduct_impl this abeClientInformation searchRequest product = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pRODUCTSEARCHLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "getProduct" e)
            javaThrow ((JavaException "Exception" "Failed to getProduct"))
            ) $ do
            inventoryEntityInterface <- (InventoryEntityFactory.getInventoryEntityInstance ((jio (InventoryEntityFactory.getInstance))))
            itemInterface <- (InventoryEntity.getItem inventoryEntityInterface product)
            if (itemInterface /= javaNull) then do
                viewDocumentInterface <- (TransformStoreDocumentFactory.getInstance_1 searchRequest)
                Control.Monad.void (TransformDocumentInterface.appendChild ((jio (TransformDocumentInterface.getBaseNode viewDocumentInterface))) (jio (BasicItemView.toXmlNode ((jio (BasicItemView.new_2 itemInterface (jio (BasicArrayListD.new_))))) (jio (TransformDocumentInterface.getDoc viewDocumentInterface)))))
                success <- (XmlDocumentHelper.toString (jio (TransformDocumentInterface.getDoc viewDocumentInterface)))
                outputStr <- (StoreTransformer.translate ((jio (StoreTransformer.new_2 abeClientInformation (javaCast (jio (TransformInfoHttpSearch.new_1 searchRequest)) :: TransformInfoInterface.TransformInfoInterface)))) success)
                javaReturn (outputStr)
            else do
                javaReturn ((jget (this).iTEM_NOT_FOUND))


