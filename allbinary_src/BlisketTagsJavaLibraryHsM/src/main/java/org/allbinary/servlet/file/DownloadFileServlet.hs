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
module DownloadFileServlet (module DownloadFileServlet, module HttpServlet) where

import HttpServlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processRequest, processRequest_super, processRequest_impl, doGet, doGet_super, doGet_impl, doPost, doPost_super, doPost_impl, getServletInfo, getServletInfo_super, getServletInfo_impl, logUtil, commonStrings, dOWNLOAD, dEFAULT_BUFFER_SIZE)
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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CloudStreamUtil -- org.allbinary.logic.io.CloudStreamUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BlisketServletUtil -- org.allbinary.servlet.BlisketServletUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data DownloadFileServlet = DownloadFileServlet
    { header_ :: JavaHeader
    , base :: HttpServlet.HttpServlet
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , dOWNLOAD :: IORef (String)
    , dEFAULT_BUFFER_SIZE :: IORef (Int)
    }

instance JavaNull DownloadFileServlet where
    javaNull = javaNullRecord "DownloadFileServlet"

instance JavaEquals DownloadFileServlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DownloadFileServlet where
    (==) = jrecordEquals

instance JavaObjectClass DownloadFileServlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DownloadFileServlet
newRecord_ = do
    base <- HttpServlet.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    dOWNLOAD <- newIORef ""
    dEFAULT_BUFFER_SIZE <- newIORef 0
    let this = DownloadFileServlet header_ base logUtil commonStrings dOWNLOAD dEFAULT_BUFFER_SIZE
    jregisterLevel header_ this
    jregisterMethod header_ "processRequest" (\() -> processRequest_impl this)
    jregisterMethod header_ "doGet" (\() -> doGet_impl this)
    jregisterMethod header_ "doPost" (\() -> doPost_impl this)
    jregisterMethod header_ "getServletInfo" (\() -> getServletInfo_impl this)
    pure this

initFields_ :: DownloadFileServlet -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.dOWNLOAD ("download")
    jset this.dEFAULT_BUFFER_SIZE (16384)
    pure ()

new_ :: IO DownloadFileServlet
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DownloadFileServlet -> IO ()
init_ this = do
    HttpServlet.init_ this.base
    initFields_ this


-- throws ServletException, IOException
processRequest :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest object_ a1 a2 = jmethod object_ "processRequest" (\() -> (processRequest_impl (javaCast object_ :: DownloadFileServlet))) () a1 a2

processRequest_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_super object_ a1 a2 = (processRequest_impl (javaCast object_ :: DownloadFileServlet)) a1 a2

processRequest_impl :: DownloadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_impl this request response = do
    javaCatchReturn $ do
        inputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jio (HttpServletResponse.getOutputStream response)))
            when (Prelude.not (jio (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast (jget inputStream))))) $ do
                pure ()
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "processRequest()" e)
            Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
            ) $ do
            Control.Monad.void (BlisketServletUtil.init ((jio (BlisketServletUtil.getInstance))) request)
            requestPath <- (HttpServletRequest.getRequestURI request)
            when (requestPath == javaNull) $ do
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
                javaReturn (())
            let beginIndex = (jstringIndexOf requestPath (jget (this).dOWNLOAD) 0)
            filePath <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            if (beginIndex >= 0) then do
                jset filePath ((Prelude.drop (beginIndex + (Prelude.length (jget (this).dOWNLOAD))) requestPath))
            else do
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
            file <- (AbFile.createAbFile (javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jget filePath)))
            when (Prelude.not (jio (AbFile.exists file))) $ do
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
                javaReturn (())
            hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            let authenticationHelper = (javaCast (jio (AuthenticationHelperFactory.getInstance ((jio (AuthenticationHelperFactory.new_))) hashMap (javaCast request))) :: AuthenticationHelper.AuthenticationHelper)
            if (jio (AuthenticationHelper.isAuthenticated authenticationHelper)) then do
                if (jio (AuthenticationHelperUtil.isAuthorized ((jio (AuthenticationHelperUtil.getInstance))) authenticationHelper (jget filePath))) then do
                    assignedValue <- (CloudStreamUtil.getFile ((jio (CloudStreamUtil.getInstance))) file)
                    jset inputStream (assignedValue)
                    contentType <- newIORef =<< (getMimeType ((jio (HttpServlet.getServletContext this))) (jio (AbFile.getName file)))
                    when ((jget contentType) == javaNull) $ do
                        jset contentType ("application/octet-stream")
                    Control.Monad.void (HttpServletResponse.reset response)
                    Control.Monad.void (HttpServletResponse.setBufferSize response (jget (this).dEFAULT_BUFFER_SIZE))
                    Control.Monad.void (HttpServletResponse.setContentType response (jget contentType))
                    Control.Monad.void (HttpServletResponse.setHeader response "Content-Length" (javaToString (jio (AbFile.length file))))
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "attachment; filename=\"")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbFile.getName file)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).qUOTE))
                    Control.Monad.void (HttpServletResponse.setHeader response "Content-Disposition" (jio (StringMaker.toString stringBuffer)))
                    Control.Monad.void (StreamUtil.get ((jio (StreamUtil.getInstance))) (jget inputStream) (jio (HttpServletResponse.getOutputStream response)) (jnewArray (16348) 0))
                else do
                    Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_UNAUTHORIZED) "You are not Authorized")
            else do
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_UNAUTHORIZED) "Please Login")
    pure ()


-- throws ServletException, IOException
doGet :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet object_ a1 a2 = jmethod object_ "doGet" (\() -> (doGet_impl (javaCast object_ :: DownloadFileServlet))) () a1 a2

doGet_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_super object_ a1 a2 = (doGet_impl (javaCast object_ :: DownloadFileServlet)) a1 a2

doGet_impl :: DownloadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_impl this request response = do
        Control.Monad.void (DownloadFileServlet.processRequest this request response)
        pure ()


-- throws ServletException, IOException
doPost :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost object_ a1 a2 = jmethod object_ "doPost" (\() -> (doPost_impl (javaCast object_ :: DownloadFileServlet))) () a1 a2

doPost_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_super object_ a1 a2 = (doPost_impl (javaCast object_ :: DownloadFileServlet)) a1 a2

doPost_impl :: DownloadFileServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_impl this request response = do
        Control.Monad.void (DownloadFileServlet.processRequest this request response)
        pure ()


getServletInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo object_ = jmethod object_ "getServletInfo" (\() -> (getServletInfo_impl (javaCast object_ :: DownloadFileServlet))) ()

getServletInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo_super object_ = (getServletInfo_impl (javaCast object_ :: DownloadFileServlet))

getServletInfo_impl :: DownloadFileServlet -> IO (String)
getServletInfo_impl this = do
        pure ("Serves Up Cloud Files")


