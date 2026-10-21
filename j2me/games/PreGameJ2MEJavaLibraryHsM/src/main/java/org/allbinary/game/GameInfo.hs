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
module GameInfo where

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
import qualified GameTypeFactory -- same package or java.lang
import qualified GameMode -- same package or java.lang
import qualified PlayerTypesFactory -- same package or java.lang
import qualified GameInfoData -- same package or java.lang
import qualified GameType -- same package or java.lang
import qualified PlayerType -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data GameInfo = GameInfo
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameInfoData :: IORef (GameInfoData.GameInfoData)
    , gameType :: IORef (GameType.GameType)
    , gameMode :: IORef (GameMode.GameMode)
    , playerType :: IORef (PlayerType.PlayerType)
    , highestLevel :: IORef (Int)
    , currentLevel :: IORef (Int)
    , nEW_LEVEL :: IORef (String)
    , sET_CURRENT_LEVEL :: IORef (String)
    , nEXT_GAME_LEVEL :: IORef (String)
    }

instance JavaNull GameInfo where
    javaNull = javaNullRecord "GameInfo"

instance JavaEquals GameInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInfo where
    (==) = jrecordEquals

instance JavaObjectClass GameInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nONE #-}
nONE = unsafePerformIO ((new_5 (jget ((jio (GameTypeFactory.getInstance))).nONE) (jget GameMode.nONE) (jget ((jio (PlayerTypesFactory.getInstance))).pLAYER_TYPE_ONE) (Prelude.negate 1) (Prelude.negate 1)))

lEVEL_NAME = "LEVEL"

