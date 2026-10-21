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
-- package org.allbinary.business.category.properties
module CategoryPropertiesView where

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
import qualified CategoryPropertiesInterface -- same package or java.lang
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified Document -- org.w3c.dom.Document
import qualified Element -- org.w3c.dom.Element
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CategoryPropertiesView = CategoryPropertiesView
    { header_ :: JavaHeader
    , categoryPropertiesInterface :: IORef (CategoryPropertiesInterface.CategoryPropertiesInterface)
    }

instance JavaNull CategoryPropertiesView where
    javaNull = javaNullRecord "CategoryPropertiesView"

instance JavaEquals CategoryPropertiesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPropertiesView where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPropertiesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryPropertiesView
newRecord_ = do
    header_ <- newJavaHeader
    categoryPropertiesInterface <- newIORef javaNull
    let this = CategoryPropertiesView header_ categoryPropertiesInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CategoryPropertiesView -> IO ()
initFields_ this = do
    jset this.categoryPropertiesInterface (javaNull)
    pure ()

new_1 :: CategoryPropertiesInterface.CategoryPropertiesInterface -> IO CategoryPropertiesView
new_1 categoryPropertiesInterface = do
    this <- newRecord_
    init_1 this categoryPropertiesInterface
    pure this

init_1 :: CategoryPropertiesView -> CategoryPropertiesInterface.CategoryPropertiesInterface -> IO ()
init_1 this categoryPropertiesInterface = do
        initFields_ this
        jset (this).categoryPropertiesInterface (categoryPropertiesInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CategoryPropertiesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CategoryPropertiesView)) a1

toXmlNode_impl :: CategoryPropertiesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        categoryNode <- (Document.createElement document (jget ((jio (CategoryData.getInstance))).nAME))
        let newCategoryNode = (javaCast categoryNode :: Element.Element)
        Control.Monad.void (Element.setAttribute newCategoryNode (jget ((jio (CategoryData.getInstance))).lABEL) (jio (CategoryPropertiesInterface.getValue ((jget (this).categoryPropertiesInterface)))))
        pure (categoryNode)


