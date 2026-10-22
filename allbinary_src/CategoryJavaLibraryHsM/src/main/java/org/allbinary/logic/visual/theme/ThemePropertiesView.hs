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
-- package org.allbinary.logic.visual.theme
module ThemePropertiesView where

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
import qualified ThemeInterface -- same package or java.lang
import qualified ThemeData -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data ThemePropertiesView = ThemePropertiesView
    { header_ :: JavaHeader
    , themeInterface :: IORef (ThemeInterface.ThemeInterface)
    }

instance JavaNull ThemePropertiesView where
    javaNull = javaNullRecord "ThemePropertiesView"

instance JavaEquals ThemePropertiesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThemePropertiesView where
    (==) = jrecordEquals

instance JavaObjectClass ThemePropertiesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThemePropertiesView
newRecord_ = do
    header_ <- newJavaHeader
    themeInterface <- newIORef javaNull
    let this = ThemePropertiesView header_ themeInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ThemePropertiesView -> IO ()
initFields_ this = do
    jset this.themeInterface (javaNull)
    pure ()

new_1 :: ThemeInterface.ThemeInterface -> IO ThemePropertiesView
new_1 themeInterface = do
    this <- newRecord_
    init_1 this themeInterface
    pure this

init_1 :: ThemePropertiesView -> ThemeInterface.ThemeInterface -> IO ()
init_1 this themeInterface = do
        initFields_ this
        jset (this).themeInterface (themeInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ThemePropertiesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ThemePropertiesView)) a1

toXmlNode_impl :: ThemePropertiesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes_3 document (jget ((jio (ThemeData.getInstance))).nAME) (jio (ThemeInterface.toHashMap ((jget (this).themeInterface)))))
        pure (node)


