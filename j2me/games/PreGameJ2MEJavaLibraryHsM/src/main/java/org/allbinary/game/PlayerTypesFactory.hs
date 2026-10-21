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
module PlayerTypesFactory where

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
import qualified PlayerType -- same package or java.lang

data PlayerTypesFactory = PlayerTypesFactory
    { header_ :: JavaHeader
    , pLAYER_TYPE_ONE :: IORef (PlayerType.PlayerType)
    , pLAYER_TYPE_TWO :: IORef (PlayerType.PlayerType)
    , pLAYER_TYPE_THREE :: IORef (PlayerType.PlayerType)
    }

instance JavaNull PlayerTypesFactory where
    javaNull = javaNullRecord "PlayerTypesFactory"

instance JavaEquals PlayerTypesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerTypesFactory where
    (==) = jrecordEquals

instance JavaObjectClass PlayerTypesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlayerTypesFactory
newRecord_ = do
    header_ <- newJavaHeader
    pLAYER_TYPE_ONE <- newIORef javaNull
    pLAYER_TYPE_TWO <- newIORef javaNull
    pLAYER_TYPE_THREE <- newIORef javaNull
    let this = PlayerTypesFactory header_ pLAYER_TYPE_ONE pLAYER_TYPE_TWO pLAYER_TYPE_THREE
    jregisterLevel header_ this
    pure this

initFields_ :: PlayerTypesFactory -> IO ()
initFields_ this = do
    jset this.pLAYER_TYPE_ONE =<< (PlayerType.new_2 "Player Type One" 0)
    jset this.pLAYER_TYPE_TWO =<< (PlayerType.new_2 "Player Type Two" 1)
    jset this.pLAYER_TYPE_THREE =<< (PlayerType.new_2 "Player Type Three" 2)
    pure ()

new_ :: IO PlayerTypesFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlayerTypesFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlayerTypesFactory)
getInstance = do
        pure (PlayerTypesFactory.sINGLETON)


