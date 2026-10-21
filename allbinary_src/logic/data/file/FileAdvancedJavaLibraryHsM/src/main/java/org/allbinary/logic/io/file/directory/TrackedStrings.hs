{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.logic.io.file.directory
module TrackedStrings where

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

data TrackedStrings = TrackedStrings
    { header_ :: JavaHeader
    , tARGET_PATH_WINDOWS :: IORef (String)
    , tARGET_PATH_UNIX :: IORef (String)
    , hTML_TEMP :: IORef (String)
    , aPPLICATION :: IORef (String)
    , aPP :: IORef (String)
    , gIT_COMMAND :: IORef (String)
    , cHANGE_DIRECTORY_OPTION :: IORef (String)
    , lIST_FILES_COMMAND :: IORef (String)
    , eRROR_UNMATCH_OPTION :: IORef (String)
    , pATHSPEC_SEPARATOR :: IORef (String)
    , sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE :: IORef (String)
    }

instance JavaNull TrackedStrings where
    javaNull = javaNullRecord "TrackedStrings"

instance JavaEquals TrackedStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TrackedStrings where
    (==) = jrecordEquals

instance JavaObjectClass TrackedStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TrackedStrings
newRecord_ = do
    header_ <- newJavaHeader
    tARGET_PATH_WINDOWS <- newIORef ""
    tARGET_PATH_UNIX <- newIORef ""
    hTML_TEMP <- newIORef ""
    aPPLICATION <- newIORef ""
    aPP <- newIORef ""
    gIT_COMMAND <- newIORef ""
    cHANGE_DIRECTORY_OPTION <- newIORef ""
    lIST_FILES_COMMAND <- newIORef ""
    eRROR_UNMATCH_OPTION <- newIORef ""
    pATHSPEC_SEPARATOR <- newIORef ""
    sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE <- newIORef ""
    let this = TrackedStrings header_ tARGET_PATH_WINDOWS tARGET_PATH_UNIX hTML_TEMP aPPLICATION aPP gIT_COMMAND cHANGE_DIRECTORY_OPTION lIST_FILES_COMMAND eRROR_UNMATCH_OPTION pATHSPEC_SEPARATOR sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE
    jregisterLevel header_ this
    pure this

initFields_ :: TrackedStrings -> IO ()
initFields_ this = do
    jset this.tARGET_PATH_WINDOWS ("\\target\\")
    jset this.tARGET_PATH_UNIX ("/target/")
    jset this.hTML_TEMP ("HTMLTemp")
    jset this.aPPLICATION ("Application")
    jset this.aPP ("\\app")
    jset this.gIT_COMMAND ("git")
    jset this.cHANGE_DIRECTORY_OPTION ("-C")
    jset this.lIST_FILES_COMMAND ("ls-files")
    jset this.eRROR_UNMATCH_OPTION ("--error-unmatch")
    jset this.pATHSPEC_SEPARATOR ("--")
    jset this.sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE ("-z")
    pure ()

new_ :: IO TrackedStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TrackedStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (TrackedStrings)
getInstance = do
        pure (TrackedStrings.instance_)


