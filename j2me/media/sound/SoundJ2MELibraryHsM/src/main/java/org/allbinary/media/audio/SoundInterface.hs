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
-- package org.allbinary.media.audio
module SoundInterface where

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
import qualified Player -- javax.microedition.media.Player

-- Java interface: the classes that implement it have these functions
data SoundInterface = SoundInterface
    { header_ :: JavaHeader
    }

instance JavaNull SoundInterface where
    javaNull = javaNullRecord "SoundInterface"

instance JavaEquals SoundInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SoundInterface where
    (==) = jrecordEquals

instance JavaObjectClass SoundInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SoundInterface
fromHeader_ header = SoundInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SoundInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getResource :: (JavaObjectClass this_) => this_ -> IO (String)
getResource object_ = jmethod object_ "getResource" (\() -> (getResource_impl (javaCast object_ :: SoundInterface))) ()

getResource_super :: (JavaObjectClass this_) => this_ -> IO (String)
getResource_super object_ = (getResource_impl (javaCast object_ :: SoundInterface))

getResource_impl :: SoundInterface -> IO (String)
getResource_impl this = javaAbstractMethod "getResource"


getPlayerP :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP object_ = jmethod object_ "getPlayerP" (\() -> (getPlayerP_impl (javaCast object_ :: SoundInterface))) ()

getPlayerP_super :: (JavaObjectClass this_) => this_ -> IO (Player.Player)
getPlayerP_super object_ = (getPlayerP_impl (javaCast object_ :: SoundInterface))

getPlayerP_impl :: SoundInterface -> IO (Player.Player)
getPlayerP_impl this = javaAbstractMethod "getPlayerP"


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: SoundInterface))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: SoundInterface))

init_impl :: SoundInterface -> IO (())
init_impl this = javaAbstractMethod "init"


