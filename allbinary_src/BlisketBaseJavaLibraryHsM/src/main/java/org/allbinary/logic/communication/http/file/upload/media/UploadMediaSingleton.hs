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
-- package org.allbinary.logic.communication.http.file.upload.media
module UploadMediaSingleton where

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
import qualified Set -- java.util.Set
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified MediaData -- org.allbinary.logic.visual.media.MediaData
import qualified MediaIOUtil -- org.allbinary.logic.visual.media.MediaIOUtil
import qualified MediaTypeData -- org.allbinary.logic.visual.media.MediaTypeData
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data UploadMediaSingleton = UploadMediaSingleton
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , readerFileTypesHashMap :: IORef (HashMap.HashMap)
    , writerFileTypesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull UploadMediaSingleton where
    javaNull = javaNullRecord "UploadMediaSingleton"

instance JavaEquals UploadMediaSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UploadMediaSingleton where
    (==) = jrecordEquals

instance JavaObjectClass UploadMediaSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE uploadMedia #-}
uploadMedia = unsafePerformIO (newIORef (javaNull))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UploadMediaSingleton
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    readerFileTypesHashMap <- newIORef javaNull
    writerFileTypesHashMap <- newIORef javaNull
    let this = UploadMediaSingleton header_ logUtil commonStrings readerFileTypesHashMap writerFileTypesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "isReaderSupported" (\() -> isReaderSupported_impl this)
    jregisterMethod header_ "isWriterSupported" (\() -> isWriterSupported_impl this)
    jregisterMethod header_ "isSupported" (\() -> isSupported_impl this)
    jregisterMethod header_ "isMedia" (\() -> isMedia_impl this)
    jregisterMethod header_ "isReaderMedia" (\() -> isReaderMedia_impl this)
    jregisterMethod header_ "isWriterMedia" (\() -> isWriterMedia_impl this)
    jregisterMethod header_ "isMedia_3" (\() -> isMedia_3_impl this)
    pure this

initFields_ :: UploadMediaSingleton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.readerFileTypesHashMap (javaNull)
    jset this.writerFileTypesHashMap (javaNull)
    pure ()

