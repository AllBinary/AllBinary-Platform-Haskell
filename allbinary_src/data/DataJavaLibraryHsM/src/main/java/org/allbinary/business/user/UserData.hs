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
-- package org.allbinary.business.user
module UserData where

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

data UserData = UserData
    { header_ :: JavaHeader
    }

instance JavaNull UserData where
    javaNull = javaNullRecord "UserData"

instance JavaEquals UserData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserData where
    (==) = jrecordEquals

instance JavaObjectClass UserData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE mAXLEN #-}
mAXLEN = unsafePerformIO (newIORef (250))

nAME = "USER_NAME"

uSERNAME = "CUSTOMER_USER_NAME"

pASSWORD = "CUSTOMER_PASSWORD"

pREFIXNAME = "CUSTOMER_PREFIX_NAME"

fIRSTNAME = "CUSTOMER_FIRST_NAME"

lASTNAME = "CUSTOMER_LAST_NAME"

mIDDLENAME = "CUSTOMER_MIDDLE_NAME"

sUFFIXNAME = "CUSTOMER_SUFFIX_NAME"

cOMPANY = "CUSTOMER_COMPANY"

pOSITIONATCOMPANY = "CUSTOMER_POSITION_AT_COMPANY"

mAINEMAIL = "CUSTOMER_MAIN_EMAIL"

sECONDARYEMAIL = "CUSTOMER_SECONDARY_EMAIL"

hOMEPHONE = "CUSTOMER_HOME_PHONE"

cELLPHONE = "CUSTOMER_CELL_PHONE"

wORKPHONE = "CUSTOMER_WORK_PHONE"

oTHERCONTACT = "CUSTOMER_OTHER_CONTACT"

eLECTRONICDEVICE = "CUSTOMER_ELECTRONIC_DEVICE"

fAX = "CUSTOMER_FAX"

sECRET = "CUSTOMER_SECRET"

pERMISSIONS = "CUSTOMER_PERMISSIONS"

cONFIGURATION = "CUSTOMER_CONFIGURATION"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO UserData
newRecord_ = do
    header_ <- newJavaHeader
    let this = UserData header_
    jregisterLevel header_ this
    pure this

initFields_ :: UserData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO UserData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


