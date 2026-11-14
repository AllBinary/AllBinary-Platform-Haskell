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
-- package org.allbinary.business.category.properties.root.store.theme
module RootStoreThemeCategoryPropertiesFactory where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified RootStoreThemeCategoryProperties -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node

-- implements CategoryPropertiesFactoryInterface
data RootStoreThemeCategoryPropertiesFactory = RootStoreThemeCategoryPropertiesFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , categoryPropertiesInterface :: IORef (CategoryPropertiesInterface.CategoryPropertiesInterface)
    }

instance JavaNull RootStoreThemeCategoryPropertiesFactory where
    javaNull = javaNullRecord "RootStoreThemeCategoryPropertiesFactory"

instance JavaEquals RootStoreThemeCategoryPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootStoreThemeCategoryPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass RootStoreThemeCategoryPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO RootStoreThemeCategoryPropertiesFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    categoryPropertiesInterface <- newIORef javaNull
    let this = RootStoreThemeCategoryPropertiesFactory header_ logUtil categoryPropertiesInterface
    jregisterLevel header_ this
    CategoryPropertiesFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: RootStoreThemeCategoryPropertiesFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.categoryPropertiesInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO RootStoreThemeCategoryPropertiesFactory
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: RootStoreThemeCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreThemeCategoryProperties.new_1 transformInfoInterface)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

-- Java overloaded constructors with 2 parameters: call the overload for the types of the arguments
new_2 :: (JavaObjectClass o2) => TransformInfoInterface.TransformInfoInterface -> o2 -> IO RootStoreThemeCategoryPropertiesFactory
new_2 a1 a2
    | jisInstanceOf a2 (javaNull :: AbPath.AbPath) = new_2_overload1 a1 (javaCast a2 :: AbPath.AbPath)
    | jisInstanceOf a2 (javaNull :: Node.Node) = new_2_overload2 a1 (javaCast a2 :: Node.Node)
    | jisInstanceOf a2 (javaNull :: HashMap.HashMap) = new_2_overload3 a1 (javaCast a2 :: HashMap.HashMap)
    | otherwise = new_2_overload3 a1 (javaCast a2 :: HashMap.HashMap)

init_2 :: (JavaObjectClass o2) => RootStoreThemeCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> o2 -> IO ()
init_2 this a1 a2
    | jisInstanceOf a2 (javaNull :: AbPath.AbPath) = init_2_overload1 this a1 (javaCast a2 :: AbPath.AbPath)
    | jisInstanceOf a2 (javaNull :: Node.Node) = init_2_overload2 this a1 (javaCast a2 :: Node.Node)
    | jisInstanceOf a2 (javaNull :: HashMap.HashMap) = init_2_overload3 this a1 (javaCast a2 :: HashMap.HashMap)
    | otherwise = init_2_overload3 this a1 (javaCast a2 :: HashMap.HashMap)


new_2_overload1 :: TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO RootStoreThemeCategoryPropertiesFactory
new_2_overload1 transformInfoInterface abPath = do
    this <- newRecord_
    init_2_overload1 this transformInfoInterface abPath
    pure this

init_2_overload1 :: RootStoreThemeCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO ()
init_2_overload1 this transformInfoInterface abPath = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreThemeCategoryProperties.new_2 transformInfoInterface abPath)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

new_2_overload2 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO RootStoreThemeCategoryPropertiesFactory
new_2_overload2 transformInfoInterface node = do
    this <- newRecord_
    init_2_overload2 this transformInfoInterface node
    pure this

init_2_overload2 :: RootStoreThemeCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO ()
init_2_overload2 this transformInfoInterface node = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreThemeCategoryProperties.new_2 transformInfoInterface node)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

new_2_overload3 :: TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO RootStoreThemeCategoryPropertiesFactory
new_2_overload3 transformInfoInterface categoryPropertiesHashMap = do
    this <- newRecord_
    init_2_overload3 this transformInfoInterface categoryPropertiesHashMap
    pure this

init_2_overload3 :: RootStoreThemeCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ()
init_2_overload3 this transformInfoInterface categoryPropertiesHashMap = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreThemeCategoryProperties.new_2 transformInfoInterface categoryPropertiesHashMap)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: RootStoreThemeCategoryPropertiesFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: RootStoreThemeCategoryPropertiesFactory))

getInstance_impl :: RootStoreThemeCategoryPropertiesFactory -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            pure ((javaCast (jget (this).categoryPropertiesInterface) :: CategoryPropertiesInterface.CategoryPropertiesInterface))


