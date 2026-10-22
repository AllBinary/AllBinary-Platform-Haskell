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
-- package views.compound.objectConfig
module CompoundContextTransformInfoObjectConfig (module CompoundContextTransformInfoObjectConfig, module GenericStoreTransformInfoObjectConfig) where

import GenericStoreTransformInfoObjectConfig hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, createInputStream, createInputStream_super, createInputStream_impl, logUtil)
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
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified InputStream -- java.io.InputStream
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DocumentToNode -- org.allbinary.data.tree.dom.document.DocumentToNode
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified RootTransformInfoData -- org.allbinary.logic.visual.transform.info.RootTransformInfoData
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoDomNode -- org.allbinary.logic.visual.transform.info.TransformInfoDomNode
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified GenericStoreTransformInfoObjectConfig -- org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document

data CompoundContextTransformInfoObjectConfig = CompoundContextTransformInfoObjectConfig
    { header_ :: JavaHeader
    , base :: GenericStoreTransformInfoObjectConfig.GenericStoreTransformInfoObjectConfig
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CompoundContextTransformInfoObjectConfig where
    javaNull = javaNullRecord "CompoundContextTransformInfoObjectConfig"

instance JavaEquals CompoundContextTransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundContextTransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass CompoundContextTransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompoundContextTransformInfoObjectConfig
newRecord_ = do
    base <- GenericStoreTransformInfoObjectConfig.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = CompoundContextTransformInfoObjectConfig header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "createInputStream" (\() -> createInputStream_impl this)
    pure this

initFields_ :: CompoundContextTransformInfoObjectConfig -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO CompoundContextTransformInfoObjectConfig
new_2 abeClientInformation transformInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation transformInfoInterface
    pure this

init_2 :: CompoundContextTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_2 this abeClientInformation transformInfoInterface = do
        GenericStoreTransformInfoObjectConfig.init_2 this.base (abeClientInformation) (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO CompoundContextTransformInfoObjectConfig
new_3 abeClientInformation transformInfoInterface document = do
    this <- newRecord_
    init_3 this abeClientInformation transformInfoInterface document
    pure this

init_3 :: CompoundContextTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_3 this abeClientInformation transformInfoInterface document = do
        GenericStoreTransformInfoObjectConfig.init_3 this.base (abeClientInformation) (transformInfoInterface) (document)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GenericStoreTransformInfoObjectConfig.setDocument this (jio (GenericStoreTransformInfoObjectConfig.generate this (jio (GenericStoreTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()

new_4 :: AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO CompoundContextTransformInfoObjectConfig
new_4 abeClientInformation transformInfoInterface name type_ = do
    this <- newRecord_
    init_4 this abeClientInformation transformInfoInterface name type_
    pure this

init_4 :: CompoundContextTransformInfoObjectConfig -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_4 this abeClientInformation transformInfoInterface name type_ = do
        GenericStoreTransformInfoObjectConfig.init_4 this.base (abeClientInformation) (transformInfoInterface) (name) (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GenericStoreTransformInfoObjectConfig.setDocument this (jio (GenericStoreTransformInfoObjectConfig.generate this (jio (GenericStoreTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> IO (String)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: CompoundContextTransformInfoObjectConfig))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (String)
get_super object_ = (get_impl (javaCast object_ :: CompoundContextTransformInfoObjectConfig))

get_impl :: CompoundContextTransformInfoObjectConfig -> IO (String)
get_impl this = do
        storeName <- (TransformInfoInterface.getStoreName ((jio (GenericStoreTransformInfoObjectConfig.getTransformInfoInterface this))))
        let httpTransformInfoInterface = (javaCast (jio (GenericStoreTransformInfoObjectConfig.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        templateNameOverride <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (javaCast (jio (TransformInfoHttpInterface.get ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget ((jio (TransformInfoData.getInstance))).pARTIAL))) :: String))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer storeName)
        Control.Monad.void (StringMaker.append stringBuffer templateNameOverride)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (RootTransformInfoData.nAME))
        rootComponentInterface <- (fmap (\value_ -> javaCast value_ :: TransformInterface.TransformInterface) (TransformFactory.getInstance_3 ((jio (TransformFactory.getInstance))) (jget this.base.abeClientInformation) (jio (StringMaker.toString stringBuffer)) (jio (GenericStoreTransformInfoObjectConfig.getTransformInfoInterface this))))
        viewVector <- (GenericStoreTransformInfoObjectConfig.getTransformDomNodes_0 this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Root View Called with: " ++ javaToString (jio (BasicArrayList.size viewVector))) this "get(transformInfoInterface)")
        rootView <- newIORef =<< (TransformInterface.view rootComponentInterface)
        let startXMLHeader = "<xsl:text disable-output-escaping=\"yes\" ><![CDATA["
        let endXMLHeader = "]]></xsl:text>"
        size <- (BasicArrayList.size viewVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let objectConfigTransformInfoDomNode = (javaCast (jio (BasicArrayList.get viewVector index)) :: TransformInfoDomNode.TransformInfoDomNode)
            templateKey <- (TransformInfoDomNode.getReplaceKey objectConfigTransformInfoDomNode)
            componentInterface <- (fmap (\value_ -> javaCast value_ :: TransformInterface.TransformInterface) (TransformFactory.getInstance_3 ((jio (TransformFactory.getInstance))) (jget this.base.abeClientInformation) (jio (TransformInfoInterface.getName ((jio (TransformInfoDomNode.getTransformInfoInterface objectConfigTransformInfoDomNode))))) (jio (GenericStoreTransformInfoObjectConfig.getTransformInfoInterface this))))
            replacementViewString <- newIORef =<< (TransformInterface.view componentInterface)
            assignedValue <- (DocumentToNode.convertDocumentToNodeString (jget replacementViewString))
            jset replacementViewString (assignedValue)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer startXMLHeader)
            Control.Monad.void (StringMaker.append stringBuffer (jget replacementViewString))
            Control.Monad.void (StringMaker.append stringBuffer endXMLHeader)
            templateValue <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer "Replacing: ")
                Control.Monad.void (StringMaker.append stringBuffer templateKey)
                Control.Monad.void (StringMaker.append stringBuffer " with ")
                Control.Monad.void (StringMaker.append stringBuffer templateValue)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "get()")
            replace <- (Replace.new_2 templateKey templateValue)
            assignedValue <- (Replace.all replace (jget rootView))
            jset rootView (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("End: Result of a compound view: " ++ (jget rootView)) this "get()")
        pure ((jget rootView))


-- throws Exception
createInputStream :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
createInputStream object_ = jmethod object_ "createInputStream" (\() -> (createInputStream_impl (javaCast object_ :: CompoundContextTransformInfoObjectConfig))) ()

createInputStream_super :: (JavaObjectClass this_) => this_ -> IO (InputStream.InputStream)
createInputStream_super object_ = (createInputStream_impl (javaCast object_ :: CompoundContextTransformInfoObjectConfig))

createInputStream_impl :: CompoundContextTransformInfoObjectConfig -> IO (InputStream.InputStream)
createInputStream_impl this = do
        let completeTemplateViewBytes = (jgetBytes (jio (CompoundContextTransformInfoObjectConfig.get this)))
        bais <- (ByteArrayInputStream.new_1 completeTemplateViewBytes)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Template: " ++ (jio (jnewString completeTemplateViewBytes))) this "createInputStream()")
        pure ((javaCast bais :: InputStream.InputStream))


