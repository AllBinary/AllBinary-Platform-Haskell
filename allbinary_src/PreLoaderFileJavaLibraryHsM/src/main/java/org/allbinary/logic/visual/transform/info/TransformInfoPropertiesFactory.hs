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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoPropertiesFactory where

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
import qualified TransformInfoData -- same package or java.lang
import qualified TransformInfoProperties -- same package or java.lang
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified Attr -- org.w3c.dom.Attr
import qualified NamedNodeMap -- org.w3c.dom.NamedNodeMap
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data TransformInfoPropertiesFactory = TransformInfoPropertiesFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoPropertiesFactory where
    javaNull = javaNullRecord "TransformInfoPropertiesFactory"

instance JavaEquals TransformInfoPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoPropertiesFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformInfoPropertiesFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: TransformInfoPropertiesFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformInfoPropertiesFactory)
getInstance = do
        pure (TransformInfoPropertiesFactory.instance_)

new_ :: IO TransformInfoPropertiesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoPropertiesFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (TransformInfoProperties.TransformInfoProperties)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: TransformInfoPropertiesFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (TransformInfoProperties.TransformInfoProperties)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: TransformInfoPropertiesFactory)) a1

getInstance_1_impl :: TransformInfoPropertiesFactory -> Node.Node -> IO (TransformInfoProperties.TransformInfoProperties)
getInstance_1_impl this node = do
        transformInfoChildNodeList <- (Node.getChildNodes node)
        transformInfoData <- (TransformInfoData.getInstance)
        attributes <- (Node.getAttributes node)
        let attrNode = (javaCast (jio (NamedNodeMap.getNamedItem attributes (jget (transformInfoData).nAME))) :: Attr.Attr)
        name <- (Attr.getValue attrNode)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((javaToString (jget ((jio (CommonLabels.getInstance))).nEXT) ++ " View Name: ") ++ name) this "toTransformInfoPropertiesHashMap()")
        labelNode <- (DomSearchHelper.getNodeNoThrow (jget (transformInfoData).lABEL) transformInfoChildNodeList)
        label <- newIORef =<< (DomNodeHelper.getTextNodesValue labelNode)
        when ((jget label) == javaNull) $ do
            jset label (name)
        descriptionNode <- (DomSearchHelper.getNode (jget (transformInfoData).dESCRIPTION) transformInfoChildNodeList)
        description <- (DomNodeHelper.getTextNodesValue descriptionNode)
        objectFileNode <- (DomSearchHelper.getNode (jget (transformInfoData).oBJECTFILENAME) transformInfoChildNodeList)
        objectFileName <- (DomNodeHelper.getTextNodeValue objectFileNode)
        objectConfigFileNode <- (DomSearchHelper.getNode (jget (transformInfoData).oBJECTCONFIGFILENAME) transformInfoChildNodeList)
        objectConfigFileName <- (DomNodeHelper.getTextNodeValue objectConfigFileNode)
        templateFileNode <- (DomSearchHelper.getNode (jget (transformInfoData).tEMPLATEFILENAME) transformInfoChildNodeList)
        templateFileName <- (DomNodeHelper.getTextNodeValue templateFileNode)
        transformInfoProperties <- (TransformInfoProperties.new_6 name (jget label) description objectFileName objectConfigFileName templateFileName)
        pure (transformInfoProperties)


