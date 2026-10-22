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
-- package org.allbinary.logic.control.workflow.request
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
import qualified Any -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified WorkFlowData -- org.allbinary.logic.control.workflow.WorkFlowData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasicWorkFlow = BasicWorkFlow
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , workFlowDoc :: IORef (Document.Document)
    , workFlowName :: IORef (String)
    , storeName :: IORef (String)
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
    workFlowDoc <- newIORef javaNull
    workFlowName <- newIORef ""
    storeName <- newIORef ""
    let this = BasicWorkFlow header_ logUtil commonStrings workFlowDoc workFlowName storeName
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: BasicWorkFlow -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.workFlowDoc (javaNull)
    jset this.workFlowName (javaNull)
    jset this.storeName (javaNull)
    pure ()

new_ :: IO BasicWorkFlow
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicWorkFlow -> IO ()
init_ this = do
        initFields_ this
        jset (this).workFlowName ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        assignedValue <- (DomDocumentHelper.create)
        jset (this).workFlowDoc (assignedValue)
        workFlowNode <- (Document.createElement ((jget (this).workFlowDoc)) (jget ((jio (WorkFlowData.getInstance))).wORKFLOW))
        Control.Monad.void (Document.appendChild ((jget (this).workFlowDoc)) workFlowNode)
        pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasicWorkFlow
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: BasicWorkFlow -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        initFields_ this
        weblisketSession <- (WeblisketSession.new_2 hashMap pageContext)
        assignedValue <- (WeblisketSession.getStoreName weblisketSession)
        jset (this).storeName (assignedValue)
        requestHashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 pageContext))))
        jset (this).workFlowName ((javaCast (jio (HashMap.get requestHashMap (jget ((jio (WorkFlowData.getInstance))).nAME))) :: String))
        assignedValue <- (DomDocumentHelper.create_1 (javaCast (jio (HashMap.get requestHashMap (jget ((jio (WorkFlowData.getInstance))).dATA))) :: String))
        jset (this).workFlowDoc (assignedValue)
        pure ()

new_1 :: HashMap.HashMap -> IO BasicWorkFlow
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: BasicWorkFlow -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        jset (this).workFlowName ((javaCast (jio (HashMap.get hashMap (jget ((jio (WorkFlowData.getInstance))).nAME))) :: String))
        jset (this).storeName ((javaCast (jio (HashMap.get hashMap (jget ((jio (StoreFrontData.getInstance))).nAME))) :: String))
        assignedValue <- (DomDocumentHelper.create_1 (javaCast (jio (HashMap.get hashMap (jget ((jio (WorkFlowData.getInstance))).dATA))) :: String))
        jset (this).workFlowDoc (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicWorkFlow))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicWorkFlow))

getName_impl :: BasicWorkFlow -> IO (String)
getName_impl this = do
        pure ((jget (this).workFlowName))


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: BasicWorkFlow))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: BasicWorkFlow))

getStoreName_impl :: BasicWorkFlow -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


getKey :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: BasicWorkFlow))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getKey_super object_ = (getKey_impl (javaCast object_ :: BasicWorkFlow))

getKey_impl :: BasicWorkFlow -> IO (Any.Any)
getKey_impl this = do
        pure ((jtoObject (javaCast (jio (BasicWorkFlow.getName this)) :: Any.Any)))


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: BasicWorkFlow))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: BasicWorkFlow))

toVector_impl :: BasicWorkFlow -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add values (jget (this).workFlowName))
        Control.Monad.void (BasicArrayList.add values (jget (this).storeName))
        Control.Monad.void (BasicArrayList.add values (jio (XmlDocumentHelper.toString (jget (this).workFlowDoc))))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values time)
        pure (values)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: BasicWorkFlow))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: BasicWorkFlow))

toHashMap_impl :: BasicWorkFlow -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (WorkFlowData.getInstance))).nAME) (jget (this).workFlowName))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (WorkFlowData.getInstance))).dATA) (jio (XmlDocumentHelper.toString (jget (this).workFlowDoc))))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (hashMap)


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasicWorkFlow))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasicWorkFlow)) a1

toXmlNode_impl :: BasicWorkFlow -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "toXmlNode()" e)
            pure (javaNull)
            ) $ do
            hashMap <- (BasicWorkFlow.toHashMap this)
            keySet <- (HashMap.keySet hashMap)
            node <- (Document.createElement document (jget ((jio (WorkFlowData.getInstance))).wORKFLOW))
            nameArray <- (Set.toArray keySet)
            let size = (jlength nameArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let name = (javaCast (jindex nameArray (index)) :: String)
                let value = (javaCast (jio (HashMap.get hashMap name)) :: String)
                Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes_3 document name value)))
            pure (node)


toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: BasicWorkFlow))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: BasicWorkFlow))

toXmlDoc_impl :: BasicWorkFlow -> IO (Document.Document)
toXmlDoc_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "toXmlDoc()" e)
            pure (javaNull)
            ) $ do
            pure ((jget (this).workFlowDoc))


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: BasicWorkFlow))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: BasicWorkFlow))

isValid_impl :: BasicWorkFlow -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            returnBoolean <- newIORef (True)
            when ((jget (this).workFlowName) == javaNull) $ do
                jset returnBoolean (False)
            pure ((jget returnBoolean))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: BasicWorkFlow))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: BasicWorkFlow))

validationInfo_impl :: BasicWorkFlow -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when ((jget (this).workFlowName) == javaNull) $ do
                Control.Monad.void (jio (StringMaker.append stringBuffer "No WorkFlow name specified."))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: BasicWorkFlow))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: BasicWorkFlow))

toValidationInfoDoc_impl :: BasicWorkFlow -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: BasicWorkFlow))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: BasicWorkFlow)) a1

toValidationInfoNode_impl :: BasicWorkFlow -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


