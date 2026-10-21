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
-- package org.allbinary.game.layer
module AllBinaryGameLayerManager (module AllBinaryGameLayerManager, module AllBinaryLayerManager) where

import AllBinaryLayerManager hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullInstance, getNullInstance_super, getNullInstance_impl, getLayerManager, getLayerManager_super, getLayerManager_impl, init, init_super, init_impl, getBackgroundBasicColor, getBackgroundBasicColor_super, getBackgroundBasicColor_impl, setBackgroundBasicColor, setBackgroundBasicColor_super, setBackgroundBasicColor_impl, getForegroundBasicColor, getForegroundBasicColor_super, getForegroundBasicColor_impl, setForegroundBasicColor, setForegroundBasicColor_super, setForegroundBasicColor_impl, getGameInfo, getGameInfo_super, getGameInfo_impl, setGameInfo, setGameInfo_super, setGameInfo_impl, setLayerProcessorList, setLayerProcessorList_super, setLayerProcessorList_impl, setPlayerGameInputCompositeInterface, setPlayerGameInputCompositeInterface_super, setPlayerGameInputCompositeInterface_impl, getPlayerGameInputCompositeInterface, getPlayerGameInputCompositeInterface_super, getPlayerGameInputCompositeInterface_impl, nULL_ALLBINARY_LAYER_MANAGER, iD, backgroundBasicColor, foregroundBasicColor, gameInfo, playerGameInputCompositeInterface)
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
import qualified GameInfo -- org.allbinary.game.GameInfo
import qualified NullPlayerGameInputComposite -- org.allbinary.game.input.NullPlayerGameInputComposite
import qualified PlayerGameInputCompositeInterface -- org.allbinary.game.input.PlayerGameInputCompositeInterface
import qualified ItemColorFactory -- org.allbinary.graphics.ItemColorFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LayerProcessor -- org.allbinary.layer.LayerProcessor
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data AllBinaryGameLayerManager = AllBinaryGameLayerManager
    { header_ :: JavaHeader
    , base :: AllBinaryLayerManager.AllBinaryLayerManager
    , backgroundBasicColor :: IORef (BasicColor.BasicColor)
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , gameInfo :: IORef (GameInfo.GameInfo)
    , playerGameInputCompositeInterface :: IORef (PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface)
    }

instance JavaNull AllBinaryGameLayerManager where
    javaNull = javaNullRecord "AllBinaryGameLayerManager"

instance JavaEquals AllBinaryGameLayerManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryGameLayerManager where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryGameLayerManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ALLBINARY_LAYER_MANAGER #-}
nULL_ALLBINARY_LAYER_MANAGER = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

{-# NOINLINE iD #-}
iD = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 22))

newRecord_ :: IO AllBinaryGameLayerManager
newRecord_ = do
    base <- AllBinaryLayerManager.newRecord_
    let header_ = base.header_
    backgroundBasicColor <- newIORef javaNull
    foregroundBasicColor <- newIORef javaNull
    gameInfo <- newIORef javaNull
    playerGameInputCompositeInterface <- newIORef javaNull
    let this = AllBinaryGameLayerManager header_ base backgroundBasicColor foregroundBasicColor gameInfo playerGameInputCompositeInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getLayerManager" (\() -> getLayerManager_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getBackgroundBasicColor" (\() -> getBackgroundBasicColor_impl this)
    jregisterMethod header_ "setBackgroundBasicColor" (\() -> setBackgroundBasicColor_impl this)
    jregisterMethod header_ "getForegroundBasicColor" (\() -> getForegroundBasicColor_impl this)
    jregisterMethod header_ "setForegroundBasicColor" (\() -> setForegroundBasicColor_impl this)
    jregisterMethod header_ "getGameInfo" (\() -> getGameInfo_impl this)
    jregisterMethod header_ "setGameInfo" (\() -> setGameInfo_impl this)
    jregisterMethod header_ "setLayerProcessorList" (\() -> setLayerProcessorList_impl this)
    jregisterMethod header_ "setPlayerGameInputCompositeInterface" (\() -> setPlayerGameInputCompositeInterface_impl this)
    jregisterMethod header_ "getPlayerGameInputCompositeInterface" (\() -> getPlayerGameInputCompositeInterface_impl this)
    pure this

