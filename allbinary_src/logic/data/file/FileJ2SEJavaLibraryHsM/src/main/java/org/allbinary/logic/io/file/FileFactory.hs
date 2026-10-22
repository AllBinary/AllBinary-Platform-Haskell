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
-- package org.allbinary.logic.io.file
module FileFactory where

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
import qualified AbFile -- same package or java.lang

data FileFactory = FileFactory
    { header_ :: JavaHeader
    }

instance JavaNull FileFactory where
    javaNull = javaNullRecord "FileFactory"

instance JavaEquals FileFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileFactory where
    (==) = jrecordEquals

instance JavaObjectClass FileFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = FileFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_1" (\() -> getInstance_1_impl this)
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    jregisterMethod header_ "isFile" (\() -> isFile_impl this)
    pure this

initFields_ :: FileFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FileFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FileFactory)
getInstance = do
        pure (FileFactory.instance_)


-- throws Exception
getInstance_1 :: (JavaObjectClass this_) => this_ -> String -> IO (AbFile.AbFile)
getInstance_1 object_ a1 = jmethod object_ "getInstance_1" (\() -> (getInstance_1_impl (javaCast object_ :: FileFactory))) () a1

getInstance_1_super :: (JavaObjectClass this_) => this_ -> String -> IO (AbFile.AbFile)
getInstance_1_super object_ a1 = (getInstance_1_impl (javaCast object_ :: FileFactory)) a1

getInstance_1_impl :: FileFactory -> String -> IO (AbFile.AbFile)
getInstance_1_impl this filePath = do
        (AbFile.createAbFileFromRawPath filePath)


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: FileFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: FileFactory)) a1 a2

getInstance_2_impl :: FileFactory -> AbFile.AbFile -> String -> IO (AbFile.AbFile)
getInstance_2_impl this file childFilePath = do
        (AbFile.createAbFileWithChild file childFilePath)


-- throws Exception
isFile :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isFile object_ a1 = jmethod object_ "isFile" (\() -> (isFile_impl (javaCast object_ :: FileFactory))) () a1

isFile_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isFile_super object_ a1 = (isFile_impl (javaCast object_ :: FileFactory)) a1

isFile_impl :: FileFactory -> String -> IO (Bool)
isFile_impl this path = do
    javaCatchReturn $ do
        file <- (AbFile.createAbFile path)
        if (jio (AbFile.exists file)) then do
            javaReturn (True)
        else do
            javaReturn (False)


