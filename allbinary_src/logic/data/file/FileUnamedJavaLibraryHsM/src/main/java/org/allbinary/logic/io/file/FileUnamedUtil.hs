{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module FileUnamedUtil where

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
import qualified CommonSeps -- org.allbinary.string.CommonSeps

data FileUnamedUtil = FileUnamedUtil
    { header_ :: JavaHeader
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    }

instance JavaNull FileUnamedUtil where
    javaNull = javaNullRecord "FileUnamedUtil"

instance JavaEquals FileUnamedUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileUnamedUtil where
    (==) = jrecordEquals

instance JavaObjectClass FileUnamedUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO FileUnamedUtil
newRecord_ = do
    header_ <- newJavaHeader
    commonSeps <- newIORef javaNull
    let this = FileUnamedUtil header_ commonSeps
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: FileUnamedUtil -> IO ()
initFields_ this = do
    jset this.commonSeps =<< (CommonSeps.getInstance)
    pure ()

new_ :: IO FileUnamedUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileUnamedUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FileUnamedUtil)
getInstance = do
        pure (FileUnamedUtil.instance_)


process :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: FileUnamedUtil))) () a1

process_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
process_super object_ a1 = (process_impl (javaCast object_ :: FileUnamedUtil)) a1

process_impl :: FileUnamedUtil -> String -> IO (String)
process_impl this string = do
        simplifiedString <- newIORef ((Prelude.map Data.Char.toLower string))
        jset simplifiedString ((jstringReplace (jget simplifiedString) (jget ((jget (this).commonSeps)).sPACE) (jget ((jget (this).commonSeps)).uNDERSCORE)))
        jset simplifiedString ((jstringReplace (jget simplifiedString) (jget ((jget (this).commonSeps)).dASH) (jget ((jget (this).commonSeps)).uNDERSCORE)))
        pure ((jget simplifiedString))


