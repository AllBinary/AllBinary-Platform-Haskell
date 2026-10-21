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
-- package views.admin.inventory
module InventoryItemView (module InventoryItemView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, getFormData, getFormData_super, getFormData_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, getItemInterface, getItemInterface_super, getItemInterface_impl, view, view_super, view_impl, processImageFiles, processImageFiles_super, processImageFiles_impl, setRequestHashMap, setRequestHashMap_super, setRequestHashMap_impl, getRequestHashMap, getRequestHashMap_super, getRequestHashMap_impl, logUtil, basicItemData, request, imageFileName, mediaData, itemInterface, downloadableItemVector, requestHashMap, tYPE_ID)
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
import qualified InventoryUploadMediaUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItem -- org.allbinary.business.user.commerce.inventory.item.BasicItem
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified DownloadableItem -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem
import qualified DownloadableItemView -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified HttpFileUploadUtil -- org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil
import qualified HttpRequestUtil -- org.allbinary.logic.communication.http.request.HttpRequestUtil
import qualified MultipartRequestParams -- org.allbinary.logic.communication.http.request.MultipartRequestParams
import qualified RequestMapInterface -- org.allbinary.logic.communication.http.request.RequestMapInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified PathUtil -- org.allbinary.logic.io.path.PathUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified MediaData -- org.allbinary.logic.visual.media.MediaData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements RequestMapInterface
data InventoryItemView = InventoryItemView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , imageFileName :: IORef (String)
    , mediaData :: IORef (MediaData.MediaData)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    , downloadableItemVector :: IORef (BasicArrayList.BasicArrayList)
    , requestHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull InventoryItemView where
    javaNull = javaNullRecord "InventoryItemView"

instance JavaEquals InventoryItemView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryItemView where
    (==) = jrecordEquals

instance JavaObjectClass InventoryItemView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tYPE_ID #-}
tYPE_ID = unsafePerformIO (newIORef (10))

newRecord_ :: IO InventoryItemView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    request <- newIORef javaNull
    imageFileName <- newIORef ""
    mediaData <- newIORef javaNull
    itemInterface <- newIORef javaNull
    downloadableItemVector <- newIORef javaNull
    requestHashMap <- newIORef javaNull
    let this = InventoryItemView header_ base logUtil basicItemData request imageFileName mediaData itemInterface downloadableItemVector requestHashMap
    jregisterLevel header_ this
    RequestMapInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "getItemInterface" (\() -> getItemInterface_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "processImageFiles" (\() -> processImageFiles_impl this)
    jregisterMethod header_ "setRequestHashMap" (\() -> setRequestHashMap_impl this)
    jregisterMethod header_ "getRequestHashMap" (\() -> getRequestHashMap_impl this)
    pure this

initFields_ :: InventoryItemView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.request (javaNull)
    jset this.imageFileName ("")
    jset this.mediaData (javaNull)
    jset this.itemInterface (javaNull)
    jset this.downloadableItemVector (javaNull)
    jset this.requestHashMap (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO InventoryItemView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: InventoryItemView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (InventoryItemView.getFormData this)
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> String -> IO InventoryItemView
new_2 transformInfoInterface empty = do
    this <- newRecord_
    init_2 this transformInfoInterface empty
    pure this

init_2 :: InventoryItemView -> TransformInfoInterface.TransformInfoInterface -> String -> IO ()
init_2 this transformInfoInterface empty = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: InventoryItemView))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: InventoryItemView))

getTypeId_impl :: InventoryItemView -> IO (Int)
getTypeId_impl this = do
        pure ((jget InventoryItemView.tYPE_ID))


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: InventoryItemView))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: InventoryItemView))

getFormData_impl :: InventoryItemView -> IO (())
getFormData_impl this = do
        Control.Monad.void (InventoryItemView.setRequestHashMap this (jio (MultipartRequestParams.toHashMap ((jio (MultipartRequestParams.new_1 (jget (this).request)))))))
        imageFileItemObject <- (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (jget ((jget this.basicItemData)).iMAGE))
        when (jio (HttpFileUploadUtil.isValid ((jio (HttpFileUploadUtil.getInstance))) imageFileItemObject)) $ do
            let fileItem = (javaCast imageFileItemObject :: FileItem.FileItem)
            when ((fileItem /= javaNull) && ((jio (FileItem.getSize fileItem)) > 1)) $ do
                assignedValue <- (HttpRequestUtil.generateFileName ((jio (HttpRequestUtil.getInstance))) (jio (FileItem.getName fileItem)))
                jset (this).imageFileName (assignedValue)
                pathData <- (AbPathData.getInstance)
                pathUtil <- (PathUtil.getInstance)
                assignedValue <- (MediaData.get (jio (AbPathData.getExtension pathData (jget (this).imageFileName))))
                jset (this).mediaData (assignedValue)
                assignedValue <- (PathUtil.getWithoutExtension pathUtil (jget (this).imageFileName))
                jset (this).imageFileName (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "Uploaded File Data: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).imageFileName))
                    Control.Monad.void (StringMaker.append stringBuffer " Extension: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName ((jget (this).mediaData)))))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getFormData()")
        jset (this).itemInterface ((javaCast (jio (BasicItem.new_1 (jio (InventoryItemView.getRequestHashMap this)))) :: ItemInterface.ItemInterface))
        pure ()


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: InventoryItemView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: InventoryItemView))

