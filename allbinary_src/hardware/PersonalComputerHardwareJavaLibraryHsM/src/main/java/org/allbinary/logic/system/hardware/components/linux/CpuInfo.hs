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
-- package org.allbinary.logic.system.hardware.components.linux
module CpuInfo where

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

data CpuInfo = CpuInfo
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull CpuInfo where
    javaNull = javaNullRecord "CpuInfo"

instance JavaEquals CpuInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CpuInfo where
    (==) = jrecordEquals

instance JavaObjectClass CpuInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

pROCESSOR :: CpuInfo
{-# NOINLINE pROCESSOR #-}
pROCESSOR = unsafePerformIO ((new_1 "processor"))

vENDORID :: CpuInfo
{-# NOINLINE vENDORID #-}
vENDORID = unsafePerformIO ((new_1 "vendor_id"))

cPUFAMILY :: CpuInfo
{-# NOINLINE cPUFAMILY #-}
cPUFAMILY = unsafePerformIO ((new_1 "cpu family"))

mODEL :: CpuInfo
{-# NOINLINE mODEL #-}
mODEL = unsafePerformIO ((new_1 "model"))

mODELNAME :: CpuInfo
{-# NOINLINE mODELNAME #-}
mODELNAME = unsafePerformIO ((new_1 "model name"))

sTEPPING :: CpuInfo
{-# NOINLINE sTEPPING #-}
sTEPPING = unsafePerformIO ((new_1 "stepping"))

cPUMHZ :: CpuInfo
{-# NOINLINE cPUMHZ #-}
cPUMHZ = unsafePerformIO ((new_1 "cpu MHz"))

cACHESIZE :: CpuInfo
{-# NOINLINE cACHESIZE #-}
cACHESIZE = unsafePerformIO ((new_1 "cache size"))

fDIVBUG :: CpuInfo
{-# NOINLINE fDIVBUG #-}
fDIVBUG = unsafePerformIO ((new_1 "fdiv_bug"))

hLTBUG :: CpuInfo
{-# NOINLINE hLTBUG #-}
hLTBUG = unsafePerformIO ((new_1 "hlt_bug"))

f00FBUG :: CpuInfo
{-# NOINLINE f00FBUG #-}
f00FBUG = unsafePerformIO ((new_1 "f00f_bug"))

cOMABUG :: CpuInfo
{-# NOINLINE cOMABUG #-}
cOMABUG = unsafePerformIO ((new_1 "coma_bug"))

fPU :: CpuInfo
{-# NOINLINE fPU #-}
fPU = unsafePerformIO ((new_1 "fpu"))

fPUEXCEPTION :: CpuInfo
{-# NOINLINE fPUEXCEPTION #-}
fPUEXCEPTION = unsafePerformIO ((new_1 "fpu_exception"))

cPUIDLEVEL :: CpuInfo
{-# NOINLINE cPUIDLEVEL #-}
cPUIDLEVEL = unsafePerformIO ((new_1 "cache size"))

wP :: CpuInfo
{-# NOINLINE wP #-}
wP = unsafePerformIO ((new_1 "yes"))

fLAGS :: CpuInfo
{-# NOINLINE fLAGS #-}
fLAGS = unsafePerformIO ((new_1 "flags"))

bOGOMIPS :: CpuInfo
{-# NOINLINE bOGOMIPS #-}
bOGOMIPS = unsafePerformIO ((new_1 "bogomips"))

newRecord_ :: IO CpuInfo
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = CpuInfo header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CpuInfo -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO CpuInfo
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: CpuInfo -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CpuInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CpuInfo))

toString_impl :: CpuInfo -> IO (String)
toString_impl this = do
        pure ((jget (this).name))


