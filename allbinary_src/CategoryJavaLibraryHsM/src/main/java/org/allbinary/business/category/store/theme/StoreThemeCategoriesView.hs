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
-- package org.allbinary.business.category.store.theme
module StoreThemeCategoriesView where

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
import qualified StoreThemeCategoryInterface -- same package or java.lang
import qualified StoreThemeCategoryView -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreThemeCategoriesView = StoreThemeCategoriesView
    { header_ :: JavaHeader
    , categoryInterface :: IORef (StoreThemeCategoryInterface.StoreThemeCategoryInterface)
    }

instance JavaNull StoreThemeCategoriesView where
    javaNull = javaNullRecord "StoreThemeCategoriesView"

instance JavaEquals StoreThemeCategoriesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoriesView where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoriesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreThemeCategoriesView
newRecord_ = do
    header_ <- newJavaHeader
    categoryInterface <- newIORef javaNull
    let this = StoreThemeCategoriesView header_ categoryInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreThemeCategoriesView -> IO ()
initFields_ this = do
    jset this.categoryInterface (javaNull)
    pure ()

new_1 :: StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO StoreThemeCategoriesView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: StoreThemeCategoriesView -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO ()
init_1 this categoryInterface = do
        initFields_ this
        jset (this).categoryInterface (categoryInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreThemeCategoriesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreThemeCategoriesView)) a1

toXmlNode_impl :: StoreThemeCategoriesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (StoreThemeCategoryView.toXmlNode ((jio (StoreThemeCategoryView.new_1 (jget (this).categoryInterface)))) document)
        childArray <- (StoreThemeCategoryInterface.toArray ((jio (StoreThemeCategoryInterface.getChildNodes ((jget (this).categoryInterface))))))
        let size = (jlength childArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let childCategoryInterface = (javaCast (jindex childArray (i)) :: CategoryInterface.CategoryInterface)
            childCategoryNode <- (StoreThemeCategoriesView.toXmlNode ((jio (new_1 (javaCast childCategoryInterface :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)))) document)
            Control.Monad.void (Node.appendChild node childCategoryNode)
        pure (node)


