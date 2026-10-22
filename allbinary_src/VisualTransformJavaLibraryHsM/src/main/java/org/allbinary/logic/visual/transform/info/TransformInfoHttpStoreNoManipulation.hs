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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoHttpStoreNoManipulation (module TransformInfoHttpStoreNoManipulation, module TransformInfoHttpStore) where

import TransformInfoHttpStore hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setObjectConfigFile, setObjectConfigFile_super, setObjectConfigFile_impl, setObjectConfig, setObjectConfig_super, setObjectConfig_impl)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TransformInfoObjectConfigNoManipulationFactory -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory
import qualified TransformInfoHttpStore

data TransformInfoHttpStoreNoManipulation = TransformInfoHttpStoreNoManipulation
    { header_ :: JavaHeader
    , base :: TransformInfoHttpStore.TransformInfoHttpStore
    }

instance JavaNull TransformInfoHttpStoreNoManipulation where
    javaNull = javaNullRecord "TransformInfoHttpStoreNoManipulation"

instance JavaEquals TransformInfoHttpStoreNoManipulation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpStoreNoManipulation where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpStoreNoManipulation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransformInfoHttpStoreNoManipulation
newRecord_ = do
    base <- TransformInfoHttpStore.newRecord_
    let header_ = base.header_
    let this = TransformInfoHttpStoreNoManipulation header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "setObjectConfigFile" (\() -> setObjectConfigFile_impl this)
    jregisterMethod header_ "setObjectConfig" (\() -> setObjectConfig_impl this)
    pure this

initFields_ :: TransformInfoHttpStoreNoManipulation -> IO ()
initFields_ this = do
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO TransformInfoHttpStoreNoManipulation
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: TransformInfoHttpStoreNoManipulation -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        TransformInfoHttpStore.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
setObjectConfigFile :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile object_ a1 = jmethod object_ "setObjectConfigFile" (\() -> (setObjectConfigFile_impl (javaCast object_ :: TransformInfoHttpStoreNoManipulation))) () a1

setObjectConfigFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfigFile_super object_ a1 = (setObjectConfigFile_impl (javaCast object_ :: TransformInfoHttpStoreNoManipulation)) a1

setObjectConfigFile_impl :: TransformInfoHttpStoreNoManipulation -> String -> IO (())
setObjectConfigFile_impl this value = do
        Control.Monad.void (TransformInfoHttpStore.setObjectConfigFileName this value)
        Control.Monad.void (TransformInfoHttpStore.setObjectConfigInterface this (javaCast (jio (TransformInfoObjectConfigNoManipulationFactory.getInstance_2 ((jio (TransformInfoObjectConfigNoManipulationFactory.getInstance))) (javaCast this) (jio (TransformInfoHttpStore.getObjectConfigFilePath this))))))
        pure ()


-- throws Exception
setObjectConfig :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig object_ a1 = jmethod object_ "setObjectConfig" (\() -> (setObjectConfig_impl (javaCast object_ :: TransformInfoHttpStoreNoManipulation))) () a1

setObjectConfig_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setObjectConfig_super object_ a1 = (setObjectConfig_impl (javaCast object_ :: TransformInfoHttpStoreNoManipulation)) a1

setObjectConfig_impl :: TransformInfoHttpStoreNoManipulation -> String -> IO (())
setObjectConfig_impl this value = do
        javaThrow ((JavaException "Exception" "Should not set from config"))
        pure ()


