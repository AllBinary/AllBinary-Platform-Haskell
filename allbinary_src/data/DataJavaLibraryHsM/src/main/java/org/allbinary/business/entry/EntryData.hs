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
-- package org.allbinary.business.entry
module EntryData where

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

data EntryData = EntryData
    { header_ :: JavaHeader
    , iD :: IORef (String)
    , eNCRYPTION :: IORef (String)
    , tIMECREATED :: IORef (String)
    , lASTMODIFIED :: IORef (String)
    , dEFAULT :: IORef (String)
    , sPECIAL :: IORef (String)
    , eNABLE :: IORef (String)
    , yES :: IORef (String)
    , nO :: IORef (String)
    }

instance JavaNull EntryData where
    javaNull = javaNullRecord "EntryData"

instance JavaEquals EntryData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EntryData where
    (==) = jrecordEquals

instance JavaObjectClass EntryData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO EntryData
newRecord_ = do
    header_ <- newJavaHeader
    iD <- newIORef ""
    eNCRYPTION <- newIORef ""
    tIMECREATED <- newIORef ""
    lASTMODIFIED <- newIORef ""
    dEFAULT <- newIORef ""
    sPECIAL <- newIORef ""
    eNABLE <- newIORef ""
    yES <- newIORef ""
    nO <- newIORef ""
    let this = EntryData header_ iD eNCRYPTION tIMECREATED lASTMODIFIED dEFAULT sPECIAL eNABLE yES nO
    jregisterLevel header_ this
    pure this

initFields_ :: EntryData -> IO ()
initFields_ this = do
    jset this.iD ("ENTRY_ID")
    jset this.eNCRYPTION ("ENTRY_ENCRYPTION")
    jset this.tIMECREATED ("ENTRY_TIMECREATED")
    jset this.lASTMODIFIED ("ENTRY_LASTMODIFIED")
    jset this.dEFAULT ("ENTRY_DEFAULT")
    jset this.sPECIAL ("ENTRY_SPECIAL")
    jset this.eNABLE ("ENTRY_ENABLE")
    jset this.yES ("Yes")
    jset this.nO ("No")
    pure ()


getInstance :: IO (EntryData)
getInstance = do
        pure (EntryData.instance_)

new_ :: IO EntryData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EntryData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


