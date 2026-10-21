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
module PreviewGeneratorStoreFrontContextView (module PreviewGeneratorStoreFrontContextView, module GeneratorStoreFrontContextView) where

import GeneratorStoreFrontContextView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, logUtil)
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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified GeneratorStoreFrontContextView

data PreviewGeneratorStoreFrontContextView = PreviewGeneratorStoreFrontContextView
    { header_ :: JavaHeader
    , base :: GeneratorStoreFrontContextView.GeneratorStoreFrontContextView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull PreviewGeneratorStoreFrontContextView where
    javaNull = javaNullRecord "PreviewGeneratorStoreFrontContextView"

instance JavaEquals PreviewGeneratorStoreFrontContextView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreviewGeneratorStoreFrontContextView where
    (==) = jrecordEquals

instance JavaObjectClass PreviewGeneratorStoreFrontContextView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PreviewGeneratorStoreFrontContextView
newRecord_ = do
    base <- GeneratorStoreFrontContextView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = PreviewGeneratorStoreFrontContextView header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: PreviewGeneratorStoreFrontContextView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO PreviewGeneratorStoreFrontContextView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: PreviewGeneratorStoreFrontContextView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        GeneratorStoreFrontContextView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: PreviewGeneratorStoreFrontContextView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: PreviewGeneratorStoreFrontContextView))

view_impl :: PreviewGeneratorStoreFrontContextView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            let httpTransformInfoInterface = (javaCast (jio (GeneratorStoreFrontContextView.getTransformInfoInterface this)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            Control.Monad.void (TransformInfoHttpInterface.put ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget ((jio (TransformInfoData.getInstance))).pARTIAL) ((jget ((jio (CommonSeps.getInstance))).sPACE) + (jget ((jio (TransformInfosData.getInstance))).pREVIEW)))
            (PreviewGeneratorStoreFrontContextView.view this (jget ((jio (TransformInfosData.getInstance))).pREVIEW))


