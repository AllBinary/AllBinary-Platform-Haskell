{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
module GameMidletStateFactory where

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
import qualified GameState -- org.allbinary.game.state.GameState
import qualified GameStateFactory -- org.allbinary.game.state.GameStateFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data GameMidletStateFactory = GameMidletStateFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , currentGameState :: IORef (GameState.GameState)
    }

instance JavaNull GameMidletStateFactory where
    javaNull = javaNullRecord "GameMidletStateFactory"

instance JavaEquals GameMidletStateFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameMidletStateFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameMidletStateFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE iNSTANCE #-}
iNSTANCE = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameMidletStateFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    currentGameState <- newIORef javaNull
    let this = GameMidletStateFactory header_ logUtil currentGameState
    jregisterLevel header_ this
    jregisterMethod header_ "getCurrentGameState" (\() -> getCurrentGameState_impl this)
    jregisterMethod header_ "setCurrentGameState" (\() -> setCurrentGameState_impl this)
    pure this

initFields_ :: GameMidletStateFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.currentGameState ((jget ((jio (GameStateFactory.getInstance))).nO_GAME_STATE))
    pure ()

new_ :: IO GameMidletStateFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameMidletStateFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (GameMidletStateFactory)
getInstance = do
        pure (GameMidletStateFactory.iNSTANCE)


getCurrentGameState :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getCurrentGameState object_ = jmethod object_ "getCurrentGameState" (\() -> (getCurrentGameState_impl (javaCast object_ :: GameMidletStateFactory))) ()

getCurrentGameState_super :: (JavaObjectClass this_) => this_ -> IO (GameState.GameState)
getCurrentGameState_super object_ = (getCurrentGameState_impl (javaCast object_ :: GameMidletStateFactory))

getCurrentGameState_impl :: GameMidletStateFactory -> IO (GameState.GameState)
getCurrentGameState_impl this = do
        pure ((jget (this).currentGameState))


setCurrentGameState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setCurrentGameState object_ a1 = jmethod object_ "setCurrentGameState" (\() -> (setCurrentGameState_impl (javaCast object_ :: GameMidletStateFactory))) () a1

setCurrentGameState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> IO (())
setCurrentGameState_super object_ a1 = (setCurrentGameState_impl (javaCast object_ :: GameMidletStateFactory)) a1

setCurrentGameState_impl :: GameMidletStateFactory -> GameState.GameState -> IO (())
setCurrentGameState_impl this currentGameState = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).cURRENT)))) " GameState: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) currentGameState))))))) this "setCurrentGameState")
        jset (this).currentGameState (currentGameState)
        pure ()


