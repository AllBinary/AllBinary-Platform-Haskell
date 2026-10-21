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
-- package org.allbinary.game.combat.damage
module DamageFloaters (module DamageFloaters, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, add, add_super, add_impl, sINGLETON)
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
import qualified Paintable -- org.allbinary.graphics.paint.Paintable

data DamageFloaters = DamageFloaters
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    }

instance JavaNull DamageFloaters where
    javaNull = javaNullRecord "DamageFloaters"

instance JavaEquals DamageFloaters where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DamageFloaters where
    (==) = jrecordEquals

instance JavaObjectClass DamageFloaters where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO DamageFloaters
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    let this = DamageFloaters header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: DamageFloaters -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DamageFloaters
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DamageFloaters -> IO ()
init_ this = do
    Paintable.init_ this.base
    initFields_ this


getInstance :: IO (DamageFloaters)
getInstance = do
        pure (DamageFloaters.sINGLETON)


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: DamageFloaters))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: DamageFloaters)) a1

add_impl :: DamageFloaters -> Int -> IO (())
add_impl this damage = do
        pure ()


