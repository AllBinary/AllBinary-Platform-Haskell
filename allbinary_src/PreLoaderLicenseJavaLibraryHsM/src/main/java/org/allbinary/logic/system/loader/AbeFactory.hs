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
-- package org.allbinary.logic.system.loader
module AbeFactory where

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
import qualified WebappClassLoaderInfo -- same package or java.lang
import qualified ClassLoader -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified AbeClassLoader -- same package or java.lang
import qualified Constructor -- java.lang.reflect.Constructor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ConstructorUtil -- org.allbinary.logic.java.anyType.ConstructorUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbKeys -- org.allbinary.logic.system.security.AbKeys
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AbeFactory = AbeFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , useCustomLoader :: IORef (Bool)
    }

instance JavaNull AbeFactory where
    javaNull = javaNullRecord "AbeFactory"

instance JavaEquals AbeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbeFactory where
    (==) = jrecordEquals

instance JavaObjectClass AbeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbeFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    useCustomLoader <- newIORef False
    let this = AbeFactory header_ logUtil useCustomLoader
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    jregisterMethod header_ "getInstance_4" (\() -> getInstance_4_impl this)
    jregisterMethod header_ "getClass" (\() -> getClass_impl this)
    pure this

initFields_ :: AbeFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.useCustomLoader (False)
    pure ()


getInstance :: IO (AbeFactory)
getInstance = do
        pure (AbeFactory.instance_)

new_ :: IO AbeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbeFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Any.Any)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: AbeFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Any.Any)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: AbeFactory)) a1 a2

getInstance_2_impl :: AbeFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Any.Any)
getInstance_2_impl this abeClientInformation className = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Failure for: " ++ className) this "getInstance(classname)" e)
            javaThrow (e)
            ) $ do
            (fmap jtoObject (Class.newInstance ((jio (AbeFactory.getClass this abeClientInformation className)))))


-- throws LicensingException
getInstance_4 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> JavaArray (Class.Class) -> JavaArray (Any.Any) -> IO (Any.Any)
getInstance_4 object_ a1 a2 a3 a4 = jmethod object_ "getInstance_4" (\() -> (getInstance_4_impl (javaCast object_ :: AbeFactory))) () a1 a2 a3 a4

getInstance_4_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> JavaArray (Class.Class) -> JavaArray (Any.Any) -> IO (Any.Any)
getInstance_4_super object_ a1 a2 a3 a4 = (getInstance_4_impl (javaCast object_ :: AbeFactory)) a1 a2 a3 a4

getInstance_4_impl :: AbeFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> JavaArray (Class.Class) -> JavaArray (Any.Any) -> IO (Any.Any)
getInstance_4_impl this abeClientInformation className classes params = do
    javaCatchReturn $ do
        constructor <- newIORef (javaNull)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Failure for: ")
                Control.Monad.void (StringMaker.append stringBuffer className)
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (ConstructorUtil.view (jget constructor) (jget ((jio (CommonSeps.getInstance))).nEW_LINE))))
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "getInstance(className,params)" e)
            javaThrow (e)
            ) $ do
            parent <- (WebappClassLoaderInfo.getLoader)
            if (jget (this).useCustomLoader) then do
                loader <- (fmap (\value_ -> javaCast value_ :: ClassLoader.ClassLoader) (AbeClassLoader.new_2 parent (jio (AbKeys.getKey ((jio (AbKeys.getInstance))) abeClientInformation className))))
                myClass <- (ClassLoader.loadClass loader className)
                assignedValue <- (Class.getConstructor myClass classes)
                jset constructor (assignedValue)
                javaReturn =<< (fmap jtoObject (Constructor.newInstance ((jget constructor)) params))
            else do
                myClass <- (ClassLoader.loadClass parent className)
                assignedValue <- (Class.getConstructor myClass classes)
                jset constructor (assignedValue)
                javaReturn =<< (fmap jtoObject (Constructor.newInstance ((jget constructor)) params))


-- throws LicensingException
getClass :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Class.Class)
getClass object_ a1 a2 = jmethod object_ "getClass" (\() -> (getClass_impl (javaCast object_ :: AbeFactory))) () a1 a2

getClass_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Class.Class)
getClass_super object_ a1 a2 = (getClass_impl (javaCast object_ :: AbeFactory)) a1 a2

getClass_impl :: AbeFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> String -> IO (Class.Class)
getClass_impl this abeClientInformation className = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).lOADERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Failure for: " ++ className) this "getClass(className)" e)
            javaThrow (e)
            ) $ do
            parent <- (WebappClassLoaderInfo.getLoader)
            if (jget (this).useCustomLoader) then do
                loader <- (fmap (\value_ -> javaCast value_ :: ClassLoader.ClassLoader) (AbeClassLoader.new_2 parent (jio (AbKeys.getKey ((jio (AbKeys.getInstance))) abeClientInformation className))))
                c <- (ClassLoader.loadClass loader className)
                javaReturn (c)
            else do
                c <- (ClassLoader.loadClass parent className)
                javaReturn (c)


