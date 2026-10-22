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
-- package views.admin.workflow
module NewView (module NewView, module WorkFlowView) where

import WorkFlowView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil, abeClientInformation)
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
import qualified CommonStrings -- same package or java.lang
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified NewWorkFlowFactory -- org.allbinary.logic.control.workflow.NewWorkFlowFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified WorkFlowView

-- implements ValidationComponentInterface
data NewView = NewView
    { header_ :: JavaHeader
    , base :: WorkFlowView.WorkFlowView
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    }

instance JavaNull NewView where
    javaNull = javaNullRecord "NewView"

instance JavaEquals NewView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NewView where
    (==) = jrecordEquals

instance JavaObjectClass NewView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NewView
newRecord_ = do
    base <- WorkFlowView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    let this = NewView header_ base logUtil abeClientInformation
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: NewView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO NewView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: NewView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        WorkFlowView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        let httpTransformInfoInterface = (javaCast (jio (WorkFlowView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        assignedValue <- (NewWorkFlowFactory.getInstance_2 ((jio (NewWorkFlowFactory.getInstance))) (jget (this).abeClientInformation) (javaCast (jio (TransformInfoHttpInterface.get ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (DynamicObjectData.nAME))) :: String))
        jset (this).base.workFlowInterface (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: NewView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: NewView))

isValid_impl :: NewView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: NewView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: NewView))

validationInfo_impl :: NewView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Please Contact Administrator")
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: NewView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: NewView))

toValidationInfoDoc_impl :: NewView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: NewView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: NewView)) a1

toValidationInfoNode_impl :: NewView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


