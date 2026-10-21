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
-- package org.allbinary.game.ag.ai
module DiveAndDirectionalTrackingAICompositeVisitorFactory where

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
import qualified DiveAndDirectionalTrackingAI -- same package or java.lang
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data DiveAndDirectionalTrackingAICompositeVisitorFactory = DiveAndDirectionalTrackingAICompositeVisitorFactory
    { header_ :: JavaHeader
    }

instance JavaNull DiveAndDirectionalTrackingAICompositeVisitorFactory where
    javaNull = javaNullRecord "DiveAndDirectionalTrackingAICompositeVisitorFactory"

instance JavaEquals DiveAndDirectionalTrackingAICompositeVisitorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DiveAndDirectionalTrackingAICompositeVisitorFactory where
    (==) = jrecordEquals

instance JavaObjectClass DiveAndDirectionalTrackingAICompositeVisitorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DiveAndDirectionalTrackingAICompositeVisitorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = DiveAndDirectionalTrackingAICompositeVisitorFactory header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: DiveAndDirectionalTrackingAICompositeVisitorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO DiveAndDirectionalTrackingAICompositeVisitorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DiveAndDirectionalTrackingAICompositeVisitorFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: (JavaObjectClass this_) => this_ -> DiveAndDirectionalTrackingAI.DiveAndDirectionalTrackingAI -> IO (Visitor.Visitor)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: DiveAndDirectionalTrackingAICompositeVisitorFactory))) () a1

getInstance_super :: (JavaObjectClass this_) => this_ -> DiveAndDirectionalTrackingAI.DiveAndDirectionalTrackingAI -> IO (Visitor.Visitor)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: DiveAndDirectionalTrackingAICompositeVisitorFactory)) a1

getInstance_impl :: DiveAndDirectionalTrackingAICompositeVisitorFactory -> DiveAndDirectionalTrackingAI.DiveAndDirectionalTrackingAI -> IO (Visitor.Visitor)
getInstance_impl this diveBombAI = do
        (Visitor.getInstance)


