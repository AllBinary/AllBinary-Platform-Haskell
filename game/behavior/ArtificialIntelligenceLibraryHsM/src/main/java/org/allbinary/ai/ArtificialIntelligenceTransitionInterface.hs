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
-- package org.allbinary.ai
module ArtificialIntelligenceTransitionInterface where

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

-- Java interface: the classes that implement it have these functions
data ArtificialIntelligenceTransitionInterface = ArtificialIntelligenceTransitionInterface
    { header_ :: JavaHeader
    }

instance JavaNull ArtificialIntelligenceTransitionInterface where
    javaNull = javaNullRecord "ArtificialIntelligenceTransitionInterface"

instance JavaEquals ArtificialIntelligenceTransitionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArtificialIntelligenceTransitionInterface where
    (==) = jrecordEquals

instance JavaObjectClass ArtificialIntelligenceTransitionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ArtificialIntelligenceTransitionInterface
fromHeader_ header = ArtificialIntelligenceTransitionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ArtificialIntelligenceTransitionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


transition :: (JavaObjectClass this_) => this_ -> IO (())
transition object_ = jmethod object_ "transition" (\() -> (transition_impl (javaCast object_ :: ArtificialIntelligenceTransitionInterface))) ()

transition_super :: (JavaObjectClass this_) => this_ -> IO (())
transition_super object_ = (transition_impl (javaCast object_ :: ArtificialIntelligenceTransitionInterface))

transition_impl :: ArtificialIntelligenceTransitionInterface -> IO (())
transition_impl this = javaAbstractMethod "transition"


