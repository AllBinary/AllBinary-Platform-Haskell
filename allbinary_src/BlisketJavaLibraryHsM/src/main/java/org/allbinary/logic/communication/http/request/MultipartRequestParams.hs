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
-- package org.allbinary.logic.communication.http.request
module MultipartRequestParams (module MultipartRequestParams, module RequestParams) where

import RequestParams hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setSpecial, setSpecial_super, setSpecial_impl, processMultipartRequest, processMultipartRequest_super, processMultipartRequest_impl, toHashMap, toHashMap_super, toHashMap_impl, logUtil, special)
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
import qualified List -- java.util.List
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbFileUploadFactory -- org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified FileItem -- org.apache.commons.fileupload.FileItem
import qualified InvalidContentTypeException -- org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException
import qualified RequestParams

data MultipartRequestParams = MultipartRequestParams
    { header_ :: JavaHeader
    , base :: RequestParams.RequestParams
    , logUtil :: IORef (LogUtil.LogUtil)
    , special :: IORef (Bool)
    }

instance JavaNull MultipartRequestParams where
    javaNull = javaNullRecord "MultipartRequestParams"

instance JavaEquals MultipartRequestParams where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipartRequestParams where
    (==) = jrecordEquals

instance JavaObjectClass MultipartRequestParams where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultipartRequestParams
newRecord_ = do
    base <- RequestParams.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    special <- newIORef False
    let this = MultipartRequestParams header_ base logUtil special
    jregisterLevel header_ this
    jregisterMethod header_ "setSpecial" (\() -> setSpecial_impl this)
    jregisterMethod header_ "processMultipartRequest" (\() -> processMultipartRequest_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    pure this

initFields_ :: MultipartRequestParams -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.special (False)
    pure ()

new_1 :: HttpServletRequest.HttpServletRequest -> IO MultipartRequestParams
new_1 request = do
    this <- newRecord_
    init_1 this request
    pure this

init_1 :: MultipartRequestParams -> HttpServletRequest.HttpServletRequest -> IO ()
init_1 this request = do
        RequestParams.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (MultipartRequestParams.processMultipartRequest this request)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: PageContext.PageContext -> IO MultipartRequestParams
new_1 pageContext = do
    this <- newRecord_
    init_1 this pageContext
    pure this

init_1 :: MultipartRequestParams -> PageContext.PageContext -> IO ()
init_1 this pageContext = do
        RequestParams.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (MultipartRequestParams.processMultipartRequest this (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        pure ()


setSpecial :: (JavaObjectClass this_) => this_ -> IO (())
setSpecial object_ = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: MultipartRequestParams))) ()

setSpecial_super :: (JavaObjectClass this_) => this_ -> IO (())
setSpecial_super object_ = (setSpecial_impl (javaCast object_ :: MultipartRequestParams))

setSpecial_impl :: MultipartRequestParams -> IO (())
setSpecial_impl this = do
        jset (this).special (True)
        pure ()


processMultipartRequest :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
processMultipartRequest object_ a1 = jmethod object_ "processMultipartRequest" (\() -> (processMultipartRequest_impl (javaCast object_ :: MultipartRequestParams))) () a1

processMultipartRequest_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> IO (())
processMultipartRequest_super object_ a1 = (processMultipartRequest_impl (javaCast object_ :: MultipartRequestParams)) a1

processMultipartRequest_impl :: MultipartRequestParams -> HttpServletRequest.HttpServletRequest -> IO (())
processMultipartRequest_impl this request = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Using Normal RequestParams" this "processMultipartRequest()")
            Control.Monad.void (RequestParams.setMap_super this.base (jio (HttpServletRequest.getParameterMap request)))
            ) $ do
            specialRequest <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            multipartRequestList <- (AbFileUploadFactory.getFileItemStreamList ((jio (AbFileUploadFactory.getInstance))) request)
            when (multipartRequestList /= javaNull) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("FileItem List Size: " ++ javaToString (jio (List.size multipartRequestList))) this "processMultipartRequest()")
                fileItemArray <- (List.toArray multipartRequestList)
                let size = (jlength fileItemArray)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let fileItem = (javaCast (jindex fileItemArray (index)) :: FileItem.FileItem)
                    name <- (FileItem.getName fileItem)
                    if (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) name)) then do
                        Control.Monad.void (HashMap.put specialRequest (jio (FileItem.getFieldName fileItem)) (jio (FileItem.getString fileItem)))
                    else do
                        Control.Monad.void (HashMap.put specialRequest (jio (FileItem.getFieldName fileItem)) fileItem)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Special Request Data: " ++ (jio (HashMap.toString specialRequest))) this "processMultipartRequest()")
                Control.Monad.void (MultipartRequestParams.setSpecial this)
                Control.Monad.void (RequestParams.setMap this (javaCast specialRequest))
        pure ()


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: MultipartRequestParams))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: MultipartRequestParams))

toHashMap_impl :: MultipartRequestParams -> IO (HashMap.HashMap)
toHashMap_impl this = do
    javaCatchReturn $ do
        if (jget (this).special) then do
            javaReturn ((javaCast (jio (RequestParams.getMap this)) :: HashMap.HashMap))
        else do
            javaReturn =<< (RequestParams.toHashMap_super this.base)


