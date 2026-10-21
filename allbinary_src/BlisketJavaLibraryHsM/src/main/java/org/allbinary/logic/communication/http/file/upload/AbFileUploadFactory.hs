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
-- package org.allbinary.logic.communication.http.file.upload
module AbFileUploadFactory where

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
import qualified AbFileUpload -- same package or java.lang
import qualified HttpFileUploadUtil -- same package or java.lang
import qualified AbFileItem -- same package or java.lang
import qualified ArrayList -- java.util.ArrayList
import qualified List -- java.util.List
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified AbFileItemFactory -- org.allbinary.logic.communication.http.AbFileItemFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified FileItemIterator -- org.apache.commons.fileupload.FileItemIterator
import qualified FileItemStream -- org.apache.commons.fileupload.FileItemStream
import qualified FileItemUtil -- org.apache.commons.fileupload.FileItemUtil

data AbFileUploadFactory = AbFileUploadFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AbFileUploadFactory where
    javaNull = javaNullRecord "AbFileUploadFactory"

instance JavaEquals AbFileUploadFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbFileUploadFactory where
    (==) = jrecordEquals

instance JavaObjectClass AbFileUploadFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbFileUploadFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = AbFileUploadFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getFileItemStreamList" (\() -> getFileItemStreamList_impl this)
    jregisterMethod header_ "getFileItemList" (\() -> getFileItemList_impl this)
    pure this

initFields_ :: AbFileUploadFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (AbFileUploadFactory)
getInstance = do
        pure (AbFileUploadFactory.instance_)

new_ :: IO AbFileUploadFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbFileUploadFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getFileItemStreamList :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemStreamList object_ a1 = jmethod object_ "getFileItemStreamList" (\() -> (getFileItemStreamList_impl (javaCast object_ :: AbFileUploadFactory))) () a1

getFileItemStreamList_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemStreamList_super object_ a1 = (getFileItemStreamList_impl (javaCast object_ :: AbFileUploadFactory)) a1

getFileItemStreamList_impl :: AbFileUploadFactory -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemStreamList_impl this httpServletRequest = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "get()" e)
            javaThrow (e)
            ) $ do
            fileUpload <- (AbFileUpload.new_1 (jio (AbFileItemFactory.new_)))
            iterator <- (AbFileUpload.getItemIterator fileUpload httpServletRequest)
            items <- (fmap (\value_ -> javaCast value_ :: List.List) (ArrayList.new_))
            fix $ \loop -> when (jio (FileItemIterator.hasNext iterator)) $ javaIteration (loop) $ do
                fileItemStream <- (FileItemIterator.next iterator)
                Control.Monad.void (HttpFileUploadUtil.log fileItemStream)
                fileItem <- (AbFileItem.new_3 (jio (FileItemStream.getName fileItemStream)) (jio (FileItemStream.getFieldName fileItemStream)) (jio (FileItemUtil.getBytes ((jio (FileItemUtil.getInstance))) fileItemStream)))
                Control.Monad.void (List.add items fileItem)
            pure (items)


-- throws Exception
getFileItemList :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemList object_ a1 = jmethod object_ "getFileItemList" (\() -> (getFileItemList_impl (javaCast object_ :: AbFileUploadFactory))) () a1

getFileItemList_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemList_super object_ a1 = (getFileItemList_impl (javaCast object_ :: AbFileUploadFactory)) a1

getFileItemList_impl :: AbFileUploadFactory -> HttpServletRequest.HttpServletRequest -> IO (List.List)
getFileItemList_impl this httpServletRequest = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "get()" e)
            javaThrow (e)
            ) $ do
            abFileUpload <- (AbFileUpload.new_1 (jio (AbFileItemFactory.new_)))
            (AbFileUpload.parseRequest abFileUpload httpServletRequest)


