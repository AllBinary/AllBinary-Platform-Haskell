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
-- package org.allbinary.logic.visual.transform.info.objectConfig
module TransformInfoObjectConfigAndManipulatorFactoryInterface where

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
import qualified Document -- org.w3c.dom.Document

-- Java interface: the classes that implement it have these functions
data TransformInfoObjectConfigAndManipulatorFactoryInterface = TransformInfoObjectConfigAndManipulatorFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoObjectConfigAndManipulatorFactoryInterface where
    javaNull = javaNullRecord "TransformInfoObjectConfigAndManipulatorFactoryInterface"

instance JavaEquals TransformInfoObjectConfigAndManipulatorFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigAndManipulatorFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigAndManipulatorFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransformInfoObjectConfigAndManipulatorFactoryInterface
fromHeader_ header = TransformInfoObjectConfigAndManipulatorFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransformInfoObjectConfigAndManipulatorFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> o3 -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: AbPath.AbPath) = getInstance_overload1 this a1 a2 (javaCast a3 :: AbPath.AbPath)
    | jisInstanceOf a3 (javaNull :: Document.Document) = getInstance_overload2 this a1 a2 (javaCast a3 :: Document.Document)
    | otherwise = getInstance_overload2 this a1 a2 (javaCast a3 :: Document.Document)

-- throws Exception
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface))) () a1 a2 a3

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1_super object_ a1 a2 a3 = (getInstance_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface)) a1 a2 a3

getInstance_overload1_impl :: TransformInfoObjectConfigAndManipulatorFactoryInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload1_impl this abeClientInformation transformInfoInterface objectConfigFileAbPath = javaAbstractMethod "getInstance"


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface)) a1 a2

getInstance_2_impl :: TransformInfoObjectConfigAndManipulatorFactoryInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_impl this abeClientInformation transformInfoInterface = javaAbstractMethod "getInstance"


-- throws Exception
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface))) () a1 a2 a3

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2_super object_ a1 a2 a3 = (getInstance_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactoryInterface)) a1 a2 a3

getInstance_overload2_impl :: TransformInfoObjectConfigAndManipulatorFactoryInterface -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_overload2_impl this abeClientInformation transformInfoInterface document = javaAbstractMethod "getInstance"


