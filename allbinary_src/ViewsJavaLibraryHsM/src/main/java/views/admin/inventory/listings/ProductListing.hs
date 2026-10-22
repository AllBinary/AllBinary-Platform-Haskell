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
-- package views.admin.inventory.listings
module ProductListing where

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
import qualified Any -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HashSet -- java.util.HashSet
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified StoreFrontsEntity -- org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity
import qualified StaticPagesEntity -- org.allbinary.data.tables.staticpages.StaticPagesEntity
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchParams -- org.allbinary.logic.control.search.SearchParams
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified AbDataOutputStream -- org.allbinary.logic.io.AbDataOutputStream
import qualified DataOutputStreamFactory -- org.allbinary.logic.io.DataOutputStreamFactory
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified SpecialCharacterUtil -- org.allbinary.logic.string.SpecialCharacterUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified UniqueTokens -- org.allbinary.logic.string.tokens.UniqueTokens
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified InventoryColumnUtil -- views.generic.inventory.InventoryColumnUtil
import qualified InventorySearchUtil -- views.generic.inventory.InventorySearchUtil
import qualified ProductListingInterface

-- implements ProductListingInterface
data ProductListing = ProductListing
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , directory :: IORef (Directory.Directory)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , storeFronts :: IORef (StoreFrontsEntity.StoreFrontsEntity)
    , staticPages :: IORef (StaticPagesEntity.StaticPagesEntity)
    , inventory :: IORef (InventoryEntity.InventoryEntity)
    , searchRequest :: IORef (SearchRequest.SearchRequest)
    , iNVENTORY :: IORef (String)
    }

instance JavaNull ProductListing where
    javaNull = javaNullRecord "ProductListing"

instance JavaEquals ProductListing where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProductListing where
    (==) = jrecordEquals

instance JavaObjectClass ProductListing where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProductListing
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    directory <- newIORef javaNull
    basicItemData <- newIORef javaNull
    storeFronts <- newIORef javaNull
    staticPages <- newIORef javaNull
    inventory <- newIORef javaNull
    searchRequest <- newIORef javaNull
    iNVENTORY <- newIORef ""
    let this = ProductListing header_ logUtil directory basicItemData storeFronts staticPages inventory searchRequest iNVENTORY
    jregisterLevel header_ this
    ProductListingInterface.registerInterface_ header_
    jregisterMethod header_ "getHashSet" (\() -> getHashSet_impl this)
    jregisterMethod header_ "savePage" (\() -> savePage_impl this)
    jregisterMethod header_ "create" (\() -> create_impl this)
    jregisterMethod header_ "addStaticPageInfoToDatabase" (\() -> addStaticPageInfoToDatabase_impl this)
    jregisterMethod header_ "generateAll" (\() -> generateAll_impl this)
    jregisterMethod header_ "generateAll_1" (\() -> generateAll_1_impl this)
    pure this

initFields_ :: ProductListing -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.directory =<< (Directory.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.storeFronts (javaNull)
    jset this.staticPages (javaNull)
    jset this.inventory (javaNull)
    jset this.searchRequest (javaNull)
    jset this.iNVENTORY (".InventoryView")
    pure ()

new_1 :: SearchRequest.SearchRequest -> IO ProductListing
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: ProductListing -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        initFields_ this
        jset (this).searchRequest (searchRequest)
        assignedValue <- (StoreFrontsEntity.new_)
        jset (this).storeFronts (assignedValue)
        assignedValue <- (StaticPagesEntity.new_)
        jset (this).staticPages (assignedValue)
        assignedValue <- (InventoryEntity.new_)
        jset (this).inventory (assignedValue)
        pure ()


-- throws Exception
getHashSet :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (HashSet.HashSet)
getHashSet object_ a1 = jmethod object_ "getHashSet" (\() -> (getHashSet_impl (javaCast object_ :: ProductListing))) () a1

getHashSet_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (HashSet.HashSet)
getHashSet_super object_ a1 = (getHashSet_impl (javaCast object_ :: ProductListing)) a1

getHashSet_impl :: ProductListing -> StoreFrontInterface.StoreFrontInterface -> IO (HashSet.HashSet)
getHashSet_impl this storeFront = do
        inventoryColumnUtil <- (InventoryColumnUtil.getInstance)
        keywords <- (InventoryColumnUtil.getColumnWhereLike inventoryColumnUtil (jget (this).inventory) (jio (StoreFrontInterface.getCategoryPath storeFront)) (jget ((jget this.basicItemData)).kEYWORDS))
        subStoreVector <- (StoreFrontInterface.getSubStores storeFront)
        size <- (BasicArrayList.size subStoreVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let subStore = (javaCast (jio (BasicArrayList.get subStoreVector index)) :: String)
            substoreKeywords <- (InventoryColumnUtil.getColumnWhereLike inventoryColumnUtil (jget (this).inventory) (javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR) ++ subStore) (jget ((jget this.basicItemData)).cATEGORY))
            Control.Monad.void (BasicArrayList.addAllList keywords substoreKeywords)
        uniqueTokens <- (UniqueTokens.new_)
        keywordHashSet <- (UniqueTokens.getWhithoutDashesAndSkipNumberOnlyTokens uniqueTokens keywords)
        pure (keywordHashSet)


-- throws Exception
savePage :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
savePage object_ a1 a2 = jmethod object_ "savePage" (\() -> (savePage_impl (javaCast object_ :: ProductListing))) () a1 a2

savePage_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
savePage_super object_ a1 a2 = (savePage_impl (javaCast object_ :: ProductListing)) a1 a2

savePage_impl :: ProductListing -> String -> String -> IO (())
savePage_impl this file data_ = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTATICPAGEGENERATIONLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating File: " ++ file) this "generateAll()")
        newFile <- (AbFile.createAbFile file)
        when (jio (AbFile.exists newFile)) $ do
            Control.Monad.void (AbFile.delete newFile)
        Control.Monad.void (AbFile.createNewFile newFile)
        if (jio (AbFile.exists newFile)) then do
            idOutData <- (DataOutputStreamFactory.getInstanceForAbFile ((jio (DataOutputStreamFactory.getInstance))) newFile)
            Control.Monad.void (AbDataOutputStream.writeBytes idOutData data_)
            Control.Monad.void (AbDataOutputStream.flush idOutData)
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast idOutData))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTATICPAGEGENERATIONLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Wrote Total Bytes: " ++ javaToString (jio (AbFile.length newFile))) this "generateAll()")
        else do
            javaThrow ((JavaException "Exception" ("Could Not Create: " ++ file)))
        pure ()


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> AbPath.AbPath -> IO (())
create object_ a1 a2 a3 a4 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: ProductListing))) () a1 a2 a3 a4

