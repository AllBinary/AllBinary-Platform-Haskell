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
module AbResponseHandler where

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
import qualified BasicArrayList -- same package or java.lang
import qualified RequestDispatcher -- javax.servlet.RequestDispatcher
import qualified ServletException -- javax.servlet.ServletException
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified HttpServletResponse -- javax.servlet.http.HttpServletResponse
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes

data AbResponseHandler = AbResponseHandler
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull AbResponseHandler where
    javaNull = javaNullRecord "AbResponseHandler"

instance JavaEquals AbResponseHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbResponseHandler where
    (==) = jrecordEquals

instance JavaObjectClass AbResponseHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbResponseHandler
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = AbResponseHandler header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: AbResponseHandler -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO AbResponseHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbResponseHandler -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws JspTagException
sendJspTagRedirect :: PageContext.PageContext -> JavaException -> IO (())
sendJspTagRedirect pageContext e = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e2 :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).lICENSINGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Exception in Redirect Handling" "AbResponseHandler" "sendJspRedirect" e)
            javaThrow ((JavaException "JspTagException" ""))
            ) $ do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Jsp Tag Exception" "AbResponseHandler" "sendJspRedirect()" e)
            Control.Monad.void (AbResponseHandler.sendRedirect pageContext (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).eRRORPAGE))
        pure ()


-- throws ServletException
sendServletRedirect :: PageContext.PageContext -> JavaException -> IO (())
sendServletRedirect pageContext e = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e2 :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).lICENSINGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Exception in Redirect Handling" "AbResponseHandler" "sendJspRedirect" e)
            javaThrow ((JavaException "ServletException" ""))
            ) $ do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Jsp Tag Exception" "AbResponseHandler" "sendJspRedirect()" e)
            Control.Monad.void (AbResponseHandler.sendRedirect pageContext (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).eRRORPAGE))
        pure ()


-- throws JspTagException
sendJspTagLicensingRedirect :: PageContext.PageContext -> JavaException -> IO (())
sendJspTagLicensingRedirect pageContext e = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e2 :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).lICENSINGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Exception in Redirect Handling" "AbResponseHandler" "sendJspTagLicensingRedirect" e)
            javaThrow ((JavaException "JspTagException" ""))
            ) $ do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Licensing Exception" "AbResponseHandler" "sendJspTagLicensingRedirect()" e)
            Control.Monad.void (AbResponseHandler.sendRedirect pageContext (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).lICENSEERRORPAGE))
        pure ()


-- throws ServletException
sendServletLicensingRedirect :: PageContext.PageContext -> JavaException -> IO (())
sendServletLicensingRedirect pageContext e = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e2 :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).lICENSINGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Exception in Redirect Handling" "AbResponseHandler" "sendServletLicensingRedirect" e)
            javaThrow ((JavaException "ServletException" ""))
            ) $ do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).jSPTAGERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil "Licensing Exception" "AbResponseHandler" "sendServletLicensingRedirect()" e)
            Control.Monad.void (AbResponseHandler.sendRedirect pageContext (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).lICENSEERRORPAGE))
        pure ()


-- throws Exception
sendRedirect :: PageContext.PageContext -> String -> IO (())
sendRedirect pageContext page = do
        let request = (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)
        let response = (javaCast (jio (PageContext.getResponse pageContext)) :: HttpServletResponse.HttpServletResponse)
        requestDispatcher <- (HttpServletRequest.getRequestDispatcher request page)
        if (jio (HttpServletResponse.isCommitted response)) then do
            Control.Monad.void (HttpServletResponse.sendRedirect response page)
        else do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (PageContext.print ((jio (PageContext.getOut pageContext))) ("Error: " ++ page))
                ) $ do
                Control.Monad.void (RequestDispatcher.forward requestDispatcher request response)
        pure ()