newRecord_ :: IO GameInfo
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    gameInfoData <- newIORef javaNull
    gameType <- newIORef javaNull
    gameMode <- newIORef javaNull
    playerType <- newIORef javaNull
    highestLevel <- newIORef 0
    currentLevel <- newIORef 0
    nEW_LEVEL <- newIORef ""
    sET_CURRENT_LEVEL <- newIORef ""
    nEXT_GAME_LEVEL <- newIORef ""
    let this = GameInfo header_ logUtil gameInfoData gameType gameMode playerType highestLevel currentLevel nEW_LEVEL sET_CURRENT_LEVEL nEXT_GAME_LEVEL
    jregisterLevel header_ this
    jregisterMethod header_ "getGameType" (\() -> getGameType_impl this)
    jregisterMethod header_ "getGameMode" (\() -> getGameMode_impl this)
    jregisterMethod header_ "getPlayerType" (\() -> getPlayerType_impl this)
    jregisterMethod header_ "getHighestLevel" (\() -> getHighestLevel_impl this)
    jregisterMethod header_ "setHighestLevel" (\() -> setHighestLevel_impl this)
    jregisterMethod header_ "getCurrentLevel" (\() -> getCurrentLevel_impl this)
    jregisterMethod header_ "setCurrentLevel" (\() -> setCurrentLevel_impl this)
    jregisterMethod header_ "nextGameLevel" (\() -> nextGameLevel_impl this)
    jregisterMethod header_ "previousGameLevel" (\() -> previousGameLevel_impl this)
    jregisterMethod header_ "isLastLevel" (\() -> isLastLevel_impl this)
    jregisterMethod header_ "toHashtable" (\() -> toHashtable_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameInfo -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameInfoData =<< (GameInfoData.getInstance)
    jset this.gameType (javaNull)
    jset this.gameMode (javaNull)
    jset this.playerType (javaNull)
    jset this.highestLevel (0)
    jset this.currentLevel (0)
    jset this.nEW_LEVEL ("New Level: ")
    jset this.sET_CURRENT_LEVEL ("setCurrentLevel")
    jset this.nEXT_GAME_LEVEL ("nextGameLevel")
    pure ()

new_5 :: GameType.GameType -> GameMode.GameMode -> PlayerType.PlayerType -> Int -> Int -> IO GameInfo
new_5 gameType gameMode playerType highestLevel currentLevel = do
    this <- newRecord_
    init_5 this gameType gameMode playerType highestLevel currentLevel
    pure this

init_5 :: GameInfo -> GameType.GameType -> GameMode.GameMode -> PlayerType.PlayerType -> Int -> Int -> IO ()
init_5 this gameType gameMode playerType highestLevel currentLevel = do
        initFields_ this
        jset (this).gameType (gameType)
        jset (this).gameMode (gameMode)
        Control.Monad.void (GameInfo.setHighestLevel this highestLevel)
        jset (this).currentLevel (currentLevel)
        jset (this).playerType (playerType)
        pure ()


getGameType :: (JavaObjectClass this_) => this_ -> IO (GameType.GameType)
getGameType object_ = jmethod object_ "getGameType" (\() -> (getGameType_impl (javaCast object_ :: GameInfo))) ()

getGameType_super :: (JavaObjectClass this_) => this_ -> IO (GameType.GameType)
getGameType_super object_ = (getGameType_impl (javaCast object_ :: GameInfo))

getGameType_impl :: GameInfo -> IO (GameType.GameType)
getGameType_impl this = do
        pure ((jget (this).gameType))


getGameMode :: (JavaObjectClass this_) => this_ -> IO (GameMode.GameMode)
getGameMode object_ = jmethod object_ "getGameMode" (\() -> (getGameMode_impl (javaCast object_ :: GameInfo))) ()

getGameMode_super :: (JavaObjectClass this_) => this_ -> IO (GameMode.GameMode)
getGameMode_super object_ = (getGameMode_impl (javaCast object_ :: GameInfo))

getGameMode_impl :: GameInfo -> IO (GameMode.GameMode)
getGameMode_impl this = do
        pure ((jget (this).gameMode))


getPlayerType :: (JavaObjectClass this_) => this_ -> IO (PlayerType.PlayerType)
getPlayerType object_ = jmethod object_ "getPlayerType" (\() -> (getPlayerType_impl (javaCast object_ :: GameInfo))) ()

getPlayerType_super :: (JavaObjectClass this_) => this_ -> IO (PlayerType.PlayerType)
getPlayerType_super object_ = (getPlayerType_impl (javaCast object_ :: GameInfo))

getPlayerType_impl :: GameInfo -> IO (PlayerType.PlayerType)
getPlayerType_impl this = do
        pure ((jget (this).playerType))


getHighestLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getHighestLevel object_ = jmethod object_ "getHighestLevel" (\() -> (getHighestLevel_impl (javaCast object_ :: GameInfo))) ()

getHighestLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHighestLevel_super object_ = (getHighestLevel_impl (javaCast object_ :: GameInfo))

getHighestLevel_impl :: GameInfo -> IO (Int)
getHighestLevel_impl this = do
        pure ((jget (this).highestLevel))


setHighestLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHighestLevel object_ a1 = jmethod object_ "setHighestLevel" (\() -> (setHighestLevel_impl (javaCast object_ :: GameInfo))) () a1

setHighestLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHighestLevel_super object_ a1 = (setHighestLevel_impl (javaCast object_ :: GameInfo)) a1

setHighestLevel_impl :: GameInfo -> Int -> IO (())
setHighestLevel_impl this highestLevel = do
        jset (this).highestLevel (highestLevel)
        pure ()


getCurrentLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentLevel object_ = jmethod object_ "getCurrentLevel" (\() -> (getCurrentLevel_impl (javaCast object_ :: GameInfo))) ()

getCurrentLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCurrentLevel_super object_ = (getCurrentLevel_impl (javaCast object_ :: GameInfo))

getCurrentLevel_impl :: GameInfo -> IO (Int)
getCurrentLevel_impl this = do
        pure ((jget (this).currentLevel))


setCurrentLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentLevel object_ a1 = jmethod object_ "setCurrentLevel" (\() -> (setCurrentLevel_impl (javaCast object_ :: GameInfo))) () a1

setCurrentLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setCurrentLevel_super object_ a1 = (setCurrentLevel_impl (javaCast object_ :: GameInfo)) a1

setCurrentLevel_impl :: GameInfo -> Int -> IO (())
setCurrentLevel_impl this currentLevel = do
        jset (this).currentLevel (currentLevel)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).nEW_LEVEL)))) (jio (GameInfo.getCurrentLevel this))))))) this (jget (this).sET_CURRENT_LEVEL))
        pure ()


