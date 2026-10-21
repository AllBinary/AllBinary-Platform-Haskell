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
-- package org.allbinary.direction
module Direction where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data Direction = Direction
    { header_ :: JavaHeader
    , name :: IORef (String)
    , otherName :: IORef (String)
    , value :: IORef (Int)
    , frameFactor :: IORef (Int)
    }

instance JavaNull Direction where
    javaNull = javaNullRecord "Direction"

instance JavaEquals Direction where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Direction where
    (==) = jrecordEquals

instance JavaObjectClass Direction where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE directionArray #-}
directionArray = unsafePerformIO (newIORef ((jnewArray (13) javaNull)))

newRecord_ :: IO Direction
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    otherName <- newIORef ""
    value <- newIORef 0
    frameFactor <- newIORef 0
    let this = Direction header_ name otherName value frameFactor
    jregisterLevel header_ this
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "getFrameFactor" (\() -> getFrameFactor_impl this)
    jregisterMethod header_ "getOtherName" (\() -> getOtherName_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Direction -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.otherName (javaNull)
    jset this.value (0)
    jset this.frameFactor (0)
    pure ()

new_4 :: String -> String -> Int -> Int -> IO Direction
new_4 name otherName value frameFactor = do
    this <- newRecord_
    init_4 this name otherName value frameFactor
    pure this

init_4 :: Direction -> String -> String -> Int -> Int -> IO ()
init_4 this name otherName value frameFactor = do
        initFields_ this
        jset (this).name (name)
        jset (this).otherName (otherName)
        jset (this).value (value)
        jset (this).frameFactor (frameFactor)
        jsetIndex ((jget Direction.directionArray)) (value) (this)
        pure ()


getInstance :: Int -> IO (Direction)
getInstance direction = do
        pure ((jindex ((jget Direction.directionArray)) (direction)))


getValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: Direction))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue_super object_ = (getValue_impl (javaCast object_ :: Direction))

getValue_impl :: Direction -> IO (Int)
getValue_impl this = do
        pure ((jget (this).value))


getFrameFactor :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrameFactor object_ = jmethod object_ "getFrameFactor" (\() -> (getFrameFactor_impl (javaCast object_ :: Direction))) ()

getFrameFactor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getFrameFactor_super object_ = (getFrameFactor_impl (javaCast object_ :: Direction))

getFrameFactor_impl :: Direction -> IO (Int)
getFrameFactor_impl this = do
        pure ((jget (this).frameFactor))


getOtherName :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherName object_ = jmethod object_ "getOtherName" (\() -> (getOtherName_impl (javaCast object_ :: Direction))) ()

getOtherName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOtherName_super object_ = (getOtherName_impl (javaCast object_ :: Direction))

getOtherName_impl :: Direction -> IO (String)
getOtherName_impl this = do
        pure ((jget (this).otherName))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: Direction))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: Direction))

getName_impl :: Direction -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Direction))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Direction))

toString_impl :: Direction -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Direction: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Direction.getName this)))
        Control.Monad.void (StringMaker.append stringBuffer " Or: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (Direction.getOtherName this)))
        Control.Monad.void (StringMaker.append stringBuffer " Value: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).value))
        (StringMaker.toString stringBuffer)


