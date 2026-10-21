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
-- package views.admin.inventory.download
module DownloadableInventoryItemView (module DownloadableInventoryItemView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTypeId, getTypeId_super, getTypeId_impl, getFormData, getFormData_super, getFormData_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, processFile, processFile_super, processFile_impl, unzip, unzip_super, unzip_impl, getItemFilePath, getItemFilePath_super, getItemFilePath_impl, setRequestHashMap, setRequestHashMap_super, setRequestHashMap_impl, getRequestHashMap, getRequestHashMap_super, getRequestHashMap_impl, getDownloadableItem, getDownloadableItem_super, getDownloadableItem_impl, logUtil, basicItemData, request, id, itemInterface, downloadableItem, requestHashMap, tYPE_ID)
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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicItemView -- org.allbinary.business.user.commerce.inventory.item.BasicItemView
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified DownloadableItem -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem
import qualified DownloadableItemView -- org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified MultipartRequestParams -- org.allbinary.logic.communication.http.request.MultipartRequestParams
import qualified RequestMapInterface -- org.allbinary.logic.communication.http.request.RequestMapInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified ZipFileUtil -- org.allbinary.logic.io.file.zip.ZipFileUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements RequestMapInterface
data DownloadableInventoryItemView = DownloadableInventoryItemView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , id :: IORef (String)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    , downloadableItem :: IORef (DownloadableItem.DownloadableItem)
    , requestHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull DownloadableInventoryItemView where
    javaNull = javaNullRecord "DownloadableInventoryItemView"

instance JavaEquals DownloadableInventoryItemView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadableInventoryItemView where
    (==) = jrecordEquals

instance JavaObjectClass DownloadableInventoryItemView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE tYPE_ID #-}
tYPE_ID = unsafePerformIO (newIORef (11))

newRecord_ :: IO DownloadableInventoryItemView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    request <- newIORef javaNull
    id <- newIORef ""
    itemInterface <- newIORef javaNull
    downloadableItem <- newIORef javaNull
    requestHashMap <- newIORef javaNull
    let this = DownloadableInventoryItemView header_ base logUtil basicItemData request id itemInterface downloadableItem requestHashMap
    jregisterLevel header_ this
    RequestMapInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "processFile" (\() -> processFile_impl this)
    jregisterMethod header_ "unzip" (\() -> unzip_impl this)
    jregisterMethod header_ "getItemFilePath" (\() -> getItemFilePath_impl this)
    jregisterMethod header_ "setRequestHashMap" (\() -> setRequestHashMap_impl this)
    jregisterMethod header_ "getRequestHashMap" (\() -> getRequestHashMap_impl this)
    jregisterMethod header_ "getDownloadableItem" (\() -> getDownloadableItem_impl this)
    pure this

initFields_ :: DownloadableInventoryItemView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.request (javaNull)
    jset this.id ("")
    jset this.itemInterface (javaNull)
    jset this.downloadableItem (javaNull)
    jset this.requestHashMap (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO DownloadableInventoryItemView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: DownloadableInventoryItemView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (DownloadableInventoryItemView.getFormData this)
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> String -> IO DownloadableInventoryItemView
new_2 transformInfoInterface empty = do
    this <- newRecord_
    init_2 this transformInfoInterface empty
    pure this

init_2 :: DownloadableInventoryItemView -> TransformInfoInterface.TransformInfoInterface -> String -> IO ()
init_2 this transformInfoInterface empty = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest ((jio (HttpStoreComponentView.getPageContext this))))) :: HttpServletRequest.HttpServletRequest))
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: DownloadableInventoryItemView))

getTypeId_impl :: DownloadableInventoryItemView -> IO (Int)
getTypeId_impl this = do
        pure ((jget DownloadableInventoryItemView.tYPE_ID))


-- throws Exception
getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: DownloadableInventoryItemView))

getFormData_impl :: DownloadableInventoryItemView -> IO (())
getFormData_impl this = do
        Control.Monad.void (DownloadableInventoryItemView.setRequestHashMap this (jio (MultipartRequestParams.toHashMap ((jio (MultipartRequestParams.new_1 (jget (this).request)))))))
        jset (this).id ((javaCast (jio (HashMap.get ((jio (DownloadableInventoryItemView.getRequestHashMap this))) (jget ((jget this.basicItemData)).iD))) :: String))
        pure ()


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: DownloadableInventoryItemView))

addDomNodeInterfaces_impl :: DownloadableInventoryItemView -> IO (())
addDomNodeInterfaces_impl this = do
        vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        when ((jget (this).downloadableItem) /= javaNull) $ do
            Control.Monad.void (BasicArrayList.add vector (jio (DownloadableItemView.new_1 (jget (this).downloadableItem))))
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (jio (BasicItemView.new_2 (jget (this).itemInterface) vector)))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: DownloadableInventoryItemView))

