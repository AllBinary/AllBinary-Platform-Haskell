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
-- package org.allbinary.logic.java.character
module CharacterSet where

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

data CharacterSet = CharacterSet
    { header_ :: JavaHeader
    }

instance JavaNull CharacterSet where
    javaNull = javaNullRecord "CharacterSet"

instance JavaEquals CharacterSet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CharacterSet where
    (==) = jrecordEquals

instance JavaObjectClass CharacterSet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CharacterSet
newRecord_ = do
    header_ <- newJavaHeader
    let this = CharacterSet header_
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CharacterSet -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CharacterSet
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CharacterSet -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CharacterSet))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CharacterSet))

toString_impl :: CharacterSet -> IO (String)
toString_impl this = do
        pure ("Default Character Set: Empty Implementation")