create_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> AbPath.AbPath -> IO (())
create_super object_ a1 a2 a3 a4 = (create_impl (javaCast object_ :: ProductListing)) a1 a2 a3 a4

create_impl :: ProductListing -> String -> HashMap.HashMap -> BasicArrayList.BasicArrayList -> AbPath.AbPath -> IO (())
create_impl this keywordData keywordFilenameHashMap vector staticPath = do
        stringBuffer <- (StringMaker.new_)
        hashMap <- (SpecialCharacterUtil.getHashMap)
        Control.Monad.void (HashMap.put hashMap (jget ((jio (CommonSeps.getInstance))).sPACE) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pageName <- (Replace.all ((jio (Replace.new_1 hashMap))) keywordData)
        searchParams <- (SearchRequest.getParams ((jget (this).searchRequest)))
        Control.Monad.void (SearchParams.add searchParams (jget ((jget this.basicItemData)).kEYWORDS) keywordData)
        Control.Monad.void (SearchParams.setStartPage searchParams (jget ((jio (CommonPhoneStrings.getInstance))).zERO))
        Control.Monad.void (SearchRequest.setParams ((jget (this).searchRequest)) searchParams)
        Control.Monad.void (SearchRequest.setFileBaseName ((jget (this).searchRequest)) pageName)
        abeClientInformation <- (ServiceClientInformationInterfaceFactory.getInstance)
        inventorySearchUtil <- (InventorySearchUtil.getInstance)
        productListingPages <- (InventorySearchUtil.search inventorySearchUtil abeClientInformation (jget this.searchRequest) vector)
        forM_ [0 .. (jlength productListingPages) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex productListingPages (index)) == javaNull) $ do
                throwIO JavaBreak
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTATICPAGEGENERATIONLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Saving Listing: " ++ javaToString index) this "generateAll()")
            indexStr <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (index > 0) $ do
                jset indexStr ((javaToString (Prelude.fromIntegral (index) :: Int)))
            Control.Monad.void (HashMap.put keywordFilenameHashMap keywordData (pageName ++ (jget indexStr)))
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toString staticPath)))
            Control.Monad.void (StringMaker.append stringBuffer pageName)
            Control.Monad.void (StringMaker.append stringBuffer (jget indexStr))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (InputOutputTypeData.getInstance))).dEFAULT))
            file <- (StringMaker.toString stringBuffer)
            when (Prelude.not (jio (Directory.create ((jget (this).directory)) staticPath))) $ do
                javaThrow ((JavaException "Exception" ("Could Not Create Directory: " ++ javaToString staticPath)))
            Control.Monad.void (ProductListing.savePage this file (jindex productListingPages (index)))
        pure ()


addStaticPageInfoToDatabase :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> HashMap.HashMap -> IO (())
addStaticPageInfoToDatabase object_ a1 a2 = jmethod object_ "addStaticPageInfoToDatabase" (\() -> (addStaticPageInfoToDatabase_impl (javaCast object_ :: ProductListing))) () a1 a2

addStaticPageInfoToDatabase_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> HashMap.HashMap -> IO (())
addStaticPageInfoToDatabase_super object_ a1 a2 = (addStaticPageInfoToDatabase_impl (javaCast object_ :: ProductListing)) a1 a2

