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
module LogFactory where

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
import qualified Log -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data LogFactory = LogFactory
    { header_ :: JavaHeader
    }

instance JavaNull LogFactory where
    javaNull = javaNullRecord "LogFactory"

instance JavaEquals LogFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogFactory where
    (==) = jrecordEquals

instance JavaObjectClass LogFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE lOG #-}
lOG = unsafePerformIO ((Log.new_4 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = LogFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: LogFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LogFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass o2, JavaObjectClass o4) => String -> o2 -> String -> o4 -> IO (Log.Log)
getInstance specialMessage anyTypeObject_ functionName exceptionObject_ = do
        let anyType = jtoObject anyTypeObject_
        let exception = jtoObject exceptionObject_
        (Log.new_4 specialMessage anyType functionName exception)


getInstanceF :: (JavaObjectClass o2) => String -> o2 -> String -> IO (Log.Log)
getInstanceF specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        pure (LogFactory.lOG)


