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
module MultitouchReleaseHelper (module MultitouchReleaseHelper, module ReleaseHelper) where

import ReleaseHelper hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, release, release_super, release_impl)
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
import qualified CancelTouchButtonInputFactory -- same package or java.lang
import qualified TouchButtonInput -- same package or java.lang
import qualified UpGameKeyEventHandler -- same package or java.lang
import qualified CurrentlyPressedTouchButtonSingleton -- same package or java.lang
import qualified UpGameKeyEventHandlerBase -- same package or java.lang
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified ReleaseHelper

data MultitouchReleaseHelper = MultitouchReleaseHelper
    { header_ :: JavaHeader
    , base :: ReleaseHelper.ReleaseHelper
    }

instance JavaNull MultitouchReleaseHelper where
    javaNull = javaNullRecord "MultitouchReleaseHelper"

instance JavaEquals MultitouchReleaseHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultitouchReleaseHelper where
    (==) = jrecordEquals

instance JavaObjectClass MultitouchReleaseHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultitouchReleaseHelper
newRecord_ = do
    base <- ReleaseHelper.newRecord_
    let header_ = base.header_
    let this = MultitouchReleaseHelper header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "release" (\() -> release_impl this)
    pure this

initFields_ :: MultitouchReleaseHelper -> IO ()
initFields_ this = do
    pure ()

new_1 :: TouchButtonRecognizer.TouchButtonRecognizer -> IO MultitouchReleaseHelper
new_1 touchButtonRecognizer = do
    this <- newRecord_
    init_1 this touchButtonRecognizer
    pure this

init_1 :: MultitouchReleaseHelper -> TouchButtonRecognizer.TouchButtonRecognizer -> IO ()
init_1 this touchButtonRecognizer = do
        ReleaseHelper.init_1 this.base (touchButtonRecognizer)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
release :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release object_ a1 a2 = jmethod object_ "release" (\() -> (release_impl (javaCast object_ :: MultitouchReleaseHelper))) () a1 a2

release_super :: (JavaObjectClass this_) => this_ -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release_super object_ a1 a2 = (release_impl (javaCast object_ :: MultitouchReleaseHelper)) a1 a2

release_impl :: MultitouchReleaseHelper -> TouchButtonInput.TouchButtonInput -> Int -> IO (())
release_impl this touchButtonInput deviceId = do
        cancelTouchButtonInput <- (CancelTouchButtonInputFactory.getCancel ((jio (CancelTouchButtonInputFactory.getInstance))) touchButtonInput)
        nextTouchButtonInput <- newIORef (javaNull)
        gameKeyEvent <- newIORef (javaNull)
        forM_ [((jio (CurrentlyPressedTouchButtonSingleton.size ((jget ((jget (this).base.touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)))) - 1), ((jio (CurrentlyPressedTouchButtonSingleton.size ((jget ((jget (this).base.touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (CurrentlyPressedTouchButtonSingleton.get ((jget ((jget (this).base.touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)) index)
            jset nextTouchButtonInput (assignedValue)
            when (cancelTouchButtonInput == (jget nextTouchButtonInput)) $ do
                assignedValue <- (TouchButtonInput.getGameKeyEvent ((jget nextTouchButtonInput)))
                jset gameKeyEvent (assignedValue)
                Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget ((jget (this).base.touchButtonRecognizer)).upGameKeyEventHandler)) (javaCast (jget gameKeyEvent)))
                Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget ((jget (this).base.touchButtonRecognizer)).upGameKeyEventHandler)) deviceId))) (javaCast (jget gameKeyEvent)))
                Control.Monad.void (CurrentlyPressedTouchButtonSingleton.removeAt ((jget ((jget (this).base.touchButtonRecognizer)).currentlyPressedTouchButtonSingleton)) index)
        pure ()