addDomNodeInterfaces_impl :: InventoryItemView -> IO (())
addDomNodeInterfaces_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        downloadableItem <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).downloadableItemVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset downloadableItem ((javaCast (jio (BasicArrayList.get ((jget (this).downloadableItemVector)) index)) :: DownloadableItem.DownloadableItem))
            Control.Monad.void (BasicArrayList.add vector (jio (DownloadableItemView.new_1 (jget downloadableItem))))
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (jio (BasicItemView.new_2 (jget (this).itemInterface) vector)))
        pure ()


getItemInterface :: (JavaObjectClass this_) => this_ -> IO (ItemInterface.ItemInterface)
getItemInterface object_ = jmethod object_ "getItemInterface" (\() -> (getItemInterface_impl (javaCast object_ :: InventoryItemView))) ()

getItemInterface_super :: (JavaObjectClass this_) => this_ -> IO (ItemInterface.ItemInterface)
getItemInterface_super object_ = (getItemInterface_impl (javaCast object_ :: InventoryItemView))

getItemInterface_impl :: InventoryItemView -> IO (ItemInterface.ItemInterface)
getItemInterface_impl this = do
        pure ((jget (this).itemInterface))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: InventoryItemView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: InventoryItemView))

view_impl :: InventoryItemView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (InventoryItemView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


-- throws Exception
processImageFiles :: (JavaObjectClass this_) => this_ -> IO (())
processImageFiles object_ = jmethod object_ "processImageFiles" (\() -> (processImageFiles_impl (javaCast object_ :: InventoryItemView))) ()

processImageFiles_super :: (JavaObjectClass this_) => this_ -> IO (())
processImageFiles_super object_ = (processImageFiles_impl (javaCast object_ :: InventoryItemView))

processImageFiles_impl :: InventoryItemView -> IO (())
processImageFiles_impl this = do
        set <- (HashMap.keySet ((jio (InventoryItemView.getRequestHashMap this))))
        fieldNameArray <- (Set.toArray set)
        let size = (jlength fieldNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let fieldName = (javaCast (jindex fieldNameArray (index)) :: String)
            when ((Prelude.fromEnum (Prelude.compare fieldName (jget ((jget this.basicItemData)).iMAGE)) - 1) == 0) $ do
                storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
                inventoryUploadMediaUtil <- (InventoryUploadMediaUtil.new_2 storeFrontInterface (jget (this).itemInterface))
                let fileItem = (javaCast (jio (HashMap.get ((jio (InventoryItemView.getRequestHashMap this))) (jget ((jget this.basicItemData)).iMAGE))) :: FileItem.FileItem)
                assignedValue <- (InventoryUploadMediaUtil.saveFiles inventoryUploadMediaUtil (jio (FileItem.get fileItem)) (jget (this).imageFileName) (jget (this).mediaData))
                jset (this).itemInterface (assignedValue)
        pure ()


setRequestHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setRequestHashMap object_ a1 = jmethod object_ "setRequestHashMap" (\() -> (setRequestHashMap_impl (javaCast object_ :: InventoryItemView))) () a1

setRequestHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setRequestHashMap_super object_ a1 = (setRequestHashMap_impl (javaCast object_ :: InventoryItemView)) a1

setRequestHashMap_impl :: InventoryItemView -> HashMap.HashMap -> IO (())
setRequestHashMap_impl this requestHashMap = do
        jset (this).requestHashMap (requestHashMap)
        pure ()


getRequestHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap object_ = jmethod object_ "getRequestHashMap" (\() -> (getRequestHashMap_impl (javaCast object_ :: InventoryItemView))) ()

getRequestHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap_super object_ = (getRequestHashMap_impl (javaCast object_ :: InventoryItemView))

getRequestHashMap_impl :: InventoryItemView -> IO (HashMap.HashMap)
getRequestHashMap_impl this = do
        pure ((jget (this).requestHashMap))


