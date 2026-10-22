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
module TagWorkFlowFactory where

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
import qualified WorkFlowInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TagWorkFlowFactory = TagWorkFlowFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TagWorkFlowFactory where
    javaNull = javaNullRecord "TagWorkFlowFactory"

instance JavaEquals TagWorkFlowFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TagWorkFlowFactory where
    (==) = jrecordEquals

instance JavaObjectClass TagWorkFlowFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TagWorkFlowFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TagWorkFlowFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_3" (\() -> getInstance_3_impl this)
    pure this

initFields_ :: TagWorkFlowFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TagWorkFlowFactory)
getInstance = do
        pure (TagWorkFlowFactory.instance_)

new_ :: IO TagWorkFlowFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TagWorkFlowFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception, LicensingException
getInstance_3 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3 object_ a1 a2 a3 = jmethod object_ "getInstance_3" (\() -> (getInstance_3_impl (javaCast object_ :: TagWorkFlowFactory))) () a1 a2 a3

getInstance_3_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3_super object_ a1 a2 a3 = (getInstance_3_impl (javaCast object_ :: TagWorkFlowFactory)) a1 a2 a3

getInstance_3_impl :: TagWorkFlowFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (WorkFlowInterface.WorkFlowInterface)
getInstance_3_impl this abeClientInformation propertiesHashMap pageContext = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                let workFlowClassName = (javaCast (jio (HashMap.get propertiesHashMap (DynamicObjectData.nAME))) :: String)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Failed To Get Instance: ")
                Control.Monad.void (StringMaker.append stringBuffer workFlowClassName)
                Control.Monad.void (StringMaker.append stringBuffer "->")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass TagWorkFlowFactory.instance_))))))
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            let workFlowClassName = (javaCast (jio (HashMap.get propertiesHashMap (DynamicObjectData.nAME))) :: String)
            let params = (jnewArray (2) javaNull)
            let classes = (jnewArray (2) javaNull)
            assignedValue <- (jobjectGetClass propertiesHashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (AbeFactory.getClass ((jio (AbeFactory.getInstance))) abeClientInformation "javax.servlet.jsp.PageContext")
            jsetIndex classes (1) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast propertiesHashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast pageContext :: Any.Any)))
            pure ((javaCast (jio (AbeFactory.getInstance_4 ((jio (AbeFactory.getInstance))) abeClientInformation workFlowClassName classes params)) :: WorkFlowInterface.WorkFlowInterface))


