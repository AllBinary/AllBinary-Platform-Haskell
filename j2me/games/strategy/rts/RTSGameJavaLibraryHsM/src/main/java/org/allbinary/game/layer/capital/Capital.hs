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
--   
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.capital
module Capital where

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

data Capital = Capital
    { header_ :: JavaHeader
    , value :: IORef (Int)
    }

instance JavaNull Capital where
    javaNull = javaNullRecord "Capital"

instance JavaEquals Capital where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Capital where
    (==) = jrecordEquals

instance JavaObjectClass Capital where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Capital
newRecord_ = do
    header_ <- newJavaHeader
    value <- newIORef 0
    let this = Capital header_ value
    jregisterLevel header_ this
    jregisterMethod header_ "getTotalMoney" (\() -> getTotalMoney_impl this)
    jregisterMethod header_ "removeMoney" (\() -> removeMoney_impl this)
    jregisterMethod header_ "addMoney" (\() -> addMoney_impl this)
    pure this

initFields_ :: Capital -> IO ()
initFields_ this = do
    jset this.value (0)
    pure ()

new_ :: IO Capital
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Capital -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getTotalMoney :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMoney object_ = jmethod object_ "getTotalMoney" (\() -> (getTotalMoney_impl (javaCast object_ :: Capital))) ()

getTotalMoney_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotalMoney_super object_ = (getTotalMoney_impl (javaCast object_ :: Capital))

getTotalMoney_impl :: Capital -> IO (Int)
getTotalMoney_impl this = do
        pure ((jget (this).value))


removeMoney :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeMoney object_ a1 = jmethod object_ "removeMoney" (\() -> (removeMoney_impl (javaCast object_ :: Capital))) () a1

removeMoney_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
removeMoney_super object_ a1 = (removeMoney_impl (javaCast object_ :: Capital)) a1

removeMoney_impl :: Capital -> Int -> IO (())
removeMoney_impl this points = do
        jset (this).value (((jget (this).value) - points))
        pure ()


addMoney :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addMoney object_ a1 = jmethod object_ "addMoney" (\() -> (addMoney_impl (javaCast object_ :: Capital))) () a1

addMoney_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
addMoney_super object_ a1 = (addMoney_impl (javaCast object_ :: Capital)) a1

addMoney_impl :: Capital -> Int -> IO (())
addMoney_impl this points = do
        jset (this).value (((jget (this).value) + points))
        pure ()


