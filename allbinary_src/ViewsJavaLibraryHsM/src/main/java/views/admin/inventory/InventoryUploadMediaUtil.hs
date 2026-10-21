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
module InventoryUploadMediaUtil where

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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified UploadMediaSingleton -- org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified MediaData -- org.allbinary.logic.visual.media.MediaData
import qualified MediaTypeData -- org.allbinary.logic.visual.media.MediaTypeData
import qualified MediaUtil -- org.allbinary.logic.visual.media.MediaUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InventoryUploadMediaUtil = InventoryUploadMediaUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , mediaUtil :: IORef (MediaUtil.MediaUtil)
    , lARGEWIDTH :: IORef (Int)
    , lARGEHEIGHT :: IORef (Int)
    , mEDIUMWIDTH :: IORef (Int)
    , mEDIUMHEIGHT :: IORef (Int)
    , sMALLWIDTH :: IORef (Int)
    , sMALLHEIGHT :: IORef (Int)
    , sMALL :: IORef (String)
    , mEDIUM :: IORef (String)
    , lARGE :: IORef (String)
    , storeFrontInterface :: IORef (StoreFrontInterface.StoreFrontInterface)
    , itemInterface :: IORef (ItemInterface.ItemInterface)
    }

instance JavaNull InventoryUploadMediaUtil where
    javaNull = javaNullRecord "InventoryUploadMediaUtil"

instance JavaEquals InventoryUploadMediaUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryUploadMediaUtil where
    (==) = jrecordEquals

instance JavaObjectClass InventoryUploadMediaUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventoryUploadMediaUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    mediaUtil <- newIORef javaNull
    lARGEWIDTH <- newIORef 0
    lARGEHEIGHT <- newIORef 0
    mEDIUMWIDTH <- newIORef 0
    mEDIUMHEIGHT <- newIORef 0
    sMALLWIDTH <- newIORef 0
    sMALLHEIGHT <- newIORef 0
    sMALL <- newIORef ""
    mEDIUM <- newIORef ""
    lARGE <- newIORef ""
    storeFrontInterface <- newIORef javaNull
    itemInterface <- newIORef javaNull
    let this = InventoryUploadMediaUtil header_ logUtil mediaUtil lARGEWIDTH lARGEHEIGHT mEDIUMWIDTH mEDIUMHEIGHT sMALLWIDTH sMALLHEIGHT sMALL mEDIUM lARGE storeFrontInterface itemInterface
    jregisterLevel header_ this
    jregisterMethod header_ "saveFiles" (\() -> saveFiles_impl this)
    jregisterMethod header_ "setFileNames" (\() -> setFileNames_impl this)
    pure this

initFields_ :: InventoryUploadMediaUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.mediaUtil =<< (MediaUtil.getInstance)
    jset this.lARGEWIDTH (1024)
    jset this.lARGEHEIGHT (1024)
    jset this.mEDIUMWIDTH (256)
    jset this.mEDIUMHEIGHT (256)
    jset this.sMALLWIDTH (128)
    jset this.sMALLHEIGHT (128)
    jset this.sMALL ("Small")
    jset this.mEDIUM ("Medium")
    jset this.lARGE ("Large")
    jset this.storeFrontInterface (javaNull)
    jset this.itemInterface (javaNull)
    pure ()

new_2 :: StoreFrontInterface.StoreFrontInterface -> ItemInterface.ItemInterface -> IO InventoryUploadMediaUtil
new_2 storeFrontInterface itemInterface = do
    this <- newRecord_
    init_2 this storeFrontInterface itemInterface
    pure this

init_2 :: InventoryUploadMediaUtil -> StoreFrontInterface.StoreFrontInterface -> ItemInterface.ItemInterface -> IO ()
init_2 this storeFrontInterface itemInterface = do
        initFields_ this
        jset (this).storeFrontInterface (storeFrontInterface)
        jset (this).itemInterface (itemInterface)
        pure ()


