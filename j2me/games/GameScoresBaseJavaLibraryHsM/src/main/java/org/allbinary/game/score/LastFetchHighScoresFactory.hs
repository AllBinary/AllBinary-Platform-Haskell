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
module LastFetchHighScoresFactory where

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
import qualified Any -- same package or java.lang
import qualified NoHighScoresFactory -- same package or java.lang
import qualified HighScores -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil

data LastFetchHighScoresFactory = LastFetchHighScoresFactory
    { header_ :: JavaHeader
    , highScoresArray :: IORef (JavaArray (HighScores.HighScores))
    }

instance JavaNull LastFetchHighScoresFactory where
    javaNull = javaNullRecord "LastFetchHighScoresFactory"

instance JavaEquals LastFetchHighScoresFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LastFetchHighScoresFactory where
    (==) = jrecordEquals

instance JavaObjectClass LastFetchHighScoresFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LastFetchHighScoresFactory
newRecord_ = do
    header_ <- newJavaHeader
    highScoresArray <- newIORef javaNull
    let this = LastFetchHighScoresFactory header_ highScoresArray
    jregisterLevel header_ this
    pure this

initFields_ :: LastFetchHighScoresFactory -> IO ()
initFields_ this = do
    jset this.highScoresArray ((jget ((jio (NoHighScoresFactory.getInstance))).nO_HIGH_SCORES))
    pure ()

new_ :: IO LastFetchHighScoresFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LastFetchHighScoresFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (LastFetchHighScoresFactory)
getInstance = do
        when ((jget LastFetchHighScoresFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset LastFetchHighScoresFactory.instance_ (assignedValue)
        pure ((javaCast (jget LastFetchHighScoresFactory.instance_) :: LastFetchHighScoresFactory))


