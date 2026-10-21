{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
module BuildingSound (module BuildingSound, module CompositeSound) where

import CompositeSound hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, soundInterface)
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
import qualified CompositeSound -- org.allbinary.media.audio.CompositeSound
import qualified Sound -- org.allbinary.media.audio.Sound

data BuildingSound = BuildingSound
    { header_ :: JavaHeader
    , base :: CompositeSound.CompositeSound
    }

instance JavaNull BuildingSound where
    javaNull = javaNullRecord "BuildingSound"

instance JavaEquals BuildingSound where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BuildingSound where
    (==) = jrecordEquals

instance JavaObjectClass BuildingSound where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE soundInterface #-}
soundInterface = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: Sound.Sound) (new_)) >>= newIORef)

newRecord_ :: IO BuildingSound
newRecord_ = do
    base <- CompositeSound.newRecord_
    let header_ = base.header_
    let this = BuildingSound header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: BuildingSound -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BuildingSound
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BuildingSound -> IO ()
init_ this = do
        CompositeSound.init_1 this.base ("resource:/wav/building.wav")
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getInstance :: IO (Sound.Sound)
getInstance = do
        pure ((jget BuildingSound.soundInterface))


