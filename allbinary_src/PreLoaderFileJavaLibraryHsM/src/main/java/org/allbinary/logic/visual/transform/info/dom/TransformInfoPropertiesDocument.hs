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
-- package org.allbinary.logic.visual.transform.info.dom
module TransformInfoPropertiesDocument where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentFileHelper -- org.allbinary.data.tree.dom.document.DomDocumentFileHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoProperties -- org.allbinary.logic.visual.transform.info.TransformInfoProperties
import qualified TransformInfoPropertiesFactory -- org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data TransformInfoPropertiesDocument = TransformInfoPropertiesDocument
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , document :: IORef (Document.Document)
    }

instance JavaNull TransformInfoPropertiesDocument where
    javaNull = javaNullRecord "TransformInfoPropertiesDocument"

instance JavaEquals TransformInfoPropertiesDocument where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoPropertiesDocument where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoPropertiesDocument where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoPropertiesDocument
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    document <- newIORef javaNull
    let this = TransformInfoPropertiesDocument header_ logUtil document
    jregisterLevel header_ this
    jregisterMethod header_ "toTransformInfoPropertiesHashMap" (\() -> toTransformInfoPropertiesHashMap_impl this)
    pure this

initFields_ :: TransformInfoPropertiesDocument -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.document (javaNull)
    pure ()

new_1 :: String -> IO TransformInfoPropertiesDocument
new_1 filePath = do
    this <- newRecord_
    init_1 this filePath
    pure this

init_1 :: TransformInfoPropertiesDocument -> String -> IO ()
init_1 this filePath = do
        initFields_ this
        xmlFile <- (AbFile.createAbFile filePath)
        assignedValue <- (DomDocumentFileHelper.createDocument xmlFile)
        jset (this).document (assignedValue)
        pure ()


toTransformInfoPropertiesHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toTransformInfoPropertiesHashMap object_ = jmethod object_ "toTransformInfoPropertiesHashMap" (\() -> (toTransformInfoPropertiesHashMap_impl (javaCast object_ :: TransformInfoPropertiesDocument))) ()

toTransformInfoPropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toTransformInfoPropertiesHashMap_super object_ = (toTransformInfoPropertiesHashMap_impl (javaCast object_ :: TransformInfoPropertiesDocument))

toTransformInfoPropertiesHashMap_impl :: TransformInfoPropertiesDocument -> IO (HashMap.HashMap)
toTransformInfoPropertiesHashMap_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "toTransformInfoPropertiesHashMap()" e)
            pure (javaNull)
            ) $ do
            transformInfoPropertiesHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            transformInfosNode <- (Document.item ((jio (Document.getElementsByTagName ((jget (this).document)) (jget ((jio (TransformInfosData.getInstance))).nAME)))) 0)
            transformInfosChildNodeList <- (Node.getChildNodes transformInfosNode)
            transformInfoNodeVector <- (DomSearchHelper.getAllNodes (jget ((jio (TransformInfoData.getInstance))).nAME) transformInfosChildNodeList)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Size: " ++ javaToString (jio (BasicArrayList.size transformInfoNodeVector))) this "toTransformInfoPropertiesHashMap()")
            size <- (BasicArrayList.size transformInfoNodeVector)
            node <- newIORef (javaNull)
            transformInfoProperties <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset node ((javaCast (jio (BasicArrayList.get transformInfoNodeVector index)) :: Node.Node))
                assignedValue <- (TransformInfoPropertiesFactory.getInstance_1 ((jio (TransformInfoPropertiesFactory.getInstance))) (jget node))
                jset transformInfoProperties (assignedValue)
                Control.Monad.void (HashMap.put transformInfoPropertiesHashMap (jio (TransformInfoProperties.getName ((jget transformInfoProperties)))) (jget transformInfoProperties))
            pure (transformInfoPropertiesHashMap)


