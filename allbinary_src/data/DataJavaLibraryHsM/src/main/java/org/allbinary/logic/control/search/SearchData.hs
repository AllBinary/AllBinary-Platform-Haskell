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
-- package org.allbinary.logic.control.search
module SearchData where

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

data SearchData = SearchData
    { header_ :: JavaHeader
    }

instance JavaNull SearchData where
    javaNull = javaNullRecord "SearchData"

instance JavaEquals SearchData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SearchData where
    (==) = jrecordEquals

instance JavaObjectClass SearchData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

tOTAL_NUMBER_PAGES :: String
tOTAL_NUMBER_PAGES = "SEARCHDATA_TOTALNUMBEROFPAGES"

tOTAL_NUMBER_ITEMS_ON_THIS_PAGE :: String
tOTAL_NUMBER_ITEMS_ON_THIS_PAGE = "SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE"

tOTAL_NUMBER_ITEMS :: String
tOTAL_NUMBER_ITEMS = "SEARCHDATA_TOTALNUMBEROFITEMS"

dEFAULT_PAGE_LENGTH :: Int
dEFAULT_PAGE_LENGTH = 10

gENERATESTATICPAGES :: String
gENERATESTATICPAGES = "Generate Static Pages"

sEARCHBYSUMMARY :: String
sEARCHBYSUMMARY = "Search By Summary"

sEARCHBYDESCRIPTION :: String
sEARCHBYDESCRIPTION = "Search By Description"

sEARCHBYCATEGORY :: String
sEARCHBYCATEGORY = "Search By Category"

sEARCHCATEGORIES :: String
sEARCHCATEGORIES = "Search Categories"

fILENAME :: String
fILENAME = "SEARCHDATA_BASEFILENAME"

cOLUMNNAME :: String
cOLUMNNAME = "COLUMN_NAME"

cOLUMNVALUE :: String
cOLUMNVALUE = "COLUMN_VALUE"

pARAMS :: String
pARAMS = "SEARCHDATA_PARAMS"

lENGTH :: String
lENGTH = "SEARCHDATA_LENGTH"

oRDER :: String
oRDER = "SEARCHDATA_ORDER"

pAGE :: String
pAGE = "SEARCHDATA_PAGE"

fIELDS :: String
fIELDS = "SEARCHDATA_FIELDS"

fIELD :: String
fIELD = "SEARCHDATA_FIELD"

sORTBY :: String
sORTBY = "SEARCHDATA_SORTBY"

tYPE :: String
tYPE = "SEARCHDATA_TYPE"

pAGE_INFO :: String
pAGE_INFO = "pageInfo"

sEARCH :: String
sEARCH = "search"

mAKEPUBLIC :: String
mAKEPUBLIC = "Make Public"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO SearchData
newRecord_ = do
    header_ <- newJavaHeader
    let this = SearchData header_
    jregisterLevel header_ this
    pure this

initFields_ :: SearchData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SearchData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SearchData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


