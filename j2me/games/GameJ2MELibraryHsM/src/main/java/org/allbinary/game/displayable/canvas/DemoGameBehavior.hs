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
module DemoGameBehavior where

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
import qualified GameType -- same package or java.lang
import qualified GameTypeFactory -- org.allbinary.game.GameTypeFactory
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data DemoGameBehavior = DemoGameBehavior
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull DemoGameBehavior where
    javaNull = javaNullRecord "DemoGameBehavior"

instance JavaEquals DemoGameBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DemoGameBehavior where
    (==) = jrecordEquals

instance JavaObjectClass DemoGameBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DemoGameBehavior
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = DemoGameBehavior header_ logUtil
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

initFields_ :: DemoGameBehavior -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO DemoGameBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DemoGameBehavior -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (DemoGameBehavior)
getInstance = do
        pure (DemoGameBehavior.instance_)


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: DemoGameBehavior))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: DemoGameBehavior))

init_impl :: DemoGameBehavior -> IO (())
init_impl this = do
        pure ()


pause :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause object_ a1 = jmethod object_ "pause" (\() -> (pause_impl (javaCast object_ :: DemoGameBehavior))) () a1

pause_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause_super object_ a1 = (pause_impl (javaCast object_ :: DemoGameBehavior)) a1

pause_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
pause_impl this allBinaryGameCanvas = do
        pure ()


unPause :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause object_ a1 = jmethod object_ "unPause" (\() -> (unPause_impl (javaCast object_ :: DemoGameBehavior))) () a1

unPause_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause_super object_ a1 = (unPause_impl (javaCast object_ :: DemoGameBehavior)) a1

unPause_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
unPause_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
updateTouch :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch object_ a1 = jmethod object_ "updateTouch" (\() -> (updateTouch_impl (javaCast object_ :: DemoGameBehavior))) () a1

updateTouch_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch_super object_ a1 = (updateTouch_impl (javaCast object_ :: DemoGameBehavior)) a1

updateTouch_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateTouch_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
updateScreenButtonPaintable :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable object_ a1 = jmethod object_ "updateScreenButtonPaintable" (\() -> (updateScreenButtonPaintable_impl (javaCast object_ :: DemoGameBehavior))) () a1

updateScreenButtonPaintable_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable_super object_ a1 = (updateScreenButtonPaintable_impl (javaCast object_ :: DemoGameBehavior)) a1

updateScreenButtonPaintable_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateScreenButtonPaintable_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.setTouchPaintableP allBinaryGameCanvas (jio (NullPaintable.getInstance)))
        pure ()


-- throws Exception
setGameState :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState object_ a1 = jmethod object_ "setGameState" (\() -> (setGameState_impl (javaCast object_ :: DemoGameBehavior))) () a1

setGameState_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState_super object_ a1 = (setGameState_impl (javaCast object_ :: DemoGameBehavior)) a1

setGameState_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setGameState_impl this allBinaryGameCanvas = do
        pure ()


removeAllGameKeyInputListeners :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners object_ a1 = jmethod object_ "removeAllGameKeyInputListeners" (\() -> (removeAllGameKeyInputListeners_impl (javaCast object_ :: DemoGameBehavior))) () a1

removeAllGameKeyInputListeners_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners_super object_ a1 = (removeAllGameKeyInputListeners_impl (javaCast object_ :: DemoGameBehavior)) a1

removeAllGameKeyInputListeners_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
removeAllGameKeyInputListeners_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
updateEndGameProcessor :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor object_ a1 = jmethod object_ "updateEndGameProcessor" (\() -> (updateEndGameProcessor_impl (javaCast object_ :: DemoGameBehavior))) () a1

updateEndGameProcessor_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor_super object_ a1 = (updateEndGameProcessor_impl (javaCast object_ :: DemoGameBehavior)) a1

updateEndGameProcessor_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateEndGameProcessor_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
buildGame :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame object_ a1 = jmethod object_ "buildGame" (\() -> (buildGame_impl (javaCast object_ :: DemoGameBehavior))) () a1

buildGame_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame_super object_ a1 = (buildGame_impl (javaCast object_ :: DemoGameBehavior)) a1

buildGame_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
buildGame_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
run :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run object_ a1 = jmethod object_ "run" (\() -> (run_impl (javaCast object_ :: DemoGameBehavior))) () a1

run_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run_super object_ a1 = (run_impl (javaCast object_ :: DemoGameBehavior)) a1

run_impl :: DemoGameBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
run_impl this allBinaryGameCanvas = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (GameType.toString ((jget ((jio (GameTypeFactory.getInstance))).bOT)))) this (jget (commonStrings).rUN))
        pure ()


-- throws Exception
setHighScore :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore object_ a1 a2 a3 a4 a5 a6 = jmethod object_ "setHighScore" (\() -> (setHighScore_impl (javaCast object_ :: DemoGameBehavior))) () a1 a2 a3 a4 a5 a6

setHighScore_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_super object_ a1 a2 a3 a4 a5 a6 = (setHighScore_impl (javaCast object_ :: DemoGameBehavior)) a1 a2 a3 a4 a5 a6

setHighScore_impl :: DemoGameBehavior -> AbeClientInformationInterface.AbeClientInformationInterface -> AllBinaryGameCanvas.AllBinaryGameCanvas -> String -> Int64 -> Bool -> Bool -> IO (())
setHighScore_impl this abeClientInformation allBinaryGameCanvas name score autoSubmit isLast = do
        pure ()


