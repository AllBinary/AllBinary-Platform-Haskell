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
-- package org.allbinary.graphics.color
module SmallBasicColorCacheFactory where

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
import qualified BasicColor -- same package or java.lang
import qualified BasicColorFactory -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data SmallBasicColorCacheFactory = SmallBasicColorCacheFactory
    { header_ :: JavaHeader
    , sIZE :: IORef (Int)
    , iNDEX_TO_COLOR :: IORef (JavaArray (Int))
    , bASIC_COLOR_ARRAY :: IORef (JavaArray (BasicColor.BasicColor))
    , colorIndex :: IORef (Int)
    }

instance JavaNull SmallBasicColorCacheFactory where
    javaNull = javaNullRecord "SmallBasicColorCacheFactory"

instance JavaEquals SmallBasicColorCacheFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SmallBasicColorCacheFactory where
    (==) = jrecordEquals

instance JavaObjectClass SmallBasicColorCacheFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SmallBasicColorCacheFactory
newRecord_ = do
    header_ <- newJavaHeader
    sIZE <- newIORef 0
    iNDEX_TO_COLOR <- newIORef javaNull
    bASIC_COLOR_ARRAY <- newIORef javaNull
    colorIndex <- newIORef 0
    let this = SmallBasicColorCacheFactory header_ sIZE iNDEX_TO_COLOR bASIC_COLOR_ARRAY colorIndex
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getAndOrCreate" (\() -> getAndOrCreate_impl this)
    pure this

initFields_ :: SmallBasicColorCacheFactory -> IO ()
initFields_ this = do
    jset this.sIZE (255)
    jset this.iNDEX_TO_COLOR ((jnewArray ((jget (this).sIZE)) 0))
    jset this.bASIC_COLOR_ARRAY ((jnewArray ((jget (this).sIZE)) javaNull))
    jset this.colorIndex (0)
    pure ()


getInstance :: IO (SmallBasicColorCacheFactory)
getInstance = do
        pure (SmallBasicColorCacheFactory.instance_)

new_ :: IO SmallBasicColorCacheFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SmallBasicColorCacheFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


add :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: SmallBasicColorCacheFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: SmallBasicColorCacheFactory)) a1

add_impl :: SmallBasicColorCacheFactory -> BasicColor.BasicColor -> IO (())
add_impl this basicDefaultColor = do
        jsetIndex ((jget (this).bASIC_COLOR_ARRAY)) ((jget (this).colorIndex)) (basicDefaultColor)
        assignedValue <- (BasicColor.intValue basicDefaultColor)
        jsetIndex ((jget (this).iNDEX_TO_COLOR)) ((jget (this).colorIndex)) (assignedValue)
        jset (this).colorIndex ((jget (this).colorIndex) + 1)
        pure ()


getAndOrCreate :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate object_ a1 = jmethod object_ "getAndOrCreate" (\() -> (getAndOrCreate_impl (javaCast object_ :: SmallBasicColorCacheFactory))) () a1

getAndOrCreate_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate_super object_ a1 = (getAndOrCreate_impl (javaCast object_ :: SmallBasicColorCacheFactory)) a1

getAndOrCreate_impl :: SmallBasicColorCacheFactory -> Int -> IO (BasicColor.BasicColor)
getAndOrCreate_impl this colorAsInt = do
    javaCatchReturn $ do
        basicColor <- newIORef (javaNull)
        forM_ [0 .. (jget (this).sIZE) - 1] $ \index -> javaIteration (pure ()) $ do
            when ((jindex ((jget (this).iNDEX_TO_COLOR)) (index)) == colorAsInt) $ do
                javaReturn ((jindex ((jget (this).bASIC_COLOR_ARRAY)) (index)))
        let aLPHA_MASK = 0xFF000000
        assignedValue <- (BasicColorFactory.createInstanceAN ((jio (BasicColorFactory.getInstance))) (colorAsInt Data.Bits..&. aLPHA_MASK) (colorAsInt Data.Bits..&. 0x00FFFFFF) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        jset basicColor (assignedValue)
        Control.Monad.void (SmallBasicColorCacheFactory.add this (jget basicColor))
        pure ((jget basicColor))


