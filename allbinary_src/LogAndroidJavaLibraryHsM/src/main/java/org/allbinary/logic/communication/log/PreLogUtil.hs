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
module PreLogUtil where

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
import qualified Class -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogFormatUtil -- org.allbinary.logic.communication.log.LogFormatUtil

data PreLogUtil = PreLogUtil
    { header_ :: JavaHeader
    }

instance JavaNull PreLogUtil where
    javaNull = javaNullRecord "PreLogUtil"

instance JavaEquals PreLogUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PreLogUtil where
    (==) = jrecordEquals

instance JavaObjectClass PreLogUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

lABEL = "org.allbinary"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PreLogUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = PreLogUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: PreLogUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PreLogUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PreLogUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


put :: (JavaObjectClass o2) => String -> o2 -> String -> IO (())
put specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (PreLogUtil.putOE specialMessage anyType functionName (jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
        pure ()


putOE :: (JavaObjectClass o2, JavaObjectClass o4) => String -> o2 -> String -> o4 -> IO (())
putOE specialMessage anyTypeObject_ functionName exceptionObject_ = do
        let anyType = jtoObject anyTypeObject_
        let exception = jtoObject exceptionObject_
        className <- newIORef (PreLogUtil.lABEL)
        actualClassName <- (Class.getName ((jio (jobjectGetClass anyType))))
        when (actualClassName /= javaNull) $ do
            jset className (actualClassName)
        message <- (LogFormatUtil.get ((jio (LogFormatUtil.getInstance))) (jget className) functionName specialMessage exception)
        Control.Monad.void (i ((jget (android.util).log)) (PreLogUtil.lABEL) message)
        pure ()


putS :: String -> String -> String -> IO (())
putS specialMessage className functionName = do
        Control.Monad.void (PreLogUtil.putSE specialMessage className functionName (jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
        pure ()


putSE :: (JavaObjectClass o4) => String -> String -> String -> o4 -> IO (())
putSE specialMessage className functionName exceptionObject_ = do
        let exception = jtoObject exceptionObject_
        message <- (LogFormatUtil.get ((jio (LogFormatUtil.getInstance))) className functionName specialMessage exception)
        Control.Monad.void (i ((jget (android.util).log)) className message)
        pure ()


