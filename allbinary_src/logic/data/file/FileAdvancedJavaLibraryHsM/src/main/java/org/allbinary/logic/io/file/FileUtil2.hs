{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module FileUtil2 where

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
import qualified SimpleFileUtil -- same package or java.lang
import qualified AbFile -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFileInputStream -- org.allbinary.logic.io.AbFileInputStream
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data FileUtil2 = FileUtil2
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , streamUtil :: IORef (StreamUtil.StreamUtil)
    }

instance JavaNull FileUtil2 where
    javaNull = javaNullRecord "FileUtil2"

instance JavaEquals FileUtil2 where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileUtil2 where
    (==) = jrecordEquals

instance JavaObjectClass FileUtil2 where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileUtil2
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    streamUtil <- newIORef javaNull
    let this = FileUtil2 header_ logUtil commonStrings streamUtil
    jregisterLevel header_ this
    jregisterMethod header_ "loadFileAsList" (\() -> loadFileAsList_impl this)
    pure this

initFields_ :: FileUtil2 -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.streamUtil =<< (StreamUtil.getInstance)
    pure ()


getInstance :: IO (FileUtil2)
getInstance = do
        pure (FileUtil2.instance_)

new_ :: IO FileUtil2
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileUtil2 -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


loadFileAsList :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList object_ a1 a2 a3 = jmethod object_ "loadFileAsList" (\() -> (loadFileAsList_impl (javaCast object_ :: FileUtil2))) () a1 a2 a3

loadFileAsList_super :: (JavaObjectClass this_) => this_ -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_super object_ a1 a2 a3 = (loadFileAsList_impl (javaCast object_ :: FileUtil2)) a1 a2 a3

loadFileAsList_impl :: FileUtil2 -> AbFile.AbFile -> Int -> JavaArray (Int8) -> IO (BasicArrayList.BasicArrayList)
loadFileAsList_impl this file max byteArray1 = do
        inputStream <- newIORef (javaNull)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).aDD) e)
            ) $ do
            assignedValue <- (AbFileInputStream.new_1 file)
            jset inputStream (assignedValue)
        (SimpleFileUtil.loadFileAsList ((jio (SimpleFileUtil.getInstance))) (javaCast (jget inputStream)) max byteArray1)


