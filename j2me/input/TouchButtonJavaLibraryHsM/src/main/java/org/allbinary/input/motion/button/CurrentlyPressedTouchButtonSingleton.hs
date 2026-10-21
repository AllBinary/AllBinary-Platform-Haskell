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
-- package org.allbinary.input.motion.button
module CurrentlyPressedTouchButtonSingleton where

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
import qualified TouchButtonInput -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CurrentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton
    { header_ :: JavaHeader
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CurrentlyPressedTouchButtonSingleton where
    javaNull = javaNullRecord "CurrentlyPressedTouchButtonSingleton"

instance JavaEquals CurrentlyPressedTouchButtonSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CurrentlyPressedTouchButtonSingleton where
    (==) = jrecordEquals

instance JavaObjectClass CurrentlyPressedTouchButtonSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CurrentlyPressedTouchButtonSingleton
newRecord_ = do
    header_ <- newJavaHeader
    list <- newIORef javaNull
    let this = CurrentlyPressedTouchButtonSingleton header_ list
    jregisterLevel header_ this
    jregisterMethod header_ "size" (\() -> size_impl this)
    jregisterMethod header_ "removeAt" (\() -> removeAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "contains" (\() -> contains_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: CurrentlyPressedTouchButtonSingleton -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (CurrentlyPressedTouchButtonSingleton)
getInstance = do
        pure (CurrentlyPressedTouchButtonSingleton.instance_)

new_ :: IO CurrentlyPressedTouchButtonSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CurrentlyPressedTouchButtonSingleton -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


size :: (JavaObjectClass this_) => this_ -> IO (Int)
size object_ = jmethod object_ "size" (\() -> (size_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) ()

size_super :: (JavaObjectClass this_) => this_ -> IO (Int)
size_super object_ = (size_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))

size_impl :: CurrentlyPressedTouchButtonSingleton -> IO (Int)
size_impl this = do
        (BasicArrayList.size ((jget (this).list)))


removeAt :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt object_ a1 = jmethod object_ "removeAt" (\() -> (removeAt_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) () a1

removeAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt_super object_ a1 = (removeAt_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton)) a1

removeAt_impl :: CurrentlyPressedTouchButtonSingleton -> Int -> IO (TouchButtonInput.TouchButtonInput)
removeAt_impl this index = do
        pure ((javaCast (jio (BasicArrayList.removeAt ((jget (this).list)) index)) :: TouchButtonInput.TouchButtonInput))


remove :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove_super object_ a1 = (remove_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton)) a1

remove_impl :: CurrentlyPressedTouchButtonSingleton -> TouchButtonInput.TouchButtonInput -> IO (Bool)
remove_impl this touchButtonInput = do
        (BasicArrayList.remove ((jget (this).list)) touchButtonInput)


get :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) () a1

get_super :: (JavaObjectClass this_) => this_ -> Int -> IO (TouchButtonInput.TouchButtonInput)
get_super object_ a1 = (get_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton)) a1

get_impl :: CurrentlyPressedTouchButtonSingleton -> Int -> IO (TouchButtonInput.TouchButtonInput)
get_impl this index = do
        pure ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: TouchButtonInput.TouchButtonInput))


contains :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
contains object_ a1 = jmethod object_ "contains" (\() -> (contains_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) () a1

contains_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (Bool)
contains_super object_ a1 = (contains_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton)) a1

contains_impl :: CurrentlyPressedTouchButtonSingleton -> TouchButtonInput.TouchButtonInput -> IO (Bool)
contains_impl this touchButtonInput = do
        (BasicArrayList.contains ((jget (this).list)) touchButtonInput)


add :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton))) () a1

add_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: CurrentlyPressedTouchButtonSingleton)) a1

add_impl :: CurrentlyPressedTouchButtonSingleton -> TouchButtonInput.TouchButtonInput -> IO (())
add_impl this touchButtonInput = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) touchButtonInput)
        pure ()


