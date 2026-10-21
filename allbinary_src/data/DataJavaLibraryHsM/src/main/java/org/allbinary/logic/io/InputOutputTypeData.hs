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
-- package org.allbinary.logic.io
module InputOutputTypeData where

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

data InputOutputTypeData = InputOutputTypeData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , fILE :: IORef (String)
    , rESPONSE :: IORef (String)
    , dB :: IORef (String)
    , jSP :: IORef (String)
    , jSP_FRAGMENT :: IORef (String)
    , pHP :: IORef (String)
    , aSP :: IORef (String)
    , pL :: IORef (String)
    , dEFAULT :: IORef (String)
    , dEFAULT_FRAGMENT :: IORef (String)
    }

instance JavaNull InputOutputTypeData where
    javaNull = javaNullRecord "InputOutputTypeData"

instance JavaEquals InputOutputTypeData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputOutputTypeData where
    (==) = jrecordEquals

instance JavaObjectClass InputOutputTypeData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InputOutputTypeData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    fILE <- newIORef ""
    rESPONSE <- newIORef ""
    dB <- newIORef ""
    jSP <- newIORef ""
    jSP_FRAGMENT <- newIORef ""
    pHP <- newIORef ""
    aSP <- newIORef ""
    pL <- newIORef ""
    dEFAULT <- newIORef ""
    dEFAULT_FRAGMENT <- newIORef ""
    let this = InputOutputTypeData header_ nAME fILE rESPONSE dB jSP jSP_FRAGMENT pHP aSP pL dEFAULT dEFAULT_FRAGMENT
    jregisterLevel header_ this
    pure this

initFields_ :: InputOutputTypeData -> IO ()
initFields_ this = do
    jset this.nAME ("INPUT_OUTPUT_TYPE_NAME")
    jset this.fILE ("INPUT_OUTPUT_TYPE_FILE")
    jset this.rESPONSE ("INPUT_OUTPUT_TYPE_RESPONSE")
    jset this.dB ("INPUT_OUTPUT_TYPE_DB")
    jset this.jSP ("jsp")
    jset this.jSP_FRAGMENT ("jspf")
    jset this.pHP ("php")
    jset this.aSP ("asp")
    jset this.pL ("pl")
    jset this.dEFAULT ((jget (this).jSP))
    jset this.dEFAULT_FRAGMENT ((jget (this).jSP_FRAGMENT))
    pure ()


getInstance :: IO (InputOutputTypeData)
getInstance = do
        pure (InputOutputTypeData.instance_)

new_ :: IO InputOutputTypeData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InputOutputTypeData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


