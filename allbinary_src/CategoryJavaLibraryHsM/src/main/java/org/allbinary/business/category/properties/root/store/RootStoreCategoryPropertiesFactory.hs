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
-- package org.allbinary.business.category.properties.root.store
module RootStoreCategoryPropertiesFactory where

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
import qualified RootStoreCategoryProperties -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified CategoryPropertiesInterface -- org.allbinary.business.category.properties.CategoryPropertiesInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node

-- implements CategoryPropertiesFactoryInterface
data RootStoreCategoryPropertiesFactory = RootStoreCategoryPropertiesFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , categoryPropertiesInterface :: IORef (CategoryPropertiesInterface.CategoryPropertiesInterface)
    }

instance JavaNull RootStoreCategoryPropertiesFactory where
    javaNull = javaNullRecord "RootStoreCategoryPropertiesFactory"

instance JavaEquals RootStoreCategoryPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootStoreCategoryPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass RootStoreCategoryPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RootStoreCategoryPropertiesFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    categoryPropertiesInterface <- newIORef javaNull
    let this = RootStoreCategoryPropertiesFactory header_ logUtil categoryPropertiesInterface
    jregisterLevel header_ this
    CategoryPropertiesFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: RootStoreCategoryPropertiesFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.categoryPropertiesInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO RootStoreCategoryPropertiesFactory
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: RootStoreCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreCategoryProperties.new_1 transformInfoInterface)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO RootStoreCategoryPropertiesFactory
new_2 transformInfoInterface abPath = do
    this <- newRecord_
    init_2 this transformInfoInterface abPath
    pure this

init_2 :: RootStoreCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO ()
init_2 this transformInfoInterface abPath = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreCategoryProperties.new_2 transformInfoInterface abPath)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO RootStoreCategoryPropertiesFactory
new_2 transformInfoInterface node = do
    this <- newRecord_
    init_2 this transformInfoInterface node
    pure this

init_2 :: RootStoreCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO ()
init_2 this transformInfoInterface node = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreCategoryProperties.new_2 transformInfoInterface node)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_2 :: TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO RootStoreCategoryPropertiesFactory
new_2 transformInfoInterface categoryPropertiesHashMap = do
    this <- newRecord_
    init_2 this transformInfoInterface categoryPropertiesHashMap
    pure this

init_2 :: RootStoreCategoryPropertiesFactory -> TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ()
init_2 this transformInfoInterface categoryPropertiesHashMap = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (RootStoreCategoryProperties.new_2 transformInfoInterface categoryPropertiesHashMap)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: RootStoreCategoryPropertiesFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: RootStoreCategoryPropertiesFactory))

getInstance_impl :: RootStoreCategoryPropertiesFactory -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            pure ((javaCast (jget (this).categoryPropertiesInterface) :: CategoryPropertiesInterface.CategoryPropertiesInterface))


