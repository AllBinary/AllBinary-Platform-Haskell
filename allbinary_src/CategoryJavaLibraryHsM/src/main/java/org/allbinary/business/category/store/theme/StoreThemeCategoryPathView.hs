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
module StoreThemeCategoryPathView (module StoreThemeCategoryPathView, module CategoryView) where

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
import qualified Any -- same package or java.lang
import qualified CategoryView -- org.allbinary.business.category.CategoryView
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ThemeInterface -- org.allbinary.logic.visual.theme.ThemeInterface
import qualified ThemePropertiesView -- org.allbinary.logic.visual.theme.ThemePropertiesView
import qualified ThemeValidation -- org.allbinary.logic.visual.theme.ThemeValidation
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data StoreThemeCategoryPathView = StoreThemeCategoryPathView
    { header_ :: JavaHeader
    , base :: CategoryView.CategoryView
    }

instance JavaNull StoreThemeCategoryPathView where
    javaNull = javaNullRecord "StoreThemeCategoryPathView"

instance JavaEquals StoreThemeCategoryPathView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoryPathView where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoryPathView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreThemeCategoryPathView
newRecord_ = do
    base <- CategoryView.newRecord_
    let header_ = base.header_
    let this = StoreThemeCategoryPathView header_ base
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: StoreThemeCategoryPathView -> IO ()
initFields_ this = do
    pure ()

new_1 :: StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO StoreThemeCategoryPathView
new_1 categoryInterface = do
    this <- newRecord_
    init_1 this categoryInterface
    pure this

init_1 :: StoreThemeCategoryPathView -> StoreThemeCategoryInterface.StoreThemeCategoryInterface -> IO ()
init_1 this categoryInterface = do
        CategoryView.init_1 this.base (javaCast categoryInterface :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: StoreThemeCategoryPathView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: StoreThemeCategoryPathView)) a1

toXmlNode_impl :: StoreThemeCategoryPathView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (CategoryView.toXmlNode_super this.base document)
        let storeThemeCategoryInterface = (javaCast (jio (CategoryView.getCategoryInterface this)) :: StoreThemeCategoryInterface.StoreThemeCategoryInterface)
        themeArray <- (StoreThemeCategoryInterface.toArray ((jio (StoreThemeCategoryInterface.getThemes storeThemeCategoryInterface))))
        let size = (jlength themeArray)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let themeValidation = (javaCast (jindex themeArray (i)) :: ThemeValidation.ThemeValidation)
            let domNodeInterface = (javaCast (jio (ThemePropertiesView.new_1 (javaCast themeValidation :: ThemeInterface.ThemeInterface))) :: DomNodeInterface.DomNodeInterface)
            Control.Monad.void (Node.appendChild node (jio (DomNodeInterface.toXmlNode domNodeInterface document)))
        pure (node)


