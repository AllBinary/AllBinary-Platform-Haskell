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
-- package org.allbinary.business.category.store
module StoreCategoryFactory (module StoreCategoryFactory, module CategoryAbstractFactory) where

import CategoryAbstractFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRootInstance, getRootInstance_super, getRootInstance_impl, getRootInstance_1, getRootInstance_1_super, getRootInstance_1_impl, getRootInstance, getRootInstanceFromNode, getRootInstanceFromNode_super, getRootInstanceFromNode_impl, logUtil, transformInfoInterface)
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
import qualified CommonStrings -- same package or java.lang
import qualified Category -- org.allbinary.business.category.Category
import qualified CategoryAbstractFactory -- org.allbinary.business.category.CategoryAbstractFactory
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified CategoryUtil -- org.allbinary.business.category.CategoryUtil
import qualified CategoryPropertiesFactoryInterface -- org.allbinary.business.category.properties.CategoryPropertiesFactoryInterface
import qualified RootStoreCategoryPropertiesFactory -- org.allbinary.business.category.properties.root.store.RootStoreCategoryPropertiesFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Node -- org.w3c.dom.Node

-- implements CategoryFactoryInterface
data StoreCategoryFactory = StoreCategoryFactory
    { header_ :: JavaHeader
    , base :: CategoryAbstractFactory.CategoryAbstractFactory
    , logUtil :: IORef (LogUtil.LogUtil)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull StoreCategoryFactory where
    javaNull = javaNullRecord "StoreCategoryFactory"

instance JavaEquals StoreCategoryFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreCategoryFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreCategoryFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreCategoryFactory
newRecord_ = do
    base <- CategoryAbstractFactory.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    let this = StoreCategoryFactory header_ base logUtil transformInfoInterface
    jregisterLevel header_ this
    CategoryFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getRootInstance" (\() -> getRootInstance_impl this)
    jregisterMethod header_ "getRootInstance_1" (\() -> getRootInstance_1_impl this)
    jregisterMethod header_ "getRootInstanceFromNode" (\() -> getRootInstanceFromNode_impl this)
    pure this

initFields_ :: StoreCategoryFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.transformInfoInterface (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO StoreCategoryFactory
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: StoreCategoryFactory -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        CategoryAbstractFactory.init_ this.base
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "StoreCategoryFactory(TransformInfoInterface transformInfoInterface)")
        jset (this).transformInfoInterface (transformInfoInterface)
        pure ()


getRootInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance object_ = jmethod object_ "getRootInstance" (\() -> (getRootInstance_impl (javaCast object_ :: StoreCategoryFactory))) ()

getRootInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryInterface.CategoryInterface)
getRootInstance_super object_ = (getRootInstance_impl (javaCast object_ :: StoreCategoryFactory))

getRootInstance_impl :: StoreCategoryFactory -> IO (CategoryInterface.CategoryInterface)
getRootInstance_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "getInstance(String, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreCategoryPropertiesFactory.new_1 (jget (this).transformInfoInterface))) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_1 categoryPropertiesFactoryInterface)) :: CategoryInterface.CategoryInterface))


getRootInstance_1 :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1 object_ a1 = jmethod object_ "getRootInstance_1" (\() -> (getRootInstance_1_impl (javaCast object_ :: StoreCategoryFactory))) () a1

getRootInstance_1_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1_super object_ a1 = (getRootInstance_1_impl (javaCast object_ :: StoreCategoryFactory)) a1

getRootInstance_1_impl :: StoreCategoryFactory -> AbPath.AbPath -> IO (CategoryInterface.CategoryInterface)
getRootInstance_1_impl this categoryPath = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.commonStrings)).eXCEPTION) this "getInstance(String, int)" e)
            pure (javaNull)
            ) $ do
            level <- (CategoryUtil.getPathLevel categoryPath)
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreCategoryPropertiesFactory.new_2 (jget (this).transformInfoInterface) categoryPath)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            pure ((javaCast (jio (Category.new_2 categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


getRootInstanceFromNode :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode object_ a1 = jmethod object_ "getRootInstanceFromNode" (\() -> (getRootInstanceFromNode_impl (javaCast object_ :: StoreCategoryFactory))) () a1

getRootInstanceFromNode_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_super object_ a1 = (getRootInstanceFromNode_impl (javaCast object_ :: StoreCategoryFactory)) a1

getRootInstanceFromNode_impl :: StoreCategoryFactory -> Node.Node -> IO (CategoryInterface.CategoryInterface)
getRootInstanceFromNode_impl this node = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "getInstance(String, int)" e)
            pure (javaNull)
            ) $ do
            let categoryPropertiesFactoryInterface = (javaCast (jio (RootStoreCategoryPropertiesFactory.new_2 (jget (this).transformInfoInterface) node)) :: CategoryPropertiesFactoryInterface.CategoryPropertiesFactoryInterface)
            categoryPath <- (AbPath.new_2 (jio (CategoryUtil.getNameFromNode node)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            level <- (CategoryUtil.getPathLevel categoryPath)
            pure ((javaCast (jio (Category.new_2 categoryPropertiesFactoryInterface level)) :: CategoryInterface.CategoryInterface))


