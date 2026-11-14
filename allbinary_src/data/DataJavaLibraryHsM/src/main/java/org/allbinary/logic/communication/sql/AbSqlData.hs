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
-- package org.allbinary.logic.communication.sql
module AbSqlData where

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

data AbSqlData = AbSqlData
    { header_ :: JavaHeader
    }

instance JavaNull AbSqlData where
    javaNull = javaNullRecord "AbSqlData"

instance JavaEquals AbSqlData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlData where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

aNYSINGLECHARACTERMATCH :: String
aNYSINGLECHARACTERMATCH = "_"

aNYMULTICHARACTERMATCH :: String
aNYMULTICHARACTERMATCH = "%"

mAXNUM :: Int
mAXNUM = 19

mINSTRING :: Int
mINSTRING = 1

mAXSTRING :: Int
mAXSTRING = 255

mAXBLOB :: Int
mAXBLOB = 32000

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO AbSqlData
newRecord_ = do
    header_ <- newJavaHeader
    let this = AbSqlData header_
    jregisterLevel header_ this
    pure this

initFields_ :: AbSqlData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AbSqlData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbSqlData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