initFields_ :: AllBinaryGameLayerManager -> IO ()
initFields_ this = do
    jset this.backgroundBasicColor (javaNull)
    jset this.foregroundBasicColor (javaNull)
    jset this.gameInfo (javaNull)
    jset this.playerGameInputCompositeInterface ((javaCast NullPlayerGameInputComposite.nULL_PLAYER_GAME_INPUT_COMPOSITE :: PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface))
    pure ()


getNullInstance :: IO (AllBinaryGameLayerManager)
getNullInstance = do
        when ((jget AllBinaryGameLayerManager.nULL_ALLBINARY_LAYER_MANAGER) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_3 (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE) (GameInfo.nONE))
            jset AllBinaryGameLayerManager.nULL_ALLBINARY_LAYER_MANAGER (assignedValue)
        pure ((javaCast (jget AllBinaryGameLayerManager.nULL_ALLBINARY_LAYER_MANAGER) :: AllBinaryGameLayerManager))

new_3 :: BasicColor.BasicColor -> BasicColor.BasicColor -> GameInfo.GameInfo -> IO AllBinaryGameLayerManager
new_3 backgroundBasicColor foregroundBasicColor gameInfo = do
    this <- newRecord_
    init_3 this backgroundBasicColor foregroundBasicColor gameInfo
    pure this

init_3 :: AllBinaryGameLayerManager -> BasicColor.BasicColor -> BasicColor.BasicColor -> GameInfo.GameInfo -> IO ()
init_3 this backgroundBasicColor foregroundBasicColor gameInfo = do
        AllBinaryLayerManager.init_ this.base
        initFields_ this
        jset (this).backgroundBasicColor (backgroundBasicColor)
        jset (this).foregroundBasicColor (foregroundBasicColor)
        itemColorFactory <- (ItemColorFactory.getInstance)
        assignedValue <- (BasicColor.intValue ((jget (this).backgroundBasicColor)))
        jset (itemColorFactory).iNVERT_PAINT (assignedValue)
        assignedValue <- (BasicColor.intValue ((jget (this).foregroundBasicColor)))
        jset (itemColorFactory).pAINT (assignedValue)
        jset (this).gameInfo (gameInfo)
        pure ()


getLayerManager :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayerManager.AllBinaryLayerManager)
getLayerManager object_ = jmethod object_ "getLayerManager" (\() -> (getLayerManager_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

getLayerManager_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayerManager.AllBinaryLayerManager)
getLayerManager_super object_ = (getLayerManager_impl (javaCast object_ :: AllBinaryGameLayerManager))

getLayerManager_impl :: AllBinaryGameLayerManager -> IO (AllBinaryLayerManager.AllBinaryLayerManager)
getLayerManager_impl this = do
        pure ((javaCast this :: AllBinaryLayerManager.AllBinaryLayerManager))


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: AllBinaryGameLayerManager))

init_impl :: AllBinaryGameLayerManager -> IO (())
init_impl this = do
        pure ()


getBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor object_ = jmethod object_ "getBackgroundBasicColor" (\() -> (getBackgroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

getBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_super object_ = (getBackgroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))

getBackgroundBasicColor_impl :: AllBinaryGameLayerManager -> IO (BasicColor.BasicColor)
getBackgroundBasicColor_impl this = do
        pure ((jget (this).backgroundBasicColor))


setBackgroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor object_ a1 = jmethod object_ "setBackgroundBasicColor" (\() -> (setBackgroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))) () a1

setBackgroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_super object_ a1 = (setBackgroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager)) a1

setBackgroundBasicColor_impl :: AllBinaryGameLayerManager -> BasicColor.BasicColor -> IO (())
setBackgroundBasicColor_impl this backgroundBasicColor = do
        jset (this).backgroundBasicColor (backgroundBasicColor)
        assignedValue <- (BasicColor.intValue ((jget (this).backgroundBasicColor)))
        jset ((jio (ItemColorFactory.getInstance))).iNVERT_PAINT (assignedValue)
        pure ()


getForegroundBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor object_ = jmethod object_ "getForegroundBasicColor" (\() -> (getForegroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

getForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getForegroundBasicColor_super object_ = (getForegroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))

getForegroundBasicColor_impl :: AllBinaryGameLayerManager -> IO (BasicColor.BasicColor)
getForegroundBasicColor_impl this = do
        pure ((jget (this).foregroundBasicColor))


setForegroundBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor object_ a1 = jmethod object_ "setForegroundBasicColor" (\() -> (setForegroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager))) () a1

setForegroundBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_super object_ a1 = (setForegroundBasicColor_impl (javaCast object_ :: AllBinaryGameLayerManager)) a1

