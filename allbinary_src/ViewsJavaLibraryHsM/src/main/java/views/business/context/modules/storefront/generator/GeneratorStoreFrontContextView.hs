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
-- package views.business.context.modules.storefront.generator
module GeneratorStoreFrontContextView (module GeneratorStoreFrontContextView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, view, view_super, view_impl, logUtil)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformsGeneratorUtil -- org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

data GeneratorStoreFrontContextView = GeneratorStoreFrontContextView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull GeneratorStoreFrontContextView where
    javaNull = javaNullRecord "GeneratorStoreFrontContextView"

instance JavaEquals GeneratorStoreFrontContextView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeneratorStoreFrontContextView where
    (==) = jrecordEquals

instance JavaObjectClass GeneratorStoreFrontContextView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeneratorStoreFrontContextView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = GeneratorStoreFrontContextView header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: GeneratorStoreFrontContextView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO GeneratorStoreFrontContextView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: GeneratorStoreFrontContextView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> String -> IO (String)
view object_ a1 = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: GeneratorStoreFrontContextView))) () a1

view_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
view_super object_ a1 = (view_impl (javaCast object_ :: GeneratorStoreFrontContextView)) a1

view_impl :: GeneratorStoreFrontContextView -> String -> IO (String)
view_impl this group = do
    javaCatchReturn $ do
        result <- (TransformsGeneratorUtil.generateComponentsFromObjectConfig ((jio (TransformsGeneratorUtil.getInstance))) (jget (this).base.base.abeClientInformation) (jio (HttpStoreComponentView.getTransformInfoInterface this)) group)
        if (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).jSPEXTRAOUTPUT))) then do
            javaReturn (result)
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
-- Java overload of view with a different parameter count: give it a different name
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: GeneratorStoreFrontContextView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: GeneratorStoreFrontContextView))

view_impl :: GeneratorStoreFrontContextView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            (GeneratorStoreFrontContextView.view this (jget ((jio (TransformInfosData.getInstance))).aLL))


