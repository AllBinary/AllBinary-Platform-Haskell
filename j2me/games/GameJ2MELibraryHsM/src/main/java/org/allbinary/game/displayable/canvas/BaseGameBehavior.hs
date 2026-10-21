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
-- package org.allbinary.game.displayable.canvas
module BaseGameBehavior (module BaseGameBehavior, module DemoGameBehavior) where

import DemoGameBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, init, init_super, init_impl, pause, pause_super, pause_impl, unPause, unPause_super, unPause_impl, updateTouch, updateTouch_super, updateTouch_impl, updateScreenButtonPaintable, updateScreenButtonPaintable_super, updateScreenButtonPaintable_impl, setGameState, setGameState_super, setGameState_impl, removeAllGameKeyInputListeners, removeAllGameKeyInputListeners_super, removeAllGameKeyInputListeners_impl, updateEndGameProcessor, updateEndGameProcessor_super, updateEndGameProcessor_impl, buildGame, buildGame_super, buildGame_impl, run, run_super, run_impl, setHighScore, setHighScore_super, setHighScore_impl, instanceC)
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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified GameAdStateFactory -- org.allbinary.business.advertisement.GameAdStateFactory
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified CurrentDisplayableFactory -- org.allbinary.graphics.opengles.CurrentDisplayableFactory
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified DemoGameBehavior

data BaseGameBehavior = BaseGameBehavior
    { header_ :: JavaHeader
    , base :: DemoGameBehavior.DemoGameBehavior
    }

instance JavaNull BaseGameBehavior where
    javaNull = javaNullRecord "BaseGameBehavior"

instance JavaEquals BaseGameBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseGameBehavior where
    (==) = jrecordEquals

instance JavaObjectClass BaseGameBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO BaseGameBehavior
newRecord_ = do
    base <- DemoGameBehavior.newRecord_
    let header_ = base.header_
    let this = BaseGameBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "pause" (\() -> pause_impl this)
    jregisterMethod header_ "unPause" (\() -> unPause_impl this)
    jregisterMethod header_ "updateTouch" (\() -> updateTouch_impl this)
    jregisterMethod header_ "updateScreenButtonPaintable" (\() -> updateScreenButtonPaintable_impl this)
    jregisterMethod header_ "setGameState" (\() -> setGameState_impl this)
    jregisterMethod header_ "removeAllGameKeyInputListeners" (\() -> removeAllGameKeyInputListeners_impl this)
    jregisterMethod header_ "updateEndGameProcessor" (\() -> updateEndGameProcessor_impl this)
    jregisterMethod header_ "buildGame" (\() -> buildGame_impl this)
    jregisterMethod header_ "run" (\() -> run_impl this)
    jregisterMethod header_ "setHighScore" (\() -> setHighScore_impl this)
    pure this

initFields_ :: BaseGameBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseGameBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseGameBehavior -> IO ()
init_ this = do
    DemoGameBehavior.init_ this.base
    initFields_ this


getInstance :: IO (DemoGameBehavior.DemoGameBehavior)
getInstance = do
        pure ((javaCast BaseGameBehavior.instanceC :: DemoGameBehavior.DemoGameBehavior))


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseGameBehavior))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BaseGameBehavior))

init_impl :: BaseGameBehavior -> IO (())
init_impl this = do
        gameAdState <- (GameAdStateFactory.getCurrentInstance ((jio (GameAdStateFactory.getInstance))))
        Control.Monad.void (GameAdState.playingAdState gameAdState)
        pure ()


pause :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause object_ a1 = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: BaseGameBehavior))) () a1

pause_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause_super object_ a1 = (pause_impl (javaCast object_ :: BaseGameBehavior)) a1

pause_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause_impl this allBinaryGameCanvas = do
        features <- (Features.getInstance)
        when (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AS_GAME_THREAD))) $ do
            currentDisplayableFactory <- (CurrentDisplayableFactory.getInstance)
            Control.Monad.void (CurrentDisplayableFactory.setRunnable currentDisplayableFactory (jget (allBinaryGameCanvas).gamePauseRunnable))
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause object_ a1 = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: BaseGameBehavior))) () a1

