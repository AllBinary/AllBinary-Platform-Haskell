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
-- package org.allbinary.logic.control.workflow
module RequestWorkFlowFactory where

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
import qualified WorkFlowInterface -- same package or java.lang
import qualified WorkFlowData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified ServletConfig -- javax.servlet.ServletConfig
import qualified ServletContext -- javax.servlet.ServletContext
import qualified ServletRequest -- javax.servlet.ServletRequest
import qualified ServletResponse -- javax.servlet.ServletResponse
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified WorkFlowEntityFactory -- org.allbinary.data.tables.workflow.WorkFlowEntityFactory
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

data RequestWorkFlowFactory = RequestWorkFlowFactory
    { header_ :: JavaHeader
    }

instance JavaNull RequestWorkFlowFactory where
    javaNull = javaNullRecord "RequestWorkFlowFactory"

instance JavaEquals RequestWorkFlowFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RequestWorkFlowFactory where
    (==) = jrecordEquals

instance JavaObjectClass RequestWorkFlowFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RequestWorkFlowFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = RequestWorkFlowFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: RequestWorkFlowFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RequestWorkFlowFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RequestWorkFlowFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception, LicensingException
getInstance :: ServletRequest.ServletRequest -> ServletResponse.ServletResponse -> ServletConfig.ServletConfig -> ServletContext.ServletContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance request response servletConfig servletContext = do
        let httpRequest = (javaCast request :: HttpServletRequest.HttpServletRequest)
        requestCommand <- (HttpServletRequest.getPathInfo httpRequest)
        let index = (jstringIndexOf requestCommand (jget ((jio (AbPathData.getInstance))).sEPARATOR) 0)
        let storeName = (Prelude.take ((index) - (0)) (Prelude.drop (0) requestCommand))
        let requestName = (Prelude.take (((Prelude.length requestCommand)) - (index)) (Prelude.drop (index) requestCommand))
        (WorkFlowEntity.get ((jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))) requestName storeName)


-- throws Exception, LicensingException
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance hashMap pageContext = do
        let workFlowName = (javaCast (jio (PageContext.getParameter ((jio (PageContext.getRequest pageContext))) (jget ((jio (WorkFlowData.getInstance))).nAME))) :: String)
        weblisketSession <- (WeblisketSession.new_2 hashMap pageContext)
        storeName <- (WeblisketSession.getStoreName weblisketSession)
        (WorkFlowEntity.get ((jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))) workFlowName storeName)


