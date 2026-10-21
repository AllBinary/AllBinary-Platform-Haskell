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
module StoreThemeCategoryFactory where

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
import qualified StoreThemeCategory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified CategoryUtil -- org.allbinary.business.category.CategoryUtil
import qualified CategoryPropertiesFactory -- org.allbinary.business.category.properties.CategoryPropertiesFactory
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified RootStoreThemeCategoryPropertiesFactory -- org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node

-- implements CategoryFactoryInterface
data StoreThemeCategoryFactory = StoreThemeCategoryFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull StoreThemeCategoryFactory where
    javaNull = javaNullRecord "StoreThemeCategoryFactory"

instance JavaEquals StoreThemeCategoryFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreThemeCategoryFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreThemeCategoryFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreThemeCategoryFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    let this = StoreThemeCategoryFactory header_ logUtil commonStrings transformInfoInterface
    jregisterLevel header_ this
    CategoryFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getRootInstance" (\() -> getRootInstance_impl this)
    jregisterMethod header_ "getRootInstance" (\() -> getRootInstance_impl this)
    jregisterMethod header_ "getRootInstanceFromNode" (\() -> getRootInstanceFromNode_impl this)
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    jregisterMethod header_ "getInstance_overload3" (\() -> getInstance_overload3_impl this)
    jregisterMethod header_ "getInstance_overload3" (\() -> getInstance_overload3_impl this)
    pure this

initFields_ :: StoreThemeCategoryFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.transformInfoInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO StoreThemeCategoryFactory
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: StoreThemeCategoryFactory -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        jset (this).transformInfoInterface (transformInfoInterface)
        pure ()


getRootInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: StoreThemeCategoryFactory))) ()

getRootInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ = (getRootInstance_impl (javaCast object_ :: StoreThemeCategoryFactory))

getRootInstance_impl :: StoreThemeCategoryFactory -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getRootInstance()" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreThemeCategoryPropertiesFactory.new_1 (jget (this).transformInfoInterface))) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_3 (jget (this).transformInfoInterface) categoryPropertiesFactoryInterface 0)) :: CategoryInterface.CategoryInterface))


-- Java overload of getRootInstance with a different parameter count: give it a different name
getRootInstance :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ a1 = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1

getRootInstance_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ a1 = (getRootInstance_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1

getRootInstance_impl :: StoreThemeCategoryFactory -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this categoryAbPath = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getRootInstance(String)" e)
            pure (javaNull)
            ) $ do
            level <- (CategoryUtil.getPathLevel categoryAbPath)
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreThemeCategoryPropertiesFactory.new_2 (jget (this).transformInfoInterface) categoryAbPath)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_3 (jget (this).transformInfoInterface) categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


getRootInstanceFromNode :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode object_ a1 = jmethod object_ "getRootInstanceFromNode" (\() -> (getRootInstanceFromNode_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1

getRootInstanceFromNode_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_super object_ a1 = (getRootInstanceFromNode_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1

getRootInstanceFromNode_impl :: StoreThemeCategoryFactory -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_impl this node = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getRootInstance(node)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreThemeCategoryPropertiesFactory.new_2 (jget (this).transformInfoInterface) node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            categoryPath <- (AbPath.new_2 (jio (CategoryUtil.getNameFromNode node)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            level <- (CategoryUtil.getPathLevel categoryPath)
            pure ((javaCast (jio (StoreThemeCategory.new_4 (jget (this).transformInfoInterface) node categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance this a1 a2
    | jisInstanceOf a1 (javaNull :: String) = getInstance_overload1 this (javaCast a1 :: String) a2
    | jisInstanceOf a1 (javaNull :: Node.Node) = getInstance_overload2 this (javaCast a1 :: Node.Node) a2
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload3 this (javaCast a1 :: HashMap.HashMap) a2
    | otherwise = getInstance_overload3 this (javaCast a1 :: HashMap.HashMap) a2

getInstance_overload1 :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1 object_ a1 a2 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_super object_ a1 a2 = (getInstance_overload1_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2

getInstance_overload1_impl :: StoreThemeCategoryFactory -> String -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_impl this categoryPath level = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(String, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryPath)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_3 (jget (this).transformInfoInterface) categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> o3 -> IO (CategoryInterface.CategoryInterface)
getInstance this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: String) = getInstance_overload1 this a1 a2 (javaCast a3 :: String)
    | jisInstanceOf a3 (javaNull :: Node.Node) = getInstance_overload2 this a1 a2 (javaCast a3 :: Node.Node)
    | jisInstanceOf a3 (javaNull :: HashMap.HashMap) = getInstance_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)
    | otherwise = getInstance_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)

-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2 a3

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_super object_ a1 a2 a3 = (getInstance_overload1_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2 a3

getInstance_overload1_impl :: StoreThemeCategoryFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_impl this rootCategoryInterface parentCategoryInterface categoryPath = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface , String, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryPath)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_4 (jget (this).transformInfoInterface) rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> Node.Node -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2 object_ a1 a2 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> Node.Node -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_super object_ a1 a2 = (getInstance_overload2_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2

getInstance_overload2_impl :: StoreThemeCategoryFactory -> Node.Node -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_impl this node level = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(Node, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_3 (jget (this).transformInfoInterface) categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2 a3

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_super object_ a1 a2 a3 = (getInstance_overload2_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2 a3

getInstance_overload2_impl :: StoreThemeCategoryFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_impl this rootCategoryInterface parentCategoryInterface node = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface, Node, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_4 (jget (this).transformInfoInterface) rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload3 :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3 object_ a1 a2 = jmethod object_ "getInstance_overload3" (\() -> (getInstance_overload3_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2

getInstance_overload3_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_super object_ a1 a2 = (getInstance_overload3_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2

getInstance_overload3_impl :: StoreThemeCategoryFactory -> HashMap.HashMap -> Int -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_impl this categoryPropertiesHashMap level = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(HashMap)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryPropertiesHashMap)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_3 (jget (this).transformInfoInterface) categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload3 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3 object_ a1 a2 a3 = jmethod object_ "getInstance_overload3" (\() -> (getInstance_overload3_impl (javaCast object_ :: StoreThemeCategoryFactory))) () a1 a2 a3

getInstance_overload3_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_super object_ a1 a2 a3 = (getInstance_overload3_impl (javaCast object_ :: StoreThemeCategoryFactory)) a1 a2 a3

getInstance_overload3_impl :: StoreThemeCategoryFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_impl this rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface, HashMap)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryPropertiesHashMap)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (StoreThemeCategory.new_4 (jget (this).transformInfoInterface) rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


