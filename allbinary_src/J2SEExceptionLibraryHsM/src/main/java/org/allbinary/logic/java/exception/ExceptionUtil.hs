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
-- package org.allbinary.logic.java.exception
module ExceptionUtil where

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
import qualified ByteArrayOutputStream -- java.io.ByteArrayOutputStream
import qualified PrintStream -- java.io.PrintStream

data ExceptionUtil = ExceptionUtil
    { header_ :: JavaHeader
    , nONE :: IORef (String)
    }

instance JavaNull ExceptionUtil where
    javaNull = javaNullRecord "ExceptionUtil"

instance JavaEquals ExceptionUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ExceptionUtil where
    (==) = jrecordEquals

instance JavaObjectClass ExceptionUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

pRETEND_EXCEPTION = (JavaException "Exception" "Not Really An Exception")

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ExceptionUtil
newRecord_ = do
    header_ <- newJavaHeader
    nONE <- newIORef ""
    let this = ExceptionUtil header_ nONE
    jregisterLevel header_ this
    jregisterMethod header_ "getStackTrace" (\() -> getStackTrace_impl this)
    pure this

initFields_ :: ExceptionUtil -> IO ()
initFields_ this = do
    jset this.nONE ("No Stack Trace")
    pure ()


getInstance :: IO (ExceptionUtil)
getInstance = do
        pure (ExceptionUtil.instance_)

new_ :: IO ExceptionUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ExceptionUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getStackTrace :: (JavaObjectClass this_) => this_ -> JavaException -> IO (String)
getStackTrace object_ a1 = jmethod object_ "getStackTrace" (\() -> (getStackTrace_impl (javaCast object_ :: ExceptionUtil))) () a1

getStackTrace_super :: (JavaObjectClass this_) => this_ -> JavaException -> IO (String)
getStackTrace_super object_ a1 = (getStackTrace_impl (javaCast object_ :: ExceptionUtil)) a1

getStackTrace_impl :: ExceptionUtil -> JavaException -> IO (String)
getStackTrace_impl this e = do
    javaCatchReturn $ do
        when (e /= javaNull) $ do
            byteArrayOutputStream <- (ByteArrayOutputStream.new_)
            printStream <- (PrintStream.new_1 byteArrayOutputStream)
            Control.Monad.void (PrintStream.printStackTrace printStream e)
            output <- (ByteArrayOutputStream.toString byteArrayOutputStream)
            when (output /= javaNull) $ do
                javaReturn =<< (jnewString output)
        pure ((jget (this).nONE))


