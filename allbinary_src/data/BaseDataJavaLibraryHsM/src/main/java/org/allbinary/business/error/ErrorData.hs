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
-- package org.allbinary.business.error
module ErrorData where

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

data ErrorData = ErrorData
    { header_ :: JavaHeader
    , nAME :: IORef (String)
    , tEXT :: IORef (String)
    }

instance JavaNull ErrorData where
    javaNull = javaNullRecord "ErrorData"

instance JavaEquals ErrorData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ErrorData where
    (==) = jrecordEquals

instance JavaObjectClass ErrorData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ErrorData
newRecord_ = do
    header_ <- newJavaHeader
    nAME <- newIORef ""
    tEXT <- newIORef ""
    let this = ErrorData header_ nAME tEXT
    jregisterLevel header_ this
    pure this

initFields_ :: ErrorData -> IO ()
initFields_ this = do
    jset this.nAME ("ERROR_NAME")
    jset this.tEXT ("ERROR_TEXT")
    pure ()


getInstance :: IO (ErrorData)
getInstance = do
        pure (ErrorData.instance_)

new_ :: IO ErrorData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ErrorData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


