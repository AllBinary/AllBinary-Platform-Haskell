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
module StoreTagWorkFlowFactory where

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
import qualified StoreWorkFlowInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data StoreTagWorkFlowFactory = StoreTagWorkFlowFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StoreTagWorkFlowFactory where
    javaNull = javaNullRecord "StoreTagWorkFlowFactory"

instance JavaEquals StoreTagWorkFlowFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreTagWorkFlowFactory where
    (==) = jrecordEquals

instance JavaObjectClass StoreTagWorkFlowFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StoreTagWorkFlowFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StoreTagWorkFlowFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: StoreTagWorkFlowFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StoreTagWorkFlowFactory)
getInstance = do
        pure (StoreTagWorkFlowFactory.instance_)

new_ :: IO StoreTagWorkFlowFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StoreTagWorkFlowFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception, LicensingException
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (StoreWorkFlowInterface.StoreWorkFlowInterface)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: StoreTagWorkFlowFactory))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (StoreWorkFlowInterface.StoreWorkFlowInterface)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: StoreTagWorkFlowFactory)) a1 a2 a3

getInstance_impl :: StoreTagWorkFlowFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (StoreWorkFlowInterface.StoreWorkFlowInterface)
getInstance_impl this abeClientInformation propertiesHashMap pageContext = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                let workFlowClassName = (javaCast (jio (HashMap.get propertiesHashMap (DynamicObjectData.nAME))) :: String)
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Error Creating WorkFlow: ")
                Control.Monad.void (StringMaker.append stringBuffer workFlowClassName)
                Control.Monad.void (StringMaker.append stringBuffer "->")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass StoreTagWorkFlowFactory.instance_))))))
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            let workFlowClassName = (javaCast (jio (HashMap.get propertiesHashMap (DynamicObjectData.nAME))) :: String)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Creating WorkFlow: ")
                Control.Monad.void (StringMaker.append stringBuffer workFlowClassName)
                Control.Monad.void (StringMaker.append stringBuffer "->")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass StoreTagWorkFlowFactory.instance_))))))
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (commonStrings).gET_INSTANCE))
            let params = (jnewArray (2) javaNull)
            let classes = (jnewArray (2) javaNull)
            assignedValue <- (jobjectGetClass propertiesHashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (AbeFactory.getClass ((jio (AbeFactory.getInstance))) abeClientInformation "javax.servlet.jsp.PageContext")
            jsetIndex classes (1) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast propertiesHashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast pageContext :: Any.Any)))
            pure ((javaCast (jio (AbeFactory.getInstance ((jio (AbeFactory.getInstance))) abeClientInformation workFlowClassName classes params)) :: StoreWorkFlowInterface.StoreWorkFlowInterface))


