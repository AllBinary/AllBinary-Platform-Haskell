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
-- package org.allbinary.thirdparty.store
module ThirdPartyMessageFactory where

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

data ThirdPartyMessageFactory = ThirdPartyMessageFactory
    { header_ :: JavaHeader
    , aUTHORIZED :: IORef (String)
    , nOT_AUTHORIZED :: IORef (String)
    , lINKAGE_ERROR :: IORef (String)
    }

instance JavaNull ThirdPartyMessageFactory where
    javaNull = javaNullRecord "ThirdPartyMessageFactory"

instance JavaEquals ThirdPartyMessageFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ThirdPartyMessageFactory where
    (==) = jrecordEquals

instance JavaObjectClass ThirdPartyMessageFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ThirdPartyMessageFactory
newRecord_ = do
    header_ <- newJavaHeader
    aUTHORIZED <- newIORef ""
    nOT_AUTHORIZED <- newIORef ""
    lINKAGE_ERROR <- newIORef ""
    let this = ThirdPartyMessageFactory header_ aUTHORIZED nOT_AUTHORIZED lINKAGE_ERROR
    jregisterLevel header_ this
    pure this

initFields_ :: ThirdPartyMessageFactory -> IO ()
initFields_ this = do
    jset this.aUTHORIZED ("Authorized")
    jset this.nOT_AUTHORIZED ("Not Authorized")
    jset this.lINKAGE_ERROR ("Linkage Error")
    pure ()

new_ :: IO ThirdPartyMessageFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ThirdPartyMessageFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ThirdPartyMessageFactory)
getInstance = do
        pure (ThirdPartyMessageFactory.instance_)