-- throws Exception
saveFiles :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> String -> MediaData.MediaData -> IO (ItemInterface.ItemInterface)
saveFiles object_ a1 a2 a3 = jmethod object_ "saveFiles" (\() -> (saveFiles_impl (javaCast object_ :: InventoryUploadMediaUtil))) () a1 a2 a3

saveFiles_super :: (JavaObjectClass this_) => this_ -> JavaArray (Int8) -> String -> MediaData.MediaData -> IO (ItemInterface.ItemInterface)
saveFiles_super object_ a1 a2 a3 = (saveFiles_impl (javaCast object_ :: InventoryUploadMediaUtil)) a1 a2 a3

saveFiles_impl :: InventoryUploadMediaUtil -> JavaArray (Int8) -> String -> MediaData.MediaData -> IO (ItemInterface.ItemInterface)
saveFiles_impl this byteArray fileName mediaData = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Start FileName: " ++ fileName) this "saveFiles()")
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) fileName)) $ do
            javaThrow ((JavaException "Exception" "Image File Name Was Null"))
        fileUtil <- (FileUtil.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getWebappPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getCurrentHostNamePath ((jget (this).storeFrontInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getCategory ((jget (this).itemInterface)))))
        fullPath <- (StringMaker.toString stringBuffer)
        imageDirectoryFile <- (AbFile.createAbFile fullPath)
        when (Prelude.not (jio (AbFile.isDirectory imageDirectoryFile))) $ do
            javaThrow ((JavaException "Exception" "Unable to save file to non existant directory"))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer fullPath)
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName mediaData)))
        originalImageFile <- (AbFile.createAbFile (jio (StringMaker.toString stringBuffer)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Saving Original Image: " ++ javaToString originalImageFile) this "saveFiles()")
        Control.Monad.void (AbFile.createNewFile originalImageFile)
        Control.Monad.void (FileUtil.write fileUtil (jio (ByteArrayInputStream.new_1 byteArray)) originalImageFile)
        uploadMedia <- (UploadMediaSingleton.getInstance)
        let isMediaSupported = ((jio (UploadMediaSingleton.isWriterSupported uploadMedia (jio (MediaData.getName mediaData)))) || (jio (UploadMediaSingleton.isReaderSupported uploadMedia (jio (MediaData.getName mediaData)))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer "Is Image Type: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName mediaData)))
            Control.Monad.void (StringMaker.append stringBuffer " supported: ")
            Control.Monad.void (StringMaker.appendboolean stringBuffer isMediaSupported)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "saveFiles()")
        defaultMediaData <- (MediaData.getDefault)
        Control.Monad.void (InventoryUploadMediaUtil.setFileNames this fileName)
        when isMediaSupported $ do
            isMediaResizable <- (UploadMediaSingleton.isWriterMedia uploadMedia (jio (MediaData.getName mediaData)) (jget ((jio (MediaTypeData.getInstance))).rESIZABLE_MEDIA))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Is ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.toString mediaData)))
                Control.Monad.void (StringMaker.append stringBuffer " Image Resize Supported:")
                Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (UploadMediaSingleton.isSupported uploadMedia (jio (MediaData.getName mediaData)))))
                Control.Monad.void (StringMaker.append stringBuffer " WriterMedia: ")
                Control.Monad.void (StringMaker.appendboolean stringBuffer isMediaResizable)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "saveFiles()")
            if isMediaResizable then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Saving Small Image: " ++ javaToString (jio (ItemInterface.getSmallImage ((jget (this).itemInterface))))) this "saveFiles()")
                Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getSmallImage ((jget (this).itemInterface)))) fullPath mediaData (jget (this).sMALLWIDTH) (jget (this).sMALLHEIGHT))
                Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getMediumImage ((jget (this).itemInterface)))) fullPath mediaData (jget (this).mEDIUMWIDTH) (jget (this).mEDIUMHEIGHT))
                Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getLargeImage ((jget (this).itemInterface)))) fullPath mediaData (jget (this).lARGEWIDTH) (jget (this).lARGEHEIGHT))
            else do
                isConvertable <- (MediaData.isConvertableTo mediaData defaultMediaData)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer "Converting: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName defaultMediaData)))
                    Control.Monad.void (StringMaker.append stringBuffer " into ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName mediaData)))
                    Control.Monad.void (StringMaker.append stringBuffer " if Convertable is it: ")
                    Control.Monad.void (StringMaker.appendboolean stringBuffer isConvertable)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "saveFiles()")
                if isConvertable then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Saving Small Image: " ++ javaToString (jio (ItemInterface.getSmallImage ((jget (this).itemInterface))))) this "saveFiles()")
                    Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getSmallImage ((jget (this).itemInterface)))) fullPath defaultMediaData (jget (this).sMALLWIDTH) (jget (this).sMALLHEIGHT))
                    Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getMediumImage ((jget (this).itemInterface)))) fullPath defaultMediaData (jget (this).mEDIUMWIDTH) (jget (this).mEDIUMHEIGHT))
                    Control.Monad.void (MediaUtil.saveImageFile ((jget (this).mediaUtil)) originalImageFile (jio (ItemInterface.getLargeImage ((jget (this).itemInterface)))) fullPath defaultMediaData (jget (this).lARGEWIDTH) (jget (this).lARGEHEIGHT))
                else do
                    smallImageFile <- (AbFile.createAbFile (jio (ItemInterface.getSmallImage ((jget (this).itemInterface)))))
                    Control.Monad.void (AbFile.createNewFile smallImageFile)
                    Control.Monad.void (FileUtil.write fileUtil (jio (ByteArrayInputStream.new_1 byteArray)) smallImageFile)
                    mediumImageFile <- (AbFile.createAbFile (jio (ItemInterface.getMediumImage ((jget (this).itemInterface)))))
                    Control.Monad.void (AbFile.createNewFile smallImageFile)
                    Control.Monad.void (FileUtil.write fileUtil (jio (ByteArrayInputStream.new_1 byteArray)) mediumImageFile)
                    largeImageFile <- (AbFile.createAbFile (jio (ItemInterface.getSmallImage ((jget (this).itemInterface)))))
                    Control.Monad.void (AbFile.createNewFile largeImageFile)
                    Control.Monad.void (FileUtil.write fileUtil (jio (ByteArrayInputStream.new_1 byteArray)) largeImageFile)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).eND) this "saveFiles()")
        pure ((jget (this).itemInterface))


