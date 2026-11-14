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
-- package org.allbinary.input.motion.button
module ReleaseHelper where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified TouchButtonRecognizer -- same package or java.lang
import qualified TouchButtonInput -- same package or java.lang
import qualified UpGameKeyEventHandler -- same package or java.lang
import qualified CurrentlyPressedTouchButtonSingleton -- same package or java.lang
import qualified UpGameKeyEventHandlerBase -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent

data ReleaseHelper = ReleaseHelper
    { header_ :: JavaHeader
    , touchButtonRecognizer :: IORef (TouchButtonRecognizer.TouchButtonRecognizer)
    }

instance JavaNull ReleaseHelper where
    javaNull = javaNullRecord "ReleaseHelper"

instance JavaEquals ReleaseHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ReleaseHelper where
    (==) = jrecordEquals

instance JavaObjectClass ReleaseHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO ReleaseHelper
newRecord_ = do
    header_ <- newJavaHeader
    touchButtonRecognizer <- newIORef javaNull
    let this = ReleaseHelper header_ touchButtonRecognizer
    jregisterLevel header_ this
    jregisterMethod header_ "release" (\() -> release_impl this)
    pure this

initFields_ :: ReleaseHelper -> IO ()
initFields_ this = do
    jset this.touchButtonRecognizer (javaNull)
    pure ()

new_1 :: TouchButtonRecognizer.TouchButtonRecognizer -> IO ReleaseHelper
new_1 touchButtonRecognizer = do
    this <- newRecord_
    init_1 this touchButtonRecognizer
    pure this

init_1 :: ReleaseHelper -> TouchButtonRecognizer.TouchButtonRecognizer -> IO ()
init_1 this touchButtonRecognizer = do
        initFields_ this
        jset (this).touchButtonRecognizer (touchButtonRecognizer)
        pure ()


-- throws Exception
release :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release object_ a1 a2 = jmethod object_ "release" (\() -> (release_impl (javaCast object_ :: ReleaseHelper))) () a1 a2

release_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release_super object_ a1 a2 = (release_impl (javaCast object_ :: ReleaseHelper)) a1 a2

release_impl :: ReleaseHelper -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release_impl this touchButtonInput deviceId = do
        nextTouchButtonInput <- newIORef (javaNull)
        gameKeyEvent <- newIORef (javaNull)
        forM_ [((jio (CurrentlyPressedTouchButtonSingleton.size ((jget ((jget (this).touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)))) - 1), ((jio (CurrentlyPressedTouchButtonSingleton.size ((jget ((jget (this).touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (CurrentlyPressedTouchButtonSingleton.get ((jget ((jget (this).touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)) index)
            jset nextTouchButtonInput (assignedValue)
            assignedValue <- (TouchButtonInput.getGameKeyEvent ((jget nextTouchButtonInput)))
            jset gameKeyEvent (assignedValue)
            Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget ((jget (this).touchButtonRecognizer)).upGameKeyEventHandler)) (javaCast (jget gameKeyEvent)))
            Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget ((jget (this).touchButtonRecognizer)).upGameKeyEventHandler)) deviceId))) (javaCast (jget gameKeyEvent)))
            Control.Monad.void (CurrentlyPressedTouchButtonSingleton.removeAt ((jget ((jget (this).touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)) index)
        pure ()


