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
module TransformInfoEntityFactory where

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
import qualified TransformInfoEntity -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoFactoryInterface -- org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface
import qualified TransformInfoObjectConfigAndManipulatorFactoryBase -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase
import qualified TransformInfoObjectConfigGeneratorFactoryInterface -- org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformInfoEntityFactory = TransformInfoEntityFactory
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoEntityFactory where
    javaNull = javaNullRecord "TransformInfoEntityFactory"

instance JavaEquals TransformInfoEntityFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoEntityFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoEntityFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoEntityFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformInfoEntityFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoEntityFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformInfoEntityFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoEntityFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: TransformInfoObjectConfigGeneratorFactoryInterface.TransformInfoObjectConfigGeneratorFactoryInterface -> TransformInfoObjectConfigAndManipulatorFactoryBase.TransformInfoObjectConfigAndManipulatorFactoryBase -> TransformInfoFactoryInterface.TransformInfoFactoryInterface -> IO (TransformInfoEntity.TransformInfoEntity)
getInstance transformInfoObjectConfigGeneratorFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoFactoryInterface = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "TransformInfoEntityFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            (TransformInfoEntity.new_3 transformInfoObjectConfigGeneratorFactoryInterface transformInfoObjectConfigAndManipulatorFactoryInterface transformInfoFactoryInterface)


