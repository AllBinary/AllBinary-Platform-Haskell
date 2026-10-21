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
-- package org.allbinary.logic.communication.log
module ForcedLogUtil where

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
import qualified Any -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil

data ForcedLogUtil = ForcedLogUtil
    { header_ :: JavaHeader
    }

instance JavaNull ForcedLogUtil where
    javaNull = javaNullRecord "ForcedLogUtil"

instance JavaEquals ForcedLogUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ForcedLogUtil where
    (==) = jrecordEquals

instance JavaObjectClass ForcedLogUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ForcedLogUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ForcedLogUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ForcedLogUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ForcedLogUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ForcedLogUtil -> IO ()
init_ this = do
    initFields_ this


log :: (JavaObjectClass o2) => String -> o2 -> IO (())
log message anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jio (CommonStrings.getInstance))).eXCEPTION) anyType "log" e)
            ) $ do
            javaThrow ((JavaException "Exception" message))
        pure ()


