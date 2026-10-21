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
module TouchButtonVisitor where

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

data TouchButtonVisitor = TouchButtonVisitor
    { header_ :: JavaHeader
    }

instance JavaNull TouchButtonVisitor where
    javaNull = javaNullRecord "TouchButtonVisitor"

instance JavaEquals TouchButtonVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonVisitor where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TouchButtonVisitor
newRecord_ = do
    header_ <- newJavaHeader
    let this = TouchButtonVisitor header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TouchButtonVisitor -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TouchButtonVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonVisitor -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> String -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TouchButtonVisitor))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> String -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: TouchButtonVisitor)) a1 a2

process_impl :: TouchButtonVisitor -> TouchButtonInput.TouchButtonInput -> String -> IO (())
process_impl this touchButtonInput string = do
        pure ()


