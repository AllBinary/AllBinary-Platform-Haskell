{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
-- Generated Code Do Not Modify
-- package org.allbinary.game
module ChallengerInterface where

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
data ChallengerInterface = ChallengerInterface
    { header_ :: JavaHeader
    }

instance JavaNull ChallengerInterface where
    javaNull = javaNullRecord "ChallengerInterface"

instance JavaEquals ChallengerInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ChallengerInterface where
    (==) = jrecordEquals

instance JavaObjectClass ChallengerInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ChallengerInterface
fromHeader_ header = ChallengerInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ChallengerInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setWinner :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setWinner object_ a1 = jmethod object_ "setWinner" (\() -> (setWinner_impl (javaCast object_ :: ChallengerInterface))) () a1

setWinner_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setWinner_super object_ a1 = (setWinner_impl (javaCast object_ :: ChallengerInterface)) a1

setWinner_impl :: ChallengerInterface -> Bool -> IO (())
setWinner_impl this isWinner = javaAbstractMethod "setWinner"


