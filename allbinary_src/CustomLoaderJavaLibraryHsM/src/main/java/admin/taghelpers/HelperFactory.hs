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
-- package admin.taghelpers
module HelperFactory where

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
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data HelperFactory = HelperFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull HelperFactory where
    javaNull = javaNullRecord "HelperFactory"

instance JavaEquals HelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass HelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = HelperFactory header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: HelperFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO HelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass o5) => AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> HashMap.HashMap -> o5 -> IO (Any.Any)
getInstance a1 a2 a3 a4 a5
    | jisInstanceOf a5 (javaNull :: HttpServletRequest.HttpServletRequest) = getInstance_overload1 a1 a2 a3 a4 (javaCast a5 :: HttpServletRequest.HttpServletRequest)
    | jisInstanceOf a5 (javaNull :: PageContext.PageContext) = getInstance_overload2 a1 a2 a3 a4 (javaCast a5 :: PageContext.PageContext)
    | otherwise = getInstance_overload2 a1 a2 a3 a4 (javaCast a5 :: PageContext.PageContext)

-- throws LicensingException
getInstance_overload1 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> HashMap.HashMap -> HttpServletRequest.HttpServletRequest -> IO (Any.Any)
getInstance_overload1 abeClientInformation factoryName className hashMap httpServletRequest = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            let error = ((("Failed To Get Instance Args: HashMap=" ++ (jio (HashMap.toString hashMap))) ++ " HttpServletRequest=") ++ javaToString httpServletRequest)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put logUtil error (factoryName ++ "->HelperFactory") "getInstance(String, String, HashMap, PageContext)" e)
            javaThrow (e)
            ) $ do
            let params = (jnewArray (2) javaNull)
            let classes = (jnewArray (2) javaNull)
            abeFactory <- (AbeFactory.getInstance)
            assignedValue <- (jobjectGetClass hashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (AbeFactory.getClass abeFactory abeClientInformation "javax.servlet.http.HttpServletRequest")
            jsetIndex classes (1) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast hashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast httpServletRequest :: Any.Any)))
            anyType <- (AbeFactory.getInstance_4 abeFactory abeClientInformation className classes params)
            pure ((jtoObject anyType))


-- throws LicensingException
getInstance_overload2 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_overload2 abeClientInformation factoryName className hashMap pageContext = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                let error = ((("Failed To Get Instance Args: HashMap=" ++ (jio (HashMap.toString hashMap))) ++ " PageContext=") ++ javaToString pageContext)
                Control.Monad.void (LogUtil.put logUtil error (factoryName ++ "->HelperFactory") "getInstance(String, String, HashMap, PageContext)" e)
            javaThrow (e)
            ) $ do
            let params = (jnewArray (2) javaNull)
            let classes = (jnewArray (2) javaNull)
            abeFactory <- (AbeFactory.getInstance)
            assignedValue <- (jobjectGetClass hashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (AbeFactory.getClass abeFactory abeClientInformation "javax.servlet.jsp.PageContext")
            jsetIndex classes (1) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast hashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast pageContext :: Any.Any)))
            anyType <- (AbeFactory.getInstance_4 abeFactory abeClientInformation className classes params)
            pure ((jtoObject anyType))


-- throws LicensingException
getInstance_6 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> HashMap.HashMap -> HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance_6 abeClientInformation factoryName className hashMap specialhashMap pageContext = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                let error = ((("Failed To Get Instance Args: HashMap=" ++ (jio (HashMap.toString hashMap))) ++ " PageContext=") ++ javaToString pageContext)
                Control.Monad.void (LogUtil.put logUtil error (factoryName ++ "->HelperFactory") "getInstance(String, String, HashMap, PageContext)" e)
            javaThrow (e)
            ) $ do
            let params = (jnewArray (3) javaNull)
            let classes = (jnewArray (3) javaNull)
            abeFactory <- (AbeFactory.getInstance)
            assignedValue <- (jobjectGetClass hashMap)
            jsetIndex classes (0) (assignedValue)
            assignedValue <- (jobjectGetClass specialhashMap)
            jsetIndex classes (1) (assignedValue)
            assignedValue <- (AbeFactory.getClass abeFactory abeClientInformation "javax.servlet.jsp.PageContext")
            jsetIndex classes (2) (assignedValue)
            jsetIndex params (0) ((jtoObject (javaCast hashMap :: Any.Any)))
            jsetIndex params (1) ((jtoObject (javaCast specialhashMap :: Any.Any)))
            jsetIndex params (2) ((jtoObject (javaCast pageContext :: Any.Any)))
            anyType <- (AbeFactory.getInstance_4 abeFactory abeClientInformation className classes params)
            pure ((jtoObject anyType))


-- throws LicensingException
getInstance_3 :: AbeClientInformationInterface.AbeClientInformationInterface -> String -> String -> IO (Any.Any)
getInstance_3 abeClientInformation factoryName className = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) (factoryName ++ "->HelperFactory") "getInstance(String, String, HashMap, PageContext)" e)
            javaThrow (e)
            ) $ do
            anyType <- (AbeFactory.getInstance_2 ((jio (AbeFactory.getInstance))) abeClientInformation className)
            pure ((jtoObject anyType))


