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
-- package org.allbinary.logic.math
module MathData where

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
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data MathData = MathData
    { header_ :: JavaHeader
    , eQUALS :: IORef (String)
    , pLUS :: IORef (String)
    , gREATER_THAN :: IORef (String)
    , mINUS :: IORef (String)
    , dIVIDE :: IORef (String)
    , mULTIPLY :: IORef (String)
    }

instance JavaNull MathData where
    javaNull = javaNullRecord "MathData"

instance JavaEquals MathData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MathData where
    (==) = jrecordEquals

instance JavaObjectClass MathData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MathData
newRecord_ = do
    header_ <- newJavaHeader
    eQUALS <- newIORef ""
    pLUS <- newIORef ""
    gREATER_THAN <- newIORef ""
    mINUS <- newIORef ""
    dIVIDE <- newIORef ""
    mULTIPLY <- newIORef ""
    let this = MathData header_ eQUALS pLUS gREATER_THAN mINUS dIVIDE mULTIPLY
    jregisterLevel header_ this
    pure this

initFields_ :: MathData -> IO ()
initFields_ this = do
    jset this.eQUALS (javaNull)
    jset this.pLUS ("+")
    jset this.gREATER_THAN (">")
    jset this.mINUS (javaNull)
    jset this.dIVIDE (javaNull)
    jset this.mULTIPLY (javaNull)
    pure ()


getInstance :: IO (MathData)
getInstance = do
        pure (MathData.instance_)

new_ :: IO MathData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MathData -> IO ()
init_ this = do
        initFields_ this
        commonSeps <- (CommonSeps.getInstance)
        jset (this).eQUALS ((jget (commonSeps).eQUALS))
        jset (this).mINUS ((jget (commonSeps).dASH))
        jset (this).dIVIDE ((jget (commonSeps).fORWARD_SLASH))
        jset (this).mULTIPLY ((jget ((jio (CommonPhoneStrings.getInstance))).sTAR))
        pure ()


