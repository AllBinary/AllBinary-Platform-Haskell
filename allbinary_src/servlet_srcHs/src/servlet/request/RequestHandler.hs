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
-- package servlet.request
module RequestHandler (module RequestHandler, module HttpServlet) where

import HttpServlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, destroy, destroy_super, destroy_impl, processRequest, processRequest_super, processRequest_impl, doGet, doGet_super, doGet_impl, doPost, doPost_super, doPost_impl, getServletInfo, getServletInfo_super, getServletInfo_impl, logUtil)
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
import qualified ServletConfig -- same package or java.lang
import qualified PrintWriter -- same package or java.lang
import qualified ServletRequest -- same package or java.lang
import qualified ServletResponse -- same package or java.lang
import qualified HttpServletRequest -- same package or java.lang
import qualified HttpServletResponse -- same package or java.lang
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified WorkFlowInterface -- org.allbinary.logic.control.workflow.WorkFlowInterface
import qualified RequestWorkFlowFactory -- org.allbinary.logic.control.workflow.RequestWorkFlowFactory
-- import java.io.*
-- import java.net.*
-- import javax.servlet.*
-- import javax.servlet.http.*
import qualified HttpServlet

data RequestHandler = RequestHandler
    { header_ :: JavaHeader
    , base :: HttpServlet.HttpServlet
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull RequestHandler where
    javaNull = javaNullRecord "RequestHandler"

instance JavaEquals RequestHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RequestHandler where
    (==) = jrecordEquals

instance JavaObjectClass RequestHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RequestHandler
newRecord_ = do
    base <- HttpServlet.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = RequestHandler header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "destroy" (\() -> destroy_impl this)
    jregisterMethod header_ "processRequest" (\() -> processRequest_impl this)
    jregisterMethod header_ "doGet" (\() -> doGet_impl this)
    jregisterMethod header_ "doPost" (\() -> doPost_impl this)
    jregisterMethod header_ "getServletInfo" (\() -> getServletInfo_impl this)
    pure this

initFields_ :: RequestHandler -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO RequestHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RequestHandler -> IO ()
init_ this = do
    HttpServlet.init_ this.base
    initFields_ this


-- throws ServletException
init :: (JavaObjectClass this_) => this_ -> ServletConfig.ServletConfig -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: RequestHandler))) () a1

init_super :: (JavaObjectClass this_) => this_ -> ServletConfig.ServletConfig -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: RequestHandler)) a1

init_impl :: RequestHandler -> ServletConfig.ServletConfig -> IO (())
init_impl this config = do
        Control.Monad.void (HttpServlet.init_super this.base config)
        pure ()


destroy :: (JavaObjectClass this_) => this_ -> IO (())
destroy object_ = jmethod object_ "destroy" (\() -> (destroy_impl (javaCast object_ :: RequestHandler))) ()

destroy_super :: (JavaObjectClass this_) => this_ -> IO (())
destroy_super object_ = (destroy_impl (javaCast object_ :: RequestHandler))

destroy_impl :: RequestHandler -> IO (())
destroy_impl this = do
        pure ()


-- throws ServletException, IOException
processRequest :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest object_ a1 a2 = jmethod object_ "processRequest" (\() -> (processRequest_impl (javaCast object_ :: RequestHandler))) () a1 a2

processRequest_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_super object_ a1 a2 = (processRequest_impl (javaCast object_ :: RequestHandler)) a1 a2

processRequest_impl :: RequestHandler -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
processRequest_impl this request response = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sERVLETERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Servlet LicensingException" this "processRequest()" e)
            Control.Monad.void (HttpServletResponse.sendRedirect response (jget ((jget ((jget ((jget this.base.abcs)).globals)).uRLGLOBALS)).lICENSEERRORPAGE))
            ) $ do
            Control.Monad.void (HttpServletResponse.setContentType response "text/html")
            out <- (HttpServletResponse.getWriter response)
            workflowInterface <- (RequestWorkFlowFactory.getInstance (javaCast request :: ServletRequest.ServletRequest) (javaCast response :: ServletResponse.ServletResponse) (jio (HttpServlet.getServletConfig this)) (jio (HttpServlet.getServletContext this)))
            when (workflowInterface /= javaNull) $ do
                Control.Monad.void (PrintWriter.print out (jio (WorkFlowInterface.process workflowInterface)))
            Control.Monad.void (PrintWriter.flush out)
            Control.Monad.void (PrintWriter.close out)
        pure ()


-- throws ServletException, IOException
doGet :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet object_ a1 a2 = jmethod object_ "doGet" (\() -> (doGet_impl (javaCast object_ :: RequestHandler))) () a1 a2

doGet_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_super object_ a1 a2 = (doGet_impl (javaCast object_ :: RequestHandler)) a1 a2

doGet_impl :: RequestHandler -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doGet_impl this request response = do
        Control.Monad.void (RequestHandler.processRequest this request response)
        pure ()


-- throws ServletException, IOException
doPost :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost object_ a1 a2 = jmethod object_ "doPost" (\() -> (doPost_impl (javaCast object_ :: RequestHandler))) () a1 a2

doPost_super :: (JavaObjectClass this_) => this_ -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_super object_ a1 a2 = (doPost_impl (javaCast object_ :: RequestHandler)) a1 a2

doPost_impl :: RequestHandler -> HttpServletRequest.HttpServletRequest -> HttpServletResponse.HttpServletResponse -> IO (())
doPost_impl this request response = do
        Control.Monad.void (RequestHandler.processRequest this request response)
        pure ()


getServletInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo object_ = jmethod object_ "getServletInfo" (\() -> (getServletInfo_impl (javaCast object_ :: RequestHandler))) ()

getServletInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getServletInfo_super object_ = (getServletInfo_impl (javaCast object_ :: RequestHandler))

getServletInfo_impl :: RequestHandler -> IO (String)
getServletInfo_impl this = do
        pure ("WorkFlow Request Handler")


