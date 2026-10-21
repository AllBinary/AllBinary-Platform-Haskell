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
-- package org.allbinary.logic.communication.log.config
module LoggingInitInfo where

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
import qualified LogConfig -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data LoggingInitInfo = LoggingInitInfo
    { header_ :: JavaHeader
    }

instance JavaNull LoggingInitInfo where
    javaNull = javaNullRecord "LoggingInitInfo"

instance JavaEquals LoggingInitInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LoggingInitInfo where
    (==) = jrecordEquals

instance JavaObjectClass LoggingInitInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE logConfigInfoList #-}
logConfigInfoList = unsafePerformIO (newIORef (javaNull))

{-# NOINLINE hasRead #-}
hasRead = unsafePerformIO (newIORef (False))

newRecord_ :: IO LoggingInitInfo
newRecord_ = do
    header_ <- newJavaHeader
    let this = LoggingInitInfo header_
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getNumberOfLogConfigs" (\() -> getNumberOfLogConfigs_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: LoggingInitInfo -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LoggingInitInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LoggingInitInfo -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
write :: IO (())
write = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            jset LoggingInitInfo.hasRead (False)
        pure ()


-- throws Exception
read :: IO (())
read = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            pure ()
        pure ()


setHasRead :: Bool -> IO (())
setHasRead value = do
        jset LoggingInitInfo.hasRead (value)
        pure ()


-- throws Exception
updateIfNeeded :: IO (())
updateIfNeeded = do
        when (Prelude.not (jget LoggingInitInfo.hasRead)) $ do
            Control.Monad.void (LoggingInitInfo.read)
            jset LoggingInitInfo.hasRead (True)
            when ((jget LoggingInitInfo.logConfigInfoList) == javaNull) $ do
                javaThrow ((JavaException "Exception" "Read Failed"))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: LoggingInitInfo))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: LoggingInitInfo))

isValid_impl :: LoggingInitInfo -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            pure (False)
            ) $ do
            pure (True)


set :: BasicArrayList.BasicArrayList -> IO (())
set logConfigInfoList = do
        jset LoggingInitInfo.logConfigInfoList (logConfigInfoList)
        pure ()


-- throws Exception
get :: IO (BasicArrayList.BasicArrayList)
get = do
        Control.Monad.void (LoggingInitInfo.updateIfNeeded)
        pure ((jget LoggingInitInfo.logConfigInfoList))


-- throws Exception
getTypeList :: IO (BasicArrayList.BasicArrayList)
getTypeList = do
        Control.Monad.void (LoggingInitInfo.updateIfNeeded)
        allLogTypeVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (size ((jget LoggingInitInfo.logConfigInfoList)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let logConfigInfo = (javaCast (jindex ((jget ((jget LoggingInitInfo.logConfigInfoList)).objectArray)) (index)) :: LogConfig.LogConfig)
            logTypeVector <- (LogConfig.getTypeVector logConfigInfo)
            when (jio (LogConfig.isEnabled logConfigInfo)) $ do
                Control.Monad.void (BasicArrayList.addAllList allLogTypeVector logTypeVector)
        pure (allLogTypeVector)


-- throws Exception
getNumberOfLogConfigs :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLogConfigs object_ = jmethod object_ "getNumberOfLogConfigs" (\() -> (getNumberOfLogConfigs_impl (javaCast object_ :: LoggingInitInfo))) ()

getNumberOfLogConfigs_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfLogConfigs_super object_ = (getNumberOfLogConfigs_impl (javaCast object_ :: LoggingInitInfo))

getNumberOfLogConfigs_impl :: LoggingInitInfo -> IO (Int)
getNumberOfLogConfigs_impl this = do
        (size ((jget LoggingInitInfo.logConfigInfoList)))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LoggingInitInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LoggingInitInfo))

toString_impl :: LoggingInitInfo -> IO (String)
toString_impl this = do
        handle (\(e :: JavaException) -> do
            pure ("Error")
            ) $ do
            pure (javaNull)


