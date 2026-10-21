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
-- package org.allbinary.input.automation.module.osgi
module InputAutomationModuleOSGIServiceVisitor where

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
import qualified InputAutomationModuleService -- bundle.input.automation.module.InputAutomationModuleService
import qualified InputAutomationJFrame -- org.allbinary.input.automation.InputAutomationJFrame
import qualified InputAutomationConfigurationUtil -- org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil
import qualified InputAutomationModuleFactoryInterface -- org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified OSGIServiceInterface -- org.allbinary.osgi.OSGIServiceInterface
import qualified OSGIServiceVisitorInterface -- org.allbinary.osgi.OSGIServiceVisitorInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements OSGIServiceVisitorInterface
data InputAutomationModuleOSGIServiceVisitor = InputAutomationModuleOSGIServiceVisitor
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull InputAutomationModuleOSGIServiceVisitor where
    javaNull = javaNullRecord "InputAutomationModuleOSGIServiceVisitor"

instance JavaEquals InputAutomationModuleOSGIServiceVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputAutomationModuleOSGIServiceVisitor where
    (==) = jrecordEquals

instance JavaObjectClass InputAutomationModuleOSGIServiceVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputAutomationModuleOSGIServiceVisitor
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = InputAutomationModuleOSGIServiceVisitor header_ logUtil commonStrings
    jregisterLevel header_ this
    OSGIServiceVisitorInterface.registerInterface_ header_
    jregisterMethod header_ "visit_overload1" (\() -> visit_overload1_impl this)
    jregisterMethod header_ "visit_overload2" (\() -> visit_overload2_impl this)
    pure this

initFields_ :: InputAutomationModuleOSGIServiceVisitor -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO InputAutomationModuleOSGIServiceVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputAutomationModuleOSGIServiceVisitor -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of visit: calls the overload for the types of the arguments
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit this a1
    | jisInstanceOf a1 (javaNull :: OSGIServiceInterface.OSGIServiceInterface) = visit_overload2 this (javaCast a1 :: OSGIServiceInterface.OSGIServiceInterface)
    | otherwise = visit_overload1 this a1

visit_overload1 :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1 object_ a1 = jmethod object_ "visit_overload1" (\() -> (visit_overload1_impl (javaCast object_ :: InputAutomationModuleOSGIServiceVisitor))) () (jtoObject a1)

visit_overload1_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Any.Any)
visit_overload1_super object_ a1 = (visit_overload1_impl (javaCast object_ :: InputAutomationModuleOSGIServiceVisitor)) (jtoObject a1)

visit_overload1_impl :: InputAutomationModuleOSGIServiceVisitor -> JavaObject -> IO (Any.Any)
visit_overload1_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        (fmap jtoObject (InputAutomationModuleOSGIServiceVisitor.visit this (javaCast anyType :: OSGIServiceInterface.OSGIServiceInterface)))


visit_overload2 :: (JavaObjectClass this_) => this_ -> OSGIServiceInterface.OSGIServiceInterface -> IO (Bool)
visit_overload2 object_ a1 = jmethod object_ "visit_overload2" (\() -> (visit_overload2_impl (javaCast object_ :: InputAutomationModuleOSGIServiceVisitor))) () a1

visit_overload2_super :: (JavaObjectClass this_) => this_ -> OSGIServiceInterface.OSGIServiceInterface -> IO (Bool)
visit_overload2_super object_ a1 = (visit_overload2_impl (javaCast object_ :: InputAutomationModuleOSGIServiceVisitor)) a1

visit_overload2_impl :: InputAutomationModuleOSGIServiceVisitor -> OSGIServiceInterface.OSGIServiceInterface -> IO (Bool)
visit_overload2_impl this osgiServiceInterface = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "visit" e)
            pure (False)
            ) $ do
            let inputAutomationModuleService = (javaCast osgiServiceInterface :: InputAutomationModuleService.InputAutomationModuleService)
            inputAutomationModuleInterfaceArray <- (InputAutomationModuleService.getInputAutomationModuleInterfaceArray inputAutomationModuleService)
            forM_ [0 .. (jlength inputAutomationModuleInterfaceArray) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (InputAutomationJFrame.onAdd ((jio (InputAutomationJFrame.getInstance))) (jio (InputAutomationConfigurationUtil.getChangeEvent (jindex inputAutomationModuleInterfaceArray (index)))))
            pure (True)


