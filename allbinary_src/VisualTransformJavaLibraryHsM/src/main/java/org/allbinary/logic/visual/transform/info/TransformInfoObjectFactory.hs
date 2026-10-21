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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoObjectFactory where

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
import qualified TransformInfoInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformInfoObjectFactory = TransformInfoObjectFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformInfoObjectFactory where
    javaNull = javaNullRecord "TransformInfoObjectFactory"

instance JavaEquals TransformInfoObjectFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoObjectFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoObjectFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoObjectFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformInfoObjectFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: TransformInfoObjectFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformInfoObjectFactory)
getInstance = do
        pure (TransformInfoObjectFactory.instance_)

new_ :: IO TransformInfoObjectFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoObjectFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance object_ a1 a2 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: TransformInfoObjectFactory))) () a1 a2

getInstance_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_super object_ a1 a2 = (getInstance_impl (javaCast object_ :: TransformInfoObjectFactory)) a1 a2

getInstance_impl :: TransformInfoObjectFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInterface.TransformInterface)
getInstance_impl this abeClientInformation transformInfoInterface = do
        handle (\(e :: JavaException) -> do
            error <- newIORef ("Failed To Get Instance: ")
            when (transformInfoInterface /= javaNull) $ do
                jset error (((jget error) ++ (jio (TransformInfoInterface.getName transformInfoInterface))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget error) this (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORY))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Creating View: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget (commonStrings).gET_INSTANCE))
            let params = (jnewArray (1) javaNull)
            let classes = (jnewArray (1) javaNull)
            jsetIndex classes (0) ("TransformInfoInterface")
            jsetIndex params (0) ((jtoObject (javaCast transformInfoInterface :: Any.Any)))
            let anyType = (javaCast (jio (AbeFactory.getInstance ((jio (AbeFactory.getInstance))) abeClientInformation (jio (TransformInfoInterface.getObjectFile transformInfoInterface)) classes params)) :: TransformInterface.TransformInterface)
            when (anyType == javaNull) $ do
                if (transformInfoInterface /= javaNull) then do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer "\nNo Such View Name: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName transformInfoInterface)))
                    Control.Monad.void (StringMaker.append stringBuffer "\nNo Such View Object: ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getObjectFile transformInfoInterface)))
                    javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
                else do
                    javaThrow ((JavaException "Exception" "No Such View Object since transformInfo is null"))
            pure (anyType)


