{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.game.configuration.persistance
module PersistanceStrings where

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

data PersistanceStrings = PersistanceStrings
    { header_ :: JavaHeader
    , sAVING :: IORef (String)
    , nUMBER_OF_RECORDS :: IORef (String)
    , lOADING_ID :: IORef (String)
    , lOAD_ALL :: IORef (String)
    , dELETING_WITH_ID :: IORef (String)
    , cLOSING_RECORDSTORE :: IORef (String)
    , nOT_SAVING :: IORef (String)
    , eRROR_LOADING :: IORef (String)
    , eRROR_LOADING_ID :: IORef (String)
    , iD :: IORef (String)
    , gAME_ACTION_INPUT :: IORef (String)
    }

instance JavaNull PersistanceStrings where
    javaNull = javaNullRecord "PersistanceStrings"

instance JavaEquals PersistanceStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PersistanceStrings where
    (==) = jrecordEquals

instance JavaObjectClass PersistanceStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PersistanceStrings
newRecord_ = do
    header_ <- newJavaHeader
    sAVING <- newIORef ""
    nUMBER_OF_RECORDS <- newIORef ""
    lOADING_ID <- newIORef ""
    lOAD_ALL <- newIORef ""
    dELETING_WITH_ID <- newIORef ""
    cLOSING_RECORDSTORE <- newIORef ""
    nOT_SAVING <- newIORef ""
    eRROR_LOADING <- newIORef ""
    eRROR_LOADING_ID <- newIORef ""
    iD <- newIORef ""
    gAME_ACTION_INPUT <- newIORef ""
    let this = PersistanceStrings header_ sAVING nUMBER_OF_RECORDS lOADING_ID lOAD_ALL dELETING_WITH_ID cLOSING_RECORDSTORE nOT_SAVING eRROR_LOADING eRROR_LOADING_ID iD gAME_ACTION_INPUT
    jregisterLevel header_ this
    pure this

initFields_ :: PersistanceStrings -> IO ()
initFields_ this = do
    jset this.sAVING ("Saving: ")
    jset this.nUMBER_OF_RECORDS ("Number of records: ")
    jset this.lOADING_ID ("Loading data with id: ")
    jset this.lOAD_ALL ("loadAll")
    jset this.dELETING_WITH_ID ("Deleting data with id: ")
    jset this.cLOSING_RECORDSTORE ("Closing RecordStore")
    jset this.nOT_SAVING ("Not Saving: ")
    jset this.eRROR_LOADING ("Error Loading gameActionInput: ")
    jset this.eRROR_LOADING_ID ("Error Loading id: ")
    jset this.iD (" id: ")
    jset this.gAME_ACTION_INPUT (" GameActionInput: ")
    pure ()

new_ :: IO PersistanceStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PersistanceStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PersistanceStrings)
getInstance = do
        pure (PersistanceStrings.instance_)


