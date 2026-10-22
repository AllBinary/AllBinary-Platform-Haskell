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
-- package org.allbinary.data.tables.transform.info
module TransformInfoEntityBuilder where

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
import qualified TransformInfoEntityFactory -- same package or java.lang
import qualified TransformInfoEntity -- same package or java.lang
import qualified TransformInfoHttpStoreFactory -- org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory
import qualified TransformInfoObjectConfigAndManipulatorFactory -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory
import qualified TransformInfoObjectConfigGeneratorFactory -- org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory

data TransformInfoEntityBuilder = TransformInfoEntityBuilder
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoEntityBuilder where
    javaNull = javaNullRecord "TransformInfoEntityBuilder"

instance JavaEquals TransformInfoEntityBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoEntityBuilder where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoEntityBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoEntityBuilder
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformInfoEntityBuilder header_
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoEntityBuilder -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformInfoEntityBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoEntityBuilder -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TransformInfoEntity.TransformInfoEntity)
getInstance = do
        (TransformInfoEntityFactory.getInstance (javaCast (jio (TransformInfoObjectConfigGeneratorFactory.getInstance))) (javaCast (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance))) (javaCast (jio (TransformInfoHttpStoreFactory.getInstance))))


