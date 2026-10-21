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
module FileStreamFactory where

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
import qualified AbFileInputStream -- same package or java.lang
import qualified AbFileOutputStream -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data FileStreamFactory = FileStreamFactory
    { header_ :: JavaHeader
    }

instance JavaNull FileStreamFactory where
    javaNull = javaNullRecord "FileStreamFactory"

instance JavaEquals FileStreamFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileStreamFactory where
    (==) = jrecordEquals

instance JavaObjectClass FileStreamFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileStreamFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = FileStreamFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getFileInputStreamInstance" (\() -> getFileInputStreamInstance_impl this)
    jregisterMethod header_ "getFileOutputStreamInstance" (\() -> getFileOutputStreamInstance_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    pure this

initFields_ :: FileStreamFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (FileStreamFactory)
getInstance = do
        when ((jget FileStreamFactory.sINGLETON) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset FileStreamFactory.sINGLETON (assignedValue)
        pure ((javaCast (jget FileStreamFactory.sINGLETON) :: FileStreamFactory))

new_ :: IO FileStreamFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileStreamFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getFileInputStreamInstance :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbFileInputStream.AbFileInputStream)
getFileInputStreamInstance object_ a1 a2 = jmethod object_ "getFileInputStreamInstance" (\() -> (getFileInputStreamInstance_impl (javaCast object_ :: FileStreamFactory))) () a1 a2

getFileInputStreamInstance_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbFileInputStream.AbFileInputStream)
getFileInputStreamInstance_super object_ a1 a2 = (getFileInputStreamInstance_impl (javaCast object_ :: FileStreamFactory)) a1 a2

getFileInputStreamInstance_impl :: FileStreamFactory -> String -> String -> IO (AbFileInputStream.AbFileInputStream)
getFileInputStreamInstance_impl this path fileName = do
        fILEABPATH <- (AbPath.new_2 path fileName)
        file <- (AbFile.createAbFileFromAbPath fILEABPATH)
        (AbFileInputStream.new_1 file)


-- throws Exception
getFileOutputStreamInstance :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbFileOutputStream.AbFileOutputStream)
getFileOutputStreamInstance object_ a1 a2 = jmethod object_ "getFileOutputStreamInstance" (\() -> (getFileOutputStreamInstance_impl (javaCast object_ :: FileStreamFactory))) () a1 a2

getFileOutputStreamInstance_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbFileOutputStream.AbFileOutputStream)
getFileOutputStreamInstance_super object_ a1 a2 = (getFileOutputStreamInstance_impl (javaCast object_ :: FileStreamFactory)) a1 a2

getFileOutputStreamInstance_impl :: FileStreamFactory -> String -> String -> IO (AbFileOutputStream.AbFileOutputStream)
getFileOutputStreamInstance_impl this path fileName = do
        fILEABPATH <- (AbPath.new_2 path fileName)
        file <- (AbFile.createAbFileFromAbPath fILEABPATH)
        when (jio (AbFile.exists file)) $ do
            Control.Monad.void (AbFile.delete file)
            Control.Monad.void (AbFile.createNewFile file)
        (AbFileOutputStream.createFromAbFile file)


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: FileStreamFactory))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: FileStreamFactory)) a1 a2

delete_impl :: FileStreamFactory -> String -> String -> IO (())
delete_impl this path fileName = do
        fILEABPATH <- (AbPath.new_2 path fileName)
        file <- (AbFile.createAbFileFromAbPath fILEABPATH)
        Control.Monad.void (AbFile.delete file)
        pure ()


