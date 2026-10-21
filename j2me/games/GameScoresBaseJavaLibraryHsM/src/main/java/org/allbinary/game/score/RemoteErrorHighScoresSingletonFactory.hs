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
module RemoteErrorHighScoresSingletonFactory where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data RemoteErrorHighScoresSingletonFactory = RemoteErrorHighScoresSingletonFactory
    { header_ :: JavaHeader
    }

instance JavaNull RemoteErrorHighScoresSingletonFactory where
    javaNull = javaNullRecord "RemoteErrorHighScoresSingletonFactory"

instance JavaEquals RemoteErrorHighScoresSingletonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RemoteErrorHighScoresSingletonFactory where
    (==) = jrecordEquals

instance JavaObjectClass RemoteErrorHighScoresSingletonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((HighScores.new_3 (jget ((jio (CommonStrings.getInstance))).lOADING) "Remote High Scores Did Not Load" (jget ((jio (CommonStrings.getInstance))).pERIODS)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RemoteErrorHighScoresSingletonFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = RemoteErrorHighScoresSingletonFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: RemoteErrorHighScoresSingletonFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RemoteErrorHighScoresSingletonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RemoteErrorHighScoresSingletonFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (HighScores.HighScores)
getInstance = do
        pure (RemoteErrorHighScoresSingletonFactory.sINGLETON)


