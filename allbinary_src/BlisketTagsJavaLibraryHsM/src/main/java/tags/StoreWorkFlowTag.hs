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
-- package tags
module StoreWorkFlowTag (module StoreWorkFlowTag, module HelperTag) where

import HelperTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setName, setName_super, setName_impl, process, process_super, process_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, viewName, viewFile)
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
import qualified Class -- same package or java.lang
import qualified TagStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified StoreTagWorkFlowHelperFactory -- taghelpers.StoreTagWorkFlowHelperFactory
import qualified HelperTag

data StoreWorkFlowTag = StoreWorkFlowTag
    { header_ :: JavaHeader
    , base :: HelperTag.HelperTag
    , logUtil :: IORef (LogUtil.LogUtil)
    , viewName :: IORef (String)
    , viewFile :: IORef (String)
    }

instance JavaNull StoreWorkFlowTag where
    javaNull = javaNullRecord "StoreWorkFlowTag"

instance JavaEquals StoreWorkFlowTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreWorkFlowTag where
    (==) = jrecordEquals

instance JavaObjectClass StoreWorkFlowTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreWorkFlowTag
newRecord_ = do
    base <- HelperTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    viewName <- newIORef ""
    viewFile <- newIORef ""
    let this = StoreWorkFlowTag header_ base logUtil viewName viewFile
    jregisterLevel header_ this
    jregisterMethod header_ "setName" (\() -> setName_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: StoreWorkFlowTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.viewName ("")
    jset this.viewFile ("")
    pure ()

new_ :: IO StoreWorkFlowTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreWorkFlowTag -> IO ()
init_ this = do
        HelperTag.init_1 this.base (jio (StoreTagWorkFlowHelperFactory.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


setName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName object_ a1 = jmethod object_ "setName" (\() -> (setName_impl (javaCast object_ :: StoreWorkFlowTag))) () a1

setName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setName_super object_ a1 = (setName_impl (javaCast object_ :: StoreWorkFlowTag)) a1

setName_impl :: StoreWorkFlowTag -> String -> IO (())
setName_impl this value = do
        jset (this).viewName (value)
        Control.Monad.void (HashMap.put ((jio (HelperTag.getPropertiesHashMap this))) (jget ((jio (TransformInfoData.getInstance))).nAME) (jget (this).viewName))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (Int)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: StoreWorkFlowTag))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Int)
process_super object_ = (process_impl (javaCast object_ :: StoreWorkFlowTag))

process_impl :: StoreWorkFlowTag -> IO (Int)
process_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.base.base.commonStrings)).pROCESS) e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.base.base.commonStrings)).pROCESS))
            helperClass <- (jobjectGetClass (jio (HelperTag.getHelper this)))
            method <- (Class.getMethod helperClass (jget ((jget this.base.base.base.base.commonStrings)).pROCESS) javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (HelperTag.getHelper this)) javaNull)) :: Int)
            pure (result)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: StoreWorkFlowTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: StoreWorkFlowTag))

doStartTag_impl :: StoreWorkFlowTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPTAG))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.commonStrings)).sTART) this (jget ((jget this.base.base.base.tagStrings)).dO_START_TAG))
            Control.Monad.void (HelperTag.setHelper this)
            (StoreWorkFlowTag.process this)


