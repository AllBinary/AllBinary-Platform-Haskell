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
-- package org.allbinary.logic.string
module ServletStrings where

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

data ServletStrings = ServletStrings
    { header_ :: JavaHeader
    , dOPOST :: IORef (String)
    , dOGET :: IORef (String)
    , rEQUEST_EXCEPTION :: IORef (String)
    }

instance JavaNull ServletStrings where
    javaNull = javaNullRecord "ServletStrings"

instance JavaEquals ServletStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ServletStrings where
    (==) = jrecordEquals

instance JavaObjectClass ServletStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ServletStrings
newRecord_ = do
    header_ <- newJavaHeader
    dOPOST <- newIORef ""
    dOGET <- newIORef ""
    rEQUEST_EXCEPTION <- newIORef ""
    let this = ServletStrings header_ dOPOST dOGET rEQUEST_EXCEPTION
    jregisterLevel header_ this
    pure this

initFields_ :: ServletStrings -> IO ()
initFields_ this = do
    jset this.dOPOST ("doPost")
    jset this.dOGET ("doGet")
    jset this.rEQUEST_EXCEPTION ("Request Failed")
    pure ()

new_ :: IO ServletStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ServletStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ServletStrings)
getInstance = do
        pure (ServletStrings.instance_)


