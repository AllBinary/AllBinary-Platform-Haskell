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
-- package org.allbinary.game
module PlayerType where

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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data PlayerType = PlayerType
    { header_ :: JavaHeader
    , id :: IORef (Int)
    , name :: IORef (String)
    }

instance JavaNull PlayerType where
    javaNull = javaNullRecord "PlayerType"

instance JavaEquals PlayerType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerType where
    (==) = jrecordEquals

instance JavaObjectClass PlayerType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerType
newRecord_ = do
    header_ <- newJavaHeader
    id <- newIORef 0
    name <- newIORef ""
    let this = PlayerType header_ id name
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PlayerType -> IO ()
initFields_ this = do
    jset this.id (0)
    jset this.name ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_2 :: String -> Int -> IO PlayerType
new_2 name value = do
    this <- newRecord_
    init_2 this name value
    pure this

init_2 :: PlayerType -> String -> Int -> IO ()
init_2 this name value = do
        initFields_ this
        jset (this).name (name)
        jset (this).id (value)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: PlayerType))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: PlayerType))

getId_impl :: PlayerType -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: PlayerType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: PlayerType))

getName_impl :: PlayerType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PlayerType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PlayerType))

toString_impl :: PlayerType -> IO (String)
toString_impl this = do
        (PlayerType.getName this)


