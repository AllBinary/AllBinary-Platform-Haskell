{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.business.context.configuration
module ContextConfigurationPathUtil where

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
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified AbPath -- org.allbinary.logic.io.path.AbPath

data ContextConfigurationPathUtil = ContextConfigurationPathUtil
    { header_ :: JavaHeader
    }

instance JavaNull ContextConfigurationPathUtil where
    javaNull = javaNullRecord "ContextConfigurationPathUtil"

instance JavaEquals ContextConfigurationPathUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ContextConfigurationPathUtil where
    (==) = jrecordEquals

instance JavaObjectClass ContextConfigurationPathUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ContextConfigurationPathUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = ContextConfigurationPathUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: ContextConfigurationPathUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ContextConfigurationPathUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ContextConfigurationPathUtil -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getAbFile :: String -> IO (AbFile.AbFile)
getAbFile contextName = do
        pure (javaNull)


-- throws Exception
getAbPath :: String -> IO (AbPath.AbPath)
getAbPath contextName = do
        pure (javaNull)


-- throws Exception
getPath :: IO (String)
getPath = do
        pure (javaNull)


getFileName :: String -> IO (String)
getFileName contextName = do
        pure (javaNull)


