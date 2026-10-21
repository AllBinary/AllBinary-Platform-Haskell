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
-- package org.allbinary.game.input
module NoPlayerGameInput (module NoPlayerGameInput, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, onDownGameKeyEvent, onDownGameKeyEvent_super, onDownGameKeyEvent_impl, onUpGameKeyEvent, onUpGameKeyEvent_super, onUpGameKeyEvent_impl, sINGLETON)
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
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PlayerGameInput

data NoPlayerGameInput = NoPlayerGameInput
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    }

instance JavaNull NoPlayerGameInput where
    javaNull = javaNullRecord "NoPlayerGameInput"

instance JavaEquals NoPlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoPlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass NoPlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO NoPlayerGameInput
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    let this = NoPlayerGameInput header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "onDownGameKeyEvent" (\() -> onDownGameKeyEvent_impl this)
    jregisterMethod header_ "onUpGameKeyEvent" (\() -> onUpGameKeyEvent_impl this)
    pure this

initFields_ :: NoPlayerGameInput -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (NoPlayerGameInput)
getInstance = do
        pure (NoPlayerGameInput.sINGLETON)

new_ :: IO NoPlayerGameInput
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoPlayerGameInput -> IO ()
init_ this = do
        PlayerGameInput.init_3 this.base (jio (BasicArrayListD.new_)) (jio (BasicArrayListD.new_)) (Prelude.negate 1)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


onDownGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent object_ a1 = jmethod object_ "onDownGameKeyEvent" (\() -> (onDownGameKeyEvent_impl (javaCast object_ :: NoPlayerGameInput))) () a1

onDownGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_super object_ a1 = (onDownGameKeyEvent_impl (javaCast object_ :: NoPlayerGameInput)) a1

onDownGameKeyEvent_impl :: NoPlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onDownGameKeyEvent_impl this gameKeyEvent = do
        pure ()


onUpGameKeyEvent :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent object_ a1 = jmethod object_ "onUpGameKeyEvent" (\() -> (onUpGameKeyEvent_impl (javaCast object_ :: NoPlayerGameInput))) () a1

onUpGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_super object_ a1 = (onUpGameKeyEvent_impl (javaCast object_ :: NoPlayerGameInput)) a1

onUpGameKeyEvent_impl :: NoPlayerGameInput -> GameKeyEvent.GameKeyEvent -> IO (())
onUpGameKeyEvent_impl this gameKeyEvent = do
        pure ()


