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
-- package org.allbinary.logic.visual.transform.generator
module TransformGeneratorUtil where

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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformInfoDomNode -- org.allbinary.logic.visual.transform.info.TransformInfoDomNode
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified StoreFileGenerator -- org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator

data TransformGeneratorUtil = TransformGeneratorUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformGeneratorUtil where
    javaNull = javaNullRecord "TransformGeneratorUtil"

instance JavaEquals TransformGeneratorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformGeneratorUtil where
    (==) = jrecordEquals

instance JavaObjectClass TransformGeneratorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformGeneratorUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformGeneratorUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "generate_overload1" (\() -> generate_overload1_impl this)
    jregisterMethod header_ "generate_overload2" (\() -> generate_overload2_impl this)
    pure this

initFields_ :: TransformGeneratorUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformGeneratorUtil)
getInstance = do
        pure (TransformGeneratorUtil.instance_)

new_ :: IO TransformGeneratorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformGeneratorUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of generate: calls the overload for the types of the arguments
generate :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> o2 -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate this a1 a2 a3
    | jisInstanceOf a2 (javaNull :: TransformInfoInterface.TransformInfoInterface) = generate_overload1 this a1 (javaCast a2 :: TransformInfoInterface.TransformInfoInterface) a3
    | jisInstanceOf a2 (javaNull :: TransformInfoDomNode.TransformInfoDomNode) = generate_overload2 this a1 (javaCast a2 :: TransformInfoDomNode.TransformInfoDomNode) a3
    | otherwise = generate_overload2 this a1 (javaCast a2 :: TransformInfoDomNode.TransformInfoDomNode) a3

-- throws Exception
generate_overload1 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload1 object_ a1 a2 a3 = jmethod object_ "generate_overload1" (\() -> (generate_overload1_impl (javaCast object_ :: TransformGeneratorUtil))) () a1 a2 a3

generate_overload1_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload1_super object_ a1 a2 a3 = (generate_overload1_impl (javaCast object_ :: TransformGeneratorUtil)) a1 a2 a3

generate_overload1_impl :: TransformGeneratorUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload1_impl this abeClientInformation transformInfoInterface ownerTransformInfoInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate a view" this "generate()" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Generating View: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "generate()")
            componentInterface <- (fmap (\value_ -> javaCast value_ :: TransformInterface.TransformInterface) (TransformFactory.getInstance ((jio (TransformFactory.getInstance))) abeClientInformation (jio (TransformInfoInterface.getName transformInfoInterface)) ownerTransformInfoInterface))
            result <- (TransformInterface.view componentInterface)
            let httpTransformInfoInterface = (javaCast (jio (TransformInterface.getTransformInfoInterface componentInterface)) :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            inputOutputTypeData <- (InputOutputTypeData.getInstance)
            if ((jstringIndexOf result "<HTML>" 0) >= 0) then do
                Control.Monad.void (TransformInfoHttpInterface.put ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget (inputOutputTypeData).nAME) (jget (inputOutputTypeData).dEFAULT))
            else do
                Control.Monad.void (TransformInfoHttpInterface.put ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (jget (inputOutputTypeData).nAME) (jget (inputOutputTypeData).dEFAULT_FRAGMENT))
            Control.Monad.void (StoreFileGenerator.process ((jio (StoreFileGenerator.new_1 (jio (TransformInterface.getTransformInfoInterface componentInterface))))) result)
        pure ()


-- throws Exception
generate_overload2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoDomNode.TransformInfoDomNode -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload2 object_ a1 a2 a3 = jmethod object_ "generate_overload2" (\() -> (generate_overload2_impl (javaCast object_ :: TransformGeneratorUtil))) () a1 a2 a3

generate_overload2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoDomNode.TransformInfoDomNode -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload2_super object_ a1 a2 a3 = (generate_overload2_impl (javaCast object_ :: TransformGeneratorUtil)) a1 a2 a3

generate_overload2_impl :: TransformGeneratorUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoDomNode.TransformInfoDomNode -> TransformInfoInterface.TransformInfoInterface -> IO (())
generate_overload2_impl this abeClientInformation transformInfoDomNode ownerTransformInfoInterface = do
        Control.Monad.void (TransformGeneratorUtil.generate this abeClientInformation (jio (TransformInfoDomNode.getTransformInfoInterface transformInfoDomNode)) ownerTransformInfoInterface)
        pure ()


