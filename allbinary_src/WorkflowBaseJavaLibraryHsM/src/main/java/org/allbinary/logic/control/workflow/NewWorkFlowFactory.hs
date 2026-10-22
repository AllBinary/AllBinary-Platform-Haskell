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
module NewWorkFlowFactory where

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
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NewWorkFlowFactory = NewWorkFlowFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NewWorkFlowFactory where
    javaNull = javaNullRecord "NewWorkFlowFactory"

instance JavaEquals NewWorkFlowFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NewWorkFlowFactory where
    (==) = jrecordEquals

instance JavaObjectClass NewWorkFlowFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NewWorkFlowFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = NewWorkFlowFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_3" (\() -> getInstance_3_impl this)
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: NewWorkFlowFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (NewWorkFlowFactory)
getInstance = do
        pure (NewWorkFlowFactory.instance_)

new_ :: IO NewWorkFlowFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NewWorkFlowFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception, LicensingException
getInstance_3 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3 object_ a1 a2 a3 = jmethod object_ "getInstance_3" (\() -> (getInstance_3_impl (javaCast object_ :: NewWorkFlowFactory))) () a1 a2 a3

getInstance_3_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3_super object_ a1 a2 a3 = (getInstance_3_impl (javaCast object_ :: NewWorkFlowFactory)) a1 a2 a3

getInstance_3_impl :: NewWorkFlowFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3_impl this abeClientInformation hashMap pageContext = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this "getInstance(HashMap)" e)
            javaThrow (e)
            ) $ do
            let className = (javaCast (jio (HashMap.get hashMap (DynamicObjectData.nAME))) :: String)
            let params = (jnewArray (2) javaNull)
            let classes = (jnewArray (2) javaNull)
            assignedValue <- (jobjectGetClass hashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (AbeFactory.getClass ((jio (AbeFactory.getInstance))) abeClientInformation "javax.servlet.jsp.PageContext")
            jsetIndex classes (1) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast hashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast pageContext :: Any.Any)))
            anyType <- (AbeFactory.getInstance_4 ((jio (AbeFactory.getInstance))) abeClientInformation className classes params)
            pure ((javaCast (jio (WorkFlowWrapper.new_1 anyType)) :: WorkFlowInterface.WorkFlowInterface))


-- throws Exception, LicensingException
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: NewWorkFlowFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: NewWorkFlowFactory)) a1 a2

getInstance_2_impl :: NewWorkFlowFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_2_impl this abeClientInformation className = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            if ((className /= javaNull) && ((Prelude.fromEnum (Prelude.compare className (jget (stringUtil).eMPTY_STRING)) - 1) /= 0)) then do
                anyType <- (AbeFactory.getInstance_4 ((jio (AbeFactory.getInstance))) abeClientInformation className javaNull javaNull)
                javaReturn ((javaCast (jio (WorkFlowWrapper.new_1 anyType)) :: WorkFlowInterface.WorkFlowInterface))
            else do
                javaThrow ((JavaException "Exception" "No WorkFlow ClassName"))


