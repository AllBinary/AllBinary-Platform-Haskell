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
-- package org.allbinary.servlet.file
module UploadFileServlet (module UploadFileServlet, module HttpServlet) where

import HttpServlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processRequest, processRequest_super, processRequest_impl, saveFile, saveFile_super, saveFile_impl, doGet, doGet_super, doGet_impl, doPost, doPost_super, doPost_impl, getServletInfo, getServletInfo_super, getServletInfo_impl, logUtil, commonStrings, requestHashMap, fileName)
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
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified HashMap -- java.util.HashMap
import qualified ServletException -- javax.servlet.ServletException
import qualified HttpServlet -- javax.servlet.http.HttpServlet
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpServletResponse -- javax.servlet.http.HttpServletResponse
import qualified AuthenticationHelper -- admin.taghelpers.AuthenticationHelper
import qualified AuthenticationHelperFactory -- admin.taghelpers.AuthenticationHelperFactory
import qualified AuthenticationHelperUtil -- admin.taghelpers.AuthenticationHelperUtil
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified FileUploadData -- org.allbinary.logic.communication.http.file.upload.FileUploadData
import qualified HttpFileUploadUtil -- org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil
import qualified HttpRequestUtil -- org.allbinary.logic.communication.http.request.HttpRequestUtil
import qualified MultipartRequestParams -- org.allbinary.logic.communication.http.request.MultipartRequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BlisketServletUtil -- org.allbinary.servlet.BlisketServletUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified FileItem -- org.apache.commons.fileupload.FileItem

data UploadFileServlet = UploadFileServlet
    { header_ :: JavaHeader
    , base :: HttpServlet.HttpServlet
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , requestHashMap :: IORef (HashMap.HashMap)
    , fileName :: IORef (String)
    }

instance JavaNull UploadFileServlet where
    javaNull = javaNullRecord "UploadFileServlet"

instance JavaEquals UploadFileServlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UploadFileServlet where
    (==) = jrecordEquals

instance JavaObjectClass UploadFileServlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UploadFileServlet
newRecord_ = do
    base <- HttpServlet.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    requestHashMap <- newIORef javaNull
    fileName <- newIORef ""
    let this = UploadFileServlet header_ base logUtil commonStrings requestHashMap fileName
    jregisterLevel header_ this
    jregisterMethod header_ "processRequest" (\() -> processRequest_impl this)
    jregisterMethod header_ "saveFile" (\() -> saveFile_impl this)
    jregisterMethod header_ "doGet" (\() -> doGet_impl this)
    jregisterMethod header_ "doPost" (\() -> doPost_impl this)
    jregisterMethod header_ "getServletInfo" (\() -> getServletInfo_impl this)
    pure this

initFields_ :: UploadFileServlet -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.requestHashMap (javaNull)
    jset this.fileName ("")
    pure ()

new_ :: IO UploadFileServlet
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UploadFileServlet -> IO ()
init_ this = do
    HttpServlet.init_ this.base
    initFields_ this


-- throws ServletException, IOException
processRequest :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest object_ a1 a2 = jmethod object_ "processRequest" (\() -> (processRequest_impl (javaCast object_ :: UploadFileServlet))) () a1 a2

processRequest_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_super object_ a1 a2 = (processRequest_impl (javaCast object_ :: UploadFileServlet)) a1 a2

processRequest_impl :: UploadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_impl this request response = do
    javaCatchReturn $ do
        isError <- newIORef (False)
        let inputStream = javaNull
        flip finally (do
            when (Prelude.not (jget isError)) $ do
                Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jio (HttpServletResponse.getOutputStream response)))
            when (Prelude.not (jio (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast inputStream)))) $ do
                pure ()
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "processRequest()" e)
            jset isError (True)
            Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
            ) $ do
            Control.Monad.void (BlisketServletUtil.init ((jio (BlisketServletUtil.getInstance))) request)
            assignedValue <- (MultipartRequestParams.toHashMap ((jio (MultipartRequestParams.new_1 request))))
            jset (this).requestHashMap (assignedValue)
            let filePath = (javaCast (jio (HashMap.get ((jget (this).requestHashMap)) (jget ((jio (FileUploadData.getInstance))).uPLOAD_TO_FILE_PATH))) :: String)
            when (filePath == javaNull) $ do
                jset isError (True)
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
                javaReturn (())
            hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            let authenticationHelper = (javaCast (jio (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) hashMap (javaCast request))) :: AuthenticationHelper.AuthenticationHelper)
            if (jio (AuthenticationHelper.isAuthenticated authenticationHelper)) then do
                if (jio (AuthenticationHelperUtil.isAuthorized ((jio (AuthenticationHelperUtil.getInstance))) authenticationHelper filePath)) then do
                    Control.Monad.void (UploadFileServlet.saveFile this filePath)
                    Control.Monad.void (HttpServletResponse.setContentType response "text/plain")
                    Control.Monad.void (HttpServletResponse.write ((jio (HttpServletResponse.getOutputStream response))) (jgetBytes "OK!"))
                else do
                    jset isError (True)
                    Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_UNAUTHORIZED) "You are not Authorized")
            else do
                jset isError (True)
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_UNAUTHORIZED) "Please Login")
    pure ()