addStaticPageInfoToDatabase_impl :: ProductListing -> StoreFrontInterface.StoreFrontInterface -> HashMap.HashMap -> IO (())
addStaticPageInfoToDatabase_impl this storeFront keywordFilenameHashMap = do
        keywordHashSet <- (HashMap.keySet keywordFilenameHashMap)
        keywordArray <- (Set.toArray keywordHashSet)
        let size = (jlength keywordArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            insertVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            let keywordData = (javaCast (jindex keywordArray (index)) :: String)
            let fileName = (javaCast (jio (HashMap.get keywordFilenameHashMap keywordData)) :: String)
            Control.Monad.void (BasicArrayList.add insertVector (jio (StoreFrontInterface.getName storeFront)))
            Control.Monad.void (BasicArrayList.add insertVector keywordData)
            Control.Monad.void (BasicArrayList.add insertVector fileName)
            Control.Monad.void (StaticPagesEntity.insert ((jget (this).staticPages)) insertVector)
        pure ()


-- throws Exception
generateAll :: (JavaObjectClass this_) => this_ -> IO (String)
generateAll object_ = jmethod object_ "generateAll" (\() -> (generateAll_impl (javaCast object_ :: ProductListing))) ()

generateAll_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateAll_super object_ = (generateAll_impl (javaCast object_ :: ProductListing))

generateAll_impl :: ProductListing -> IO (String)
generateAll_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            storeFront <- (SearchRequest.getStoreFront ((jget (this).searchRequest)))
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFront)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getStaticPath storeFront)))
            staticPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTATICPAGEGENERATIONLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Store Static Pages Path: " ++ javaToString staticPath) this "generateAll()")
            keywordHashSet <- (ProductListing.getHashSet this storeFront)
            keywordArray <- (HashSet.toArray keywordHashSet)
            let size = (jlength keywordArray)
            keywordFilenameHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            when (size == 0) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Products For ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFront)))
                Control.Monad.void (StringMaker.append stringBuffer " Store Not Found")
                javaReturn =<< (StringMaker.toString stringBuffer)
            inventorySearchUtil <- (InventorySearchUtil.getInstance)
            vector <- (InventorySearchUtil.getBasicItemIdColumn inventorySearchUtil (jget (this).searchRequest))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let keywordData = (javaCast (jindex keywordArray (index)) :: String)
                when ((Prelude.length keywordData) > 1) $ do
                    Control.Monad.void (ProductListing.create this keywordData keywordFilenameHashMap vector staticPath)
            Control.Monad.void (ProductListing.addStaticPageInfoToDatabase this storeFront keywordFilenameHashMap)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "Static Files Generated Successfully For ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFront)))
            Control.Monad.void (StringMaker.append stringBuffer " it used packages ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getPackageLocation storeFront)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iNVENTORY))
            (StringMaker.toString stringBuffer)


-- throws Exception
generateAll_1 :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateAll_1 object_ a1 = jmethod object_ "generateAll_1" (\() -> (generateAll_1_impl (javaCast object_ :: ProductListing))) () a1

generateAll_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
generateAll_1_super object_ a1 = (generateAll_1_impl (javaCast object_ :: ProductListing)) a1

generateAll_1_impl :: ProductListing -> String -> IO (String)
generateAll_1_impl this storeName = do
    storeName <- newIORef storeName
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            stringBuffer <- (StringMaker.new_)
            if ((jget storeName) /= javaNull) then do
                if ((Prelude.fromEnum (Prelude.compare (jget storeName) (GLOBALS2.gENERATEALLSTORES)) - 1) /= 0) then do
                    Control.Monad.void (SearchRequest.setStoreFront ((jget (this).searchRequest)) (javaCast (jio (StoreFrontsEntity.getStoreFrontInterface ((jget (this).storeFronts)) (jget storeName)))))
                    Control.Monad.void (StringMaker.append stringBuffer (jio (ProductListing.generateAll this)))
                    Control.Monad.void (StringMaker.append stringBuffer "<br />")
                else do
                    storeFrontVector <- (StoreFrontsEntity.getStoreFrontNames ((jget (this).storeFronts)))
                    size <- (BasicArrayList.size storeFrontVector)
                    forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                        jset storeName ((javaCast (jio (BasicArrayList.get storeFrontVector index)) :: String))
                        Control.Monad.void (SearchRequest.setStoreFront ((jget (this).searchRequest)) (javaCast (jio (StoreFrontsEntity.getStoreFrontInterface ((jget (this).storeFronts)) (jget storeName)))))
                        Control.Monad.void (StringMaker.append stringBuffer (jio (ProductListing.generateAll this)))
                        Control.Monad.void (StringMaker.append stringBuffer "<br />")
            else do
                javaReturn ("Generation Failed No Store Specified<br/>")
            Control.Monad.void (StringMaker.append stringBuffer "All Static Pages Generated<br/>")
            (StringMaker.toString stringBuffer)


