{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module TransformInfoObjectConfigAndManipulatorFactoryBase where

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
import qualified TransformInfoObjectConfigInterface -- same package or java.lang
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified TransformInfoObjectConfigAndManipulatorFactoryInterface

-- implements TransformInfoObjectConfigAndManipulatorFactoryInterface
data TransformInfoObjectConfigAndManipulatorFactoryBase = TransformInfoObjectConfigAndManipulatorFactoryBase
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TransformInfoObjectConfigAndManipulatorFactoryBase where
    javaNull = javaNullRecord "TransformInfoObjectConfigAndManipulatorFactoryBase"

instance JavaEquals TransformInfoObjectConfigAndManipulatorFactoryBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigAndManipulatorFactoryBase where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigAndManipulatorFactoryBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectConfigAndManipulatorFactoryBase
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    let this = TransformInfoObjectConfigAndManipulatorFactoryBase header_ commonStrings
    jregisterLevel header_ this
    TransformInfoObjectConfigAndManipulatorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    pure this

initFields_ :: TransformInfoObjectConfigAndManipulatorFactoryBase -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_ :: IO TransformInfoObjectConfigAndManipulatorFactoryBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigAndManipulatorFactoryBase -> IO ()
init_ this = do
    initFields_ this


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> o3 -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: AbPath.AbPath) = getInstance_overload1 this a1 a2 (javaCast a3 :: AbPath.AbPath)
    | jisInstanceOf a3 (javaNull :: Document.Document) = getInstance_overload2 this a1 a2 (javaCast a3 :: Document.Document)
    | otherwise = getInstance_overload2 this a1 a2 (javaCast a3 :: Document.Document)

-- throws Exception
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase))) () a1 a2 a3

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1_super object_ a1 a2 a3 = (getInstance_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase)) a1 a2 a3

getInstance_overload1_impl :: TransformInfoObjectConfigAndManipulatorFactoryBase -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1_impl this abeClientInformation transformInfoInterface objectConfigFileAbPath = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase)) a1 a2

getInstance_2_impl :: TransformInfoObjectConfigAndManipulatorFactoryBase -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_impl this abeClientInformation transformInfoInterface = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase))) () a1 a2 a3

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2_super object_ a1 a2 a3 = (getInstance_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryBase)) a1 a2 a3

getInstance_overload2_impl :: TransformInfoObjectConfigAndManipulatorFactoryBase -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2_impl this abeClientInformation transformInfoInterface document = do
        javaThrow ((JavaException "RuntimeException" ""))


