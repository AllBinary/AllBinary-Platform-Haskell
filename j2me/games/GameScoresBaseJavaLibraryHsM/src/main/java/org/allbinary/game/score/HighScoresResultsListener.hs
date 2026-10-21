{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.game.score
module HighScoresResultsListener where

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
import qualified HighScores -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data HighScoresResultsListener = HighScoresResultsListener
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresResultsListener where
    javaNull = javaNullRecord "HighScoresResultsListener"

instance JavaEquals HighScoresResultsListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresResultsListener where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresResultsListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HighScoresResultsListener
fromHeader_ header = HighScoresResultsListener header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HighScoresResultsListener header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setHighScoresArray :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray object_ a1 = jmethod object_ "setHighScoresArray" (\() -> (setHighScoresArray_impl (javaCast object_ :: HighScoresResultsListener))) () a1

setHighScoresArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_super object_ a1 = (setHighScoresArray_impl (javaCast object_ :: HighScoresResultsListener)) a1

setHighScoresArray_impl :: HighScoresResultsListener -> JavaArray (HighScores.HighScores) -> IO (())
setHighScoresArray_impl this highScoresArrayP = javaAbstractMethod "setHighScoresArray"


