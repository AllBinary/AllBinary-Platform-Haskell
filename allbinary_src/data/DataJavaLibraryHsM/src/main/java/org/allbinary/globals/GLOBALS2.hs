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
-- package org.allbinary.globals
module GLOBALS2 where

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

data GLOBALS2 = GLOBALS2
    { header_ :: JavaHeader
    }

instance JavaNull GLOBALS2 where
    javaNull = javaNullRecord "GLOBALS2"

instance JavaEquals GLOBALS2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GLOBALS2 where
    (==) = jrecordEquals

instance JavaObjectClass GLOBALS2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

gETCURRENTLOCATION :: String
gETCURRENTLOCATION = "Get Current Location"

gETCURRENTHOMELOCATION :: String
gETCURRENTHOMELOCATION = "Get Current Home Location"

gENERATEALLSTORES :: String
gENERATEALLSTORES = "Generate All Stores"

lICENSEAGREEMENT :: String
lICENSEAGREEMENT = "License Agreement"

cREATEDATABASES :: String
cREATEDATABASES = "Create Databases"

vIEWNAME :: String
vIEWNAME = "VIEW_NAME"

sETSHIPPINGTYPE :: String
sETSHIPPINGTYPE = "Set Shipping Type"

vIEWSUMMARY :: String
vIEWSUMMARY = "View Summary"

sET :: String
sET = "Set"

sELECT :: String
sELECT = "Select"

sELECTNEW :: String
sELECTNEW = "Select New"

sELECTEXISTING :: String
sELECTEXISTING = "Select Existing"

pROCESS :: String
pROCESS = "Process"

lOGINSUCCESS :: String
lOGINSUCCESS = "Login Successful"

lOGINFAILED :: String
lOGINFAILED = "Login Failed"

nONE :: String
nONE = "None"

tOP :: String
tOP = "Top"

lEFT :: String
lEFT = "Left"

rIGHT :: String
rIGHT = "Right"

bACK :: String
bACK = "Back"

bOTTOM :: String
bOTTOM = "Bottom"

fRONT :: String
fRONT = "Front"

aUTHORIZE :: String
aUTHORIZE = "Authorize"

aUTHORIZEANDEVALBODY :: String
aUTHORIZEANDEVALBODY = "Authorize AND EVAL BODY"

aUTHORIZEANDEVALBODYONERROR :: String
aUTHORIZEANDEVALBODYONERROR = "Authorize AND EVAL BODY On Error"

aUTHORIZEORDEREVALBODYONERROR :: String
aUTHORIZEORDEREVALBODYONERROR = "Authorize Order Eval On Error"

aUTHORIZEFORMEVALBODYONERROR :: String
aUTHORIZEFORMEVALBODYONERROR = "Authorize Form Eval On Error"

aUTHORIZEORDERANDSKIPBODY :: String
aUTHORIZEORDERANDSKIPBODY = "Authorize Order Skip"

aUTHORIZEORDERANDEVALBODY :: String
aUTHORIZEORDERANDEVALBODY = "Authorize Order Eval"

eDITPRICING :: String
eDITPRICING = "Edit Pricing"

uPDATEPRICING :: String
uPDATEPRICING = "Update Pricing"

sETPAYMENTMETHOD :: String
sETPAYMENTMETHOD = "Set Payment Method"

bACKUP :: String
bACKUP = "Backup"

rESTORE :: String
rESTORE = "Restore"

sUMMARY :: String
sUMMARY = "Summary"

dESCRIPTION :: String
dESCRIPTION = "Description"

iMG :: String
iMG = "img"

hREF :: String
hREF = "href"

kEYWORD :: String
kEYWORD = "keyword"

tYPE :: String
tYPE = "TYPE"

dATA :: String
dATA = "DATA"

nUM :: String
nUM = "NUM"

pRICE :: String
pRICE = "PRICE"

rEGISTER :: String
rEGISTER = "Register"

cHECKOUT :: String
cHECKOUT = "Checkout"

aDMINCOMMAND :: String
aDMINCOMMAND = "AdminCommand"

pROCESSBODYIFNOTAUTHENTICATED :: String
pROCESSBODYIFNOTAUTHENTICATED = "Not Authenticated"

pROCESSBODYIFAUTHENTICATED :: String
pROCESSBODYIFAUTHENTICATED = "Authenticated"

pROCESSTRANSACTION :: String
pROCESSTRANSACTION = "Process Transaction"

nEWPASSWORD :: String
nEWPASSWORD = "New Password"

cHANGEPASSWORD :: String
cHANGEPASSWORD = "Change Password"

jDBCDRIVER :: String
jDBCDRIVER = "Jdbc Driver"

wEBAPPPATH :: String
wEBAPPPATH = "Webapp Path"

aMOUNTVALUE :: String
aMOUNTVALUE = "Amount Value"

gETORDERIDFROMSESSION :: String
gETORDERIDFROMSESSION = "Get Order Id From Session"

sETUPPAYMENTMETHODS :: String
sETUPPAYMENTMETHODS = "Setup Payment Methods"

cANCELSTOREFRONT :: String
cANCELSTOREFRONT = "Cancel Store Front"

aDJUST :: String
aDJUST = "Adjust"

iSASUBSET :: String
iSASUBSET = "Is a Subset"

nOTASUBSET :: String
nOTASUBSET = "Not a Subset"

gENERATE :: String
gENERATE = "Generate"

vIEW :: String
vIEW = "View"

eDIT :: String
eDIT = "Edit"

nEW :: String
nEW = "New"

sEARCH :: String
sEARCH = "Search"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO GLOBALS2
newRecord_ = do
    header_ <- newJavaHeader
    let this = GLOBALS2 header_
    jregisterLevel header_ this
    pure this

initFields_ :: GLOBALS2 -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GLOBALS2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GLOBALS2 -> IO ()
init_ this = do
    initFields_ this