setFileNames :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileNames object_ a1 = jmethod object_ "setFileNames" (\() -> (setFileNames_impl (javaCast object_ :: InventoryUploadMediaUtil))) () a1

setFileNames_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFileNames_super object_ a1 = (setFileNames_impl (javaCast object_ :: InventoryUploadMediaUtil)) a1

setFileNames_impl :: InventoryUploadMediaUtil -> String -> IO (())
setFileNames_impl this fileName = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (ItemInterface.getId ((jget (this).itemInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (MediaData.getName ((jio (MediaData.getDefault))))))
        eND <- (StringMaker.toString stringBuffer)
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sMALL))
        Control.Monad.void (StringMaker.append stringBuffer eND)
        newImageFileName <- newIORef =<< (StringMaker.toString stringBuffer)
        Control.Monad.void (ItemInterface.setSmallImage ((jget (this).itemInterface)) (jget newImageFileName))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).mEDIUM))
        Control.Monad.void (StringMaker.append stringBuffer eND)
        assignedValue <- (StringMaker.toString stringBuffer)
        jset newImageFileName (assignedValue)
        Control.Monad.void (ItemInterface.setMediumImage ((jget (this).itemInterface)) (jget newImageFileName))
        Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
        Control.Monad.void (StringMaker.append stringBuffer fileName)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lARGE))
        Control.Monad.void (StringMaker.append stringBuffer eND)
        assignedValue <- (StringMaker.toString stringBuffer)
        jset newImageFileName (assignedValue)
        Control.Monad.void (ItemInterface.setLargeImage ((jget (this).itemInterface)) (jget newImageFileName))
        pure ()


