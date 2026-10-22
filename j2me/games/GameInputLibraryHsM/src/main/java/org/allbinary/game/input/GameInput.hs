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
module GameInput where

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
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GameInput = GameInput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gameKeyEventList :: IORef (BasicArrayList.BasicArrayList)
    , removalGameKeyEventList :: IORef (BasicArrayList.BasicArrayList)
    , isRemoveDuplicateKeyPresses :: IORef (Bool)
    }

instance JavaNull GameInput where
    javaNull = javaNullRecord "GameInput"

instance JavaEquals GameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInput where
    (==) = jrecordEquals

instance JavaObjectClass GameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameInput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gameKeyEventList <- newIORef javaNull
    removalGameKeyEventList <- newIORef javaNull
    isRemoveDuplicateKeyPresses <- newIORef False
    let this = GameInput header_ logUtil commonStrings gameKeyEventList removalGameKeyEventList isRemoveDuplicateKeyPresses
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "addForRemoval" (\() -> addForRemoval_impl this)
    jregisterMethod header_ "isForRemoval" (\() -> isForRemoval_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "removeNonAIInputGameKeyEvents" (\() -> removeNonAIInputGameKeyEvents_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getRemovalGameKeyEventList" (\() -> getRemovalGameKeyEventList_impl this)
    jregisterMethod header_ "getGameKeyEventList" (\() -> getGameKeyEventList_impl this)
    pure this

initFields_ :: GameInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gameKeyEventList (javaNull)
    jset this.removalGameKeyEventList (javaNull)
    jset this.isRemoveDuplicateKeyPresses (False)
    pure ()

new_2 :: BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO GameInput
new_2 gameKeyEventList removalGameKeyEventList = do
    this <- newRecord_
    init_2 this gameKeyEventList removalGameKeyEventList
    pure this

init_2 :: GameInput -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO ()
init_2 this gameKeyEventList removalGameKeyEventList = do
        initFields_ this
        jset (this).gameKeyEventList (gameKeyEventList)
        jset (this).removalGameKeyEventList (removalGameKeyEventList)
        assignedValue <- (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).rEMOVE_DUPLICATE_KEY_PRESSES)))
        jset (this).isRemoveDuplicateKeyPresses (assignedValue)
        pure ()


add :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameInput))) () a1

add_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GameInput)) a1

add_impl :: GameInput -> GameKeyEvent.GameKeyEvent -> IO (())
add_impl this gameKeyEvent = do
    javaCatchReturn $ do
        when ((jget (this).isRemoveDuplicateKeyPresses) && (jio (BasicArrayList.contains ((jget (this).gameKeyEventList)) gameKeyEvent))) $ do
            javaReturn (())
        if (gameKeyEvent /= javaNull) then do
            Control.Monad.void (BasicArrayList.add ((jget (this).gameKeyEventList)) gameKeyEvent)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Danger Passed Null GameKeyEvent" this (jget ((jget (this).commonStrings)).aDD))
    pure ()


addForRemoval :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
addForRemoval object_ a1 = jmethod object_ "addForRemoval" (\() -> (addForRemoval_impl (javaCast object_ :: GameInput))) () a1

addForRemoval_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (())
addForRemoval_super object_ a1 = (addForRemoval_impl (javaCast object_ :: GameInput)) a1

addForRemoval_impl :: GameInput -> GameKeyEvent.GameKeyEvent -> IO (())
addForRemoval_impl this gameKeyEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).removalGameKeyEventList)) gameKeyEvent)
        pure ()


isForRemoval :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (Bool)
isForRemoval object_ a1 = jmethod object_ "isForRemoval" (\() -> (isForRemoval_impl (javaCast object_ :: GameInput))) () a1

isForRemoval_super :: (JavaObjectClass this_) => this_ -> GameKeyEvent.GameKeyEvent -> IO (Bool)
isForRemoval_super object_ a1 = (isForRemoval_impl (javaCast object_ :: GameInput)) a1

isForRemoval_impl :: GameInput -> GameKeyEvent.GameKeyEvent -> IO (Bool)
isForRemoval_impl this gameKeyEvent = do
        (BasicArrayList.contains ((jget (this).removalGameKeyEventList)) gameKeyEvent)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: GameInput))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: GameInput))

clear_impl :: GameInput -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).gameKeyEventList)))
        pure ()


removeNonAIInputGameKeyEvents :: (JavaObjectClass this_) => this_ -> IO (())
removeNonAIInputGameKeyEvents object_ = jmethod object_ "removeNonAIInputGameKeyEvents" (\() -> (removeNonAIInputGameKeyEvents_impl (javaCast object_ :: GameInput))) ()

removeNonAIInputGameKeyEvents_super :: (JavaObjectClass this_) => this_ -> IO (())
removeNonAIInputGameKeyEvents_super object_ = (removeNonAIInputGameKeyEvents_impl (javaCast object_ :: GameInput))

removeNonAIInputGameKeyEvents_impl :: GameInput -> IO (())
removeNonAIInputGameKeyEvents_impl this = do
        let list = (jget (this).gameKeyEventList)
        gameKeyEvent <- newIORef (javaNull)
        index <- newIORef =<< (BasicArrayList.size list)
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jset gameKeyEvent ((javaCast (jindex ((jget (list).objectArray)) ((jget index))) :: GameKeyEvent.GameKeyEvent))
            when ((jio (GameKeyEvent.getSourceId ((jget gameKeyEvent)))) /= 1) $ do
                Control.Monad.void (BasicArrayList.removeAt list (jget index))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameInput))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameInput))

update_impl :: GameInput -> IO (())
update_impl this = do
        let removeList = (jget (this).removalGameKeyEventList)
        let list = (jget (this).gameKeyEventList)
        size <- (BasicArrayList.size removeList)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let anyType = (jindex ((jget (removeList).objectArray)) (index))
            index2 <- newIORef =<< (BasicArrayList.size list)
            fix $ \loop -> when ((jpreIncrement index2 (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                when ((jindex ((jget (list).objectArray)) ((jget index2))) == anyType) $ do
                    Control.Monad.void (BasicArrayList.removeAt list (jget index2))
        Control.Monad.void (BasicArrayList.clear removeList)
        pure ()


getRemovalGameKeyEventList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getRemovalGameKeyEventList object_ = jmethod object_ "getRemovalGameKeyEventList" (\() -> (getRemovalGameKeyEventList_impl (javaCast object_ :: GameInput))) ()

getRemovalGameKeyEventList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getRemovalGameKeyEventList_super object_ = (getRemovalGameKeyEventList_impl (javaCast object_ :: GameInput))

getRemovalGameKeyEventList_impl :: GameInput -> IO (BasicArrayList.BasicArrayList)
getRemovalGameKeyEventList_impl this = do
        pure ((jget (this).removalGameKeyEventList))


getGameKeyEventList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList object_ = jmethod object_ "getGameKeyEventList" (\() -> (getGameKeyEventList_impl (javaCast object_ :: GameInput))) ()

getGameKeyEventList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_super object_ = (getGameKeyEventList_impl (javaCast object_ :: GameInput))

getGameKeyEventList_impl :: GameInput -> IO (BasicArrayList.BasicArrayList)
getGameKeyEventList_impl this = do
        pure ((jget (this).gameKeyEventList))


