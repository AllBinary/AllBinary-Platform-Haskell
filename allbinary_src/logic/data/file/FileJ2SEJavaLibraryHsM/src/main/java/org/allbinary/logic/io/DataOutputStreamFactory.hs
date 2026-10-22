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
module DataOutputStreamFactory where

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
import qualified AbFileOutputStream -- same package or java.lang
import qualified AbDataOutputStream -- same package or java.lang
import qualified FileStreamFactory -- same package or java.lang
import qualified AbFile -- org.allbinary.logic.io.file.AbFile

data DataOutputStreamFactory = DataOutputStreamFactory
    { header_ :: JavaHeader
    }

instance JavaNull DataOutputStreamFactory where
    javaNull = javaNullRecord "DataOutputStreamFactory"

instance JavaEquals DataOutputStreamFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DataOutputStreamFactory where
    (==) = jrecordEquals

instance JavaObjectClass DataOutputStreamFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DataOutputStreamFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = DataOutputStreamFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstanceForAbFile" (\() -> getInstanceForAbFile_impl this)
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: DataOutputStreamFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DataOutputStreamFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DataOutputStreamFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DataOutputStreamFactory)
getInstance = do
        pure (DataOutputStreamFactory.instance_)


-- throws Exception
getInstanceForAbFile :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (AbDataOutputStream.AbDataOutputStream)
getInstanceForAbFile object_ a1 = jmethod object_ "getInstanceForAbFile" (\() -> (getInstanceForAbFile_impl (javaCast object_ :: DataOutputStreamFactory))) () a1

getInstanceForAbFile_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> IO (AbDataOutputStream.AbDataOutputStream)
getInstanceForAbFile_super object_ a1 = (getInstanceForAbFile_impl (javaCast object_ :: DataOutputStreamFactory)) a1

getInstanceForAbFile_impl :: DataOutputStreamFactory -> AbFile.AbFile -> IO (AbDataOutputStream.AbDataOutputStream)
getInstanceForAbFile_impl this file = do
        idFileOutputStream <- (AbFileOutputStream.createFromAbFile file)
        idOutData <- (AbDataOutputStream.new_1 idFileOutputStream)
        pure (idOutData)


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbDataOutputStream.AbDataOutputStream)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: DataOutputStreamFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (AbDataOutputStream.AbDataOutputStream)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: DataOutputStreamFactory)) a1 a2

getInstance_2_impl :: DataOutputStreamFactory -> String -> String -> IO (AbDataOutputStream.AbDataOutputStream)
getInstance_2_impl this filePath fileName = do
        fileStreamFactory <- (FileStreamFactory.getInstance)
        fileOutputStream <- (FileStreamFactory.getFileOutputStreamInstance fileStreamFactory filePath fileName)
        idOutData <- (AbDataOutputStream.new_1 fileOutputStream)
        pure (idOutData)


