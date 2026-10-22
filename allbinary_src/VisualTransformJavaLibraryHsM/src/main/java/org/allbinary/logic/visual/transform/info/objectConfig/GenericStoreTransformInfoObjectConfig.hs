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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module GenericStoreTransformInfoObjectConfig (module GenericStoreTransformInfoObjectConfig, module TransformInfoObjectConfig) where

import TransformInfoObjectConfig hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, generate, generate_super, generate_impl, createReplaceHashMap, createReplaceHashMap_super, createReplaceHashMap_impl, createHashMap, createHashMap_super, createHashMap_impl, generate_2, generate_2_super, generate_2_impl, generate, logUtil, abeClientInformation)
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
import qualified TransformInfoObjectConfigData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified RootTransformInfoData -- org.allbinary.logic.visual.transform.info.RootTransformInfoData
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoHttp -- org.allbinary.logic.visual.transform.info.TransformInfoHttp
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformTemplateFactory -- org.allbinary.logic.visual.transform.template.TransformTemplateFactory
import qualified TransformTemplateInterface -- org.allbinary.logic.visual.transform.template.TransformTemplateInterface
import qualified TransformTemplateCustomizerUtil -- org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified TransformInfoObjectConfig

data GenericStoreTransformInfoObjectConfig = GenericStoreTransformInfoObjectConfig
    { header_ :: JavaHeader
    , base :: TransformInfoObjectConfig.TransformInfoObjectConfig
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    }

instance JavaNull GenericStoreTransformInfoObjectConfig where
    javaNull = javaNullRecord "GenericStoreTransformInfoObjectConfig"

instance JavaEquals GenericStoreTransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericStoreTransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass GenericStoreTransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericStoreTransformInfoObjectConfig
newRecord_ = do
    base <- TransformInfoObjectConfig.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    let this = GenericStoreTransformInfoObjectConfig header_ base logUtil abeClientInformation
    jregisterLevel header_ this
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    jregisterMethod header_ "createReplaceHashMap" (\() -> createReplaceHashMap_impl this)
    jregisterMethod header_ "createHashMap" (\() -> createHashMap_impl this)
    jregisterMethod header_ "generate_2" (\() -> generate_2_impl this)
    pure this

initFields_ :: GenericStoreTransformInfoObjectConfig -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation (javaNull)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO GenericStoreTransformInfoObjectConfig
new_2 abeClientInformation transformInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation transformInfoInterface
    pure this

init_2 :: GenericStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_2 this abeClientInformation transformInfoInterface = do
        TransformInfoObjectConfig.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        pure ()

new_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO GenericStoreTransformInfoObjectConfig
new_3 abeClientInformation transformInfoInterface document = do
    this <- newRecord_
    init_3 this abeClientInformation transformInfoInterface document
    pure this

init_3 :: GenericStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_3 this abeClientInformation transformInfoInterface document = do
        TransformInfoObjectConfig.init_2 this.base (transformInfoInterface) (document)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        Control.Monad.void (TransformInfoObjectConfig.setDocument this (jio (GenericStoreTransformInfoObjectConfig.generate this (jio (TransformInfoObjectConfig.toXmlDoc this)))))
        pure ()

new_4 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO GenericStoreTransformInfoObjectConfig
new_4 abeClientInformation transformInfoInterface name type_ = do
    this <- newRecord_
    init_4 this abeClientInformation transformInfoInterface name type_
    pure this

init_4 :: GenericStoreTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_4 this abeClientInformation transformInfoInterface name type_ = do
        TransformInfoObjectConfig.init_3 this.base (transformInfoInterface) (name) (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).abeClientInformation (abeClientInformation)
        Control.Monad.void (TransformInfoObjectConfig.setDocument this (jio (GenericStoreTransformInfoObjectConfig.generate this (jio (TransformInfoObjectConfig.toXmlDoc this)))))
        pure ()


-- throws Exception
generate :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate object_ a1 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig))) () a1

generate_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate_super object_ a1 = (generate_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig)) a1

generate_impl :: GenericStoreTransformInfoObjectConfig -> Document.Document -> IO (Document.Document)
generate_impl this objectConfigDocument = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "TransformInfo: ")
            if ((jio (TransformInfoObjectConfig.getTransformInfoInterface this)) /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer "No Owner!?#@")
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "generate()")
        let transformInfoHttpStoreInterface = (javaCast (jio (TransformInfoObjectConfig.getTransformInfoInterface this)) :: TransformInfoHttp.TransformInfoHttp)
        objectConfigDocumentString <- (XmlDocumentHelper.toString objectConfigDocument)
        replaceHashMap <- (GenericStoreTransformInfoObjectConfig.createReplaceHashMap this transformInfoHttpStoreInterface objectConfigDocumentString)
        (GenericStoreTransformInfoObjectConfig.generate_2 this objectConfigDocumentString replaceHashMap)


