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
-- package org.allbinary.servlet
module ImageServlet (module ImageServlet, module HttpServlet) where

import HttpServlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processRequest, processRequest_super, processRequest_impl, doGet, doGet_super, doGet_impl, doPost, doPost_super, doPost_impl, getServletInfo, getServletInfo_super, getServletInfo_impl, logUtil, commonStrings)
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
import qualified BlisketServletUtil -- same package or java.lang
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified ServletException -- javax.servlet.ServletException
import qualified HttpServlet -- javax.servlet.http.HttpServlet
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpServletResponse -- javax.servlet.http.HttpServletResponse
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CloudStreamUtil -- org.allbinary.logic.io.CloudStreamUtil
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ImageServlet = ImageServlet
    { header_ :: JavaHeader
    , base :: HttpServlet.HttpServlet
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull ImageServlet where
    javaNull = javaNullRecord "ImageServlet"

instance JavaEquals ImageServlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageServlet where
    (==) = jrecordEquals

instance JavaObjectClass ImageServlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageServlet
newRecord_ = do
    base <- HttpServlet.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = ImageServlet header_ base logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "processRequest" (\() -> processRequest_impl this)
    jregisterMethod header_ "doGet" (\() -> doGet_impl this)
    jregisterMethod header_ "doPost" (\() -> doPost_impl this)
    jregisterMethod header_ "getServletInfo" (\() -> getServletInfo_impl this)
    pure this

initFields_ :: ImageServlet -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO ImageServlet
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ImageServlet -> IO ()
init_ this = do
    HttpServlet.init_ this.base
    initFields_ this


-- throws ServletException, IOException
processRequest :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest object_ a1 a2 = jmethod object_ "processRequest" (\() -> (processRequest_impl (javaCast object_ :: ImageServlet))) () a1 a2

processRequest_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_super object_ a1 a2 = (processRequest_impl (javaCast object_ :: ImageServlet)) a1 a2

processRequest_impl :: ImageServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_impl this request response = do
        inputStream <- newIORef (javaNull)
        flip finally (do
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (jio (HttpServletResponse.getOutputStream response)))
            when (Prelude.not (jio (StreamUtil.close ((jio (StreamUtil.getInstance))) (jget inputStream)))) $ do
                Control.Monad.void (HttpServletResponse.sendError response (HttpServletResponse.sC_NOT_FOUND))
            ) $ handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "processRequest()" e)
            ) $ do
            Control.Monad.void (BlisketServletUtil.init ((jio (BlisketServletUtil.getInstance))) request)
            requestURI <- (HttpServletRequest.getRequestURI request)
            file <- (AbFile.createAbFile (javaToString (jio (URLGLOBALS.getWebappPath)) ++ requestURI))
            assignedValue <- (CloudStreamUtil.getFileLocal ((jio (CloudStreamUtil.getInstance))) file)
            jset inputStream (assignedValue)
            outputStream <- (ByteArrayOutputStream.new_1 8000)
            byteArray <- (StreamUtil.getByteArray ((jio (StreamUtil.getInstance))) (jget inputStream) outputStream (jnewArray (16384) 0))
            Control.Monad.void (HttpServletResponse.setContentType response "image/jpeg;charset=utf-8")
            Control.Monad.void (HttpServletResponse.write ((jio (HttpServletResponse.getOutputStream response))) byteArray)
        pure ()


-- throws ServletException, IOException
doGet :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet object_ a1 a2 = jmethod object_ "doGet" (\() -> (doGet_impl (javaCast object_ :: ImageServlet))) () a1 a2

doGet_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_super object_ a1 a2 = (doGet_impl (javaCast object_ :: ImageServlet)) a1 a2

doGet_impl :: ImageServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_impl this request response = do
        Control.Monad.void (ImageServlet.processRequest this request response)
        pure ()


-- throws ServletException, IOException
doPost :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost object_ a1 a2 = jmethod object_ "doPost" (\() -> (doPost_impl (javaCast object_ :: ImageServlet))) () a1 a2

doPost_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_super object_ a1 a2 = (doPost_impl (javaCast object_ :: ImageServlet)) a1 a2

doPost_impl :: ImageServlet -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_impl this request response = do
        Control.Monad.void (ImageServlet.processRequest this request response)
        pure ()


getServletInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo object_ = jmethod object_ "getServletInfo" (\() -> (getServletInfo_impl (javaCast object_ :: ImageServlet))) ()

getServletInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo_super object_ = (getServletInfo_impl (javaCast object_ :: ImageServlet))

getServletInfo_impl :: ImageServlet -> IO (String)
getServletInfo_impl this = do
        pure ("Serves Up Image")


