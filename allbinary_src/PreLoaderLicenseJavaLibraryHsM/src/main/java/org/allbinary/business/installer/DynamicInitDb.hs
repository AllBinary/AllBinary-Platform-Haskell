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
-- package org.allbinary.business.installer
module DynamicInitDb (module DynamicInitDb, module InitDb) where

import InitDb hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified DatabaseConnectionInfoInterface -- org.allbinary.business.init.db.DatabaseConnectionInfoInterface
import qualified InitDbHelperFactory -- org.allbinary.business.init.db.InitDbHelperFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified InitDb

data DynamicInitDb = DynamicInitDb
    { header_ :: JavaHeader
    , base :: InitDb.InitDb
    }

instance JavaNull DynamicInitDb where
    javaNull = javaNullRecord "DynamicInitDb"

instance JavaEquals DynamicInitDb where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DynamicInitDb where
    (==) = jrecordEquals

instance JavaObjectClass DynamicInitDb where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DynamicInitDb
newRecord_ = do
    base <- InitDb.newRecord_
    let header_ = base.header_
    let this = DynamicInitDb header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: DynamicInitDb -> IO ()
initFields_ this = do
    pure ()

new_1 :: AbeClientInformationInterface.AbeClientInformationInterface -> IO DynamicInitDb
new_1 abeClientInformation = do
    this <- newRecord_
    init_1 this abeClientInformation
    pure this

init_1 :: DynamicInitDb -> AbeClientInformationInterface.AbeClientInformationInterface -> IO ()
init_1 this abeClientInformation = do
        InitDb.init_ this.base
        initFields_ this
        Control.Monad.void (InitDb.setHelper this (jio (InitDbHelperFactory.getInstance_1 abeClientInformation)))
        pure ()

new_2 :: AbeClientInformationInterface.AbeClientInformationInterface -> DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO DynamicInitDb
new_2 abeClientInformation databaseConnectionInfoInterface = do
    this <- newRecord_
    init_2 this abeClientInformation databaseConnectionInfoInterface
    pure this

init_2 :: DynamicInitDb -> AbeClientInformationInterface.AbeClientInformationInterface -> DatabaseConnectionInfoInterface.DatabaseConnectionInfoInterface -> IO ()
init_2 this abeClientInformation databaseConnectionInfoInterface = do
        InitDb.init_ this.base
        initFields_ this
        Control.Monad.void (InitDb.setHelper this (jio (InitDbHelperFactory.getInstance abeClientInformation databaseConnectionInfoInterface)))
        pure ()


