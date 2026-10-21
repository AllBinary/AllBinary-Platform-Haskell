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
-- package org.allbinary.logic.math
module ScaleFactorFactory where

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

data ScaleFactorFactory = ScaleFactorFactory
    { header_ :: JavaHeader
    , dEFAULT_SCALE_FACTOR :: IORef (Int)
    , dEFAULT_SCALE_VALUE :: IORef (Int)
    }

instance JavaNull ScaleFactorFactory where
    javaNull = javaNullRecord "ScaleFactorFactory"

instance JavaEquals ScaleFactorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScaleFactorFactory where
    (==) = jrecordEquals

instance JavaObjectClass ScaleFactorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ScaleFactorFactory
newRecord_ = do
    header_ <- newJavaHeader
    dEFAULT_SCALE_FACTOR <- newIORef 0
    dEFAULT_SCALE_VALUE <- newIORef 0
    let this = ScaleFactorFactory header_ dEFAULT_SCALE_FACTOR dEFAULT_SCALE_VALUE
    jregisterLevel header_ this
    pure this

initFields_ :: ScaleFactorFactory -> IO ()
initFields_ this = do
    jset this.dEFAULT_SCALE_FACTOR (10)
    jset this.dEFAULT_SCALE_VALUE (1024)
    pure ()

new_ :: IO ScaleFactorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ScaleFactorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ScaleFactorFactory)
getInstance = do
        pure (ScaleFactorFactory.instance_)


