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
module EarlySoundsFactory (module EarlySoundsFactory, module BaseSoundsFactory) where

import BaseSoundsFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getSoundInterfaceArray, getSoundInterfaceArray_super, getSoundInterfaceArray_impl, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified Sound -- same package or java.lang
import qualified SelectSound -- same package or java.lang
import qualified ErrorSound -- same package or java.lang
import qualified BaseSoundsFactory

data EarlySoundsFactory = EarlySoundsFactory
    { header_ :: JavaHeader
    , base :: BaseSoundsFactory.BaseSoundsFactory
    }

instance JavaNull EarlySoundsFactory where
    javaNull = javaNullRecord "EarlySoundsFactory"

instance JavaEquals EarlySoundsFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EarlySoundsFactory where
    (==) = jrecordEquals

instance JavaObjectClass EarlySoundsFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

newRecord_ :: IO EarlySoundsFactory
newRecord_ = do
    base <- BaseSoundsFactory.newRecord_
    let header_ = base.header_
    let this = EarlySoundsFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getSoundInterfaceArray" (\() -> getSoundInterfaceArray_impl this)
    pure this

initFields_ :: EarlySoundsFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO EarlySoundsFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EarlySoundsFactory -> IO ()
init_ this = do
    BaseSoundsFactory.init_ this.base
    initFields_ this


-- throws Exception
getSoundInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray object_ = jmethod object_ "getSoundInterfaceArray" (\() -> (getSoundInterfaceArray_impl (javaCast object_ :: EarlySoundsFactory))) ()

getSoundInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_super object_ = (getSoundInterfaceArray_impl (javaCast object_ :: EarlySoundsFactory))

getSoundInterfaceArray_impl :: EarlySoundsFactory -> IO (JavaArray (Sound.Sound))
getSoundInterfaceArray_impl this = do
        let soundInterfaceArray = (jnewArray (2) javaNull)
        index <- newIORef (0)
        assignedValue <- (SelectSound.getInstance)
        jsetIndex soundInterfaceArray ((jpostIncrement index (+ 1))) (assignedValue)
        assignedValue <- (ErrorSound.getInstance)
        jsetIndex soundInterfaceArray ((jpostIncrement index (+ 1))) (assignedValue)
        pure (soundInterfaceArray)


getInstance :: IO (EarlySoundsFactory)
getInstance = do
        pure (EarlySoundsFactory.instance_)


