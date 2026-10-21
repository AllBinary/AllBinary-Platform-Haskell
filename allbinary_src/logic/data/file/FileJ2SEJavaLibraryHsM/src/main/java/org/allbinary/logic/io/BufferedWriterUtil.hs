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
-- package org.allbinary.logic.io
module BufferedWriterUtil where

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
import qualified BufferedWriter -- java.io.BufferedWriter
import qualified FileWriter -- java.io.FileWriter
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data BufferedWriterUtil = BufferedWriterUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonLabels :: IORef (CommonLabels.CommonLabels)
    , rEMOVING_OLD :: IORef (String)
    }

instance JavaNull BufferedWriterUtil where
    javaNull = javaNullRecord "BufferedWriterUtil"

instance JavaEquals BufferedWriterUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BufferedWriterUtil where
    (==) = jrecordEquals

instance JavaObjectClass BufferedWriterUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BufferedWriterUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonLabels <- newIORef javaNull
    rEMOVING_OLD <- newIORef ""
    let this = BufferedWriterUtil header_ logUtil commonStrings commonLabels rEMOVING_OLD
    jregisterLevel header_ this
    jregisterMethod header_ "overwrite_overload1" (\() -> overwrite_overload1_impl this)
    jregisterMethod header_ "overwrite_overload2" (\() -> overwrite_overload2_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    pure this

initFields_ :: BufferedWriterUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonLabels =<< (CommonLabels.getInstance)
    jset this.rEMOVING_OLD ("Remove old for overwriting: ")
    pure ()

new_ :: IO BufferedWriterUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BufferedWriterUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BufferedWriterUtil)
getInstance = do
        pure (BufferedWriterUtil.instance_)


-- Java overloads of overwrite: calls the overload for the types of the arguments
overwrite :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> String -> IO (())
overwrite this a1 a2
    | jisInstanceOf a1 (javaNull :: String) = overwrite_overload1 this (javaCast a1 :: String) a2
    | jisInstanceOf a1 (javaNull :: AbFile.AbFile) = overwrite_overload2 this (javaCast a1 :: AbFile.AbFile) a2
    | otherwise = overwrite_overload2 this (javaCast a1 :: AbFile.AbFile) a2

-- throws Exception
overwrite_overload1 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
overwrite_overload1 object_ a1 a2 = jmethod object_ "overwrite_overload1" (\() -> (overwrite_overload1_impl (javaCast object_ :: BufferedWriterUtil))) () a1 a2

overwrite_overload1_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
overwrite_overload1_super object_ a1 a2 = (overwrite_overload1_impl (javaCast object_ :: BufferedWriterUtil)) a1 a2

overwrite_overload1_impl :: BufferedWriterUtil -> String -> String -> IO (())
overwrite_overload1_impl this path data_ = do
        abFile <- (AbFile.createAbFile path)
        if (jio (AbFile.exists abFile)) then do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rEMOVING_OLD) ++ path) this (jget ((jget (this).commonStrings)).cREATE))
            Control.Monad.void (AbFile.delete abFile)
        else do
            name <- (AbPathData.removeNameFromPath ((jio (AbPathData.getInstance))) path)
            abFileDirectory <- (AbFile.createAbFile name)
            if (jio (AbFile.exists abFileDirectory)) then do
                pure ()
            else do
                stringBuilder <- (StringMaker.new_)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuilder (jget ((jget (this).commonStrings)).cREATE)))) (jget ((jget (this).commonLabels)).cOLON_SEP)))) name))))) this (jget ((jget (this).commonStrings)).cREATE))
                result <- (AbFile.mkdirs abFileDirectory)
                Control.Monad.void (StringMaker.delete stringBuilder 0 (jio (StringMaker.length stringBuilder)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append stringBuilder (jget ((jget (this).commonLabels)).rESULT_)))) result))))) this (jget ((jget (this).commonStrings)).cREATE))
        Control.Monad.void (BufferedWriterUtil.write this abFile data_)
        pure ()


-- throws Exception
overwrite_overload2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (())
overwrite_overload2 object_ a1 a2 = jmethod object_ "overwrite_overload2" (\() -> (overwrite_overload2_impl (javaCast object_ :: BufferedWriterUtil))) () a1 a2

overwrite_overload2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (())
overwrite_overload2_super object_ a1 a2 = (overwrite_overload2_impl (javaCast object_ :: BufferedWriterUtil)) a1 a2

overwrite_overload2_impl :: BufferedWriterUtil -> AbFile.AbFile -> String -> IO (())
overwrite_overload2_impl this abFile data_ = do
        if (jio (AbFile.exists abFile)) then do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).rEMOVING_OLD) ++ javaToString (jio (AbFile.getPath abFile))) this (jget ((jget (this).commonStrings)).cREATE))
            Control.Monad.void (AbFile.delete abFile)
        else do
            name <- (AbPathData.removeNameFromPath ((jio (AbPathData.getInstance))) (jio (AbFile.getAbsolutePath abFile)))
            abFileDirectory <- (AbFile.createAbFile name)
            if (jio (AbFile.exists abFileDirectory)) then do
                pure ()
            else do
                stringBuilder <- (StringMaker.new_)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuilder (jget ((jget (this).commonStrings)).cREATE)))) (jget ((jget (this).commonLabels)).cOLON_SEP)))) name))))) this (jget ((jget (this).commonStrings)).cREATE))
                result <- (AbFile.mkdirs abFileDirectory)
                Control.Monad.void (StringMaker.delete stringBuilder 0 (jio (StringMaker.length stringBuilder)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append stringBuilder (jget ((jget (this).commonLabels)).rESULT_)))) result))))) this (jget ((jget (this).commonStrings)).cREATE))
        Control.Monad.void (BufferedWriterUtil.write this abFile data_)
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (())
write object_ a1 a2 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: BufferedWriterUtil))) () a1 a2

write_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (())
write_super object_ a1 a2 = (write_impl (javaCast object_ :: BufferedWriterUtil)) a1 a2

write_impl :: BufferedWriterUtil -> AbFile.AbFile -> String -> IO (())
write_impl this abFile data_ = do
        fileOut <- (BufferedWriter.new_1 (jio (FileWriter.new_1 (jio (AbFileNativeUtil.get abFile)))))
        Control.Monad.void (BufferedWriter.write fileOut data_ 0 (Prelude.length data_))
        Control.Monad.void (BufferedWriter.newLine fileOut)
        Control.Monad.void (BufferedWriter.flush fileOut)
        pure ()


