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
module LogUtil where

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
import qualified LogFormatUtil -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Log -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified TsUtil -- org.allbinary.logic.TsUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LogUtil = LogUtil
    { header_ :: JavaHeader
    , logFormatUtil :: IORef (LogFormatUtil.LogFormatUtil)
    }

instance JavaNull LogUtil where
    javaNull = javaNullRecord "LogUtil"

instance JavaEquals LogUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogUtil where
    (==) = jrecordEquals

instance JavaObjectClass LogUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

lOG_SUCCESS = "org.allbinary: "

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogUtil
newRecord_ = do
    header_ <- newJavaHeader
    logFormatUtil <- newIORef javaNull
    let this = LogUtil header_ logFormatUtil
    jregisterLevel header_ this
    jregisterMethod header_ "putL" (\() -> putL_impl this)
    jregisterMethod header_ "putF" (\() -> putF_impl this)
    jregisterMethod header_ "putFS" (\() -> putFS_impl this)
    jregisterMethod header_ "put" (\() -> put_impl this)
    pure this

initFields_ :: LogUtil -> IO ()
initFields_ this = do
    jset this.logFormatUtil =<< (LogFormatUtil.getInstance)
    pure ()


getInstance :: IO (LogUtil)
getInstance = do
        pure (LogUtil.instance_)

new_ :: IO LogUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


putL :: (JavaObjectClass this_) => this_ -> Log.Log -> IO (())
putL object_ a1 = jmethod object_ "putL" (\() -> (putL_impl (javaCast object_ :: LogUtil))) () a1

putL_super :: (JavaObjectClass this_) => this_ -> Log.Log -> IO (())
putL_super object_ a1 = (putL_impl (javaCast object_ :: LogUtil)) a1

putL_impl :: LogUtil -> Log.Log -> IO (())
putL_impl this log = do
        specialMessage <- (Log.getSpecialMessage log)
        anyType <- (Log.getObject log)
        functionName <- (Log.getFunctionName log)
        exception <- (Log.getThrowable log)
        Control.Monad.void (LogUtil.put this specialMessage anyType functionName exception)
        pure ()


putF :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (())
putF object_ a1 a2 a3 = jmethod object_ "putF" (\() -> (putF_impl (javaCast object_ :: LogUtil))) () a1 (jtoObject a2) a3

putF_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (())
putF_super object_ a1 a2 a3 = (putF_impl (javaCast object_ :: LogUtil)) a1 (jtoObject a2) a3

putF_impl :: LogUtil -> String -> JavaObject -> String -> IO (())
putF_impl this specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        className <- newIORef ((jget ((jio (CommonStrings.getInstance))).eMPTY))
        when ((jio (Class.getName ((jio (jobjectGetClass anyType))))) /= javaNull) $ do
            assignedValue <- (jnewString (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (Class.getName ((jio (jobjectGetClass anyType)))))))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (Numeric.showHex (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) anyType)) "")))))))
            jset className (assignedValue)
        message <- (LogFormatUtil.getS ((jget (this).logFormatUtil)) (jget className) functionName specialMessage)
        Control.Monad.void (putStr (javaToString (LogUtil.lOG_SUCCESS)))
        Control.Monad.void (putStrLn (javaToString message))
        pure ()


putFS :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
putFS object_ a1 a2 a3 = jmethod object_ "putFS" (\() -> (putFS_impl (javaCast object_ :: LogUtil))) () a1 a2 a3

putFS_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
putFS_super object_ a1 a2 a3 = (putFS_impl (javaCast object_ :: LogUtil)) a1 a2 a3

putFS_impl :: LogUtil -> String -> String -> String -> IO (())
putFS_impl this specialMessage className functionName = do
        className <- newIORef className
        assignedValue <- (jnewString (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget className)))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (Numeric.showHex (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) (jget this.base.anyType))) "")))))))
        jset className (assignedValue)
        message <- (LogFormatUtil.getS ((jget (this).logFormatUtil)) (jget className) functionName specialMessage)
        Control.Monad.void (putStr (javaToString (LogUtil.lOG_SUCCESS)))
        Control.Monad.void (putStrLn (javaToString message))
        pure ()


put :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o4) => this_ -> String -> o2 -> String -> o4 -> IO (())
put object_ a1 a2 a3 a4 = jmethod object_ "put" (\() -> (put_impl (javaCast object_ :: LogUtil))) () a1 (jtoObject a2) a3 (jtoObject a4)

put_super :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o4) => this_ -> String -> o2 -> String -> o4 -> IO (())
put_super object_ a1 a2 a3 a4 = (put_impl (javaCast object_ :: LogUtil)) a1 (jtoObject a2) a3 (jtoObject a4)

put_impl :: LogUtil -> String -> JavaObject -> String -> JavaObject -> IO (())
put_impl this specialMessage anyTypeObject_ functionName exceptionObject_ = do
        let anyType = jtoObject anyTypeObject_
        let exception = jtoObject exceptionObject_
        className <- newIORef ((jget ((jio (CommonStrings.getInstance))).eMPTY))
        when ((jio (Class.getName ((jio (jobjectGetClass anyType))))) /= javaNull) $ do
            assignedValue <- (jnewString (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (Class.getName ((jio (jobjectGetClass anyType)))))))) (jget ((jio (CommonSeps.getInstance))).cOLON)))) (Numeric.showHex (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) anyType)) "")))))))
            jset className (assignedValue)
        message <- (LogFormatUtil.get ((jget (this).logFormatUtil)) (jget className) functionName specialMessage exception)
        Control.Monad.void (putStr (javaToString (LogUtil.lOG_SUCCESS)))
        Control.Monad.void (putStrLn (javaToString message))
        pure ()


