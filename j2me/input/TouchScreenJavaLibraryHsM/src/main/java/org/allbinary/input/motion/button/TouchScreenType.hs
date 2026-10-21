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
module TouchScreenType where

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

data TouchScreenType = TouchScreenType
    { header_ :: JavaHeader
    , name :: IORef (String)
    }

instance JavaNull TouchScreenType where
    javaNull = javaNullRecord "TouchScreenType"

instance JavaEquals TouchScreenType where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchScreenType where
    (==) = jrecordEquals

instance JavaObjectClass TouchScreenType where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchScreenType
newRecord_ = do
    header_ <- newJavaHeader
    name <- newIORef ""
    let this = TouchScreenType header_ name
    jregisterLevel header_ this
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: TouchScreenType -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    pure ()

new_1 :: String -> IO TouchScreenType
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: TouchScreenType -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).name (name)
        pure ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: TouchScreenType))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: TouchScreenType))

getName_impl :: TouchScreenType -> IO (String)
getName_impl this = do
        pure ((jget (this).name))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TouchScreenType))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TouchScreenType))

toString_impl :: TouchScreenType -> IO (String)
toString_impl this = do
        (TouchScreenType.getName this)


