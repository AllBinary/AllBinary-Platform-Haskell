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
-- package org.allbinary.logic.visual.transform.info.objectConfig.generator
module BasicGenerator (module BasicGenerator, module TransformInfoObjectConfigGenerator) where

import TransformInfoObjectConfigGenerator hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, process, process_super, process_impl, logUtil)
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
import qualified TransformInfoObjectConfigGenerator

data BasicGenerator = BasicGenerator
    { header_ :: JavaHeader
    , base :: TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicGenerator where
    javaNull = javaNullRecord "BasicGenerator"

instance JavaEquals BasicGenerator where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicGenerator where
    (==) = jrecordEquals

instance JavaObjectClass BasicGenerator where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicGenerator
newRecord_ = do
    base <- TransformInfoObjectConfigGenerator.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = BasicGenerator header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: BasicGenerator -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasicGenerator
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicGenerator -> IO ()
init_ this = do
        TransformInfoObjectConfigGenerator.init_ this.base
        initFields_ this
        pure ()
        pure ()


process :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicGenerator))) () a1

process_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process_super object_ a1 = (process_impl (javaCast object_ :: BasicGenerator)) a1

process_impl :: BasicGenerator -> String -> IO (String)
process_impl this input = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Processing" this (jget ((jget (this).base.commonStrings)).pROCESS))
        pure (input)


