{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
module NullPlayerGameInputComposite where

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
import qualified NoPlayerGameInput -- same package or java.lang
import qualified PlayerGameInput -- same package or java.lang
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PlayerGameInputCompositeInterface

-- implements PlayerGameInputCompositeInterface
data NullPlayerGameInputComposite = NullPlayerGameInputComposite
    { header_ :: JavaHeader
    }

instance JavaNull NullPlayerGameInputComposite where
    javaNull = javaNullRecord "NullPlayerGameInputComposite"

instance JavaEquals NullPlayerGameInputComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullPlayerGameInputComposite where
    (==) = jrecordEquals

instance JavaObjectClass NullPlayerGameInputComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PLAYER_GAME_INPUT_COMPOSITE #-}
nULL_PLAYER_GAME_INPUT_COMPOSITE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NullPlayerGameInputComposite
newRecord_ = do
    header_ <- newJavaHeader
    let this = NullPlayerGameInputComposite header_
    jregisterLevel header_ this
    PlayerGameInputCompositeInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "getPlayerGameInput" (\() -> getPlayerGameInput_impl this)
    pure this

initFields_ :: NullPlayerGameInputComposite -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullPlayerGameInputComposite
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullPlayerGameInputComposite -> IO ()
init_ this = do
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullPlayerGameInputComposite))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullPlayerGameInputComposite))

getName_impl :: NullPlayerGameInputComposite -> IO (String)
getName_impl this = do
        pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: NullPlayerGameInputComposite))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: NullPlayerGameInputComposite)) a1

processInput_impl :: NullPlayerGameInputComposite -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: NullPlayerGameInputComposite))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: NullPlayerGameInputComposite))

initInputProcessors_impl :: NullPlayerGameInputComposite -> IO (())
initInputProcessors_impl this = do
        pure ()


getPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput object_ = jmethod object_ "getPlayerGameInput" (\() -> (getPlayerGameInput_impl (javaCast object_ :: NullPlayerGameInputComposite))) ()

getPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_super object_ = (getPlayerGameInput_impl (javaCast object_ :: NullPlayerGameInputComposite))

getPlayerGameInput_impl :: NullPlayerGameInputComposite -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_impl this = do
        (fmap (\value_ -> javaCast value_ :: PlayerGameInput.PlayerGameInput) (NoPlayerGameInput.getInstance))


