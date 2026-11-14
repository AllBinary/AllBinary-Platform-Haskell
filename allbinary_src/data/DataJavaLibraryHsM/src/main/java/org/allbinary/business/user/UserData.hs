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
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
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

mAXLEN :: IORef (Int)
{-# NOINLINE mAXLEN #-}
mAXLEN = unsafePerformIO (newIORef (250))

nAME :: String
nAME = "USER_NAME"

uSERNAME :: String
uSERNAME = "CUSTOMER_USER_NAME"

pASSWORD :: String
pASSWORD = "CUSTOMER_PASSWORD"

pREFIXNAME :: String
pREFIXNAME = "CUSTOMER_PREFIX_NAME"

fIRSTNAME :: String
fIRSTNAME = "CUSTOMER_FIRST_NAME"

lASTNAME :: String
lASTNAME = "CUSTOMER_LAST_NAME"

mIDDLENAME :: String
mIDDLENAME = "CUSTOMER_MIDDLE_NAME"

sUFFIXNAME :: String
sUFFIXNAME = "CUSTOMER_SUFFIX_NAME"

cOMPANY :: String
cOMPANY = "CUSTOMER_COMPANY"

pOSITIONATCOMPANY :: String
pOSITIONATCOMPANY = "CUSTOMER_POSITION_AT_COMPANY"

mAINEMAIL :: String
mAINEMAIL = "CUSTOMER_MAIN_EMAIL"

sECONDARYEMAIL :: String
sECONDARYEMAIL = "CUSTOMER_SECONDARY_EMAIL"

hOMEPHONE :: String
hOMEPHONE = "CUSTOMER_HOME_PHONE"

cELLPHONE :: String
cELLPHONE = "CUSTOMER_CELL_PHONE"

wORKPHONE :: String
wORKPHONE = "CUSTOMER_WORK_PHONE"

oTHERCONTACT :: String
oTHERCONTACT = "CUSTOMER_OTHER_CONTACT"

eLECTRONICDEVICE :: String
eLECTRONICDEVICE = "CUSTOMER_ELECTRONIC_DEVICE"

fAX :: String
fAX = "CUSTOMER_FAX"

sECRET :: String
sECRET = "CUSTOMER_SECRET"

pERMISSIONS :: String
pERMISSIONS = "CUSTOMER_PERMISSIONS"

cONFIGURATION :: String
cONFIGURATION = "CUSTOMER_CONFIGURATION"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

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


