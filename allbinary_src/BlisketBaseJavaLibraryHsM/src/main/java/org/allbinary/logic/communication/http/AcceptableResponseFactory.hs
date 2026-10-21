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
-- package org.allbinary.logic.communication.http
module AcceptableResponseFactory where

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
import qualified AcceptableResponse -- same package or java.lang

data AcceptableResponseFactory = AcceptableResponseFactory
    { header_ :: JavaHeader
    , hTML :: IORef (AcceptableResponse.AcceptableResponse)
    , wML :: IORef (AcceptableResponse.AcceptableResponse)
    , vXML :: IORef (AcceptableResponse.AcceptableResponse)
    }

instance JavaNull AcceptableResponseFactory where
    javaNull = javaNullRecord "AcceptableResponseFactory"

instance JavaEquals AcceptableResponseFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AcceptableResponseFactory where
    (==) = jrecordEquals

instance JavaObjectClass AcceptableResponseFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AcceptableResponseFactory
newRecord_ = do
    header_ <- newJavaHeader
    hTML <- newIORef javaNull
    wML <- newIORef javaNull
    vXML <- newIORef javaNull
    let this = AcceptableResponseFactory header_ hTML wML vXML
    jregisterLevel header_ this
    pure this

initFields_ :: AcceptableResponseFactory -> IO ()
initFields_ this = do
    jset this.hTML =<< (AcceptableResponse.new_3 "text/html" "html" 0)
    jset this.wML =<< (AcceptableResponse.new_3 "text/wml" "wml" 1)
    jset this.vXML =<< (AcceptableResponse.new_3 "text/vxml" "vxml" 2)
    pure ()

new_ :: IO AcceptableResponseFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AcceptableResponseFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AcceptableResponseFactory)
getInstance = do
        pure (AcceptableResponseFactory.instance_)


