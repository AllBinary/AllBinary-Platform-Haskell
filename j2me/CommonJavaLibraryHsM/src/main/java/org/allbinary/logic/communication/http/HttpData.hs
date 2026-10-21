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
-- package org.allbinary.logic.communication.http
module HttpData where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data HttpData = HttpData
    { header_ :: JavaHeader
    , eQUALS :: IORef (String)
    , pARAM_SEP :: IORef (String)
    , uRL_PARAM_SEP :: IORef (String)
    , uRL_LABEL :: IORef (String)
    }

instance JavaNull HttpData where
    javaNull = javaNullRecord "HttpData"

instance JavaEquals HttpData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpData where
    (==) = jrecordEquals

instance JavaObjectClass HttpData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO HttpData
newRecord_ = do
    header_ <- newJavaHeader
    eQUALS <- newIORef ""
    pARAM_SEP <- newIORef ""
    uRL_PARAM_SEP <- newIORef ""
    uRL_LABEL <- newIORef ""
    let this = HttpData header_ eQUALS pARAM_SEP uRL_PARAM_SEP uRL_LABEL
    jregisterLevel header_ this
    pure this

initFields_ :: HttpData -> IO ()
initFields_ this = do
    jset this.eQUALS (javaNull)
    jset this.pARAM_SEP (javaNull)
    jset this.uRL_PARAM_SEP (javaNull)
    jset this.uRL_LABEL ("Url: ")
    pure ()


getInstance :: IO (HttpData)
getInstance = do
        pure (HttpData.instance_)

new_ :: IO HttpData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: HttpData -> IO ()
init_ this = do
        initFields_ this
        commonSeps <- (CommonSeps.getInstance)
        jset (this).eQUALS ((jget (commonSeps).eQUALS))
        jset (this).pARAM_SEP ((jget (commonSeps).aMPERSAND))
        jset (this).uRL_PARAM_SEP ((jget (commonSeps).qUESTION))
        pure ()


