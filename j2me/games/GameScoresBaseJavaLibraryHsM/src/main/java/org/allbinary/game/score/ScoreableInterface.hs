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
module ScoreableInterface where

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

-- Java interface: the classes that implement it have these functions
data ScoreableInterface = ScoreableInterface
    { header_ :: JavaHeader
    }

instance JavaNull ScoreableInterface where
    javaNull = javaNullRecord "ScoreableInterface"

instance JavaEquals ScoreableInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScoreableInterface where
    (==) = jrecordEquals

instance JavaObjectClass ScoreableInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ScoreableInterface
fromHeader_ header = ScoreableInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ScoreableInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getPoints :: (JavaObjectClass this_) => this_ -> IO (Int)
getPoints object_ = jmethod object_ "getPoints" (\() -> (getPoints_impl (javaCast object_ :: ScoreableInterface))) ()

getPoints_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getPoints_super object_ = (getPoints_impl (javaCast object_ :: ScoreableInterface))

getPoints_impl :: ScoreableInterface -> IO (Int)
getPoints_impl this = javaAbstractMethod "getPoints"


addPoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints object_ a1 = jmethod object_ "addPoints" (\() -> (addPoints_impl (javaCast object_ :: ScoreableInterface))) () a1

addPoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addPoints_super object_ a1 = (addPoints_impl (javaCast object_ :: ScoreableInterface)) a1

addPoints_impl :: ScoreableInterface -> Int -> IO (())
addPoints_impl this points = javaAbstractMethod "addPoints"


removePoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints object_ a1 = jmethod object_ "removePoints" (\() -> (removePoints_impl (javaCast object_ :: ScoreableInterface))) () a1

removePoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removePoints_super object_ a1 = (removePoints_impl (javaCast object_ :: ScoreableInterface)) a1

removePoints_impl :: ScoreableInterface -> Int -> IO (())
removePoints_impl this points = javaAbstractMethod "removePoints"


