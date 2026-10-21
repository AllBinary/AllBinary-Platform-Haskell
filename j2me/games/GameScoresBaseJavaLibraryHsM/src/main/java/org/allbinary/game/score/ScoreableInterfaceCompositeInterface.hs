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
module ScoreableInterfaceCompositeInterface where

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
import qualified Scoreable -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data ScoreableInterfaceCompositeInterface = ScoreableInterfaceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull ScoreableInterfaceCompositeInterface where
    javaNull = javaNullRecord "ScoreableInterfaceCompositeInterface"

instance JavaEquals ScoreableInterfaceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScoreableInterfaceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass ScoreableInterfaceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ScoreableInterfaceCompositeInterface
fromHeader_ header = ScoreableInterfaceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ScoreableInterfaceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getScoreableInterface :: (JavaObjectClass this_) => this_ -> IO (Scoreable.Scoreable)
getScoreableInterface object_ = jmethod object_ "getScoreableInterface" (\() -> (getScoreableInterface_impl (javaCast object_ :: ScoreableInterfaceCompositeInterface))) ()

getScoreableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Scoreable.Scoreable)
getScoreableInterface_super object_ = (getScoreableInterface_impl (javaCast object_ :: ScoreableInterfaceCompositeInterface))

getScoreableInterface_impl :: ScoreableInterfaceCompositeInterface -> IO (Scoreable.Scoreable)
getScoreableInterface_impl this = javaAbstractMethod "getScoreableInterface"


