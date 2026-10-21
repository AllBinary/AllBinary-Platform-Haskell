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
-- package org.allbinary.business.category
module CategoriesView where

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
import qualified CategoryInterface -- same package or java.lang
import qualified CategoryView -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data CategoriesView = CategoriesView
    { header_ :: JavaHeader
    , categoryInterface :: IORef (CategoryInterface.CategoryInterface)
    }

instance JavaNull CategoriesView where
    javaNull = javaNullRecord "CategoriesView"

instance JavaEquals CategoriesView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoriesView where
    (==) = jrecordEquals

instance JavaObjectClass CategoriesView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoriesView
newRecord_ = do
    header_ <- newJavaHeader
    categoryInterface <- newIORef javaNull
    let this = CategoriesView header_ categoryInterface
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: CategoriesView -> IO ()
initFields_ this = do
    jset this.categoryInterface (javaNull)
    pure ()

new_1 :: CategoryInterface.CategoryInterface -> IO CategoriesView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: CategoriesView -> CategoryInterface.CategoryInterface -> IO ()
init_1 this categoryInterface = do
        initFields_ this
        jset (this).categoryInterface (categoryInterface)
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CategoriesView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CategoriesView)) a1

toXmlNode_impl :: CategoriesView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (CategoryView.toXmlNode ((jio (CategoryView.new_1 (jget (this).categoryInterface)))) document)
        childArray <- (CategoryInterface.toArray ((jio (CategoryInterface.getChildNodes ((jget (this).categoryInterface))))))
        let size = (jlength childArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let childCategoryInterface = (javaCast (jindex childArray (i)) :: CategoryInterface.CategoryInterface)
            childCategoryNode <- (CategoriesView.toXmlNode ((jio (new_1 childCategoryInterface))) document)
            Control.Monad.void (Node.appendChild node childCategoryNode)
        pure (node)


