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
module StoreWorkFlowWrapper (module StoreWorkFlowWrapper, module WorkFlowWrapper) where

import WorkFlowWrapper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStoreName, getStoreName_super, getStoreName_impl, logUtil)
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
import qualified Class -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified WorkFlowWrapper

data StoreWorkFlowWrapper = StoreWorkFlowWrapper
    { header_ :: JavaHeader
    , base :: WorkFlowWrapper.WorkFlowWrapper
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreWorkFlowWrapper where
    javaNull = javaNullRecord "StoreWorkFlowWrapper"

instance JavaEquals StoreWorkFlowWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreWorkFlowWrapper where
    (==) = jrecordEquals

instance JavaObjectClass StoreWorkFlowWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreWorkFlowWrapper
newRecord_ = do
    base <- WorkFlowWrapper.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = StoreWorkFlowWrapper header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    pure this

initFields_ :: StoreWorkFlowWrapper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO StoreWorkFlowWrapper
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => StoreWorkFlowWrapper -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        WorkFlowWrapper.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: StoreWorkFlowWrapper))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: StoreWorkFlowWrapper))

getStoreName_impl :: StoreWorkFlowWrapper -> IO (String)
getStoreName_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Reflection Exception"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getStoreName()" e)
            javaThrow ((JavaException "Exception" error))
            ) $ do
            helperClass <- (jobjectGetClass (jio (WorkFlowWrapper.getWorkFlowObject this)))
            method <- (Class.getMethod helperClass "getStoreName" javaNull)
            let result = (javaCast (jio (Method.invoke method (jio (WorkFlowWrapper.getWorkFlowObject this)) javaNull)) :: String)
            pure (result)


