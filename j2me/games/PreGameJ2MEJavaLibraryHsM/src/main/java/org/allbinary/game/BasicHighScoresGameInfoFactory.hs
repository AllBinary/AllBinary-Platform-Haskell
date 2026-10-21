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
-- package org.allbinary.game
module BasicHighScoresGameInfoFactory where

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
import qualified GameInfo -- same package or java.lang
import qualified GameTypeFactory -- same package or java.lang
import qualified GameMode -- same package or java.lang
import qualified PlayerTypesFactory -- same package or java.lang

data BasicHighScoresGameInfoFactory = BasicHighScoresGameInfoFactory
    { header_ :: JavaHeader
    , mULTI_PLAYER_SERVER :: IORef (GameInfo.GameInfo)
    , sINGLE_PLAYER_SERVER :: IORef (GameInfo.GameInfo)
    }

instance JavaNull BasicHighScoresGameInfoFactory where
    javaNull = javaNullRecord "BasicHighScoresGameInfoFactory"

instance JavaEquals BasicHighScoresGameInfoFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicHighScoresGameInfoFactory where
    (==) = jrecordEquals

instance JavaObjectClass BasicHighScoresGameInfoFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicHighScoresGameInfoFactory
newRecord_ = do
    header_ <- newJavaHeader
    mULTI_PLAYER_SERVER <- newIORef javaNull
    sINGLE_PLAYER_SERVER <- newIORef javaNull
    let this = BasicHighScoresGameInfoFactory header_ mULTI_PLAYER_SERVER sINGLE_PLAYER_SERVER
    jregisterLevel header_ this
    pure this

initFields_ :: BasicHighScoresGameInfoFactory -> IO ()
initFields_ this = do
    jset this.mULTI_PLAYER_SERVER =<< (GameInfo.new_5 (jget ((jio (GameTypeFactory.getInstance))).mULTI_PLAYER) (jget GameMode.sERVER) (jget ((jio (PlayerTypesFactory.getInstance))).pLAYER_TYPE_ONE) 0 0)
    jset this.sINGLE_PLAYER_SERVER =<< (GameInfo.new_5 (jget ((jio (GameTypeFactory.getInstance))).sINGLE_PLAYER) (jget GameMode.sERVER) (jget ((jio (PlayerTypesFactory.getInstance))).pLAYER_TYPE_ONE) 0 0)
    pure ()

new_ :: IO BasicHighScoresGameInfoFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicHighScoresGameInfoFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicHighScoresGameInfoFactory)
getInstance = do
        pure (BasicHighScoresGameInfoFactory.sINGLETON)


