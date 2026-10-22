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
module CssProperty where

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
import qualified CssPropertyValues -- same package or java.lang
import qualified CssPropertyData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DomData -- org.allbinary.data.tree.dom.DomData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CssProperty = CssProperty
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , propertyName :: IORef (String)
    , cssPropertyValues :: IORef (CssPropertyValues.CssPropertyValues)
    }

instance JavaNull CssProperty where
    javaNull = javaNullRecord "CssProperty"

instance JavaEquals CssProperty where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssProperty where
    (==) = jrecordEquals

instance JavaObjectClass CssProperty where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssProperty
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    propertyName <- newIORef ""
    cssPropertyValues <- newIORef javaNull
    let this = CssProperty header_ logUtil propertyName cssPropertyValues
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CssProperty -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.propertyName (javaNull)
    jset this.cssPropertyValues (javaNull)
    pure ()

new_1 :: String -> IO CssProperty
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: CssProperty -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).propertyName (name)
        assignedValue <- (CssPropertyValues.new_)
        jset (this).cssPropertyValues (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO CssProperty
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CssProperty -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        propertyNode <- (DomSearchHelper.getNode (DomData.vALUE) (jio (Node.getChildNodes node)))
        assignedValue <- (DomNodeHelper.getTextNodeValue propertyNode)
        jset (this).propertyName (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sTYLE))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Name: " ++ (jio (CssProperty.getName this))) this "CssProperty()")
        propertyValuesNode <- (DomSearchHelper.getNode (jget ((jio (CssPropertyData.getInstance))).vALUES) (jio (Node.getChildNodes node)))
        assignedValue <- (CssPropertyValues.new_1 propertyValuesNode)
        jset (this).cssPropertyValues (assignedValue)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: CssProperty))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: CssProperty))

getName_impl :: CssProperty -> IO (String)
getName_impl this = do
        pure ((jget (this).propertyName))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: CssProperty))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: CssProperty))

toHashMap_impl :: CssProperty -> IO (HashMap.HashMap)
toHashMap_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (CssPropertyData.getInstance))).nAME) (jget (this).propertyName))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CssProperty))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CssProperty)) a1

toXmlNode_impl :: CssProperty -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (CssProperty.toHashMap this)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("CssView HashMap: " ++ (jio (HashMap.toString hashMap))) this "toXmlNode()")
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (CssPropertyData.getInstance))).nAME) (jget (this).propertyName))
        Control.Monad.void (Node.appendChild node (jio (CssPropertyValues.toXmlNode ((jget (this).cssPropertyValues)) document)))
        pure (node)


