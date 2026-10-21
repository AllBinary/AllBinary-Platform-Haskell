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
-- package workflows.template.data
module BasicWorkFlow where

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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TagSupport -- javax.servlet.jsp.tagext.TagSupport
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified WorkFlowData -- org.allbinary.logic.control.workflow.WorkFlowData
import qualified WorkFlowInterface -- org.allbinary.logic.control.workflow.WorkFlowInterface
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements WorkFlowInterface
data BasicWorkFlow = BasicWorkFlow
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , validationDomNodeInterface :: IORef (ValidationComponentInterface.ValidationComponentInterface)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    , pageContext :: IORef (PageContext.PageContext)
    }

instance JavaNull BasicWorkFlow where
    javaNull = javaNullRecord "BasicWorkFlow"

instance JavaEquals BasicWorkFlow where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWorkFlow where
    (==) = jrecordEquals

instance JavaObjectClass BasicWorkFlow where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicWorkFlow
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    validationDomNodeInterface <- newIORef javaNull
    propertiesHashMap <- newIORef javaNull
    pageContext <- newIORef javaNull
    let this = BasicWorkFlow header_ logUtil commonStrings abeClientInformation validationDomNodeInterface propertiesHashMap pageContext
    jregisterLevel header_ this
    WorkFlowInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getPropertiesHashMap" (\() -> getPropertiesHashMap_impl this)
    jregisterMethod header_ "getPageContext" (\() -> getPageContext_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: BasicWorkFlow -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.validationDomNodeInterface (javaNull)
    jset this.propertiesHashMap (javaNull)
    jset this.pageContext (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasicWorkFlow
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: BasicWorkFlow -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).wORKFLOW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Properties: " ++ (jio (HashMap.toString propertiesHashMap))) this "BasicWorkFlow()")
        jset (this).propertiesHashMap (propertiesHashMap)
        jset (this).pageContext (pageContext)
        jset (this).validationDomNodeInterface ((javaCast (jio (TransformFactory.getInstance ((jio (TransformFactory.getInstance))) (jget (this).abeClientInformation) propertiesHashMap pageContext)) :: ValidationComponentInterface.ValidationComponentInterface))
        pure ()


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicWorkFlow))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicWorkFlow))

getName_impl :: BasicWorkFlow -> IO (String)
getName_impl this = do
        pure ((javaCast (jio (HashMap.get ((jio (BasicWorkFlow.getPropertiesHashMap this))) (jget ((jio (WorkFlowData.getInstance))).nAME))) :: String))


getPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap object_ = jmethod object_ "getPropertiesHashMap" (\() -> (getPropertiesHashMap_impl (javaCast object_ :: BasicWorkFlow))) ()

getPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getPropertiesHashMap_super object_ = (getPropertiesHashMap_impl (javaCast object_ :: BasicWorkFlow))

getPropertiesHashMap_impl :: BasicWorkFlow -> IO (HashMap.HashMap)
getPropertiesHashMap_impl this = do
        pure ((jget (this).propertiesHashMap))


getPageContext :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext object_ = jmethod object_ "getPageContext" (\() -> (getPageContext_impl (javaCast object_ :: BasicWorkFlow))) ()

getPageContext_super :: (JavaObjectClass this_) => this_ -> IO (PageContext.PageContext)
getPageContext_super object_ = (getPageContext_impl (javaCast object_ :: BasicWorkFlow))

getPageContext_impl :: BasicWorkFlow -> IO (PageContext.PageContext)
getPageContext_impl this = do
        pure ((jget (this).pageContext))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (Int)
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicWorkFlow))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (Int)
process_super object_ = (process_impl (javaCast object_ :: BasicWorkFlow))

process_impl :: BasicWorkFlow -> IO (Int)
process_impl this = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).wORKFLOW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).pROCESS))
        if (jio (ValidationComponentInterface.booleanValue ((jio (ValidationComponentInterface.isValid ((jget (this).validationDomNodeInterface))))))) then do
            Control.Monad.void (PageContext.print ((jio (PageContext.getOut ((jget (this).pageContext))))) (jio (ValidationComponentInterface.view ((jget (this).validationDomNodeInterface)))))
            javaReturn ((javaToString (TagSupport.eVAL_BODY_INCLUDE)))
        else do
            Control.Monad.void (PageContext.print ((jio (PageContext.getOut ((jget (this).pageContext))))) (jio (ValidationComponentInterface.validationInfo ((jget (this).validationDomNodeInterface)))))
            javaReturn ((javaToString (TagSupport.sKIP_BODY)))


