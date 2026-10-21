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
-- package org.allbinary.logic.visual.dhtml.style.css.property
module CssPropertyValues where

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
import qualified CssPropertyValueData -- same package or java.lang
import qualified CssPropertyData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CssPropertyValues = CssPropertyValues
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , propertyValueVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CssPropertyValues where
    javaNull = javaNullRecord "CssPropertyValues"

instance JavaEquals CssPropertyValues where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssPropertyValues where
    (==) = jrecordEquals

instance JavaObjectClass CssPropertyValues where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssPropertyValues
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    propertyValueVector <- newIORef javaNull
    let this = CssPropertyValues header_ logUtil propertyValueVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CssPropertyValues -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.propertyValueVector (javaNull)
    pure ()

new_ :: IO CssPropertyValues
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssPropertyValues -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).propertyValueVector (assignedValue)
        pure ()

new_1 :: Node.Node -> IO CssPropertyValues
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CssPropertyValues -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        indexPropertyValueHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).propertyValueVector (assignedValue)
        cssPropertyNodeVector <- (DomSearchHelper.getAllNodes (jget ((jio (CssPropertyValueData.getInstance))).nAME) (jio (Node.getChildNodes node)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTYLE))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Properties: " ++ javaToString (jio (BasicArrayList.size cssPropertyNodeVector))) this "CssProperties()")
        size <- (BasicArrayList.size cssPropertyNodeVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let cssPropertyValueNode = (javaCast (jio (BasicArrayList.get cssPropertyNodeVector index)) :: Node.Node)
            valueNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes cssPropertyValueNode)))
            propertyValue <- (DomNodeHelper.getTextNodeValue valueNode)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTYLE))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Property Value: " ++ propertyValue) this "CssProperties()")
            indexNode <- (DomSearchHelper.getNode (DomData.iNDEX) (jio (Node.getChildNodes cssPropertyValueNode)))
            indexValue <- (DomNodeHelper.getTextNodeValue indexNode)
            Control.Monad.void (HashMap.put indexPropertyValueHashMap indexValue propertyValue)
        size2 <- (HashMap.size ((jio (HashMap.keySet indexPropertyValueHashMap))))
        forM_ [0 .. size2 - 1] $ \index -> javaIteration (pure ()) $ do
            let indexInt = (Prelude.fromIntegral (index) :: Int)
            let propertyValue = (javaCast (jio (HashMap.get indexPropertyValueHashMap (javaToString indexInt))) :: String)
            Control.Monad.void (BasicArrayList.add ((jget (this).propertyValueVector)) propertyValue)
        pure ()


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: CssPropertyValues))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: CssPropertyValues))

toHashMap_impl :: CssPropertyValues -> IO (HashMap.HashMap)
toHashMap_impl this = do
        commonSeps <- (CommonSeps.getInstance)
        cssPropertyValueData <- (CssPropertyValueData.getInstance)
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        stringBuffer <- (StringMaker.new_)
        size <- (BasicArrayList.size ((jget (this).propertyValueVector)))
        index <- newIORef (0)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (do { jset index ((jget index) + 1); loop }) $ do
            let value = (javaCast (jio (BasicArrayList.get ((jget (this).propertyValueVector)) (jget index))) :: String)
            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
            Control.Monad.void (StringMaker.append stringBuffer (jget (cssPropertyValueData).nAME))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).bRACKET_OPEN))
            Control.Monad.void (StringMaker.appendint stringBuffer (jget index))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).bRACKET_CLOSE))
            Control.Monad.void (HashMap.put hashMap (jio (StringMaker.toString stringBuffer)) value)
            jset index ((jget index) + 1)
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CssPropertyValues))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CssPropertyValues)) a1

toXmlNode_impl :: CssPropertyValues -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            hashMap <- (CssPropertyValues.toHashMap this)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("CssPropertyValues HashMap: " ++ (jio (HashMap.toString hashMap))) this "toXmlNode()")
        (ModDomHelper.createNameValueIndexNodes document (jget ((jio (CssPropertyData.getInstance))).vALUES) (jget ((jio (CssPropertyValueData.getInstance))).nAME) (jget (this).propertyValueVector))


