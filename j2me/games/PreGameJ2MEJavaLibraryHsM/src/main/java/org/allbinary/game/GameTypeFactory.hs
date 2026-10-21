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
module GameTypeFactory where

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
import qualified GameType -- same package or java.lang
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data GameTypeFactory = GameTypeFactory
    { header_ :: JavaHeader
    , nULL_GAME_TYPE_ARRAY :: IORef (JavaArray (GameType.GameType))
    , nONE :: IORef (GameType.GameType)
    , sINGLE_PLAYER :: IORef (GameType.GameType)
    , mULTI_PLAYER :: IORef (GameType.GameType)
    , bOT :: IORef (GameType.GameType)
    }

instance JavaNull GameTypeFactory where
    javaNull = javaNullRecord "GameTypeFactory"

instance JavaEquals GameTypeFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameTypeFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameTypeFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameTypeFactory
newRecord_ = do
    header_ <- newJavaHeader
    nULL_GAME_TYPE_ARRAY <- newIORef javaNull
    nONE <- newIORef javaNull
    sINGLE_PLAYER <- newIORef javaNull
    mULTI_PLAYER <- newIORef javaNull
    bOT <- newIORef javaNull
    let this = GameTypeFactory header_ nULL_GAME_TYPE_ARRAY nONE sINGLE_PLAYER mULTI_PLAYER bOT
    jregisterLevel header_ this
    pure this

initFields_ :: GameTypeFactory -> IO ()
initFields_ this = do
    jset this.nULL_GAME_TYPE_ARRAY ((jnewArray (0) javaNull))
    jset this.nONE =<< (GameType.new_1 (jget ((jio (StringUtil.getInstance))).nULL_STRING))
    jset this.sINGLE_PLAYER =<< (GameType.new_1 "Single Player")
    jset this.mULTI_PLAYER =<< (GameType.new_1 "Multi Player")
    jset this.bOT =<< (GameType.new_1 "Artificial Player")
    pure ()

new_ :: IO GameTypeFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameTypeFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameTypeFactory)
getInstance = do
        pure (GameTypeFactory.instance_)


