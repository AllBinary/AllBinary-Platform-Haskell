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
-- package views.business.context.modules.storefront.customizer
module StoreCustomizerComponentUtil where

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
import qualified CustomizerUtil -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformGeneratorUtil -- org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil
import qualified TransformInfo -- org.allbinary.logic.visual.transform.info.TransformInfo
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

data StoreCustomizerComponentUtil = StoreCustomizerComponentUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreCustomizerComponentUtil where
    javaNull = javaNullRecord "StoreCustomizerComponentUtil"

instance JavaEquals StoreCustomizerComponentUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreCustomizerComponentUtil where
    (==) = jrecordEquals

instance JavaObjectClass StoreCustomizerComponentUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreCustomizerComponentUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StoreCustomizerComponentUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: StoreCustomizerComponentUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StoreCustomizerComponentUtil)
getInstance = do
        pure (StoreCustomizerComponentUtil.instance_)

new_ :: IO StoreCustomizerComponentUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreCustomizerComponentUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
generate :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (String)
generate object_ a1 a2 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: StoreCustomizerComponentUtil))) () a1 a2

generate_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (String)
generate_super object_ a1 a2 = (generate_impl (javaCast object_ :: StoreCustomizerComponentUtil)) a1 a2

generate_impl :: StoreCustomizerComponentUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (String)
generate_impl this abeClientInformation transformInfoInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Generating Modified Views For: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "generateModifiedViews()")
        customizerUtil <- (CustomizerUtil.getInstance)
        allCustomizedViews <- (CustomizerUtil.getTransformInfoObjectConfigGroupComponentNodes customizerUtil transformInfoInterface)
        size <- (BasicArrayList.size allCustomizedViews)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextTransformInfoInterface = (javaCast (jio (BasicArrayList.get allCustomizedViews index)) :: TransformInfo.TransformInfo)
            allViewsToBeModified <- (CustomizerUtil.getTransformInfoObjectConfigComponentNodesToCustomize customizerUtil transformInfoInterface nextTransformInfoInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View or component that was modified by a Customizer: " ++ (jio (TransformInfo.getName nextTransformInfoInterface))) this "generateModifiedViews()")
            Control.Monad.void (StoreCustomizerComponentUtil.generate this abeClientInformation transformInfoInterface allViewsToBeModified)
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
-- Java overload of generate with a different parameter count: give it a different name
generate :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> BasicArrayList.BasicArrayList -> IO (())
generate object_ a1 a2 a3 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: StoreCustomizerComponentUtil))) () a1 a2 a3

generate_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> BasicArrayList.BasicArrayList -> IO (())
generate_super object_ a1 a2 a3 = (generate_impl (javaCast object_ :: StoreCustomizerComponentUtil)) a1 a2 a3

generate_impl :: StoreCustomizerComponentUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> BasicArrayList.BasicArrayList -> IO (())
generate_impl this abeClientInformation transformInfoInterface allViewsToBeModifiedVector = do
        customizerUtil <- (CustomizerUtil.getInstance)
        size <- (BasicArrayList.size allViewsToBeModifiedVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextTransformInfoInterface = (javaCast (jio (BasicArrayList.get allViewsToBeModifiedVector index)) :: TransformInfo.TransformInfo)
            specifiedTransformInfoInterface <- (CustomizerUtil.getTransformInfoInterfaceToCustomize customizerUtil transformInfoInterface nextTransformInfoInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Retrieved: " ++ (jio (TransformInfoInterface.getName specifiedTransformInfoInterface))) this "generateModifiedViews()")
            Control.Monad.void (TransformGeneratorUtil.generate ((jio (TransformGeneratorUtil.getInstance))) abeClientInformation nextTransformInfoInterface specifiedTransformInfoInterface)
        pure ()


