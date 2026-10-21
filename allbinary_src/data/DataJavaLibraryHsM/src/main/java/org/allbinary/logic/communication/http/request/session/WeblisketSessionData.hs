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
-- package org.allbinary.logic.communication.http.request.session
module WeblisketSessionData where

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

data WeblisketSessionData = WeblisketSessionData
    { header_ :: JavaHeader
    }

instance JavaNull WeblisketSessionData where
    javaNull = javaNullRecord "WeblisketSessionData"

instance JavaEquals WeblisketSessionData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeblisketSessionData where
    (==) = jrecordEquals

instance JavaObjectClass WeblisketSessionData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

iNVALIDATESESSION = "SESSION_INVALIDATE_SESSION"

aTTEMPTS = "SESSION_ATTEMPTS"

tIMEOUT = "SESSION_TIMEOUT"

rEMOVABLEUSERNAME = "SESSION_REMOVABLE_USER_NAME"

rEMOVABLEPASSWORD = "SESSION_REMOVABLE_PASSWORD"

rEMOVABLENEWPASSWORD = "SESSION_REMOVABLE_NEW_PASSWORD"

rEMOVABLEREENTERNEWPASSWORD = "SESSION_REMOVABLE_REENTER_NEW_PASSWORD"

aUTHENTICATED = "SESSION_AUTHENTICATED"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WeblisketSessionData
newRecord_ = do
    header_ <- newJavaHeader
    let this = WeblisketSessionData header_
    jregisterLevel header_ this
    pure this

initFields_ :: WeblisketSessionData -> IO ()
initFields_ this = do
    pure ()

new_ :: IO WeblisketSessionData
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: WeblisketSessionData -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


