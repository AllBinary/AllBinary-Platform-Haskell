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
-- package org.allbinary.business.init.db
module InitDbHelperFactory where

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
import qualified DatabaseConnectionInfoInterface -- same package or java.lang
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException

data InitDbHelperFactory = InitDbHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull InitDbHelperFactory where
    javaNull = javaNullRecord "InitDbHelperFactory"

instance JavaEquals InitDbHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitDbHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass InitDbHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLASSNAME = "org.allbinary.business.installer.InitDbCrypted"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InitDbHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InitDbHelperFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: InitDbHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InitDbHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitDbHelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getInstance :: AbeClientInformationInterface.AbeClientInformationInterface -> DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO (Any.Any)
getInstance abeClientInformation databaseConnectionInfoInterface = do
        let params = (jnewArray (1) javaNull)
        let classes = (jnewArray (1) javaNull)
        jsetIndex classes (0) ("DatabaseConnectionInfoInterface")
        jsetIndex params (0) ((jtoObject (javaCast databaseConnectionInfoInterface :: Any.Any)))
        anyType <- (AbeFactory.getInstance ((jio (AbeFactory.getInstance))) abeClientInformation cLASSNAME classes params)
        pure ((jtoObject anyType))


-- throws LicensingException
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance :: AbeClientInformationInterface.AbeClientInformationInterface -> IO (Any.Any)
getInstance abeClientInformation = do
        anyType <- (AbeFactory.getInstance ((jio (AbeFactory.getInstance))) abeClientInformation cLASSNAME javaNull javaNull)
        pure ((jtoObject anyType))