new_ :: IO UploadMediaSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UploadMediaSingleton -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).readerFileTypesHashMap (assignedValue)
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).writerFileTypesHashMap (assignedValue)
        hashMap <- (MediaData.toHashMap)
        set <- (HashMap.keySet hashMap)
        mediaDataNameArray <- (Set.toArray set)
        let size = (jlength mediaDataNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let mediaDataName = (javaCast (jindex mediaDataNameArray (index)) :: String)
            let mediaData = (javaCast (jio (HashMap.get hashMap mediaDataName)) :: MediaData.MediaData)
            Control.Monad.void (HashMap.put ((jget (this).readerFileTypesHashMap)) (jio (MediaData.getName mediaData)) (jio (MediaData.getType mediaData)))
        mediaIOUtil <- (MediaIOUtil.getInstance)
        let rESIZABLE_MEDIA = (jget ((jio (MediaTypeData.getInstance))).rESIZABLE_MEDIA)
        readerFileTypes <- (MediaIOUtil.getReaderFormatNames mediaIOUtil)
        forM_ [0 .. (jlength readerFileTypes) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (HashMap.put ((jget (this).readerFileTypesHashMap)) (jindex readerFileTypes (index)) rESIZABLE_MEDIA)
        writerFileTypes <- (MediaIOUtil.getWriterFormatNames mediaIOUtil)
        forM_ [0 .. (jlength writerFileTypes) - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (HashMap.put ((jget (this).writerFileTypesHashMap)) (jindex writerFileTypes (index)) rESIZABLE_MEDIA)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Supported Media Readers: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString ((jget (this).readerFileTypesHashMap)))))
            Control.Monad.void (StringMaker.append stringBuffer " Writers: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (HashMap.toString ((jget (this).writerFileTypesHashMap)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


getInstance :: IO (UploadMediaSingleton)
getInstance = do
        when ((jget UploadMediaSingleton.uploadMedia) == javaNull) $ do
            assignedValue <- (new_)
            jset UploadMediaSingleton.uploadMedia (assignedValue)
        pure ((jget UploadMediaSingleton.uploadMedia))


isReaderSupported :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isReaderSupported object_ a1 = jmethod object_ "isReaderSupported" (\() -> (isReaderSupported_impl (javaCast object_ :: UploadMediaSingleton))) () a1

isReaderSupported_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isReaderSupported_super object_ a1 = (isReaderSupported_impl (javaCast object_ :: UploadMediaSingleton)) a1

isReaderSupported_impl :: UploadMediaSingleton -> String -> IO (Bool)
isReaderSupported_impl this mediaFileType = do
        (HashMap.containsKey ((jget (this).readerFileTypesHashMap)) mediaFileType)


isWriterSupported :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isWriterSupported object_ a1 = jmethod object_ "isWriterSupported" (\() -> (isWriterSupported_impl (javaCast object_ :: UploadMediaSingleton))) () a1

isWriterSupported_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isWriterSupported_super object_ a1 = (isWriterSupported_impl (javaCast object_ :: UploadMediaSingleton)) a1

isWriterSupported_impl :: UploadMediaSingleton -> String -> IO (Bool)
isWriterSupported_impl this mediaFileType = do
        (HashMap.containsKey ((jget (this).readerFileTypesHashMap)) mediaFileType)


isSupported :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSupported object_ a1 = jmethod object_ "isSupported" (\() -> (isSupported_impl (javaCast object_ :: UploadMediaSingleton))) () a1

isSupported_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isSupported_super object_ a1 = (isSupported_impl (javaCast object_ :: UploadMediaSingleton)) a1

isSupported_impl :: UploadMediaSingleton -> String -> IO (Bool)
isSupported_impl this mediaFileType = do
        pure (((jio (UploadMediaSingleton.isReaderSupported this mediaFileType)) && (jio (UploadMediaSingleton.isWriterSupported this mediaFileType))))


isMedia :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isMedia object_ a1 a2 = jmethod object_ "isMedia" (\() -> (isMedia_impl (javaCast object_ :: UploadMediaSingleton))) () a1 a2

isMedia_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isMedia_super object_ a1 a2 = (isMedia_impl (javaCast object_ :: UploadMediaSingleton)) a1 a2

isMedia_impl :: UploadMediaSingleton -> String -> String -> IO (Bool)
isMedia_impl this mediaFileType aMediaType = do
        pure (((jio (UploadMediaSingleton.isReaderMedia this mediaFileType aMediaType)) && (jio (UploadMediaSingleton.isWriterMedia this mediaFileType aMediaType))))


isReaderMedia :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isReaderMedia object_ a1 a2 = jmethod object_ "isReaderMedia" (\() -> (isReaderMedia_impl (javaCast object_ :: UploadMediaSingleton))) () a1 a2

isReaderMedia_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isReaderMedia_super object_ a1 a2 = (isReaderMedia_impl (javaCast object_ :: UploadMediaSingleton)) a1 a2

isReaderMedia_impl :: UploadMediaSingleton -> String -> String -> IO (Bool)
isReaderMedia_impl this mediaFileType aMediaType = do
        (UploadMediaSingleton.isMedia_3 this mediaFileType aMediaType (jget (this).readerFileTypesHashMap))


isWriterMedia :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isWriterMedia object_ a1 a2 = jmethod object_ "isWriterMedia" (\() -> (isWriterMedia_impl (javaCast object_ :: UploadMediaSingleton))) () a1 a2

isWriterMedia_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
isWriterMedia_super object_ a1 a2 = (isWriterMedia_impl (javaCast object_ :: UploadMediaSingleton)) a1 a2

isWriterMedia_impl :: UploadMediaSingleton -> String -> String -> IO (Bool)
isWriterMedia_impl this mediaFileType aMediaType = do
        (UploadMediaSingleton.isMedia_3 this mediaFileType aMediaType (jget (this).writerFileTypesHashMap))


isMedia_3 :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (Bool)
isMedia_3 object_ a1 a2 a3 = jmethod object_ "isMedia_3" (\() -> (isMedia_3_impl (javaCast object_ :: UploadMediaSingleton))) () a1 a2 a3

isMedia_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (Bool)
isMedia_3_super object_ a1 a2 a3 = (isMedia_3_impl (javaCast object_ :: UploadMediaSingleton)) a1 a2 a3

isMedia_3_impl :: UploadMediaSingleton -> String -> String -> HashMap.HashMap -> IO (Bool)
isMedia_3_impl this mediaFileType aMediaType hashMap = do
    javaCatchReturn $ do
        if (jio (HashMap.containsKey hashMap mediaFileType)) then do
            let mediaType = (javaCast (jio (HashMap.get hashMap mediaFileType)) :: String)
            if ((Prelude.fromEnum (Prelude.compare mediaType aMediaType) - 1) == 0) then do
                javaReturn (True)
            else do
                javaReturn (False)
        else do
            javaReturn (False)