nextGameLevel :: (JavaObjectClass this_) => this_ -> IO (())
nextGameLevel object_ = jmethod object_ "nextGameLevel" (\() -> (nextGameLevel_impl (javaCast object_ :: GameInfo))) ()

nextGameLevel_super :: (JavaObjectClass this_) => this_ -> IO (())
nextGameLevel_super object_ = (nextGameLevel_impl (javaCast object_ :: GameInfo))

nextGameLevel_impl :: GameInfo -> IO (())
nextGameLevel_impl this = do
        when ((jio (GameInfo.getCurrentLevel this)) < (jio (GameInfo.getHighestLevel this))) $ do
            jset (this).currentLevel ((jget (this).currentLevel) + 1)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).nEXT)))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) (jget (this).nEW_LEVEL)))) (jio (GameInfo.getCurrentLevel this))))))) this (jget (this).nEXT_GAME_LEVEL))
        pure ()


previousGameLevel :: (JavaObjectClass this_) => this_ -> IO (())
previousGameLevel object_ = jmethod object_ "previousGameLevel" (\() -> (previousGameLevel_impl (javaCast object_ :: GameInfo))) ()

previousGameLevel_super :: (JavaObjectClass this_) => this_ -> IO (())
previousGameLevel_super object_ = (previousGameLevel_impl (javaCast object_ :: GameInfo))

previousGameLevel_impl :: GameInfo -> IO (())
previousGameLevel_impl this = do
        when ((jio (GameInfo.getCurrentLevel this)) > 1) $ do
            jset (this).currentLevel ((jget (this).currentLevel) - 1)
        pure ()


isLastLevel :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastLevel object_ = jmethod object_ "isLastLevel" (\() -> (isLastLevel_impl (javaCast object_ :: GameInfo))) ()

isLastLevel_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isLastLevel_super object_ = (isLastLevel_impl (javaCast object_ :: GameInfo))

isLastLevel_impl :: GameInfo -> IO (Bool)
isLastLevel_impl this = do
    javaCatchReturn $ do
        if ((jio (GameInfo.getCurrentLevel this)) >= (jio (GameInfo.getHighestLevel this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


toHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable object_ = jmethod object_ "toHashtable" (\() -> (toHashtable_impl (javaCast object_ :: GameInfo))) ()

toHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
toHashtable_super object_ = (toHashtable_impl (javaCast object_ :: GameInfo))

toHashtable_impl :: GameInfo -> IO (ABHashtable.ABHashtable)
toHashtable_impl this = do
        hashtable <- (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).gameInfoData)).gAME_TYPE) (jio (GameType.toString ((jio (GameInfo.getGameType this))))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).gameInfoData)).gAME_MODE) (jio (GameMode.toString ((jget (this).gameMode)))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).gameInfoData)).pLAYER_TYPE) (jio (PlayerType.toString ((jget (this).playerType)))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).gameInfoData)).hIGHEST_LEVEL) (javaToString (jio (GameInfo.getHighestLevel this))))
        Control.Monad.void (ABHashtable.put hashtable (jget ((jget (this).gameInfoData)).cURRENT_LEVEL) (javaToString (jget (this).currentLevel)))
        pure (hashtable)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameInfo))

toString_impl :: GameInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).gameInfoData)).gAME_TYPE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).eQUALS))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameType.toString ((jio (GameInfo.getGameType this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).gameInfoData)).gAME_MODE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).eQUALS))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameMode.toString ((jget (this).gameMode)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).gameInfoData)).pLAYER_TYPE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).eQUALS))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).playerType))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).gameInfoData)).hIGHEST_LEVEL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameInfo.getHighestLevel this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).gameInfoData)).cURRENT_LEVEL))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentLevel))
        (StringMaker.toString stringBuffer)


