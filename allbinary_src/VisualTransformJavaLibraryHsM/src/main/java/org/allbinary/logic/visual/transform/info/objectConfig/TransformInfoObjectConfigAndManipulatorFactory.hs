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
module TransformInfoObjectConfigAndManipulatorFactory (module TransformInfoObjectConfigAndManipulatorFactory, module TransformInfoObjectConfigAndManipulatorFactoryBase) where

import TransformInfoObjectConfigAndManipulatorFactoryBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, getInstance_3_overload1, getInstance_3_overload1_super, getInstance_3_overload1_impl, getInstance, getInstance_2, getInstance_2_super, getInstance_2_impl, getInstance, getInstance_3_overload2, getInstance_3_overload2_super, getInstance_3_overload2_impl, getInstance, logUtil, instance_)
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
import qualified TransformInfoObjectConfigData -- same package or java.lang
import qualified TransformInfoObjectConfigInterface -- same package or java.lang
import qualified TransformInfoObjectConfig -- same package or java.lang
import qualified GenericStoreTransformInfoObjectConfig -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified TransformInfoObjectConfigAndManipulatorFactoryBase

data TransformInfoObjectConfigAndManipulatorFactory = TransformInfoObjectConfigAndManipulatorFactory
    { header_ :: JavaHeader
    , base :: TransformInfoObjectConfigAndManipulatorFactoryBase.TransformInfoObjectConfigAndManipulatorFactoryBase
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoObjectConfigAndManipulatorFactory where
    javaNull = javaNullRecord "TransformInfoObjectConfigAndManipulatorFactory"

instance JavaEquals TransformInfoObjectConfigAndManipulatorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigAndManipulatorFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigAndManipulatorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO TransformInfoObjectConfigAndManipulatorFactory
newRecord_ = do
    base <- TransformInfoObjectConfigAndManipulatorFactoryBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = TransformInfoObjectConfigAndManipulatorFactory header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_3_overload1" (\() -> getInstance_3_overload1_impl this)
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    jregisterMethod header_ "getInstance_3_overload2" (\() -> getInstance_3_overload2_impl this)
    pure this

initFields_ :: TransformInfoObjectConfigAndManipulatorFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformInfoObjectConfigAndManipulatorFactory)
getInstance = do
        pure (TransformInfoObjectConfigAndManipulatorFactory.instance_)

new_ :: IO TransformInfoObjectConfigAndManipulatorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigAndManipulatorFactory -> IO ()
init_ this = do
        TransformInfoObjectConfigAndManipulatorFactoryBase.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance_3 :: (JavaObjectClass this_, JavaObjectClass o3) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> o3 -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3 this a1 a2 a3
    | jisInstanceOf a3 (javaNull :: AbPath.AbPath) = getInstance_3_overload1 this a1 a2 (javaCast a3 :: AbPath.AbPath)
    | jisInstanceOf a3 (javaNull :: Document.Document) = getInstance_3_overload2 this a1 a2 (javaCast a3 :: Document.Document)
    | otherwise = getInstance_3_overload2 this a1 a2 (javaCast a3 :: Document.Document)

-- throws Exception
getInstance_3_overload1 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_3_overload1" (\() -> (getInstance_3_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory))) () a1 a2 a3

getInstance_3_overload1_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload1_super object_ a1 a2 a3 = (getInstance_3_overload1_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory)) a1 a2 a3

getInstance_3_overload1_impl :: TransformInfoObjectConfigAndManipulatorFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload1_impl this abeClientInformation transformInfoInterface objectConfigFileAbPath = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Could Not Load Object Config" (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance)) (jget ((jget (this).base.commonStrings)).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectConfigData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance))).eNCRYPTED_EXTENSION)))) objectConfigFileAbPath)
            (fmap (\value_ -> javaCast value_ :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface) (TransformInfoObjectConfigAndManipulatorFactory.getInstance_3 this abeClientInformation transformInfoInterface (jio (DomDocumentHelper.create_1 data_))))


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory)) a1 a2

getInstance_2_impl :: TransformInfoObjectConfigAndManipulatorFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_2_impl this abeClientInformation transformInfoInterface = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            error <- newIORef ("Failed To Get Instance: ")
            when (transformInfoInterface /= javaNull) $ do
                jset error (((jget error) ++ (jio (TransformInfoInterface.getName transformInfoInterface))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.commonStrings)).eXCEPTION) (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance)) (jget ((jget this.base.commonStrings)).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            if ((transformInfoInterface /= javaNull) && (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (TransformInfoInterface.getStoreName transformInfoInterface)))))) then do
                javaReturn ((javaCast (jio (GenericStoreTransformInfoObjectConfig.new_2 abeClientInformation transformInfoInterface)) :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface))
            else do
                javaReturn ((javaCast (jio (TransformInfoObjectConfig.new_1 transformInfoInterface)) :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface))


-- throws Exception
getInstance_3_overload2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_3_overload2" (\() -> (getInstance_3_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory))) () a1 a2 a3

getInstance_3_overload2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload2_super object_ a1 a2 a3 = (getInstance_3_overload2_impl (javaCast object_ :: TransformInfoObjectConfigAndManipulatorFactory)) a1 a2 a3

getInstance_3_overload2_impl :: TransformInfoObjectConfigAndManipulatorFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_3_overload2_impl this abeClientInformation transformInfoInterface document = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            error <- newIORef ("Failed To Get Instance: ")
            when (transformInfoInterface /= javaNull) $ do
                jset error (((jget error) ++ (jio (TransformInfoInterface.getName transformInfoInterface))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.commonStrings)).eXCEPTION) (jio (TransformInfoObjectConfigAndManipulatorFactory.getInstance)) "getInstance(document)" e)
            javaThrow (e)
            ) $ do
            stringValidationUtil <- (StringValidationUtil.getInstance)
            if ((transformInfoInterface /= javaNull) && (Prelude.not (jio (StringValidationUtil.isEmpty stringValidationUtil (jio (TransformInfoInterface.getStoreName transformInfoInterface)))))) then do
                javaReturn ((javaCast (jio (GenericStoreTransformInfoObjectConfig.new_3 abeClientInformation transformInfoInterface document)) :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface))
            else do
                javaReturn ((javaCast (jio (TransformInfoObjectConfig.new_2 transformInfoInterface document)) :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface))