-- throws Exception
createReplaceHashMap :: (JavaObjectClass this_) => this_ -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createReplaceHashMap object_ a1 a2 = jmethod object_ "createReplaceHashMap" (\() -> (createReplaceHashMap_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig))) () a1 a2

createReplaceHashMap_super :: (JavaObjectClass this_) => this_ -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createReplaceHashMap_super object_ a1 a2 = (createReplaceHashMap_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig)) a1 a2

createReplaceHashMap_impl :: GenericStoreTransformInfoObjectConfig -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createReplaceHashMap_impl this transformInfoHttpStoreInterface objectConfigDocumentString = do
        storeName <- (TransformInfoHttp.getStoreName transformInfoHttpStoreInterface)
        hashMap <- (GenericStoreTransformInfoObjectConfig.createHashMap this transformInfoHttpStoreInterface objectConfigDocumentString)
        transformInfoObjectConfigData <- (TransformInfoObjectConfigData.getInstance)
        Control.Monad.void (HashMap.put hashMap ((jget (transformInfoObjectConfigData).vARKEY) + (jget ((jio (StoreFrontData.getInstance))).nAME)) storeName)
        pageName <- (TransformTemplateCustomizerUtil.getPageNameHack ((jio (TransformTemplateCustomizerUtil.getInstance))) (jio (TransformInfoInterface.getName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))) storeName)
        Control.Monad.void (HashMap.put hashMap ((jget (transformInfoObjectConfigData).vARKEY) + (jget ((jio (TransformInfoData.getInstance))).pARTIAL)) pageName)
        pure (hashMap)


-- throws Exception
createHashMap :: (JavaObjectClass this_) => this_ -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createHashMap object_ a1 a2 = jmethod object_ "createHashMap" (\() -> (createHashMap_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig))) () a1 a2

createHashMap_super :: (JavaObjectClass this_) => this_ -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createHashMap_super object_ a1 a2 = (createHashMap_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig)) a1 a2

createHashMap_impl :: GenericStoreTransformInfoObjectConfig -> TransformInfoHttp.TransformInfoHttp -> String -> IO (HashMap.HashMap)
createHashMap_impl this transformInfoHttpStoreInterface objectConfigDocumentString = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        storeName <- (TransformInfoHttp.getStoreName transformInfoHttpStoreInterface)
        propertiesHashMap <- (TransformInfoHttp.getPropertiesHashMap transformInfoHttpStoreInterface)
        templateNameOverride <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (TransformInfoData.getInstance))).pARTIAL))) :: String))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("TemplateNameOverride: " ++ templateNameOverride) this "generate()")
        templateNameStringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append templateNameStringBuffer storeName)
        Control.Monad.void (StringMaker.append templateNameStringBuffer templateNameOverride)
        Control.Monad.void (StringMaker.append templateNameStringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append templateNameStringBuffer (RootTransformInfoData.nAME))
        let templateNameKey = ((jget ((jio (TransformInfoObjectConfigData.getInstance))).vARKEY) + (jget ((jio (TransformInfoData.getInstance))).oWNER))
        when ((jstringIndexOf objectConfigDocumentString templateNameKey 0) /= (Prelude.negate 1)) $ do
            templateInterface <- (fmap (\value_ -> javaCast value_ :: TransformTemplateInterface.TransformTemplateInterface) (TransformTemplateFactory.getInstance_4 ((jio (TransformTemplateFactory.getInstance))) (jget (this).abeClientInformation) (jio (StringMaker.toString templateNameStringBuffer)) (jio (TransformInfoHttp.getPropertiesHashMap transformInfoHttpStoreInterface)) (jio (TransformInfoHttp.getPageContext transformInfoHttpStoreInterface))))
            selectedTemplate <- (TransformTemplateInterface.getName templateInterface)
            Control.Monad.void (HashMap.put hashMap templateNameKey selectedTemplate)
        pure (hashMap)


-- throws Exception
generate_2 :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (Document.Document)
generate_2 object_ a1 a2 = jmethod object_ "generate_2" (\() -> (generate_2_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig))) () a1 a2

generate_2_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (Document.Document)
generate_2_super object_ a1 a2 = (generate_2_impl (javaCast object_ :: GenericStoreTransformInfoObjectConfig)) a1 a2

generate_2_impl :: GenericStoreTransformInfoObjectConfig -> String -> HashMap.HashMap -> IO (Document.Document)
generate_2_impl this objectConfigDocumentString hashMap = do
        replace <- (Replace.new_1 hashMap)
        newObjectConfigDocument <- (DomDocumentHelper.create_1 (jio (Replace.all replace objectConfigDocumentString)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Final ObjectConfig: " ++ (jio (XmlDocumentHelper.toString newObjectConfigDocument))) this "generate()")
        pure (newObjectConfigDocument)


