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
module CategoryAbstractFactory where

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
import qualified Category -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified CategoryPropertiesFactory -- org.allbinary.business.category.properties.CategoryPropertiesFactory
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node
import qualified CategoryFactoryInterface

-- implements CategoryFactoryInterface
data CategoryAbstractFactory = CategoryAbstractFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull CategoryAbstractFactory where
    javaNull = javaNullRecord "CategoryAbstractFactory"

instance JavaEquals CategoryAbstractFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryAbstractFactory where
    (==) = jrecordEquals

instance JavaObjectClass CategoryAbstractFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryAbstractFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = CategoryAbstractFactory header_ logUtil commonStrings
    jregisterLevel header_ this
    CategoryFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getRootInstance" (\() -> getRootInstance_impl this)
    jregisterMethod header_ "getRootInstance_1" (\() -> getRootInstance_1_impl this)
    jregisterMethod header_ "getRootInstanceFromNode" (\() -> getRootInstanceFromNode_impl this)
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_3_overload1" (\() -> getInstance_3_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    jregisterMethod header_ "getInstance_3_overload2" (\() -> getInstance_3_overload2_impl this)
    jregisterMethod header_ "getInstance_3_overload3" (\() -> getInstance_3_overload3_impl this)
    pure this

initFields_ :: CategoryAbstractFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO CategoryAbstractFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CategoryAbstractFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getRootInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: CategoryAbstractFactory))) ()

getRootInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ = (getRootInstance_impl (javaCast object_ :: CategoryAbstractFactory))

getRootInstance_impl :: CategoryAbstractFactory -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRootInstance_1 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1 object_ a1 = jmethod object_ "getRootInstance_1" (\() -> (getRootInstance_1_impl (javaCast object_ :: CategoryAbstractFactory))) () a1

getRootInstance_1_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1_super object_ a1 = (getRootInstance_1_impl (javaCast object_ :: CategoryAbstractFactory)) a1

getRootInstance_1_impl :: CategoryAbstractFactory -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1_impl this categoryAbPath = do
        javaThrow ((JavaException "RuntimeException" ""))


getRootInstanceFromNode :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode object_ a1 = jmethod object_ "getRootInstanceFromNode" (\() -> (getRootInstanceFromNode_impl (javaCast object_ :: CategoryAbstractFactory))) () a1

getRootInstanceFromNode_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_super object_ a1 = (getRootInstanceFromNode_impl (javaCast object_ :: CategoryAbstractFactory)) a1

getRootInstanceFromNode_impl :: CategoryAbstractFactory -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_impl this node = do
        javaThrow ((JavaException "RuntimeException" ""))


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (CategoryInterface.CategoryInterface)
getInstance this a1
    | jisInstanceOf a1 (javaNull :: String) = getInstance_overload1 this (javaCast a1 :: String)
    | jisInstanceOf a1 (javaNull :: Node.Node) = getInstance_overload2 this (javaCast a1 :: Node.Node)
    | otherwise = getInstance_overload2 this (javaCast a1 :: Node.Node)

getInstance_overload1 :: (JavaObjectClass this_) => this_ -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1 object_ a1 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: CategoryAbstractFactory))) () a1

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_super object_ a1 = (getInstance_overload1_impl (javaCast object_ :: CategoryAbstractFactory)) a1

getInstance_overload1_impl :: CategoryAbstractFactory -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_impl this categoryName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(String, int)" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstance(String)")
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryName)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_1 categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance_3 :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> o3 -> IO (CategoryInterface.CategoryInterface)
getInstance_3 this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: String) = getInstance_3_overload1 this a1 a2 (javaCast a3 :: String)
    | jisInstanceOf a3 (javaNull :: Node.Node) = getInstance_3_overload2 this a1 a2 (javaCast a3 :: Node.Node)
    | jisInstanceOf a3 (javaNull :: HashMap.HashMap) = getInstance_3_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)
    | otherwise = getInstance_3_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)

getInstance_3_overload1 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_3_overload1" (\() -> (getInstance_3_overload1_impl (javaCast object_ :: CategoryAbstractFactory))) () a1 a2 a3

getInstance_3_overload1_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload1_super object_ a1 a2 a3 = (getInstance_3_overload1_impl (javaCast object_ :: CategoryAbstractFactory)) a1 a2 a3

getInstance_3_overload1_impl :: CategoryAbstractFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload1_impl this rootCategoryInterface parentCategoryInterface categoryName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface , String, int)" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstance(CategoryInterface, CategoryInterface, String)")
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryName)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_3 rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


getInstance_overload2 :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2 object_ a1 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: CategoryAbstractFactory))) () a1

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_super object_ a1 = (getInstance_overload2_impl (javaCast object_ :: CategoryAbstractFactory)) a1

getInstance_overload2_impl :: CategoryAbstractFactory -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_impl this node = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "getInstance(Node, int)" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstance(Node)")
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_1 categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


getInstance_3_overload2 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_3_overload2" (\() -> (getInstance_3_overload2_impl (javaCast object_ :: CategoryAbstractFactory))) () a1 a2 a3

getInstance_3_overload2_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload2_super object_ a1 a2 a3 = (getInstance_3_overload2_impl (javaCast object_ :: CategoryAbstractFactory)) a1 a2 a3

getInstance_3_overload2_impl :: CategoryAbstractFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload2_impl this rootCategoryInterface parentCategoryInterface node = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface, Node, int)" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstance(CategoryInterface, CategoryInterface, Node)")
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_3 rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


getInstance_3_overload3 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload3 object_ a1 a2 a3 = jmethod object_ "getInstance_3_overload3" (\() -> (getInstance_3_overload3_impl (javaCast object_ :: CategoryAbstractFactory))) () a1 a2 a3

getInstance_3_overload3_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload3_super object_ a1 a2 a3 = (getInstance_3_overload3_impl (javaCast object_ :: CategoryAbstractFactory)) a1 a2 a3

getInstance_3_overload3_impl :: CategoryAbstractFactory -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_3_overload3_impl this rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(CategoryInterface, CategoryInterface, HashMap)" e)
            pure (javaNull)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getInstance(CategoryInterface, CategoryInterface, HashMap)")
            let categoryPropertiesFactoryInterface = (javaCast (jio (CategoryPropertiesFactory.new_1 categoryPropertiesHashMap)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_3 rootCategoryInterface parentCategoryInterface categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


