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
module CssPropertyView where

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
import qualified CssProperty -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CssPropertyView = CssPropertyView
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , cssProperty :: IORef (CssProperty.CssProperty)
    }

instance JavaNull CssPropertyView where
    javaNull = javaNullRecord "CssPropertyView"

instance JavaEquals CssPropertyView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssPropertyView where
    (==) = jrecordEquals

instance JavaObjectClass CssPropertyView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssPropertyView
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    cssProperty <- newIORef javaNull
    let this = CssPropertyView header_ commonStrings cssProperty
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getProperty" (\() -> getProperty_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CssPropertyView -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.cssProperty (javaNull)
    pure ()

new_1 :: String -> IO CssPropertyView
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: CssPropertyView -> String -> IO ()
init_1 this name = do
        initFields_ this
        assignedValue <- (CssProperty.new_1 name)
        jset (this).cssProperty (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO CssPropertyView
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CssPropertyView -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        assignedValue <- (CssProperty.new_1 node)
        jset (this).cssProperty (assignedValue)
        pure ()


getProperty :: (JavaObjectClass this_) => this_ -> IO (CssProperty.CssProperty)
getProperty object_ = jmethod object_ "getProperty" (\() -> (getProperty_impl (javaCast object_ :: CssPropertyView))) ()

getProperty_super :: (JavaObjectClass this_) => this_ -> IO (CssProperty.CssProperty)
getProperty_super object_ = (getProperty_impl (javaCast object_ :: CssPropertyView))

getProperty_impl :: CssPropertyView -> IO (CssProperty.CssProperty)
getProperty_impl this = do
        pure ((jget (this).cssProperty))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CssPropertyView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CssPropertyView)) a1

toXmlNode_impl :: CssPropertyView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        (CssProperty.toXmlNode ((jget (this).cssProperty)) document)


