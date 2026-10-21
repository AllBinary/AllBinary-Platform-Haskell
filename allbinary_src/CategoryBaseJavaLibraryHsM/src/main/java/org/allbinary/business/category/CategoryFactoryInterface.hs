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
module CategoryFactoryInterface where

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
import qualified HashMap -- java.util.HashMap
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified Node -- org.w3c.dom.Node

-- Java interface: the classes that implement it have these functions
data CategoryFactoryInterface = CategoryFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull CategoryFactoryInterface where
    javaNull = javaNullRecord "CategoryFactoryInterface"

instance JavaEquals CategoryFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass CategoryFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CategoryFactoryInterface
fromHeader_ header = CategoryFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CategoryFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getRootInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: CategoryFactoryInterface))) ()

getRootInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ = (getRootInstance_impl (javaCast object_ :: CategoryFactoryInterface))

getRootInstance_impl :: CategoryFactoryInterface -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this = javaAbstractMethod "getRootInstance"


-- Java overload of getRootInstance with a different parameter count: give it a different name
getRootInstance :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ a1 = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: CategoryFactoryInterface))) () a1

getRootInstance_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ a1 = (getRootInstance_impl (javaCast object_ :: CategoryFactoryInterface)) a1

getRootInstance_impl :: CategoryFactoryInterface -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this categoryPath = javaAbstractMethod "getRootInstance"


getRootInstanceFromNode :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode object_ a1 = jmethod object_ "getRootInstanceFromNode" (\() -> (getRootInstanceFromNode_impl (javaCast object_ :: CategoryFactoryInterface))) () a1

getRootInstanceFromNode_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_super object_ a1 = (getRootInstanceFromNode_impl (javaCast object_ :: CategoryFactoryInterface)) a1

getRootInstanceFromNode_impl :: CategoryFactoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_impl this node = javaAbstractMethod "getRootInstanceFromNode"


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> o3 -> IO (CategoryInterface.CategoryInterface)
getInstance this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: String) = getInstance_overload1 this a1 a2 (javaCast a3 :: String)
    | jisInstanceOf a3 (javaNull :: Node.Node) = getInstance_overload2 this a1 a2 (javaCast a3 :: Node.Node)
    | jisInstanceOf a3 (javaNull :: HashMap.HashMap) = getInstance_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)
    | otherwise = getInstance_overload3 this a1 a2 (javaCast a3 :: HashMap.HashMap)

getInstance_overload1 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: CategoryFactoryInterface))) () a1 a2 a3

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_super object_ a1 a2 a3 = (getInstance_overload1_impl (javaCast object_ :: CategoryFactoryInterface)) a1 a2 a3

getInstance_overload1_impl :: CategoryFactoryInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> String -> IO (CategoryInterface.CategoryInterface)
getInstance_overload1_impl this rootCategoryInterface parentCategoryInterface name = javaAbstractMethod "getInstance"


getInstance_overload2 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: CategoryFactoryInterface))) () a1 a2 a3

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_super object_ a1 a2 a3 = (getInstance_overload2_impl (javaCast object_ :: CategoryFactoryInterface)) a1 a2 a3

getInstance_overload2_impl :: CategoryFactoryInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getInstance_overload2_impl this rootCategoryInterface parentCategoryInterface node = javaAbstractMethod "getInstance"


getInstance_overload3 :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3 object_ a1 a2 a3 = jmethod object_ "getInstance_overload3" (\() -> (getInstance_overload3_impl (javaCast object_ :: CategoryFactoryInterface))) () a1 a2 a3

getInstance_overload3_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_super object_ a1 a2 a3 = (getInstance_overload3_impl (javaCast object_ :: CategoryFactoryInterface)) a1 a2 a3

getInstance_overload3_impl :: CategoryFactoryInterface -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> HashMap.HashMap -> IO (CategoryInterface.CategoryInterface)
getInstance_overload3_impl this rootCategoryInterface parentCategoryInterface categoryPropertiesHashMap = javaAbstractMethod "getInstance"


