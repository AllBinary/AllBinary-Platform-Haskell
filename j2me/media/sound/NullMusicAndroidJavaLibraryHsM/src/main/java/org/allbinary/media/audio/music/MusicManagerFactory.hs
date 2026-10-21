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
-- package org.allbinary.media.audio.music
module MusicManagerFactory where

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
import qualified MusicManager -- same package or java.lang
import qualified MusicService -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data MusicManagerFactory = MusicManagerFactory
    { header_ :: JavaHeader
    }

instance JavaNull MusicManagerFactory where
    javaNull = javaNullRecord "MusicManagerFactory"

instance JavaEquals MusicManagerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MusicManagerFactory where
    (==) = jrecordEquals

instance JavaObjectClass MusicManagerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MusicManagerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = MusicManagerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: MusicManagerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MusicManagerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MusicManagerFactory -> IO ()
init_ this = do
    initFields_ this


createMusicManager :: BasicArrayList.BasicArrayList -> IO (MusicManager.MusicManager)
createMusicManager soundList = do
        (MusicManager.new_2 ("MusicService") soundList)


