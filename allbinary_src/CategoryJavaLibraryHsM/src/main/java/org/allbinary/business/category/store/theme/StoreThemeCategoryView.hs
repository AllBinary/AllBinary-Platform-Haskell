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
module StoreThemeCategoryView (module StoreThemeCategoryView, module CategoryView) where

import CategoryView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl)
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
import qualified ThemeComparator -- same package or java.lang
import qualified Arrays -- java.util.Arrays
import qualified CategoryView -- org.allbinary.business.category.CategoryView
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ThemeValidation -- org.allbinary.logic.visual.theme.ThemeValidation
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreThemeCategoryView = StoreThemeCategoryView
    { header_ :: JavaHeader
    , base :: CategoryView.CategoryView
    }

instance JavaNull StoreThemeCategoryView where
    javaNull = javaNullRecord "StoreThemeCategoryView"

instance JavaEquals StoreThemeCategoryView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoryView where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoryView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreThemeCategoryView
newRecord_ = do
    base <- CategoryView.newRecord_
    let header_ = base.header_
    let this = StoreThemeCategoryView header_ base
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreThemeCategoryView -> IO ()
initFields_ this = do
    pure ()

new_1 :: StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO StoreThemeCategoryView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: StoreThemeCategoryView -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO ()
init_1 this categoryInterface = do
        CategoryView.init_1 this.base (javaCast categoryInterface :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreThemeCategoryView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreThemeCategoryView)) a1

toXmlNode_impl :: StoreThemeCategoryView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (CategoryView.toXmlNode_super this.base document)
        let storeThemeCategoryInterface = (javaCast (jio (CategoryView.getCategoryInterface this)) :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        let themeValidationArray = (javaCast (jio (StoreThemeCategoryInterface.toArray ((jio (StoreThemeCategoryInterface.getThemes storeThemeCategoryInterface))))) :: JavaArray (ThemeValidation.ThemeValidation))
        Control.Monad.void (Arrays.sort themeValidationArray (jio (ThemeComparator.new_)))
        let size = (jlength themeValidationArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let themeValidation = (javaCast (jindex themeValidationArray (index)) :: ThemeValidation.ThemeValidation)
            Control.Monad.void (Node.appendChild node (jio (ThemeValidation.toXmlNode themeValidation document)))
        pure (node)


