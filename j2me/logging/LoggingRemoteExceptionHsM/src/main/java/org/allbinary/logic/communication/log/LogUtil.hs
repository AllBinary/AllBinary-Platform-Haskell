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
import qualified Any -- same package or java.lang
import qualified Log -- same package or java.lang
import qualified LogFormatUtil -- same package or java.lang
import qualified XmlRpcRemoteLogClient -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified IOException -- java.io.IOException
import qualified XmlRpcException -- org.apache.xmlrpc.XmlRpcException
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified SpecialMessageUtil -- org.allbinary.canvas.SpecialMessageUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data LogUtil = LogUtil
    { header_ :: JavaHeader
    , mESSAGE :: IORef (String)
    , isFirstException :: IORef (Bool)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , stringBuffer :: IORef (StringMaker.StringMaker)
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

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogUtil
newRecord_ = do
    header_ <- newJavaHeader
    mESSAGE <- newIORef ""
    isFirstException <- newIORef False
    timeDelayHelper <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    stringBuffer <- newIORef javaNull
    let this = LogUtil header_ mESSAGE isFirstException timeDelayHelper abeClientInformation stringBuffer
    jregisterLevel header_ this
    jregisterMethod header_ "putL" (\() -> putL_impl this)
    jregisterMethod header_ "putF_overload1" (\() -> putF_overload1_impl this)
    jregisterMethod header_ "putF_overload2" (\() -> putF_overload2_impl this)
    jregisterMethod header_ "put" (\() -> put_impl this)
    pure this

initFields_ :: LogUtil -> IO ()
initFields_ this = do
    jset this.mESSAGE ("message")
    jset this.isFirstException (True)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 200000)
    jset this.abeClientInformation (javaNull)
    jset this.stringBuffer =<< (StringMaker.new_)
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
    javaCatchReturn $ do
        when (log == javaNull) $ do
            javaReturn (())
        specialMessage <- (Log.getSpecialMessage log)
        anyType <- (Log.getObject log)
        functionName <- (Log.getFunctionName log)
        exception <- (Log.getThrowable log)
        Control.Monad.void (LogUtil.put this specialMessage anyType functionName exception)
    pure ()


-- Java overloads of putF: calls the overload for the types of the arguments
putF :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (())
putF this a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) = putF_overload2 this a1 (javaCast a2 :: String) a3
    | otherwise = putF_overload1 this a1 a2 a3

putF_overload1 :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (())
putF_overload1 object_ a1 a2 a3 = jmethod object_ "putF_overload1" (\() -> (putF_overload1_impl (javaCast object_ :: LogUtil))) () a1 (jtoObject a2) a3

putF_overload1_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (())
putF_overload1_super object_ a1 a2 a3 = (putF_overload1_impl (javaCast object_ :: LogUtil)) a1 (jtoObject a2) a3

putF_overload1_impl :: LogUtil -> String -> JavaObject -> String -> IO (())
putF_overload1_impl this specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        pure ()


putF_overload2 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
putF_overload2 object_ a1 a2 a3 = jmethod object_ "putF_overload2" (\() -> (putF_overload2_impl (javaCast object_ :: LogUtil))) () a1 a2 a3

putF_overload2_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (())
putF_overload2_super object_ a1 a2 a3 = (putF_overload2_impl (javaCast object_ :: LogUtil)) a1 a2 a3

putF_overload2_impl :: LogUtil -> String -> String -> String -> IO (())
putF_overload2_impl this specialMessage className functionName = do
        pure ()


put :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o4) => this_ -> String -> o2 -> String -> o4 -> IO (())
put object_ a1 a2 a3 a4 = jmethod object_ "put" (\() -> (put_impl (javaCast object_ :: LogUtil))) () a1 (jtoObject a2) a3 (jtoObject a4)

put_super :: (JavaObjectClass this_, JavaObjectClass o2, JavaObjectClass o4) => this_ -> String -> o2 -> String -> o4 -> IO (())
put_super object_ a1 a2 a3 a4 = (put_impl (javaCast object_ :: LogUtil)) a1 (jtoObject a2) a3 (jtoObject a4)

put_impl :: LogUtil -> String -> JavaObject -> String -> JavaObject -> IO (())
put_impl this specialMessage anyTypeObject_ functionName exceptionObject_ = do
    let anyType = jtoObject anyTypeObject_
    let exception = jtoObject exceptionObject_
    javaCatchReturn $ do
        when (exception /= javaNull) $ do
            when ((jio (Class.compareTo ((jio (Class.getName ((jio (jobjectGetClass exception)))))) (jio (getName "XmlRpcException")))) == 0) $ do
                javaReturn (())
            when ((jio (Class.compareTo ((jio (Class.getName ((jio (jobjectGetClass exception)))))) (jio (getName "IOException")))) == 0) $ do
                javaReturn (())
            when ((jget (this).isFirstException) || (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper))))) $ do
                className <- newIORef ((jget ((jio (CommonStrings.getInstance))).eMPTY))
                jset (this).isFirstException (False)
                when ((anyType /= javaNull) && ((jio (Class.getName ((jio (jobjectGetClass anyType))))) /= javaNull)) $ do
                    assignedValue <- (jnewString (jio (Class.getName ((jio (jobjectGetClass anyType))))))
                    jset className (assignedValue)
                message <- (LogFormatUtil.get ((jio (LogFormatUtil.getInstance))) (jget className) functionName specialMessage exception)
                handle (\(e :: JavaException) -> do
                    Control.Monad.void (putStrLn (javaToString "Exception"))
                    Control.Monad.void (hPutStrLn System.IO.stderr (Prelude.show e))
                    ) $ do
                    Control.Monad.void (putStrLn (javaToString "Eeeek"))
                    when ((jget (this).abeClientInformation) == javaNull) $ do
                        javaThrow ((JavaException "RuntimeException" ""))
                    hashtable <- (AbeClientInformationInterface.toHashtable ((jget (this).abeClientInformation)))
                    Control.Monad.void (StringMaker.delete ((jget (this).stringBuffer)) 0 (jio (StringMaker.length ((jget (this).stringBuffer)))))
                    Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) message)
                    Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jget ((jio (CommonSeps.getInstance))).sPACE))
                    Control.Monad.void (StringMaker.append ((jget (this).stringBuffer)) (jio (SpecialMessageUtil.get ((jio (SpecialMessageUtil.getInstance))))))
                    Control.Monad.void (ABHashtable.put hashtable (jget (this).mESSAGE) (jio (StringMaker.toString ((jget (this).stringBuffer)))))
                    Control.Monad.void (XmlRpcRemoteLogClient.get ((jio (XmlRpcRemoteLogClient.new_1 (jget (this).abeClientInformation)))) hashtable)
    pure ()


