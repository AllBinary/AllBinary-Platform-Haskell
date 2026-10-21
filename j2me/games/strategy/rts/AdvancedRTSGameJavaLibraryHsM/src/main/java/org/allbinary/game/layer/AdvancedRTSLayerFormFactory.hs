{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.layer
module AdvancedRTSLayerFormFactory (module AdvancedRTSLayerFormFactory, module RTSLayerFormFactory) where

import RTSLayerFormFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, logUtil, scrollSelectionForm)
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
import qualified RTSScrollSelectionFormFactory -- same package or java.lang
import qualified RTSLayer -- same package or java.lang
import qualified RTSLayerFormFactory -- org.allbinary.game.input.RTSLayerFormFactory
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified ItemArraySingletonFactoryInterface -- org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface

data AdvancedRTSLayerFormFactory = AdvancedRTSLayerFormFactory
    { header_ :: JavaHeader
    , base :: RTSLayerFormFactory.RTSLayerFormFactory
    , logUtil :: IORef (LogUtil.LogUtil)
    , scrollSelectionForm :: IORef (ScrollSelectionForm.ScrollSelectionForm)
    }

instance JavaNull AdvancedRTSLayerFormFactory where
    javaNull = javaNullRecord "AdvancedRTSLayerFormFactory"

instance JavaEquals AdvancedRTSLayerFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvancedRTSLayerFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass AdvancedRTSLayerFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AdvancedRTSLayerFormFactory
newRecord_ = do
    base <- RTSLayerFormFactory.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    scrollSelectionForm <- newIORef javaNull
    let this = AdvancedRTSLayerFormFactory header_ base logUtil scrollSelectionForm
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: AdvancedRTSLayerFormFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.scrollSelectionForm (javaNull)
    pure ()

new_2 :: String -> ItemArraySingletonFactoryInterface.ItemArraySingletonFactoryInterface -> IO AdvancedRTSLayerFormFactory
new_2 label itemArrayFactoryInterface = do
    this <- newRecord_
    init_2 this label itemArrayFactoryInterface
    pure this

init_2 :: AdvancedRTSLayerFormFactory -> String -> ItemArraySingletonFactoryInterface.ItemArraySingletonFactoryInterface -> IO ()
init_2 this label itemArrayFactoryInterface = do
        RTSLayerFormFactory.init_ this.base
        initFields_ this
        scrollSelectionForm <- newIORef =<< (ScrollSelectionForm.getNullScrollSelectionForm)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            items <- (ItemArraySingletonFactoryInterface.getItems itemArrayFactoryInterface)
            assignedValue <- (RTSScrollSelectionFormFactory.getInstance label items)
            jset scrollSelectionForm (assignedValue)
        jset (this).scrollSelectionForm ((jget scrollSelectionForm))
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: AdvancedRTSLayerFormFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: AdvancedRTSLayerFormFactory)) a1

getInstance_impl :: AdvancedRTSLayerFormFactory -> RTSLayer.RTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getInstance_impl this rtsLayer = do
        pure ((jget (this).scrollSelectionForm))


