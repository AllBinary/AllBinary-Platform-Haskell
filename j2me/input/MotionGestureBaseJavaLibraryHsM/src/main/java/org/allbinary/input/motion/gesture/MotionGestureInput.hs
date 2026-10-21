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
-- package org.allbinary.input.motion.gesture
module MotionGestureInput (module MotionGestureInput, module Input) where

import Input hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified Input -- org.allbinary.game.input.Input
import qualified InputFactory -- org.allbinary.game.input.InputFactory

data MotionGestureInput = MotionGestureInput
    { header_ :: JavaHeader
    , base :: Input.Input
    }

instance JavaNull MotionGestureInput where
    javaNull = javaNullRecord "MotionGestureInput"

instance JavaEquals MotionGestureInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MotionGestureInput where
    (==) = jrecordEquals

instance JavaObjectClass MotionGestureInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MotionGestureInput
newRecord_ = do
    base <- Input.newRecord_
    let header_ = base.header_
    let this = MotionGestureInput header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: MotionGestureInput -> IO ()
initFields_ this = do
    pure ()

new_2 :: Int -> String -> IO MotionGestureInput
new_2 id name = do
    this <- newRecord_
    init_2 this id name
    pure this

init_2 :: MotionGestureInput -> Int -> String -> IO ()
init_2 this id name = do
        Input.init_2 this.base (id) (name)
        initFields_ this
        pure () -- super(...) is in the record above
        inputFactory <- (InputFactory.getInstance)
        Control.Monad.void (InputFactory.add inputFactory (jio (Input.getId this)) this)
        pure ()


