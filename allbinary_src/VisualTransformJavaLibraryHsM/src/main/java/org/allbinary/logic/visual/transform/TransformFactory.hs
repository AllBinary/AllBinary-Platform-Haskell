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
-- package org.allbinary.logic.visual.transform
module TransformFactory where

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
import qualified TransformInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified TransformInfoEntity -- org.allbinary.data.tables.transform.info.TransformInfoEntity
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoHttpFactory -- org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectFactory -- org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformFactory = TransformFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull TransformFactory where
    javaNull = javaNullRecord "TransformFactory"

instance JavaEquals TransformFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = TransformFactory header_ logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    jregisterMethod header_ "getInstance_overload2" (\() -> getInstance_overload2_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (TransformFactory)
getInstance = do
        pure (TransformFactory.instance_)

new_ :: IO TransformFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o3) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> o2 -> o3 -> IO (TransformInterface.TransformInterface)
getInstance this a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) && jisInstanceOf a3 (javaNull :: TransformInfoInterface.TransformInfoInterface) = getInstance_overload1 this a1 (javaCast a2 :: String) (javaCast a3 :: TransformInfoInterface.TransformInfoInterface)
    | jisInstanceOf a2 (javaNull :: HashMap.HashMap) && jisInstanceOf a3 (javaNull :: PageContext.PageContext) = getInstance_overload2 this a1 (javaCast a2 :: HashMap.HashMap) (javaCast a3 :: PageContext.PageContext)
    | otherwise = getInstance_overload2 this a1 (javaCast a2 :: HashMap.HashMap) (javaCast a3 :: PageContext.PageContext)

-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_overload1 object_ a1 a2 a3 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: TransformFactory))) () a1 a2 a3

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_overload1_super object_ a1 a2 a3 = (getInstance_overload1_impl (javaCast object_ :: TransformFactory)) a1 a2 a3

getInstance_overload1_impl :: TransformFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_overload1_impl this abeClientInformation viewName ownerTransformInfoInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating Transform: " ++ viewName) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            let ownerTransformInfoHttpInterface = (javaCast ownerTransformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            transformInfoEntity <- (TransformInfoEntityBuilder.getInstance)
            transformInfoInterface <- (TransformInfoEntity.get transformInfoEntity viewName (jio (TransformInfoHttpInterface.getPropertiesHashMap ownerTransformInfoHttpInterface)) (jio (TransformInfoHttpInterface.getPageContext ownerTransformInfoHttpInterface)))
            when (transformInfoInterface == javaNull) $ do
                javaThrow ((JavaException "Exception" ("No Such View In DB: " ++ viewName)))
            Control.Monad.void (TransformInfoInterface.setChild transformInfoInterface)
            anyType <- (TransformInfoObjectFactory.getInstance ((jio (TransformInfoObjectFactory.getInstance))) abeClientInformation transformInfoInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created Transform: " ++ viewName) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            pure ((javaCast anyType :: TransformInterface.TransformInterface))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInterface.TransformInterface)
getInstance_overload2 object_ a1 a2 a3 = jmethod object_ "getInstance_overload2" (\() -> (getInstance_overload2_impl (javaCast object_ :: TransformFactory))) () a1 a2 a3

getInstance_overload2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInterface.TransformInterface)
getInstance_overload2_super object_ a1 a2 a3 = (getInstance_overload2_impl (javaCast object_ :: TransformFactory)) a1 a2 a3

getInstance_overload2_impl :: TransformFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> HashMap.HashMap -> PageContext.PageContext -> IO (TransformInterface.TransformInterface)
getInstance_overload2_impl this abeClientInformation propertiesHashMap pageContext = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Failed To Get Instance: ")
                Control.Monad.void (StringMaker.append stringBuffer (javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (TransformInfoData.getInstance))).nAME))) :: String))
                Control.Monad.void (StringMaker.append stringBuffer "->TransformFactory")
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            transformInfoData <- (TransformInfoData.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating Transform: " ++ javaToString (jio (HashMap.get propertiesHashMap (jget (transformInfoData).nAME)))) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            transformInfoEntity <- (TransformInfoEntityBuilder.getInstance)
            transformInfoInterface <- newIORef =<< (TransformInfoEntity.get transformInfoEntity (javaCast (jio (HashMap.get propertiesHashMap (jget (transformInfoData).nAME))) :: String) propertiesHashMap pageContext)
            if ((jget transformInfoInterface) /= javaNull) then do
                Control.Monad.void (TransformInfoInterface.override ((jget transformInfoInterface)) propertiesHashMap)
            else do
                jset transformInfoInterface ((javaCast (jio (TransformInfoHttpFactory.getInstance propertiesHashMap pageContext)) :: TransformInfoInterface.TransformInfoInterface))
            anyType <- (TransformInfoObjectFactory.getInstance ((jio (TransformInfoObjectFactory.getInstance))) abeClientInformation (jget transformInfoInterface))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created Transform: " ++ javaToString (jio (HashMap.get propertiesHashMap (jget (transformInfoData).nAME)))) this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            pure ((javaCast anyType :: TransformInterface.TransformInterface))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TransformFactory)) a1 a2

getInstance_impl :: TransformFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_impl this abeClientInformation transformInfoInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "getInstance(TransformInfoInterface)" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating Transform: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "getInstance(TransformInfoInterface)")
            anyType <- (TransformInfoObjectFactory.getInstance ((jio (TransformInfoObjectFactory.getInstance))) abeClientInformation transformInfoInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created Transform: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "getInstance(TransformInfoInterface)")
            pure ((javaCast anyType :: TransformInterface.TransformInterface))


