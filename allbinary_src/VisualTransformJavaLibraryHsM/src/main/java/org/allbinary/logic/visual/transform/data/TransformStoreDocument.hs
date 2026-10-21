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
-- package org.allbinary.logic.visual.transform.data
module TransformStoreDocument (module TransformStoreDocument, module TransformHttpRequestDocument) where

import TransformHttpRequestDocument hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, logUtil)
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
import qualified CommonStrings -- same package or java.lang
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontViewFactory -- org.allbinary.business.context.modules.storefront.StoreFrontViewFactory
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified TransformHttpRequestDocument

data TransformStoreDocument = TransformStoreDocument
    { header_ :: JavaHeader
    , base :: TransformHttpRequestDocument.TransformHttpRequestDocument
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformStoreDocument where
    javaNull = javaNullRecord "TransformStoreDocument"

instance JavaEquals TransformStoreDocument where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformStoreDocument where
    (==) = jrecordEquals

instance JavaObjectClass TransformStoreDocument where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformStoreDocument
newRecord_ = do
    base <- TransformHttpRequestDocument.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TransformStoreDocument header_ base logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: TransformStoreDocument -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_2 :: PageContext.PageContext -> WeblisketSession.WeblisketSession -> IO TransformStoreDocument
new_2 pageContext weblisketSession = do
    this <- newRecord_
    init_2 this pageContext weblisketSession
    pure this

init_2 :: TransformStoreDocument -> PageContext.PageContext -> WeblisketSession.WeblisketSession -> IO ()
init_2 this pageContext weblisketSession = do
        TransformHttpRequestDocument.init_2 this.base (pageContext) (weblisketSession)
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            storeName <- (WeblisketSession.getStoreName weblisketSession)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Using Session StoreName: " ++ storeName) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
            Control.Monad.void (Node.appendChild ((jio (TransformHttpRequestDocument.getBaseNode this))) (jio (DomNodeInterface.toXmlNode ((jio (StoreFrontViewFactory.getInstance storeName))) (jio (TransformHttpRequestDocument.getDoc this)))))
            Control.Monad.void (Node.appendChild ((jio (TransformHttpRequestDocument.getBaseNode this))) (jio (RequestParams.toXmlNode ((jio (RequestParams.new_1 (javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest)))) (jio (TransformHttpRequestDocument.getDoc this)))))
        pure ()

new_1 :: SearchRequest.SearchRequest -> IO TransformStoreDocument
new_1 searchRequest = do
    this <- newRecord_
    init_1 this searchRequest
    pure this

init_1 :: TransformStoreDocument -> SearchRequest.SearchRequest -> IO ()
init_1 this searchRequest = do
        TransformHttpRequestDocument.init_1 this.base (searchRequest)
        initFields_ this
        pure () -- super(...) is in the record above
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR) e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (Node.appendChild ((jio (TransformHttpRequestDocument.getBaseNode this))) (jio (DomNodeInterface.toXmlNode ((jio (StoreFrontViewFactory.getInstance (jio (StoreFrontInterface.getName ((jio (SearchRequest.getStoreFront searchRequest)))))))) (jio (TransformHttpRequestDocument.getDoc this)))))
            Control.Monad.void (Node.appendChild ((jio (TransformHttpRequestDocument.getBaseNode this))) (jio (SearchParams.getParamsNode ((jio (SearchRequest.getParams searchRequest))) (jio (TransformHttpRequestDocument.getDoc this)))))
        pure ()