setForegroundBasicColor_impl :: AllBinaryGameLayerManager -> BasicColor.BasicColor -> IO (())
setForegroundBasicColor_impl this foregroundBasicColor = do
        jset (this).foregroundBasicColor (foregroundBasicColor)
        assignedValue <- (BasicColor.intValue ((jget (this).foregroundBasicColor)))
        jset ((jio (ItemColorFactory.getInstance))).pAINT (assignedValue)
        pure ()


getGameInfo :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo object_ = jmethod object_ "getGameInfo" (\() -> (getGameInfo_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

getGameInfo_super :: (JavaObjectClass this_) => this_ -> IO (GameInfo.GameInfo)
getGameInfo_super object_ = (getGameInfo_impl (javaCast object_ :: AllBinaryGameLayerManager))

getGameInfo_impl :: AllBinaryGameLayerManager -> IO (GameInfo.GameInfo)
getGameInfo_impl this = do
        pure ((jget (this).gameInfo))


setGameInfo :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> IO (())
setGameInfo object_ a1 = jmethod object_ "setGameInfo" (\() -> (setGameInfo_impl (javaCast object_ :: AllBinaryGameLayerManager))) () a1

setGameInfo_super :: (JavaObjectClass this_) => this_ -> GameInfo.GameInfo -> IO (())
setGameInfo_super object_ a1 = (setGameInfo_impl (javaCast object_ :: AllBinaryGameLayerManager)) a1

setGameInfo_impl :: AllBinaryGameLayerManager -> GameInfo.GameInfo -> IO (())
setGameInfo_impl this gameInfo = do
        jset (this).gameInfo (gameInfo)
        pure ()


setLayerProcessorList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setLayerProcessorList object_ a1 = jmethod object_ "setLayerProcessorList" (\() -> (setLayerProcessorList_impl (javaCast object_ :: AllBinaryGameLayerManager))) () a1

setLayerProcessorList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
setLayerProcessorList_super object_ a1 = (setLayerProcessorList_impl (javaCast object_ :: AllBinaryGameLayerManager)) a1

setLayerProcessorList_impl :: AllBinaryGameLayerManager -> BasicArrayList.BasicArrayList -> IO (())
setLayerProcessorList_impl this list = do
        let layerProcessorInterfaceArray = (jnewArray ((jio (BasicArrayList.size list))) javaNull)
        let size = (jlength layerProcessorInterfaceArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex layerProcessorInterfaceArray (index) ((javaCast (jindex ((jget (list).objectArray)) (index)) :: LayerProcessor.LayerProcessor))
        Control.Monad.void (AllBinaryLayerManager.setLayerProcessorArray this layerProcessorInterfaceArray)
        pure ()


setPlayerGameInputCompositeInterface :: (JavaObjectClass this_) => this_ -> PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface -> IO (())
setPlayerGameInputCompositeInterface object_ a1 = jmethod object_ "setPlayerGameInputCompositeInterface" (\() -> (setPlayerGameInputCompositeInterface_impl (javaCast object_ :: AllBinaryGameLayerManager))) () a1

setPlayerGameInputCompositeInterface_super :: (JavaObjectClass this_) => this_ -> PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface -> IO (())
setPlayerGameInputCompositeInterface_super object_ a1 = (setPlayerGameInputCompositeInterface_impl (javaCast object_ :: AllBinaryGameLayerManager)) a1

setPlayerGameInputCompositeInterface_impl :: AllBinaryGameLayerManager -> PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface -> IO (())
setPlayerGameInputCompositeInterface_impl this playerGameInputCompositeInterface = do
        jset (this).playerGameInputCompositeInterface (playerGameInputCompositeInterface)
        pure ()


getPlayerGameInputCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface)
getPlayerGameInputCompositeInterface object_ = jmethod object_ "getPlayerGameInputCompositeInterface" (\() -> (getPlayerGameInputCompositeInterface_impl (javaCast object_ :: AllBinaryGameLayerManager))) ()

getPlayerGameInputCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface)
getPlayerGameInputCompositeInterface_super object_ = (getPlayerGameInputCompositeInterface_impl (javaCast object_ :: AllBinaryGameLayerManager))

getPlayerGameInputCompositeInterface_impl :: AllBinaryGameLayerManager -> IO (PlayerGameInputCompositeInterface.PlayerGameInputCompositeInterface)
getPlayerGameInputCompositeInterface_impl this = do
        pure ((jget (this).playerGameInputCompositeInterface))


