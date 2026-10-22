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
module TransformInfoObjectConfigGeneratorFactory where

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
import qualified StoreFileGenerator -- same package or java.lang
import qualified BasicGenerator -- same package or java.lang
import qualified TransformInfoObjectConfigGenerator -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified InputOutputTypeData -- org.allbinary.logic.io.InputOutputTypeData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TransformInfoObjectConfigGeneratorFactoryInterface

-- implements TransformInfoObjectConfigGeneratorFactoryInterface
data TransformInfoObjectConfigGeneratorFactory = TransformInfoObjectConfigGeneratorFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoObjectConfigGeneratorFactory where
    javaNull = javaNullRecord "TransformInfoObjectConfigGeneratorFactory"

instance JavaEquals TransformInfoObjectConfigGeneratorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectConfigGeneratorFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectConfigGeneratorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectConfigGeneratorFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformInfoObjectConfigGeneratorFactory header_ logUtil
    jregisterLevel header_ this
    TransformInfoObjectConfigGeneratorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    pure this

initFields_ :: TransformInfoObjectConfigGeneratorFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformInfoObjectConfigGeneratorFactory)
getInstance = do
        pure (TransformInfoObjectConfigGeneratorFactory.instance_)

new_ :: IO TransformInfoObjectConfigGeneratorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectConfigGeneratorFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: TransformInfoObjectConfigGeneratorFactory)) a1

getInstance_1_impl :: TransformInfoObjectConfigGeneratorFactory -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator)
getInstance_1_impl this transformInfoInterface = do
    javaCatchReturn $ do
        let type_ = (javaCast (jio (TransformInfoInterface.getOutputTypeName ((jio (TransformInfoInterface.getObjectConfigInterface transformInfoInterface))))) :: String)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Generating Instance for type: " ++ type_) this (jget (commonStrings).gET_INSTANCE))
        if (((type_ == javaNull) || ((Prelude.fromEnum (Prelude.compare type_ (jget ((jio (InputOutputTypeData.getInstance))).rESPONSE)) - 1) == 0)) || (jio (TransformInfoInterface.isChild transformInfoInterface))) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator) (BasicGenerator.new_))
        else if ((Prelude.fromEnum (Prelude.compare type_ (jget ((jio (InputOutputTypeData.getInstance))).fILE)) - 1) == 0) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: TransformInfoObjectConfigGenerator.TransformInfoObjectConfigGenerator) (StoreFileGenerator.new_1 transformInfoInterface))
        else do
            javaThrow ((JavaException "Exception" "No Such TransformInfoObjectConfigGenerator Type"))


