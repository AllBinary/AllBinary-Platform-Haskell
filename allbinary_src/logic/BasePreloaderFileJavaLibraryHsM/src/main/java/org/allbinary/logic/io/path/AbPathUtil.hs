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
-- package org.allbinary.logic.io.path
module AbPathUtil where

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
import qualified AbPath -- same package or java.lang

data AbPathUtil = AbPathUtil
    { header_ :: JavaHeader
    , nO_ABPATH :: IORef (AbPath.AbPath)
    }

instance JavaNull AbPathUtil where
    javaNull = javaNullRecord "AbPathUtil"

instance JavaEquals AbPathUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbPathUtil where
    (==) = jrecordEquals

instance JavaObjectClass AbPathUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbPathUtil
newRecord_ = do
    header_ <- newJavaHeader
    nO_ABPATH <- newIORef javaNull
    let this = AbPathUtil header_ nO_ABPATH
    jregisterLevel header_ this
    pure this

initFields_ :: AbPathUtil -> IO ()
initFields_ this = do
    jset this.nO_ABPATH =<< (AbPath.createAbPath)
    pure ()

new_ :: IO AbPathUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbPathUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbPathUtil)
getInstance = do
        pure (AbPathUtil.instance_)


