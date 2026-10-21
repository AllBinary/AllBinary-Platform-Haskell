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
-- package org.allbinary.logic.io.file
module FileData where

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

data FileData = FileData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , iSFILE :: IORef (String)
    , iSDIRECTORY :: IORef (String)
    , iSHIDDEN :: IORef (String)
    , iSABSOLUTE :: IORef (String)
    , rOOT_NAME :: IORef (String)
    , pATH :: IORef (String)
    , aBSOLUTE_PATH :: IORef (String)
    , cANONICAL_PATH :: IORef (String)
    , pARENT :: IORef (String)
    , mINLEN :: IORef (Int)
    , mAXLEN :: IORef (Int)
    , mAXIMAGEFILESIZE :: IORef (Int)
    , mINIMAGEFILESIZE :: IORef (Int)
    , mAXDOWNLOADABLEFILESIZE :: IORef (Int)
    , mINDOWNLOADABLEFILESIZE :: IORef (Int)
    }

instance JavaNull FileData where
    javaNull = javaNullRecord "FileData"

instance JavaEquals FileData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileData where
    (==) = jrecordEquals

instance JavaObjectClass FileData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    iSFILE <- newIORef ""
    iSDIRECTORY <- newIORef ""
    iSHIDDEN <- newIORef ""
    iSABSOLUTE <- newIORef ""
    rOOT_NAME <- newIORef ""
    pATH <- newIORef ""
    aBSOLUTE_PATH <- newIORef ""
    cANONICAL_PATH <- newIORef ""
    pARENT <- newIORef ""
    mINLEN <- newIORef 0
    mAXLEN <- newIORef 0
    mAXIMAGEFILESIZE <- newIORef 0
    mINIMAGEFILESIZE <- newIORef 0
    mAXDOWNLOADABLEFILESIZE <- newIORef 0
    mINDOWNLOADABLEFILESIZE <- newIORef 0
    let this = FileData header_ nAME iSFILE iSDIRECTORY iSHIDDEN iSABSOLUTE rOOT_NAME pATH aBSOLUTE_PATH cANONICAL_PATH pARENT mINLEN mAXLEN mAXIMAGEFILESIZE mINIMAGEFILESIZE mAXDOWNLOADABLEFILESIZE mINDOWNLOADABLEFILESIZE
    jregisterLevel header_ this
    pure this

initFields_ :: FileData -> IO ()
initFields_ this = do
    jset this.nAME ("FILE_NAME")
    jset this.iSFILE ("FILE_ISFILE")
    jset this.iSDIRECTORY ("FILE_ISDIRECTORY")
    jset this.iSHIDDEN ("FILE_ISHIDDEN")
    jset this.iSABSOLUTE ("FILE_ISABSOLUTE")
    jset this.rOOT_NAME ("FILE_ROOT_NAME")
    jset this.pATH ("FILE_PATH")
    jset this.aBSOLUTE_PATH ("FILE_ABSOLUTE_PATH")
    jset this.cANONICAL_PATH ("FILE_CANONICAL_PATH")
    jset this.pARENT ("FILE_PARENT")
    jset this.mINLEN (1)
    jset this.mAXLEN (120)
    jset this.mAXIMAGEFILESIZE (1048576)
    jset this.mINIMAGEFILESIZE (32)
    jset this.mAXDOWNLOADABLEFILESIZE ((1048576 * 20))
    jset this.mINDOWNLOADABLEFILESIZE (1)
    pure ()


getInstance :: IO (FileData)
getInstance = do
        pure (FileData.instance_)

new_ :: IO FileData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


