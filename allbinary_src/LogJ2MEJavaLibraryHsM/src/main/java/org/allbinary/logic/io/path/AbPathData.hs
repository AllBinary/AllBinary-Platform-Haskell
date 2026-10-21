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
-- package org.allbinary.logic.io.path
module AbPathData where

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
import qualified FilePathData -- org.allbinary.logic.io.file.FilePathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data AbPathData = AbPathData
    { header_ :: JavaHeader
    , eXTENSION_SEP :: IORef (String)
    , sEPARATORCHAR :: IORef (Char)
    , sEPARATOR :: IORef (String)
    }

instance JavaNull AbPathData where
    javaNull = javaNullRecord "AbPathData"

instance JavaEquals AbPathData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbPathData where
    (==) = jrecordEquals

instance JavaObjectClass AbPathData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbPathData
newRecord_ = do
    header_ <- newJavaHeader
    eXTENSION_SEP <- newIORef ""
    sEPARATORCHAR <- newIORef '\0'
    sEPARATOR <- newIORef ""
    let this = AbPathData header_ eXTENSION_SEP sEPARATORCHAR sEPARATOR
    jregisterLevel header_ this
    pure this

initFields_ :: AbPathData -> IO ()
initFields_ this = do
    jset this.eXTENSION_SEP ((jget ((jio (CommonSeps.getInstance))).pERIOD))
    jset this.sEPARATORCHAR ('/')
    jset this.sEPARATOR ((jget ((jio (CommonSeps.getInstance))).fORWARD_SLASH))
    pure ()


getInstance :: IO (AbPathData)
getInstance = do
        pure (AbPathData.instance_)

new_ :: IO AbPathData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbPathData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


