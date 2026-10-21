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
module TransformInfoObjectConfigNoManipulationFactory where

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
import qualified TransformInfoObjectConfig -- same package or java.lang
import qualified TransformInfoObjectConfigInterface -- same package or java.lang
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformInfoObjectConfigNoManipulationFactory = TransformInfoObjectConfigNoManipulationFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoObjectConfigNoManipulationFactory where
    javaNull = javaNullRecord "TransformInfoObjectConfigNoManipulationFactory"

instance JavaEquals TransformInfoObjectConfigNoManipulationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigNoManipulationFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigNoManipulationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectConfigNoManipulationFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformInfoObjectConfigNoManipulationFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformInfoObjectConfigNoManipulationFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformInfoObjectConfigNoManipulationFactory)
getInstance = do
        pure (TransformInfoObjectConfigNoManipulationFactory.instance_)

new_ :: IO TransformInfoObjectConfigNoManipulationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigNoManipulationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoObjectConfigNoManipulationFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TransformInfoObjectConfigNoManipulationFactory)) a1 a2

getInstance_impl :: TransformInfoObjectConfigNoManipulationFactory -> TransformInfoInterface.TransformInfoInterface -> AbPath.AbPath -> IO (TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface)
getInstance_impl this transformInfoInterface objectConfigFileAbPath = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Could Not Load Object Config" this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            transformInfoObjectConfigData <- (TransformInfoObjectConfigData.getInstance)
            data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget (transformInfoObjectConfigData).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance transformInfoObjectConfigData))).eNCRYPTED_EXTENSION)))) objectConfigFileAbPath)
            (fmap (\value_ -> javaCast value_ :: TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface) (TransformInfoObjectConfig.new_2 transformInfoInterface (jio (DomDocumentHelper.create data_))))


