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
-- package org.allbinary.animation
module SideScrollerAnimation where

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

data SideScrollerAnimation = SideScrollerAnimation
    { header_ :: JavaHeader
    }

instance JavaNull SideScrollerAnimation where
    javaNull = javaNullRecord "SideScrollerAnimation"

instance JavaEquals SideScrollerAnimation where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SideScrollerAnimation where
    (==) = jrecordEquals

instance JavaObjectClass SideScrollerAnimation where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SideScrollerAnimation
newRecord_ = do
    header_ <- newJavaHeader
    let this = SideScrollerAnimation header_
    jregisterLevel header_ this
    jregisterMethod header_ "jump" (\() -> jump_impl this)
    jregisterMethod header_ "walk" (\() -> walk_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "crouch" (\() -> crouch_impl this)
    pure this

initFields_ :: SideScrollerAnimation -> IO ()
initFields_ this = do
    pure ()

new_ :: IO SideScrollerAnimation
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SideScrollerAnimation -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


jump :: (JavaObjectClass this_) => this_ -> IO (())
jump object_ = jmethod object_ "jump" (\() -> (jump_impl (javaCast object_ :: SideScrollerAnimation))) ()

jump_super :: (JavaObjectClass this_) => this_ -> IO (())
jump_super object_ = (jump_impl (javaCast object_ :: SideScrollerAnimation))

jump_impl :: SideScrollerAnimation -> IO (())
jump_impl this = do
        pure ()


walk :: (JavaObjectClass this_) => this_ -> IO (())
walk object_ = jmethod object_ "walk" (\() -> (walk_impl (javaCast object_ :: SideScrollerAnimation))) ()

walk_super :: (JavaObjectClass this_) => this_ -> IO (())
walk_super object_ = (walk_impl (javaCast object_ :: SideScrollerAnimation))

walk_impl :: SideScrollerAnimation -> IO (())
walk_impl this = do
        pure ()


run :: (JavaObjectClass this_) => this_ -> IO (())
run object_ = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: SideScrollerAnimation))) ()

run_super :: (JavaObjectClass this_) => this_ -> IO (())
run_super object_ = (run_impl (javaCast object_ :: SideScrollerAnimation))

run_impl :: SideScrollerAnimation -> IO (())
run_impl this = do
        pure ()


crouch :: (JavaObjectClass this_) => this_ -> IO (())
crouch object_ = jmethod object_ "crouch" (\() -> (crouch_impl (javaCast object_ :: SideScrollerAnimation))) ()

crouch_super :: (JavaObjectClass this_) => this_ -> IO (())
crouch_super object_ = (crouch_impl (javaCast object_ :: SideScrollerAnimation))

crouch_impl :: SideScrollerAnimation -> IO (())
crouch_impl this = do
        pure ()


