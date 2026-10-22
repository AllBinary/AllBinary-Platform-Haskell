{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.java.runtime.process.git
module GitProcessHelper where

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
import qualified ProcessBuilder -- same package or java.lang
import qualified Process -- same package or java.lang
import qualified File -- java.io.File
import qualified IOException -- java.io.IOException
import qualified StandardCharsets -- java.nio.charset.StandardCharsets
import qualified ArrayList -- java.util.ArrayList
import qualified List -- java.util.List
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbFileNativeUtil -- org.allbinary.logic.io.file.AbFileNativeUtil
import qualified TrackedStrings -- org.allbinary.logic.io.file.directory.TrackedStrings
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GitProcessHelper = GitProcessHelper
    { header_ :: JavaHeader
    , trackedStrings :: IORef (TrackedStrings.TrackedStrings)
    }

instance JavaNull GitProcessHelper where
    javaNull = javaNullRecord "GitProcessHelper"

instance JavaEquals GitProcessHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GitProcessHelper where
    (==) = jrecordEquals

instance JavaObjectClass GitProcessHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GitProcessHelper
newRecord_ = do
    header_ <- newJavaHeader
    trackedStrings <- newIORef javaNull
    let this = GitProcessHelper header_ trackedStrings
    jregisterLevel header_ this
    jregisterMethod header_ "trackedFiles" (\() -> trackedFiles_impl this)
    jregisterMethod header_ "trackedFiles_3" (\() -> trackedFiles_3_impl this)
    jregisterMethod header_ "isTracked" (\() -> isTracked_impl this)
    pure this

initFields_ :: GitProcessHelper -> IO ()
initFields_ this = do
    jset this.trackedStrings =<< (TrackedStrings.getInstance)
    pure ()


getInstance :: IO (GitProcessHelper)
getInstance = do
        pure (GitProcessHelper.instance_)

new_ :: IO GitProcessHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GitProcessHelper -> IO ()
init_ this = do
        initFields_ this
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let tHIS_IS_SLOW = "This is slow consider path exclusion instead"
        Control.Monad.void (LogUtil.putF logUtil tHIS_IS_SLOW this (jget (commonStrings).cONSTRUCTOR))
        pure ()


-- throws IOException, InterruptedException
trackedFiles :: (JavaObjectClass this_) => this_ -> String -> String -> IO (List.List)
trackedFiles object_ a1 a2 = jmethod object_ "trackedFiles" (\() -> (trackedFiles_impl (javaCast object_ :: GitProcessHelper))) () a1 a2

trackedFiles_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (List.List)
trackedFiles_super object_ a1 a2 = (trackedFiles_impl (javaCast object_ :: GitProcessHelper)) a1 a2

trackedFiles_impl :: GitProcessHelper -> String -> String -> IO (List.List)
trackedFiles_impl this rootAsString pathspec = do
        (GitProcessHelper.trackedFiles_3 this rootAsString pathspec ".java")


-- throws IOException, InterruptedException
trackedFiles_3 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (List.List)
trackedFiles_3 object_ a1 a2 a3 = jmethod object_ "trackedFiles_3" (\() -> (trackedFiles_3_impl (javaCast object_ :: GitProcessHelper))) () a1 a2 a3

trackedFiles_3_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (List.List)
trackedFiles_3_super object_ a1 a2 a3 = (trackedFiles_3_impl (javaCast object_ :: GitProcessHelper)) a1 a2 a3

trackedFiles_3_impl :: GitProcessHelper -> String -> String -> String -> IO (List.List)
trackedFiles_3_impl this rootAsString pathspec suffix = do
        process <- (ProcessBuilder.start ((jio (ProcessBuilder.redirectError ((jio (ProcessBuilder.new_7 (jget ((jget (this).trackedStrings)).gIT_COMMAND) (jget ((jget (this).trackedStrings)).cHANGE_DIRECTORY_OPTION) rootAsString (jget ((jget (this).trackedStrings)).lIST_FILES_COMMAND) (jget ((jget (this).trackedStrings)).sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE) (jget ((jget (this).trackedStrings)).pATHSPEC_SEPARATOR) pathspec))) (jget (ProcessBuilder.redirect).iNHERIT)))))
        output <- (Process.readAllBytes ((jio (Process.getInputStream process))))
        exitCode <- (Process.waitFor process)
        when (exitCode /= 0) $ do
            javaThrow ((JavaException "IllegalStateException" (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "git ls-files failed for "))) rootAsString))) " with exit code "))) exitCode)))))))
        files <- (fmap (\value_ -> javaCast value_ :: List.List) (ArrayList.new_))
        start <- newIORef (0)
        relativePath <- newIORef ("")
        forM_ [0 .. (jlength output) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((Prelude.fromIntegral (jindex output (index))) == 0) $ do
                assignedValue <- (jnewString output (jget start) (index - (jget start)) (StandardCharsets.uTF_8))
                jset relativePath (assignedValue)
                when (Data.List.isSuffixOf suffix (jget relativePath)) $ do
                    Control.Monad.void (List.add files (jget relativePath))
                jset start ((index + 1))
        pure (files)


isTracked :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
isTracked object_ a1 = jmethod object_ "isTracked" (\() -> (isTracked_impl (javaCast object_ :: GitProcessHelper))) () a1

isTracked_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (Bool)
isTracked_super object_ a1 = (isTracked_impl (javaCast object_ :: GitProcessHelper)) a1

isTracked_impl :: GitProcessHelper -> AbFile.AbFile -> IO (Bool)
isTracked_impl this file = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            nativeFile <- (AbFileNativeUtil.get file)
            parentFile <- (File.getParentFile nativeFile)
            process <- (ProcessBuilder.start ((jio (ProcessBuilder.redirectErrorStream ((jio (ProcessBuilder.new_7 (jget ((jget (this).trackedStrings)).gIT_COMMAND) (jget ((jget (this).trackedStrings)).cHANGE_DIRECTORY_OPTION) (jio (File.getPath parentFile)) (jget ((jget (this).trackedStrings)).lIST_FILES_COMMAND) (jget ((jget (this).trackedStrings)).eRROR_UNMATCH_OPTION) (jget ((jget (this).trackedStrings)).pATHSPEC_SEPARATOR) (jio (File.getName nativeFile))))) True))))
            Control.Monad.void (Process.readAllBytes ((jio (Process.getInputStream process))))
            pure (((jio (Process.waitFor process)) == 0))


