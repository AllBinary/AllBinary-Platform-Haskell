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
-- package org.allbinary.logic.java.characters
module CharacterSetData where

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

data CharacterSetData = CharacterSetData
    { header_ :: JavaHeader
    , uS_ASCII :: IORef (String)
    , iSO_8859_1 :: IORef (String)
    , uTF_8 :: IORef (String)
    , uTF_16 :: IORef (String)
    , uTF_16BE :: IORef (String)
    , uTF_16LE :: IORef (String)
    }

instance JavaNull CharacterSetData where
    javaNull = javaNullRecord "CharacterSetData"

instance JavaEquals CharacterSetData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CharacterSetData where
    (==) = jrecordEquals

instance JavaObjectClass CharacterSetData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CharacterSetData
newRecord_ = do
    header_ <- newJavaHeader
    uS_ASCII <- newIORef ""
    iSO_8859_1 <- newIORef ""
    uTF_8 <- newIORef ""
    uTF_16 <- newIORef ""
    uTF_16BE <- newIORef ""
    uTF_16LE <- newIORef ""
    let this = CharacterSetData header_ uS_ASCII iSO_8859_1 uTF_8 uTF_16 uTF_16BE uTF_16LE
    jregisterLevel header_ this
    pure this

initFields_ :: CharacterSetData -> IO ()
initFields_ this = do
    jset this.uS_ASCII ("US-ASCII")
    jset this.iSO_8859_1 ("ISO-8859-1")
    jset this.uTF_8 ("UTF-8")
    jset this.uTF_16 ("UTF-16")
    jset this.uTF_16BE ("UTF-16BE")
    jset this.uTF_16LE ("UTF-16LE")
    pure ()


getInstance :: IO (CharacterSetData)
getInstance = do
        pure (CharacterSetData.instance_)

new_ :: IO CharacterSetData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CharacterSetData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


