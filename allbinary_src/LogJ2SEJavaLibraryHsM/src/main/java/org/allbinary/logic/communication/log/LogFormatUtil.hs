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
module LogFormatUtil where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ExceptionUtil -- org.allbinary.logic.java.exception.ExceptionUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified TimeStampUtil -- org.allbinary.time.TimeStampUtil

data LogFormatUtil = LogFormatUtil
    { header_ :: JavaHeader
    , timeStampUtil :: IORef (TimeStampUtil.TimeStampUtil)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , nONE :: IORef (String)
    , lOG_ERROR :: IORef (String)
    , eMPTY :: IORef (String)
    , sTACK_TRACE :: IORef (String)
    , tIME :: IORef (String)
    , cLASS_NAME :: IORef (String)
    , fUNCTION_CALL :: IORef (String)
    , sPECIAL_MESSAGE :: IORef (String)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , exceptionUtil :: IORef (ExceptionUtil.ExceptionUtil)
    , nullUtil :: IORef (NullUtil.NullUtil)
    }

instance JavaNull LogFormatUtil where
    javaNull = javaNullRecord "LogFormatUtil"

instance JavaEquals LogFormatUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LogFormatUtil where
    (==) = jrecordEquals

instance JavaObjectClass LogFormatUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LogFormatUtil
newRecord_ = do
    header_ <- newJavaHeader
    timeStampUtil <- newIORef javaNull
    commonSeps <- newIORef javaNull
    nONE <- newIORef ""
    lOG_ERROR <- newIORef ""
    eMPTY <- newIORef ""
    sTACK_TRACE <- newIORef ""
    tIME <- newIORef ""
    cLASS_NAME <- newIORef ""
    fUNCTION_CALL <- newIORef ""
    sPECIAL_MESSAGE <- newIORef ""
    stringUtil <- newIORef javaNull
    exceptionUtil <- newIORef javaNull
    nullUtil <- newIORef javaNull
    let this = LogFormatUtil header_ timeStampUtil commonSeps nONE lOG_ERROR eMPTY sTACK_TRACE tIME cLASS_NAME fUNCTION_CALL sPECIAL_MESSAGE stringUtil exceptionUtil nullUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getS" (\() -> getS_impl this)
    jregisterMethod header_ "getF" (\() -> getF_impl this)
    jregisterMethod header_ "getO" (\() -> getO_impl this)
    pure this

initFields_ :: LogFormatUtil -> IO ()
initFields_ this = do
    jset this.timeStampUtil =<< (TimeStampUtil.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.nONE ("None")
    jset this.lOG_ERROR ("\nLog-Error: ")
    jset this.eMPTY ("Empty")
    jset this.sTACK_TRACE ("\nStack Trace: ")
    jset this.tIME ("Time: ")
    jset this.cLASS_NAME ((jget ((jget (this).commonSeps)).sPACE))
    jset this.fUNCTION_CALL ((jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
    jset this.sPECIAL_MESSAGE ("> ")
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.exceptionUtil =<< (ExceptionUtil.getInstance)
    jset this.nullUtil =<< (NullUtil.getInstance)
    pure ()


getInstance :: IO (LogFormatUtil)
getInstance = do
        pure (LogFormatUtil.instance_)

new_ :: IO LogFormatUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LogFormatUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


get :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> String -> String -> String -> o4 -> IO (String)
get object_ a1 a2 a3 a4 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: LogFormatUtil))) () a1 a2 a3 (jtoObject a4)

get_super :: (JavaObjectClass this_, JavaObjectClass o4) => this_ -> String -> String -> String -> o4 -> IO (String)
get_super object_ a1 a2 a3 a4 = (get_impl (javaCast object_ :: LogFormatUtil)) a1 a2 a3 (jtoObject a4)

get_impl :: LogFormatUtil -> String -> String -> String -> JavaObject -> IO (String)
get_impl this className functionName specialMessage exceptionObject_ = do
        let exception = jtoObject exceptionObject_
        stringBuffer <- (LogFormatUtil.getF this className functionName)
        Control.Monad.void (StringMaker.append stringBuffer (jio (LogFormatUtil.getO this exception)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPECIAL_MESSAGE))
        Control.Monad.void (StringMaker.append stringBuffer specialMessage)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).nEW_LINE))
        (StringMaker.toString stringBuffer)


getS :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getS object_ a1 a2 a3 = jmethod object_ "getS" (\() -> (getS_impl (javaCast object_ :: LogFormatUtil))) () a1 a2 a3

getS_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getS_super object_ a1 a2 a3 = (getS_impl (javaCast object_ :: LogFormatUtil)) a1 a2 a3

getS_impl :: LogFormatUtil -> String -> String -> String -> IO (String)
getS_impl this className functionName specialMessage = do
        stringBuffer <- (LogFormatUtil.getF this className functionName)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).sPECIAL_MESSAGE))
        Control.Monad.void (StringMaker.append stringBuffer specialMessage)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).nEW_LINE))
        (StringMaker.toString stringBuffer)


getF :: (JavaObjectClass this_) => this_ -> String -> String -> IO (StringMaker.StringMaker)
getF object_ a1 a2 = jmethod object_ "getF" (\() -> (getF_impl (javaCast object_ :: LogFormatUtil))) () a1 a2

getF_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (StringMaker.StringMaker)
getF_super object_ a1 a2 = (getF_impl (javaCast object_ :: LogFormatUtil)) a1 a2

getF_impl :: LogFormatUtil -> String -> String -> IO (StringMaker.StringMaker)
getF_impl this className functionName = do
        functionName <- newIORef functionName
        when ((jget functionName) == javaNull) $ do
            jset functionName ((jget (this).nONE))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tIME))
        Control.Monad.void (StringMaker.append stringBuffer (jio (TimeStampUtil.getAsString ((jget (this).timeStampUtil)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).cLASS_NAME))
        Control.Monad.void (StringMaker.append stringBuffer className)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).fUNCTION_CALL))
        Control.Monad.void (StringMaker.append stringBuffer (jget functionName))
        pure (stringBuffer)


getO :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getO object_ a1 = jmethod object_ "getO" (\() -> (getO_impl (javaCast object_ :: LogFormatUtil))) () (jtoObject a1)

getO_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getO_super object_ a1 = (getO_impl (javaCast object_ :: LogFormatUtil)) (jtoObject a1)

getO_impl :: LogFormatUtil -> JavaObject -> IO (String)
getO_impl this exceptionObject_ = do
    let exception = jtoObject exceptionObject_
    javaCatchReturn $ do
        if (exception /= (jget ((jget (this).nullUtil)).nULL_OBJECT)) then do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).lOG_ERROR))
            exceptionAsString <- (Any.toString exception)
            if (exceptionAsString /= javaNull) then do
                Control.Monad.void (StringMaker.append stringBuffer exceptionAsString)
            else do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).eMPTY))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sTACK_TRACE))
            if (exception /= (jget ((jget (this).nullUtil)).nULL_OBJECT)) then do
                Control.Monad.void (StringMaker.append stringBuffer (jio (ExceptionUtil.getStackTrace ((jget (this).exceptionUtil)) (javaCast exception :: JavaException))))
            else do
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).stringUtil)).nULL_STRING))
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            javaReturn ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


