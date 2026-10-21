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

tOTAL_NUMBER_PAGES = "SEARCHDATA_TOTALNUMBEROFPAGES"

tOTAL_NUMBER_ITEMS_ON_THIS_PAGE = "SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE"

tOTAL_NUMBER_ITEMS = "SEARCHDATA_TOTALNUMBEROFITEMS"

dEFAULT_PAGE_LENGTH = 10

gENERATESTATICPAGES = "Generate Static Pages"

sEARCHBYSUMMARY = "Search By Summary"

sEARCHBYDESCRIPTION = "Search By Description"

sEARCHBYCATEGORY = "Search By Category"

sEARCHCATEGORIES = "Search Categories"

fILENAME = "SEARCHDATA_BASEFILENAME"

cOLUMNNAME = "COLUMN_NAME"

cOLUMNVALUE = "COLUMN_VALUE"

pARAMS = "SEARCHDATA_PARAMS"

lENGTH = "SEARCHDATA_LENGTH"

oRDER = "SEARCHDATA_ORDER"

pAGE = "SEARCHDATA_PAGE"

fIELDS = "SEARCHDATA_FIELDS"

fIELD = "SEARCHDATA_FIELD"

sORTBY = "SEARCHDATA_SORTBY"

tYPE = "SEARCHDATA_TYPE"

pAGE_INFO = "pageInfo"

sEARCH = "search"

mAKEPUBLIC = "Make Public"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

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


