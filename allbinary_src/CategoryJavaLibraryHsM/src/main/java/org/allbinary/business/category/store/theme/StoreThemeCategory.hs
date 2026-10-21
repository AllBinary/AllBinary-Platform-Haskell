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
module StoreThemeCategory (module StoreThemeCategory, module Category) where

import Category hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getTransformInfoInterface, getTransformInfoInterface_super, getTransformInfoInterface_impl, addThemes, addThemes_super, addThemes_impl, addTheme, addTheme_super, addTheme_impl, getThemes, getThemes_super, getThemes_impl, isValid, isValid_super, isValid_impl, toHashMap, toHashMap_super, toHashMap_impl, toVector, toVector_super, toVector_impl, transformInfoInterface, themeVector)
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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Category -- org.allbinary.business.category.Category
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ThemeData -- org.allbinary.logic.visual.theme.ThemeData
import qualified ThemeValidation -- org.allbinary.logic.visual.theme.ThemeValidation
import qualified ThemesData -- org.allbinary.logic.visual.theme.ThemesData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified StoreThemeCategoryInterface

-- implements StoreThemeCategoryInterface
data StoreThemeCategory = StoreThemeCategory
    { header_ :: JavaHeader
    , base :: Category.Category
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    , themeVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull StoreThemeCategory where
    javaNull = javaNullRecord "StoreThemeCategory"

instance JavaEquals StoreThemeCategory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategory where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreThemeCategory
newRecord_ = do
    base <- Category.newRecord_
    let header_ = base.header_
    transformInfoInterface <- newIORef javaNull
    themeVector <- newIORef javaNull
    let this = StoreThemeCategory header_ base transformInfoInterface themeVector
    jregisterLevel header_ this
    StoreThemeCategoryInterface.registerInterface_ header_
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "addThemes" (\() -> addThemes_impl this)
    jregisterMethod header_ "addTheme" (\() -> addTheme_impl this)
    jregisterMethod header_ "getThemes" (\() -> getThemes_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    pure this

initFields_ :: StoreThemeCategory -> IO ()
initFields_ this = do
    jset this.transformInfoInterface (javaNull)
    jset this.themeVector (javaNull)
    pure ()

new_3 :: TransformInfoInterface.TransformInfoInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO StoreThemeCategory
new_3 transformInfoInterface categoryPropertiesFactoryInterface level = do
    this <- newRecord_
    init_3 this transformInfoInterface categoryPropertiesFactoryInterface level
    pure this

init_3 :: StoreThemeCategory -> TransformInfoInterface.TransformInfoInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO ()
init_3 this transformInfoInterface categoryPropertiesFactoryInterface level = do
        Category.init_2 this.base (categoryPropertiesFactoryInterface) (level)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).themeVector (assignedValue)
        pure ()

new_4 :: TransformInfoInterface.TransformInfoInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO StoreThemeCategory
new_4 transformInfoInterface rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
    this <- newRecord_
    init_4 this transformInfoInterface rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface
    pure this

init_4 :: StoreThemeCategory -> TransformInfoInterface.TransformInfoInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO ()
init_4 this transformInfoInterface rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
        Category.init_3 this.base (rootCategoryInterface) (parentCategoryInterface) (categoryPropertiesFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).themeVector (assignedValue)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_4 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO StoreThemeCategory
new_4 transformInfoInterface node categoryPropertiesFactoryInterface level = do
    this <- newRecord_
    init_4 this transformInfoInterface node categoryPropertiesFactoryInterface level
    pure this

init_4 :: StoreThemeCategory -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> Int -> IO ()
init_4 this transformInfoInterface node categoryPropertiesFactoryInterface level = do
        Category.init_2 this.base (categoryPropertiesFactoryInterface) (level)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).themeVector (assignedValue)
        Control.Monad.void (StoreThemeCategory.addThemes this node)
        pure ()

new_5 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO StoreThemeCategory
new_5 transformInfoInterface node rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
    this <- newRecord_
    init_5 this transformInfoInterface node rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface
    pure this

init_5 :: StoreThemeCategory -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface -> IO ()
init_5 this transformInfoInterface node rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface = do
        Category.init_3 this.base (rootCategoryInterface) (parentCategoryInterface) (categoryPropertiesFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).transformInfoInterface (transformInfoInterface)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).themeVector (assignedValue)
        Control.Monad.void (StoreThemeCategory.addThemes this node)
        pure ()


getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: StoreThemeCategory))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: StoreThemeCategory))

getTransformInfoInterface_impl :: StoreThemeCategory -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        pure ((jget (this).transformInfoInterface))


-- throws Exception
addThemes :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
addThemes object_ a1 = jmethod object_ "addThemes" (\() -> (addThemes_impl (javaCast object_ :: StoreThemeCategory))) () a1

addThemes_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
addThemes_super object_ a1 = (addThemes_impl (javaCast object_ :: StoreThemeCategory)) a1

addThemes_impl :: StoreThemeCategory -> Node.Node -> IO (())
addThemes_impl this node = do
        themesNode <- (DomSearchHelper.getNode (jget ((jio (ThemesData.getInstance))).nAME) (jio (Node.getChildNodes node)))
        nodeList <- (Node.getChildNodes themesNode)
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            themeNode <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName themeNode))) (jget ((jio (ThemeData.getInstance))).nAME))) == 0) $ do
                Control.Monad.void (BasicArrayList.add ((jget (this).themeVector)) (jio (ThemeValidation.new_2 this themeNode)))
        pure ()


addTheme :: (JavaObjectClass this_) => this_ -> ThemeValidation.ThemeValidation -> IO (())
addTheme object_ a1 = jmethod object_ "addTheme" (\() -> (addTheme_impl (javaCast object_ :: StoreThemeCategory))) () a1

addTheme_super :: (JavaObjectClass this_) => this_ -> ThemeValidation.ThemeValidation -> IO (())
addTheme_super object_ a1 = (addTheme_impl (javaCast object_ :: StoreThemeCategory)) a1

addTheme_impl :: StoreThemeCategory -> ThemeValidation.ThemeValidation -> IO (())
addTheme_impl this themeValidation = do
        Control.Monad.void (BasicArrayList.add ((jget (this).themeVector)) themeValidation)
        pure ()


getThemes :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getThemes object_ = jmethod object_ "getThemes" (\() -> (getThemes_impl (javaCast object_ :: StoreThemeCategory))) ()

getThemes_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getThemes_super object_ = (getThemes_impl (javaCast object_ :: StoreThemeCategory))

getThemes_impl :: StoreThemeCategory -> IO (BasicArrayList.BasicArrayList)
getThemes_impl this = do
        pure ((jget (this).themeVector))


-- throws Exception
isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: StoreThemeCategory))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: StoreThemeCategory))

isValid_impl :: StoreThemeCategory -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        when (Prelude.not (jio (booleanValue ((jio (Category.isValid_super this.base)))))) $ do
            javaReturn (False)
        pure (True)


-- throws Exception
toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: StoreThemeCategory))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: StoreThemeCategory))

toHashMap_impl :: StoreThemeCategory -> IO (HashMap.HashMap)
toHashMap_impl this = do
        categoryHashMap <- (Category.toHashMap_super this.base)
        Control.Monad.void (HashMap.put categoryHashMap (jget ((jio (ThemesData.getInstance))).nAME) (jget (this).themeVector))
        pure (categoryHashMap)


-- throws Exception
toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: StoreThemeCategory))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: StoreThemeCategory))

toVector_impl :: StoreThemeCategory -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        categoryVector <- (Category.toVector_super this.base)
        pure (categoryVector)


