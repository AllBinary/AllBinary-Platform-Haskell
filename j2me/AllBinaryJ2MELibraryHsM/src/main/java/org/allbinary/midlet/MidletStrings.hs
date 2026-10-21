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
-- package org.allbinary.midlet
module MidletStrings where

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

data MidletStrings = MidletStrings
    { header_ :: JavaHeader
    , cOMMAND_ACTION :: IORef (String)
    }

instance JavaNull MidletStrings where
    javaNull = javaNullRecord "MidletStrings"

instance JavaEquals MidletStrings where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MidletStrings where
    (==) = jrecordEquals

instance JavaObjectClass MidletStrings where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MidletStrings
newRecord_ = do
    header_ <- newJavaHeader
    cOMMAND_ACTION <- newIORef ""
    let this = MidletStrings header_ cOMMAND_ACTION
    jregisterLevel header_ this
    pure this

initFields_ :: MidletStrings -> IO ()
initFields_ this = do
    jset this.cOMMAND_ACTION ("commandAction")
    pure ()

new_ :: IO MidletStrings
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MidletStrings -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (MidletStrings)
getInstance = do
        pure (MidletStrings.instance_)