unPause_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause_super object_ a1 = (unPause_impl (javaCast object_ :: BaseGameBehavior)) a1

unPause_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause_impl this allBinaryGameCanvas = do
        when (jio (Features.isDefault ((jio (Features.getInstance))) (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL_AS_GAME_THREAD))) $ do
            currentDisplayableFactory <- (CurrentDisplayableFactory.getInstance)
            Control.Monad.void (CurrentDisplayableFactory.setRunnable currentDisplayableFactory (jget (allBinaryGameCanvas).gameRunnable))
            Control.Monad.void (CurrentDisplayableFactory.setDisplayable currentDisplayableFactory allBinaryGameCanvas)
        pure ()


-- throws Exception
updateTouch :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch object_ a1 = jmethod object_ "updateTouch" (\() -> (updateTouch_impl (javaCast object_ :: BaseGameBehavior))) () a1

updateTouch_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch_super object_ a1 = (updateTouch_impl (javaCast object_ :: BaseGameBehavior)) a1

updateTouch_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.updateTouch2 allBinaryGameCanvas)
        pure ()


-- throws Exception
updateScreenButtonPaintable :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable object_ a1 = jmethod object_ "updateScreenButtonPaintable" (\() -> (updateScreenButtonPaintable_impl (javaCast object_ :: BaseGameBehavior))) () a1

updateScreenButtonPaintable_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable_super object_ a1 = (updateScreenButtonPaintable_impl (javaCast object_ :: BaseGameBehavior)) a1

updateScreenButtonPaintable_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.updateScreenButtonPaintable2 allBinaryGameCanvas)
        pure ()


-- throws Exception
setGameState :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: BaseGameBehavior))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: BaseGameBehavior)) a1

setGameState_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.updateGameState allBinaryGameCanvas)
        pure ()


removeAllGameKeyInputListeners :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners object_ a1 = jmethod object_ "removeAllGameKeyInputListeners" (\() -> (removeAllGameKeyInputListeners_impl (javaCast object_ :: BaseGameBehavior))) () a1

removeAllGameKeyInputListeners_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners_super object_ a1 = (removeAllGameKeyInputListeners_impl (javaCast object_ :: BaseGameBehavior)) a1

removeAllGameKeyInputListeners_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.removeAllGameKeyInputListeners2 allBinaryGameCanvas)
        pure ()


-- throws Exception
updateEndGameProcessor :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor object_ a1 = jmethod object_ "updateEndGameProcessor" (\() -> (updateEndGameProcessor_impl (javaCast object_ :: BaseGameBehavior))) () a1

updateEndGameProcessor_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor_super object_ a1 = (updateEndGameProcessor_impl (javaCast object_ :: BaseGameBehavior)) a1

updateEndGameProcessor_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.updateEndGameProcessor2 allBinaryGameCanvas)
        pure ()


-- throws Exception
buildGame :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame object_ a1 = jmethod object_ "buildGame" (\() -> (buildGame_impl (javaCast object_ :: BaseGameBehavior))) () a1

buildGame_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame_super object_ a1 = (buildGame_impl (javaCast object_ :: BaseGameBehavior)) a1

buildGame_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.buildGame2 allBinaryGameCanvas)
        pure ()


-- throws Exception
run :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run object_ a1 = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: BaseGameBehavior))) () a1

run_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run_super object_ a1 = (run_impl (javaCast object_ :: BaseGameBehavior)) a1

run_impl :: BaseGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.run2 allBinaryGameCanvas)
        pure ()


-- throws Exception
setHighScore :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "setHighScore" (\() -> (setHighScore_impl (javaCast object_ :: BaseGameBehavior))) () a1 a2 a3 a4 a5 a6

setHighScore_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_super object_ a1 a2 a3 a4 a5 a6 = (setHighScore_impl (javaCast object_ :: BaseGameBehavior)) a1 a2 a3 a4 a5 a6

setHighScore_impl :: BaseGameBehavior -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_impl this abeClientInformation allBinaryGameCanvas name score autoSubmit isLast = do
        Control.Monad.void (AllBinaryGameCanvas.setHighScore2 allBinaryGameCanvas abeClientInformation name score autoSubmit isLast)
        pure ()


