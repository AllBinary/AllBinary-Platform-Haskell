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

gETCURRENTLOCATION = "Get Current Location"

gETCURRENTHOMELOCATION = "Get Current Home Location"

gENERATEALLSTORES = "Generate All Stores"

lICENSEAGREEMENT = "License Agreement"

cREATEDATABASES = "Create Databases"

vIEWNAME = "VIEW_NAME"

sETSHIPPINGTYPE = "Set Shipping Type"

vIEWSUMMARY = "View Summary"

sET = "Set"

sELECT = "Select"

sELECTNEW = "Select New"

sELECTEXISTING = "Select Existing"

pROCESS = "Process"

lOGINSUCCESS = "Login Successful"

lOGINFAILED = "Login Failed"

nONE = "None"

tOP = "Top"

lEFT = "Left"

rIGHT = "Right"

bACK = "Back"

bOTTOM = "Bottom"

fRONT = "Front"

aUTHORIZE = "Authorize"

aUTHORIZEANDEVALBODY = "Authorize AND EVAL BODY"

aUTHORIZEANDEVALBODYONERROR = "Authorize AND EVAL BODY On Error"

aUTHORIZEORDEREVALBODYONERROR = "Authorize Order Eval On Error"

aUTHORIZEFORMEVALBODYONERROR = "Authorize Form Eval On Error"

aUTHORIZEORDERANDSKIPBODY = "Authorize Order Skip"

aUTHORIZEORDERANDEVALBODY = "Authorize Order Eval"

eDITPRICING = "Edit Pricing"

uPDATEPRICING = "Update Pricing"

sETPAYMENTMETHOD = "Set Payment Method"

bACKUP = "Backup"

rESTORE = "Restore"

sUMMARY = "Summary"

dESCRIPTION = "Description"

iMG = "img"

hREF = "href"

kEYWORD = "keyword"

tYPE = "TYPE"

dATA = "DATA"

nUM = "NUM"

pRICE = "PRICE"

rEGISTER = "Register"

cHECKOUT = "Checkout"

aDMINCOMMAND = "AdminCommand"

pROCESSBODYIFNOTAUTHENTICATED = "Not Authenticated"

pROCESSBODYIFAUTHENTICATED = "Authenticated"

pROCESSTRANSACTION = "Process Transaction"

nEWPASSWORD = "New Password"

cHANGEPASSWORD = "Change Password"

jDBCDRIVER = "Jdbc Driver"

wEBAPPPATH = "Webapp Path"

aMOUNTVALUE = "Amount Value"

gETORDERIDFROMSESSION = "Get Order Id From Session"

sETUPPAYMENTMETHODS = "Setup Payment Methods"

cANCELSTOREFRONT = "Cancel Store Front"

aDJUST = "Adjust"

iSASUBSET = "Is a Subset"

nOTASUBSET = "Not a Subset"

gENERATE = "Generate"

vIEW = "View"

eDIT = "Edit"

nEW = "New"

sEARCH = "Search"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

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


