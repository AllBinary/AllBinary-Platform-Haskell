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
module LineReader where

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
import qualified AbFileInputStream -- same package or java.lang
import qualified DataInputStream -- java.io.DataInputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data LineReader = LineReader
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , fileName :: IORef (String)
    , string :: IORef (String)
    , index :: IORef (Int)
    , idFile :: IORef (AbFileInputStream.AbFileInputStream)
    , idData :: IORef (DataInputStream.DataInputStream)
    }

instance JavaNull LineReader where
    javaNull = javaNullRecord "LineReader"

instance JavaEquals LineReader where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LineReader where
    (==) = jrecordEquals

instance JavaObjectClass LineReader where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LineReader
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    fileName <- newIORef ""
    string <- newIORef ""
    index <- newIORef 0
    idFile <- newIORef javaNull
    idData <- newIORef javaNull
    let this = LineReader header_ logUtil commonStrings fileName string index idFile idData
    jregisterLevel header_ this
    jregisterMethod header_ "hasNext" (\() -> hasNext_impl this)
    jregisterMethod header_ "next" (\() -> next_impl this)
    pure this

initFields_ :: LineReader -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.fileName ("")
    jset this.string ("")
    jset this.index (0)
    jset this.idFile (javaNull)
    jset this.idData (javaNull)
    pure ()

new_1 :: String -> IO LineReader
new_1 fileName = do
    this <- newRecord_
    init_1 this fileName
    pure this

init_1 :: LineReader -> String -> IO ()
init_1 this fileName = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("File: " ++ fileName) this "LineReader" e)
            do
                pure ()
            ) $ do
            let bytes = (jnewArray (100000) 0)
            jset (this).fileName (fileName)
            assignedValue <- (AbFileInputStream.new_1 fileName)
            jset (this).idFile (assignedValue)
            Control.Monad.void (AbFileInputStream.read ((jget (this).idFile)) bytes)
            assignedValue <- (jnewString bytes)
            jset (this).string (assignedValue)
        pure ()


hasNext :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasNext object_ = jmethod object_ "hasNext" (\() -> (hasNext_impl (javaCast object_ :: LineReader))) ()

hasNext_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasNext_super object_ = (hasNext_impl (javaCast object_ :: LineReader))

hasNext_impl :: LineReader -> IO (Bool)
hasNext_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "hasNext" e)
            do
                pure ()
            pure (False)
            ) $ do
            let nextIndex = (jstringIndexOf (jget (this).string) (jget ((jio (CommonSeps.getInstance))).nEW_LINE) (jget this.index))
            when (nextIndex == (Prelude.negate 1)) $ do
                javaReturn (False)
            pure (True)


-- throws Exception
next :: (JavaObjectClass this_) => this_ -> IO (String)
next object_ = jmethod object_ "next" (\() -> (next_impl (javaCast object_ :: LineReader))) ()

next_super :: (JavaObjectClass this_) => this_ -> IO (String)
next_super object_ = (next_impl (javaCast object_ :: LineReader))

next_impl :: LineReader -> IO (String)
next_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.commonStrings)).eXCEPTION) this "next" e)
            do
                pure ()
            javaThrow (e)
            ) $ do
            let nextIndex = (jstringIndexOf (jget (this).string) (jget ((jio (CommonSeps.getInstance))).nEW_LINE) (jget this.index))
            when (nextIndex == (Prelude.negate 1)) $ do
                javaThrow ((JavaException "Exception" "next() should have been called first"))
            let temp = (Prelude.take ((nextIndex) - ((jget this.index))) (Prelude.drop ((jget this.index)) (jget (this).string)))
            jset this.index ((nextIndex + 1))
            pure (temp)


