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
-- package org.allbinary.game.ag.life
module Life where

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
import qualified LifeInterface

-- implements LifeInterface
data Life = Life
    { header_ :: JavaHeader
    , lives :: IORef (Int16)
    , startLives :: IORef (Int16)
    , maxlives :: IORef (Int16)
    }

instance JavaNull Life where
    javaNull = javaNullRecord "Life"

instance JavaEquals Life where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Life where
    (==) = jrecordEquals

instance JavaObjectClass Life where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nO_LIFE #-}
nO_LIFE = unsafePerformIO ((Life.createLife))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Life
newRecord_ = do
    header_ <- newJavaHeader
    lives <- newIORef 0
    startLives <- newIORef 0
    maxlives <- newIORef 0
    let this = Life header_ lives startLives maxlives
    jregisterLevel header_ this
    LifeInterface.registerInterface_ header_
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "reset" (\() -> reset_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "isAlive" (\() -> isAlive_impl this)
    jregisterMethod header_ "getMaxlives" (\() -> getMaxlives_impl this)
    jregisterMethod header_ "reachedLimit" (\() -> reachedLimit_impl this)
    jregisterMethod header_ "deaths" (\() -> deaths_impl this)
    jregisterMethod header_ "getStartLives" (\() -> getStartLives_impl this)
    jregisterMethod header_ "setStartLives" (\() -> setStartLives_impl this)
    pure this

initFields_ :: Life -> IO ()
initFields_ this = do
    jset this.lives (0)
    jset this.startLives (0)
    jset this.maxlives (0)
    pure ()


createLife :: IO (Life)
createLife = do
        handle (\(e :: JavaException) -> do
            javaThrow ((JavaException "RuntimeException" ""))
            ) $ do
            (new_2 (Prelude.fromIntegral (0 :: Int)) (Prelude.fromIntegral (0 :: Int)))

new_2 :: Int16 -> Int16 -> IO Life
new_2 lives maxlives = do
    this <- newRecord_
    init_2 this lives maxlives
    pure this

init_2 :: Life -> Int16 -> Int16 -> IO ()
init_2 this lives maxlives = do
        initFields_ this
        jset (this).maxlives (maxlives)
        when (lives > (jget (this).maxlives)) $ do
            javaThrow ((JavaException "Exception" "To Many Lives"))
        jset (this).lives (lives)
        jset (this).startLives (lives)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Int16)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: Life))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
get_super object_ = (get_impl (javaCast object_ :: Life))

get_impl :: Life -> IO (Int16)
get_impl this = do
        pure ((jget (this).lives))


set :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: Life))) () a1

set_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: Life)) a1

set_impl :: Life -> Int16 -> IO (())
set_impl this lives = do
        jset (this).lives (lives)
        pure ()


reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: Life))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: Life))

reset_impl :: Life -> IO (())
reset_impl this = do
        jset (this).lives ((jget (this).startLives))
        pure ()


add :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: Life))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: Life)) a1

add_impl :: Life -> Int16 -> IO (())
add_impl this lives = do
        when (Prelude.not (jio (Life.reachedLimit this))) $ do
            if ((((Prelude.fromIntegral (jget (this).lives)) + (Prelude.fromIntegral lives)) :: Int) <= (Prelude.fromIntegral (jio (Life.getMaxlives this)))) then do
                jset (this).lives ((Prelude.fromIntegral ((((Prelude.fromIntegral (jget (this).lives)) + (Prelude.fromIntegral lives)) :: Int))))
            else do
                assignedValue <- (Life.getMaxlives this)
                jset (this).lives (assignedValue)
        pure ()


isAlive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive object_ = jmethod object_ "isAlive" (\() -> (isAlive_impl (javaCast object_ :: Life))) ()

isAlive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive_super object_ = (isAlive_impl (javaCast object_ :: Life))

isAlive_impl :: Life -> IO (Bool)
isAlive_impl this = do
    javaCatchReturn $ do
        if ((Prelude.fromIntegral (jget (this).lives)) <= 0) then do
            javaReturn (False)
        else do
            javaReturn (True)


getMaxlives :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxlives object_ = jmethod object_ "getMaxlives" (\() -> (getMaxlives_impl (javaCast object_ :: Life))) ()

getMaxlives_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getMaxlives_super object_ = (getMaxlives_impl (javaCast object_ :: Life))

getMaxlives_impl :: Life -> IO (Int16)
getMaxlives_impl this = do
        pure ((jget (this).maxlives))


reachedLimit :: (JavaObjectClass this_) => this_ -> IO (Bool)
reachedLimit object_ = jmethod object_ "reachedLimit" (\() -> (reachedLimit_impl (javaCast object_ :: Life))) ()

reachedLimit_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
reachedLimit_super object_ = (reachedLimit_impl (javaCast object_ :: Life))

reachedLimit_impl :: Life -> IO (Bool)
reachedLimit_impl this = do
    javaCatchReturn $ do
        if (((jget (this).lives) > (jget (this).maxlives)) || ((Prelude.fromIntegral (jget (this).lives)) < 0)) then do
            javaReturn (True)
        else do
            javaReturn (False)


deaths :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
deaths object_ a1 = jmethod object_ "deaths" (\() -> (deaths_impl (javaCast object_ :: Life))) () a1

deaths_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
deaths_super object_ a1 = (deaths_impl (javaCast object_ :: Life)) a1

deaths_impl :: Life -> Int16 -> IO (())
deaths_impl this lives = do
        when (Prelude.not (jio (Life.reachedLimit this))) $ do
            if ((((Prelude.fromIntegral (jget (this).lives)) - (Prelude.fromIntegral lives)) :: Int) >= 0) then do
                jset (this).lives ((Prelude.fromIntegral ((((Prelude.fromIntegral (jget (this).lives)) - (Prelude.fromIntegral lives)) :: Int))))
            else do
                jset (this).lives (0)
        pure ()


getStartLives :: (JavaObjectClass this_) => this_ -> IO (Int16)
getStartLives object_ = jmethod object_ "getStartLives" (\() -> (getStartLives_impl (javaCast object_ :: Life))) ()

getStartLives_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getStartLives_super object_ = (getStartLives_impl (javaCast object_ :: Life))

getStartLives_impl :: Life -> IO (Int16)
getStartLives_impl this = do
        pure ((jget (this).startLives))


setStartLives :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setStartLives object_ a1 = jmethod object_ "setStartLives" (\() -> (setStartLives_impl (javaCast object_ :: Life))) () a1

setStartLives_super :: (JavaObjectClass this_) => this_ -> Int16 -> IO (())
setStartLives_super object_ a1 = (setStartLives_impl (javaCast object_ :: Life)) a1

setStartLives_impl :: Life -> Int16 -> IO (())
setStartLives_impl this startLives = do
        jset (this).startLives (startLives)
        pure ()


