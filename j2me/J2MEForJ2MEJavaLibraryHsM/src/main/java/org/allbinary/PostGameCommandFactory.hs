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
-- package org.allbinary
module PostGameCommandFactory where

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
import qualified MultiPlayerGameFeatureFactory -- org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas

data PostGameCommandFactory = PostGameCommandFactory
    { header_ :: JavaHeader
    }

instance JavaNull PostGameCommandFactory where
    javaNull = javaNullRecord "PostGameCommandFactory"

instance JavaEquals PostGameCommandFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PostGameCommandFactory where
    (==) = jrecordEquals

instance JavaObjectClass PostGameCommandFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PostGameCommandFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = PostGameCommandFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "addCommands" (\() -> addCommands_impl this)
    pure this

initFields_ :: PostGameCommandFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PostGameCommandFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PostGameCommandFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PostGameCommandFactory)
getInstance = do
        pure (PostGameCommandFactory.instance_)


addCommands :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
addCommands object_ a1 = jmethod object_ "addCommands" (\() -> (addCommands_impl (javaCast object_ :: PostGameCommandFactory))) () a1

addCommands_super :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
addCommands_super object_ a1 = (addCommands_impl (javaCast object_ :: PostGameCommandFactory)) a1

addCommands_impl :: PostGameCommandFactory -> MyCanvas.MyCanvas -> IO (())
addCommands_impl this canvas = do
        Control.Monad.void (MultiPlayerGameFeatureFactory.addCommands ((jio (MultiPlayerGameFeatureFactory.getInstance))) canvas)
        pure ()


