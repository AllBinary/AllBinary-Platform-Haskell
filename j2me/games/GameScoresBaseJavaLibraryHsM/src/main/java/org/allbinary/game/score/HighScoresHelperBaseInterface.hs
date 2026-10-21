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
module HighScoresHelperBaseInterface (module HighScoresHelperBaseInterface, module HighScoresResultsListener) where

import HighScoresResultsListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setSelectedHighScores, setSelectedHighScores_super, setSelectedHighScores_impl, getHighScoresArray, getHighScoresArray_super, getHighScoresArray_impl, getSelectedHighScores, getSelectedHighScores_super, getSelectedHighScores_impl, toString)
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
import qualified HighScoresResultsListener

-- Java interface: the classes that implement it have these functions
data HighScoresHelperBaseInterface = HighScoresHelperBaseInterface
    { header_ :: JavaHeader
    }

instance JavaNull HighScoresHelperBaseInterface where
    javaNull = javaNullRecord "HighScoresHelperBaseInterface"

instance JavaEquals HighScoresHelperBaseInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HighScoresHelperBaseInterface where
    (==) = jrecordEquals

instance JavaObjectClass HighScoresHelperBaseInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> HighScoresHelperBaseInterface
fromHeader_ header = HighScoresHelperBaseInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (HighScoresHelperBaseInterface header)
    HighScoresResultsListener.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


setSelectedHighScores :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores object_ a1 = jmethod object_ "setSelectedHighScores" (\() -> (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBaseInterface))) () a1

setSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> HighScores.HighScores -> IO (())
setSelectedHighScores_super object_ a1 = (setSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBaseInterface)) a1

setSelectedHighScores_impl :: HighScoresHelperBaseInterface -> HighScores.HighScores -> IO (())
setSelectedHighScores_impl this selectedHighScores = javaAbstractMethod "setSelectedHighScores"


getHighScoresArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray object_ = jmethod object_ "getHighScoresArray" (\() -> (getHighScoresArray_impl (javaCast object_ :: HighScoresHelperBaseInterface))) ()

getHighScoresArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray_super object_ = (getHighScoresArray_impl (javaCast object_ :: HighScoresHelperBaseInterface))

getHighScoresArray_impl :: HighScoresHelperBaseInterface -> IO (JavaArray (HighScores.HighScores))
getHighScoresArray_impl this = javaAbstractMethod "getHighScoresArray"


getSelectedHighScores :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores object_ = jmethod object_ "getSelectedHighScores" (\() -> (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBaseInterface))) ()

getSelectedHighScores_super :: (JavaObjectClass this_) => this_ -> IO (HighScores.HighScores)
getSelectedHighScores_super object_ = (getSelectedHighScores_impl (javaCast object_ :: HighScoresHelperBaseInterface))

getSelectedHighScores_impl :: HighScoresHelperBaseInterface -> IO (HighScores.HighScores)
getSelectedHighScores_impl this = javaAbstractMethod "getSelectedHighScores"


