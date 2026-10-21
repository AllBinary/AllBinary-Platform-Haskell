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
-- package org.allbinary.logic.system.security.licensing
module StoreAppClientInformation (module StoreAppClientInformation, module AbeClientInformation) where

import AbeClientInformation hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLongArrayIdentifier, getLongArrayIdentifier_super, getLongArrayIdentifier_impl, longArrayIdentifier)
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
import qualified LongArrayIdentifierInterface -- org.allbinary.thirdparty.store.LongArrayIdentifierInterface
import qualified AbeClientInformation

-- implements LongArrayIdentifierInterface
data StoreAppClientInformation = StoreAppClientInformation
    { header_ :: JavaHeader
    , base :: AbeClientInformation.AbeClientInformation
    , longArrayIdentifier :: IORef (JavaArray (Int64))
    }

instance JavaNull StoreAppClientInformation where
    javaNull = javaNullRecord "StoreAppClientInformation"

instance JavaEquals StoreAppClientInformation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StoreAppClientInformation where
    (==) = jrecordEquals

instance JavaObjectClass StoreAppClientInformation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StoreAppClientInformation
newRecord_ = do
    base <- AbeClientInformation.newRecord_
    let header_ = base.header_
    longArrayIdentifier <- newIORef javaNull
    let this = StoreAppClientInformation header_ base longArrayIdentifier
    jregisterLevel header_ this
    LongArrayIdentifierInterface.registerInterface_ header_
    jregisterMethod header_ "getLongArrayIdentifier" (\() -> getLongArrayIdentifier_impl this)
    pure this

initFields_ :: StoreAppClientInformation -> IO ()
initFields_ this = do
    jset this.longArrayIdentifier (javaNull)
    pure ()

new_5 :: String -> String -> String -> String -> JavaArray (Int64) -> IO StoreAppClientInformation
new_5 name version specialName shortName longArrayIdentifier = do
    this <- newRecord_
    init_5 this name version specialName shortName longArrayIdentifier
    pure this

init_5 :: StoreAppClientInformation -> String -> String -> String -> String -> JavaArray (Int64) -> IO ()
init_5 this name version specialName shortName longArrayIdentifier = do
        AbeClientInformation.init_4 this.base (name) (version) (specialName) (shortName)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).longArrayIdentifier (longArrayIdentifier)
        pure ()


getLongArrayIdentifier :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int64))
getLongArrayIdentifier object_ = jmethod object_ "getLongArrayIdentifier" (\() -> (getLongArrayIdentifier_impl (javaCast object_ :: StoreAppClientInformation))) ()

getLongArrayIdentifier_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int64))
getLongArrayIdentifier_super object_ = (getLongArrayIdentifier_impl (javaCast object_ :: StoreAppClientInformation))

getLongArrayIdentifier_impl :: StoreAppClientInformation -> IO (JavaArray (Int64))
getLongArrayIdentifier_impl this = do
        pure ((jget (this).longArrayIdentifier))


