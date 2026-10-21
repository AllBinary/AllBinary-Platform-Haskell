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
-- package org.allbinary.logic.control.workflow
module DbWorkFlowFactory where

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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified WorkFlowWrapper -- same package or java.lang
import qualified WorkFlowInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data DbWorkFlowFactory = DbWorkFlowFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull DbWorkFlowFactory where
    javaNull = javaNullRecord "DbWorkFlowFactory"

instance JavaEquals DbWorkFlowFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DbWorkFlowFactory where
    (==) = jrecordEquals

instance JavaObjectClass DbWorkFlowFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DbWorkFlowFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = DbWorkFlowFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: DbWorkFlowFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (DbWorkFlowFactory)
getInstance = do
        pure (DbWorkFlowFactory.instance_)

new_ :: IO DbWorkFlowFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DbWorkFlowFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception, LicensingException
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: DbWorkFlowFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: DbWorkFlowFactory)) a1 a2

getInstance_impl :: DbWorkFlowFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_impl this abeClientInformation hashMap = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getInstance(HashMap)" e)
            javaThrow (e)
            ) $ do
            let className = (javaCast (jio (HashMap.get hashMap (DynamicObjectData.nAME))) :: String)
            let params = (jnewArray (1) javaNull)
            let classes = (jnewArray (1) javaNull)
            assignedValue <- (jobjectGetClass hashMap)
            jsetIndex classes (0) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast hashMap :: Any.Any)))
            anyType <- (AbeFactory.getInstance ((jio (AbeFactory.getInstance))) abeClientInformation className classes params)
            pure ((javaCast (jio (WorkFlowWrapper.new_1 anyType)) :: WorkFlowInterface.WorkFlowInterface))


