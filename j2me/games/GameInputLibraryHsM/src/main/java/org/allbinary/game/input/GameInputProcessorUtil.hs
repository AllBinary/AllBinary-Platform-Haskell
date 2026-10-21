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
-- package org.allbinary.game.input
module GameInputProcessorUtil where

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
import qualified GameInputProcessor -- same package or java.lang
import qualified InputFactory -- same package or java.lang

data GameInputProcessorUtil = GameInputProcessorUtil
    { header_ :: JavaHeader
    }

instance JavaNull GameInputProcessorUtil where
    javaNull = javaNullRecord "GameInputProcessorUtil"

instance JavaEquals GameInputProcessorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputProcessorUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameInputProcessorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInputProcessorUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameInputProcessorUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameInputProcessorUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameInputProcessorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameInputProcessorUtil -> IO ()
init_ this = do
    initFields_ this


init :: JavaArray (GameInputProcessor.GameInputProcessor) -> IO (())
init inputProcessorArray = do
        noInputProcessor <- (GameInputProcessor.getInstance)
        let total = (jget ((jio (InputFactory.getInstance))).mAX)
        forM_ [0 .. total - 1] $ \index -> javaIteration (pure ()) $ do
            let inputProcessorCanBeNull = (jindex inputProcessorArray (index))
            when (inputProcessorCanBeNull == javaNull) $ do
                jsetIndex inputProcessorArray (index) (noInputProcessor)
        pure ()


