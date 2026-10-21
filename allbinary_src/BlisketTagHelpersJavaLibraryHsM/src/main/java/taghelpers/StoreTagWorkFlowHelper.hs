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
-- package taghelpers
module StoreTagWorkFlowHelper (module StoreTagWorkFlowHelper, module TagHelper) where

import TagHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, logUtil, abeClientInformation, storeWorkFlowInterface)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TagHelper -- admin.taghelpers.TagHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StoreTagWorkFlowFactory -- org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory
import qualified StoreWorkFlowInterface -- org.allbinary.logic.control.workflow.StoreWorkFlowInterface
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory

data StoreTagWorkFlowHelper = StoreTagWorkFlowHelper
    { header_ :: JavaHeader
    , base :: TagHelper.TagHelper
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , storeWorkFlowInterface :: IORef (StoreWorkFlowInterface.StoreWorkFlowInterface)
    }

instance JavaNull StoreTagWorkFlowHelper where
    javaNull = javaNullRecord "StoreTagWorkFlowHelper"

instance JavaEquals StoreTagWorkFlowHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreTagWorkFlowHelper where
    (==) = jrecordEquals

instance JavaObjectClass StoreTagWorkFlowHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreTagWorkFlowHelper
newRecord_ = do
    base <- TagHelper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    storeWorkFlowInterface <- newIORef javaNull
    let this = StoreTagWorkFlowHelper header_ base logUtil abeClientInformation storeWorkFlowInterface
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: StoreTagWorkFlowHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.storeWorkFlowInterface (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO StoreTagWorkFlowHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: StoreTagWorkFlowHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        TagHelper.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties: " ++ (jio (HashMap.toString hashMap))) this "StoreTagWorkFlowHelper()")
        assignedValue <- (StoreTagWorkFlowFactory.getInstance ((jio (StoreTagWorkFlowFactory.getInstance))) (jget (this).abeClientInformation) hashMap pageContext)
        jset (this).storeWorkFlowInterface (assignedValue)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (Int)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: StoreTagWorkFlowHelper))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Int)
process_super object_ = (process_impl (javaCast object_ :: StoreTagWorkFlowHelper))

process_impl :: StoreTagWorkFlowHelper -> IO (Int)
process_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to process workflow: "
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Process" this (jget ((jget (this).base.commonStrings)).pROCESS))
            (StoreWorkFlowInterface.process ((jget (this).storeWorkFlowInterface)))


