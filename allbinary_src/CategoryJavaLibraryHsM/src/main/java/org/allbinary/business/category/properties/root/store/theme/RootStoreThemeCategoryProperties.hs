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
module RootStoreThemeCategoryProperties (module RootStoreThemeCategoryProperties, module RootStoreCategoryProperties) where

import RootStoreCategoryProperties hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initPath, initPath_super, initPath_impl)
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
import qualified PageContext -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified RootStoreCategoryProperties -- org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoHttpStoreInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Node -- org.w3c.dom.Node

data RootStoreThemeCategoryProperties = RootStoreThemeCategoryProperties
    { header_ :: JavaHeader
    , base :: RootStoreCategoryProperties.RootStoreCategoryProperties
    }

instance JavaNull RootStoreThemeCategoryProperties where
    javaNull = javaNullRecord "RootStoreThemeCategoryProperties"

instance JavaEquals RootStoreThemeCategoryProperties where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootStoreThemeCategoryProperties where
    (==) = jrecordEquals

instance JavaObjectClass RootStoreThemeCategoryProperties where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RootStoreThemeCategoryProperties
newRecord_ = do
    base <- RootStoreCategoryProperties.newRecord_
    let header_ = base.header_
    let this = RootStoreThemeCategoryProperties header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "initPath" (\() -> initPath_impl this)
    pure this

initFields_ :: RootStoreThemeCategoryProperties -> IO ()
initFields_ this = do
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO RootStoreThemeCategoryProperties
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: RootStoreThemeCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        RootStoreCategoryProperties.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

-- Java overloaded constructors with 2 parameters: call the overload for the types of the arguments
new_2 :: (JavaObjectClass o2) => TransformInfoInterface.TransformInfoInterface -> o2 -> IO RootStoreThemeCategoryProperties
new_2 a1 a2
    | jisInstanceOf a2 (javaNull :: AbPath.AbPath) = new_2_overload1 a1 (javaCast a2 :: AbPath.AbPath)
    | jisInstanceOf a2 (javaNull :: Node.Node) = new_2_overload2 a1 (javaCast a2 :: Node.Node)
    | jisInstanceOf a2 (javaNull :: HashMap.HashMap) = new_2_overload3 a1 (javaCast a2 :: HashMap.HashMap)
    | otherwise = new_2_overload3 a1 (javaCast a2 :: HashMap.HashMap)

init_2 :: (JavaObjectClass o2) => RootStoreThemeCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> o2 -> IO ()
init_2 this a1 a2
    | jisInstanceOf a2 (javaNull :: AbPath.AbPath) = init_2_overload1 this a1 (javaCast a2 :: AbPath.AbPath)
    | jisInstanceOf a2 (javaNull :: Node.Node) = init_2_overload2 this a1 (javaCast a2 :: Node.Node)
    | jisInstanceOf a2 (javaNull :: HashMap.HashMap) = init_2_overload3 this a1 (javaCast a2 :: HashMap.HashMap)
    | otherwise = init_2_overload3 this a1 (javaCast a2 :: HashMap.HashMap)


new_2_overload1 :: TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO RootStoreThemeCategoryProperties
new_2_overload1 transformInfoInterface abPath = do
    this <- newRecord_
    init_2_overload1 this transformInfoInterface abPath
    pure this

init_2_overload1 :: RootStoreThemeCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO ()
init_2_overload1 this transformInfoInterface abPath = do
        RootStoreCategoryProperties.init_2 this.base (transformInfoInterface) (abPath)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_2_overload2 :: TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO RootStoreThemeCategoryProperties
new_2_overload2 transformInfoInterface node = do
    this <- newRecord_
    init_2_overload2 this transformInfoInterface node
    pure this

init_2_overload2 :: RootStoreThemeCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> Node.Node -> IO ()
init_2_overload2 this transformInfoInterface node = do
        RootStoreCategoryProperties.init_2 this.base (transformInfoInterface) (node)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_2_overload3 :: TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO RootStoreThemeCategoryProperties
new_2_overload3 transformInfoInterface categoryPropertiesHashMap = do
    this <- newRecord_
    init_2_overload3 this transformInfoInterface categoryPropertiesHashMap
    pure this

init_2_overload3 :: RootStoreThemeCategoryProperties -> TransformInfoInterface.TransformInfoInterface -> HashMap.HashMap -> IO ()
init_2_overload3 this transformInfoInterface categoryPropertiesHashMap = do
        RootStoreCategoryProperties.init_2 this.base (transformInfoInterface) (categoryPropertiesHashMap)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
initPath :: (JavaObjectClass this_) => this_ -> IO (())
initPath object_ = jmethod object_ "initPath" (\() -> (initPath_impl (javaCast object_ :: RootStoreThemeCategoryProperties))) ()

initPath_super :: (JavaObjectClass this_) => this_ -> IO (())
initPath_super object_ = (initPath_impl (javaCast object_ :: RootStoreThemeCategoryProperties))

initPath_impl :: RootStoreThemeCategoryProperties -> IO (())
initPath_impl this = do
        let transformInfoHttpStoreInterface = (javaCast (jget (this).base.transformInfoInterface) :: TransformInfoHttpStoreInterface.TransformInfoHttpStoreInterface)
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (TransformInfoHttpStoreInterface.getStoreName transformInfoHttpStoreInterface))))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFrontInterface)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).tHEMEPATH))
        abPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        let httpServletRequest = (javaCast (jio (PageContext.getRequest ((jio (TransformInfoHttpStoreInterface.getPageContext transformInfoHttpStoreInterface))))) :: HttpServletRequest.HttpServletRequest)
        assignedValue <- (AbPath.new_2 (javaToString (jio (HttpServletRequest.getContextPath httpServletRequest)) ++ (jio (AbPath.toString abPath))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset (this).base.webAppAbPath (assignedValue)
        Control.Monad.void (RootStoreCategoryProperties.setRootFilePath this (jio (AbPath.new_2 ((jio (URLGLOBALS.getMainPath)) ++ (jio (AbPath.toString abPath))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))))
        pure ()


