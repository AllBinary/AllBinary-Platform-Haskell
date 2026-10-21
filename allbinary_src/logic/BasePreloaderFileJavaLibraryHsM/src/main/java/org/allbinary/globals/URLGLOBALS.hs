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
-- package org.allbinary.globals
module URLGLOBALS where

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
import qualified AppUrlGlobals -- same package or java.lang
import qualified UrlGlobalsInterface -- same package or java.lang

data URLGLOBALS = URLGLOBALS
    { header_ :: JavaHeader
    }

instance JavaNull URLGLOBALS where
    javaNull = javaNullRecord "URLGLOBALS"

instance JavaEquals URLGLOBALS where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq URLGLOBALS where
    (==) = jrecordEquals

instance JavaObjectClass URLGLOBALS where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE urlGlobalsInterface #-}
urlGlobalsInterface = unsafePerformIO (newIORef ((javaCast AppUrlGlobals.nULL_APP_URL_GLOBALS :: UrlGlobalsInterface.UrlGlobalsInterface)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO URLGLOBALS
newRecord_ = do
    header_ <- newJavaHeader
    let this = URLGLOBALS header_
    jregisterLevel header_ this
    pure this

initFields_ :: URLGLOBALS -> IO ()
initFields_ this = do
    pure ()

new_ :: IO URLGLOBALS
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: URLGLOBALS -> IO ()
init_ this = do
    initFields_ this


init :: UrlGlobalsInterface.UrlGlobalsInterface -> IO (())
init urlGlobalsInterface = do
        jset URLGLOBALS.urlGlobalsInterface (urlGlobalsInterface)
        pure ()


isTestingMode :: IO (Bool)
isTestingMode = do
        (isTestingMode ((jget URLGLOBALS.urlGlobalsInterface)))


getWebappPath :: IO (String)
getWebappPath = do
        (getWebappPath ((jget URLGLOBALS.urlGlobalsInterface)))


getTestHtmlPath :: IO (String)
getTestHtmlPath = do
        (getTestHtmlPath ((jget URLGLOBALS.urlGlobalsInterface)))


-- throws Exception
getMainPath :: IO (String)
getMainPath = do
        (getMainPath ((jget URLGLOBALS.urlGlobalsInterface)))


