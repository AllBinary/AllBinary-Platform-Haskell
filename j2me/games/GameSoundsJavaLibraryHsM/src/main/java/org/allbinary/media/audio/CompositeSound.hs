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
module CompositeSound (module CompositeSound, module Sound) where

import Sound hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl)
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
import qualified PlayerComposite -- same package or java.lang
import qualified AllBinaryMediaManager -- same package or java.lang
import qualified Sound

data CompositeSound = CompositeSound
    { header_ :: JavaHeader
    , base :: Sound.Sound
    }

instance JavaNull CompositeSound where
    javaNull = javaNullRecord "CompositeSound"

instance JavaEquals CompositeSound where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompositeSound where
    (==) = jrecordEquals

instance JavaObjectClass CompositeSound where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompositeSound
newRecord_ = do
    base <- Sound.newRecord_
    let header_ = base.header_
    let this = CompositeSound header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: CompositeSound -> IO ()
initFields_ this = do
    pure ()

new_1 :: String -> IO CompositeSound
new_1 resource = do
    this <- newRecord_
    init_1 this resource
    pure this

init_1 :: CompositeSound -> String -> IO ()
init_1 this resource = do
        Sound.init_1 this.base (resource)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: CompositeSound))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: CompositeSound))

init_impl :: CompositeSound -> IO (())
init_impl this = do
        Control.Monad.void (Sound.setPlayerP this (javaCast (jio (PlayerComposite.new_2 (jio (AllBinaryMediaManager.createPlayer (jio (Sound.getResource this)))) 570))))
        pure ()


