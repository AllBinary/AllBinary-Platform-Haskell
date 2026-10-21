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
-- package org.allbinary.game.score
module NoScoreable (module NoScoreable, module Scoreable) where

import Scoreable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, addPoints, addPoints_super, addPoints_impl, removePoints, removePoints_super, removePoints_impl, sINGLETON)
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
import qualified Scoreable

data NoScoreable = NoScoreable
    { header_ :: JavaHeader
    , base :: Scoreable.Scoreable
    }

instance JavaNull NoScoreable where
    javaNull = javaNullRecord "NoScoreable"

instance JavaEquals NoScoreable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoScoreable where
    (==) = jrecordEquals

instance JavaObjectClass NoScoreable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO NoScoreable
newRecord_ = do
    base <- Scoreable.newRecord_
    let header_ = base.header_
    let this = NoScoreable header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "addPoints" (\() -> addPoints_impl this)
    jregisterMethod header_ "removePoints" (\() -> removePoints_impl this)
    pure this

initFields_ :: NoScoreable -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (NoScoreable)
getInstance = do
        pure (NoScoreable.sINGLETON)

new_ :: IO NoScoreable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoScoreable -> IO ()
init_ this = do
        Scoreable.init_1 this.base (0)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


addPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: NoScoreable))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: NoScoreable)) a1

addPoints_impl :: NoScoreable -> Int -> IO (())
addPoints_impl this points = do
        pure ()


removePoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints object_ a1 = jmethod object_ "removePoints" (\() -> (removePoints_impl (javaCast object_ :: NoScoreable))) () a1

removePoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints_super object_ a1 = (removePoints_impl (javaCast object_ :: NoScoreable)) a1

removePoints_impl :: NoScoreable -> Int -> IO (())
removePoints_impl this points = do
        pure ()