-- throws Exception
saveFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
saveFile object_ a1 = jmethod object_ "saveFile" (\() -> (saveFile_impl (javaCast object_ :: UploadFileServlet))) () a1

saveFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
saveFile_super object_ a1 = (saveFile_impl (javaCast object_ :: UploadFileServlet)) a1

saveFile_impl :: UploadFileServlet -> String -> IO (())
saveFile_impl this filePath = do
        filePath <- newIORef filePath
        fileOutputStream <- newIORef (javaNull)
        flip finally (do
            when ((jget fileOutputStream) /= javaNull) $ do
                Control.Monad.void (AbFileOutputStream.close ((jget fileOutputStream)))
            ) $ do
            let fileItem = (javaCast (jio (HashMap.get ((jget (this).requestHashMap)) (jget ((jio (FileUploadData.getInstance))).fILE_DATA))) :: FileItem.FileItem)
            when ((fileItem /= javaNull) && ((jio (FileItem.getSize fileItem)) > 1)) $ do
                assignedValue <- (HttpRequestUtil.generateFileName ((jio (HttpRequestUtil.getInstance))) (jio (FileItem.getName fileItem)))
                jset (this).fileName (assignedValue)
                when ((Data.List.isSuffixOf "/" (jget filePath)) || (Data.List.isSuffixOf "\\" (jget filePath))) $ do
                    jset filePath (((jget filePath) ++ (jget (this).fileName)))
                file <- (AbFile.createAbFile (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jget filePath)))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "Uploaded File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).fileName))
                    Control.Monad.void (StringMaker.append stringBuffer " New File: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getPath file)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "saveFile()")
                Control.Monad.void (HttpFileUploadUtil.log fileItem)
                byteArray <- (FileItem.get fileItem)
                when (jio (AbFile.isFile file)) $ do
                    Control.Monad.void (AbFile.delete file)
                    Control.Monad.void (AbFile.createNewFile file)
                assignedValue <- (AbFileOutputStream.createFromAbFile file)
                jset fileOutputStream (assignedValue)
                Control.Monad.void (AbFileOutputStream.write ((jget fileOutputStream)) byteArray)
        pure ()


-- throws ServletException, IOException
doGet :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet object_ a1 a2 = jmethod object_ "doGet" (\() -> (doGet_impl (javaCast object_ :: UploadFileServlet))) () a1 a2

doGet_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_super object_ a1 a2 = (doGet_impl (javaCast object_ :: UploadFileServlet)) a1 a2

doGet_impl :: UploadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_impl this request response = do
        Control.Monad.void (UploadFileServlet.processRequest this request response)
        pure ()


-- throws ServletException, IOException
doPost :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost object_ a1 a2 = jmethod object_ "doPost" (\() -> (doPost_impl (javaCast object_ :: UploadFileServlet))) () a1 a2

doPost_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_super object_ a1 a2 = (doPost_impl (javaCast object_ :: UploadFileServlet)) a1 a2

doPost_impl :: UploadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_impl this request response = do
        Control.Monad.void (UploadFileServlet.processRequest this request response)
        pure ()


getServletInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo object_ = jmethod object_ "getServletInfo" (\() -> (getServletInfo_impl (javaCast object_ :: UploadFileServlet))) ()

getServletInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo_super object_ = (getServletInfo_impl (javaCast object_ :: UploadFileServlet))

getServletInfo_impl :: UploadFileServlet -> IO (String)
getServletInfo_impl this = do
        pure ("Upload Cloud Files")


