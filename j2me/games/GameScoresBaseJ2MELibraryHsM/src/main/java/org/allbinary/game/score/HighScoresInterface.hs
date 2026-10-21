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
-- package org.allbinary.game.score
module HighScoresInterface where

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
import qualified HighScore -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data HighScoresInterface = HighScoresInterface
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresInterface where
    javaNull = javaNullRecord "HighScoresInterface"

instance JavaEquals HighScoresInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresInterface where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HighScoresInterface
fromHeader_ header = HighScoresInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HighScoresInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: HighScoresInterface))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: HighScoresInterface))

getList_impl :: HighScoresInterface -> IO (BasicArrayList.BasicArrayList)
getList_impl this = javaAbstractMethod "getList"


addHighScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore object_ a1 = jmethod object_ "addHighScore" (\() -> (addHighScore_impl (javaCast object_ :: HighScoresInterface))) () a1

addHighScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (())
addHighScore_super object_ a1 = (addHighScore_impl (javaCast object_ :: HighScoresInterface)) a1

addHighScore_impl :: HighScoresInterface -> HighScore.HighScore -> IO (())
addHighScore_impl this newHighScore = javaAbstractMethod "addHighScore"


getTotal :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal object_ = jmethod object_ "getTotal" (\() -> (getTotal_impl (javaCast object_ :: HighScoresInterface))) ()

getTotal_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTotal_super object_ = (getTotal_impl (javaCast object_ :: HighScoresInterface))

getTotal_impl :: HighScoresInterface -> IO (Int)
getTotal_impl this = javaAbstractMethod "getTotal"


-- throws Exception
isBestScore :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore object_ a1 = jmethod object_ "isBestScore" (\() -> (isBestScore_impl (javaCast object_ :: HighScoresInterface))) () a1

isBestScore_super :: (JavaObjectClass this_) => this_ -> HighScore.HighScore -> IO (Bool)
isBestScore_super object_ a1 = (isBestScore_impl (javaCast object_ :: HighScoresInterface)) a1

isBestScore_impl :: HighScoresInterface -> HighScore.HighScore -> IO (Bool)
isBestScore_impl this newHighScore = javaAbstractMethod "isBestScore"