view_impl :: DownloadableInventoryItemView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (DownloadableInventoryItemView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


-- throws Exception
processFile :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
processFile object_ a1 = jmethod object_ "processFile" (\() -> (processFile_impl (javaCast object_ :: DownloadableInventoryItemView))) () a1

processFile_super :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
processFile_super object_ a1 = (processFile_impl (javaCast object_ :: DownloadableInventoryItemView)) a1

processFile_impl :: DownloadableInventoryItemView -> FileItem.FileItem -> IO (())
processFile_impl this fileItem = do
        fileName <- (FileItem.getName fileItem)
        fullPath <- (DownloadableInventoryItemView.getItemFilePath this)
        itemResourceFile <- (AbFile.createAbFile fullPath)
        Control.Monad.void (AbFile.mkdir itemResourceFile)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer fullPath)
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileName: " ++ fileName) this "processFile()")
        file <- (AbFile.createAbFile (jio (StringMaker.toString stringBuffer)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (AbFile.getPath file)) this "processFiles()")
        Control.Monad.void (AbFile.createNewFile file)
        byteArray <- (FileItem.get fileItem)
        Control.Monad.void (FileUtil.write ((jio (FileUtil.getInstance))) (jio (ByteArrayInputStream.new_1 byteArray)) file)
        pure ()


-- throws Exception
unzip :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
unzip object_ a1 = jmethod object_ "unzip" (\() -> (unzip_impl (javaCast object_ :: DownloadableInventoryItemView))) () a1

unzip_super :: (JavaObjectClass this_) => this_ -> FileItem.FileItem -> IO (())
unzip_super object_ a1 = (unzip_impl (javaCast object_ :: DownloadableInventoryItemView)) a1

unzip_impl :: DownloadableInventoryItemView -> FileItem.FileItem -> IO (())
unzip_impl this fileItem = do
        fileName <- (FileItem.getName fileItem)
        fullPath <- (DownloadableInventoryItemView.getItemFilePath this)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer fullPath)
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileName: " ++ fileName) this "unzip()")
        file <- (AbFile.createAbFile (jio (StringMaker.toString stringBuffer)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (AbFile.getPath file)) this "unzip()")
        Control.Monad.void (ZipFileUtil.unzip ((jio (ZipFileUtil.getInstance))) fullPath file fileName)
        pure ()


getItemFilePath :: (JavaObjectClass this_) => this_ -> IO (String)
getItemFilePath object_ = jmethod object_ "getItemFilePath" (\() -> (getItemFilePath_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

getItemFilePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getItemFilePath_super object_ = (getItemFilePath_impl (javaCast object_ :: DownloadableInventoryItemView))

getItemFilePath_impl :: DownloadableInventoryItemView -> IO (String)
getItemFilePath_impl this = do
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (HttpStoreComponentView.getWeblisketSession this)))))))
        filePathData <- (FilePathData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getCategory ((jget (this).itemInterface)))))
        Control.Monad.void (StringMaker.appendchar stringBuffer (jget (filePathData).sEPARATORCHAR))
        Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getId ((jget (this).itemInterface)))))
        Control.Monad.void (StringMaker.appendchar stringBuffer (jget (filePathData).sEPARATORCHAR))
        Control.Monad.void (StringMaker.append stringBuffer (jio (DownloadableItem.getId ((jget (this).downloadableItem)))))
        Control.Monad.void (StringMaker.appendchar stringBuffer (jget (filePathData).sEPARATORCHAR))
        (StringMaker.toString stringBuffer)


setRequestHashMap :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setRequestHashMap object_ a1 = jmethod object_ "setRequestHashMap" (\() -> (setRequestHashMap_impl (javaCast object_ :: DownloadableInventoryItemView))) () a1

setRequestHashMap_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> IO (())
setRequestHashMap_super object_ a1 = (setRequestHashMap_impl (javaCast object_ :: DownloadableInventoryItemView)) a1

setRequestHashMap_impl :: DownloadableInventoryItemView -> HashMap.HashMap -> IO (())
setRequestHashMap_impl this requestHashMap = do
        jset (this).requestHashMap (requestHashMap)
        pure ()


getRequestHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap object_ = jmethod object_ "getRequestHashMap" (\() -> (getRequestHashMap_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

getRequestHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getRequestHashMap_super object_ = (getRequestHashMap_impl (javaCast object_ :: DownloadableInventoryItemView))

getRequestHashMap_impl :: DownloadableInventoryItemView -> IO (HashMap.HashMap)
getRequestHashMap_impl this = do
        pure ((jget (this).requestHashMap))


getDownloadableItem :: (JavaObjectClass this_) => this_ -> IO (DownloadableItem.DownloadableItem)
getDownloadableItem object_ = jmethod object_ "getDownloadableItem" (\() -> (getDownloadableItem_impl (javaCast object_ :: DownloadableInventoryItemView))) ()

getDownloadableItem_super :: (JavaObjectClass this_) => this_ -> IO (DownloadableItem.DownloadableItem)
getDownloadableItem_super object_ = (getDownloadableItem_impl (javaCast object_ :: DownloadableInventoryItemView))

getDownloadableItem_impl :: DownloadableInventoryItemView -> IO (DownloadableItem.DownloadableItem)
getDownloadableItem_impl this = do
        pure ((jget (this).downloadableItem))


