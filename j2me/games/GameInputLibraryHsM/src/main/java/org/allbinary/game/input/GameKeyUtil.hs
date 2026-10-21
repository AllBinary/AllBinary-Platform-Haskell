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
module GameKeyUtil where

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
import qualified Canvas -- javax.microedition.lcdui.Canvas

data GameKeyUtil = GameKeyUtil
    { header_ :: JavaHeader
    }

instance JavaNull GameKeyUtil where
    javaNull = javaNullRecord "GameKeyUtil"

instance JavaEquals GameKeyUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameKeyUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "isDirectionKey" (\() -> isDirectionKey_impl this)
    pure this

initFields_ :: GameKeyUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameKeyUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyUtil -> IO ()
init_ this = do
    initFields_ this


isDirectionKey :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isDirectionKey object_ a1 = jmethod object_ "isDirectionKey" (\() -> (isDirectionKey_impl (javaCast object_ :: GameKeyUtil))) () a1

isDirectionKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isDirectionKey_super object_ a1 = (isDirectionKey_impl (javaCast object_ :: GameKeyUtil)) a1

isDirectionKey_impl :: GameKeyUtil -> Int -> IO (Bool)
isDirectionKey_impl this key = do
    javaCatchReturn $ do
        if ((((key == Canvas.uP) || (key == Canvas.dOWN)) || (key == Canvas.lEFT)) || (key == Canvas.rIGHT)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getInstance :: IO (GameKeyUtil)
getInstance = do
        pure (GameKeyUtil.instance_)


