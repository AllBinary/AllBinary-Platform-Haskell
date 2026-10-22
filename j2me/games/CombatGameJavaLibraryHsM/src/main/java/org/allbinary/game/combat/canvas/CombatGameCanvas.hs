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
-- package org.allbinary.game.combat.canvas
module CombatGameCanvas (module CombatGameCanvas, module AllBinaryGameCanvas) where

import AllBinaryGameCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, combatGameCanvas_init, combatGameCanvas_init_super, combatGameCanvas_init_impl, initApp, initApp_super, initApp_impl, initConfigurablePortion, initConfigurablePortion_super, initConfigurablePortion_impl, processPlayingGame, processPlayingGame_super, processPlayingGame_impl, cleanupGame, cleanupGame_super, cleanupGame_impl, cleanupManager, cleanupManager_super, cleanupManager_impl, basicLayerProcessor)
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
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified DestroyedLayerProcessor -- org.allbinary.game.combat.destroy.DestroyedLayerProcessor
import qualified DestroyEventCircularStaticPool -- org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool
import qualified DestroyedEventHandler -- org.allbinary.game.combat.destroy.event.DestroyedEventHandler
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified BasicBuildGameInitializerFactory -- org.allbinary.game.init.BasicBuildGameInitializerFactory
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified DropLayerProcessor -- org.allbinary.game.layer.drop.DropLayerProcessor
import qualified GroupLayerManagerListener -- org.allbinary.game.layer.identification.GroupLayerManagerListener
import qualified HighScoresFactoryInterface -- org.allbinary.game.score.HighScoresFactoryInterface
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified BasicLayerProcessor -- org.allbinary.layer.BasicLayerProcessor
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface

data CombatGameCanvas = CombatGameCanvas
    { header_ :: JavaHeader
    , base :: AllBinaryGameCanvas.AllBinaryGameCanvas
    }

instance JavaNull CombatGameCanvas where
    javaNull = javaNullRecord "CombatGameCanvas"

instance JavaEquals CombatGameCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CombatGameCanvas where
    (==) = jrecordEquals

instance JavaObjectClass CombatGameCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE basicLayerProcessor #-}
basicLayerProcessor = unsafePerformIO (newIORef ((jnewArray (0) javaNull)))

newRecord_ :: IO CombatGameCanvas
newRecord_ = do
    base <- AllBinaryGameCanvas.newRecord_
    let header_ = base.header_
    let this = CombatGameCanvas header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "combatGameCanvas_init" (\() -> combatGameCanvas_init_impl this)
    jregisterMethod header_ "initApp" (\() -> initApp_impl this)
    jregisterMethod header_ "initConfigurablePortion" (\() -> initConfigurablePortion_impl this)
    jregisterMethod header_ "processPlayingGame" (\() -> processPlayingGame_impl this)
    jregisterMethod header_ "cleanupGame" (\() -> cleanupGame_impl this)
    jregisterMethod header_ "cleanupManager" (\() -> cleanupManager_impl this)
    pure this

initFields_ :: CombatGameCanvas -> IO ()
initFields_ this = do
    pure ()

new_5 :: CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HighScoresFactoryInterface.HighScoresFactoryInterface -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO CombatGameCanvas
new_5 cmdListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered = do
    this <- newRecord_
    init_5 this cmdListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered
    pure this

init_5 :: CombatGameCanvas -> CommandListener.CommandListener -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> HighScoresFactoryInterface.HighScoresFactoryInterface -> BasicBuildGameInitializerFactory.BasicBuildGameInitializerFactory -> Bool -> IO ()
init_5 this cmdListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered = do
        AllBinaryGameCanvas.init_5 this.base (cmdListener) (gameLayerManager) (highScoresFactoryInterface) (gameInitializationInterfaceFactoryInterface) (buffered)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


combatGameCanvas_init :: (JavaObjectClass this_) => this_ -> IO (())
combatGameCanvas_init object_ = jmethod object_ "combatGameCanvas_init" (\() -> (combatGameCanvas_init_impl (javaCast object_ :: CombatGameCanvas))) ()

combatGameCanvas_init_super :: (JavaObjectClass this_) => this_ -> IO (())
combatGameCanvas_init_super object_ = (combatGameCanvas_init_impl (javaCast object_ :: CombatGameCanvas))

combatGameCanvas_init_impl :: CombatGameCanvas -> IO (())
combatGameCanvas_init_impl this = do
        Control.Monad.void (DestroyEventCircularStaticPool.init ((jio (DestroyEventCircularStaticPool.getInstance))) (javaCast this))
        Control.Monad.void (ProgressCanvas.addNormalPortion ((jio (ProgressCanvasFactory.getInstance))) 50 "Destroy Events")
        pure ()


-- throws Exception
initApp :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp object_ a1 = jmethod object_ "initApp" (\() -> (initApp_impl (javaCast object_ :: CombatGameCanvas))) () a1

initApp_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp_super object_ a1 = (initApp_impl (javaCast object_ :: CombatGameCanvas)) a1

initApp_impl :: CombatGameCanvas -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
initApp_impl this abeClientInformation = do
        Control.Monad.void (CombatGameCanvas.combatGameCanvas_init this)
        Control.Monad.void (AllBinaryGameCanvas.initApp_super this.base abeClientInformation)
        pure ()


initConfigurablePortion :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initConfigurablePortion object_ a1 = jmethod object_ "initConfigurablePortion" (\() -> (initConfigurablePortion_impl (javaCast object_ :: CombatGameCanvas))) () a1

initConfigurablePortion_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
initConfigurablePortion_super object_ a1 = (initConfigurablePortion_impl (javaCast object_ :: CombatGameCanvas)) a1

initConfigurablePortion_impl :: CombatGameCanvas -> Int -> IO (())
initConfigurablePortion_impl this portion = do
        Control.Monad.void (DestroyedLayerProcessor.init)
        Control.Monad.void (ProgressCanvas.addNormalPortion ((jio (ProgressCanvasFactory.getInstance))) portion "Basic Processors")
        features <- (Features.getInstance)
        gameFeatureFactory <- (GameFeatureFactory.getInstance)
        if ((jio (Features.isFeature features (javaCast (jget (gameFeatureFactory).dROPPED_ITEMS)))) && (jio (Features.isFeature features (javaCast (jget (gameFeatureFactory).dROPPED_ITEMS_FROM_DEATH))))) then do
            jset CombatGameCanvas.basicLayerProcessor ((jnewArray (2) javaNull))
            assignedValue <- (DestroyedLayerProcessor.getInstance)
            jsetIndex ((jget CombatGameCanvas.basicLayerProcessor)) (0) (assignedValue)
            assignedValue <- (DropLayerProcessor.getInstance)
            jsetIndex ((jget CombatGameCanvas.basicLayerProcessor)) (1) (assignedValue)
        else do
            jset CombatGameCanvas.basicLayerProcessor ((jnewArray (1) javaNull))
            assignedValue <- (DestroyedLayerProcessor.getInstance)
            jsetIndex ((jget CombatGameCanvas.basicLayerProcessor)) (0) (assignedValue)
        pure ()


-- throws Exception
processPlayingGame :: (JavaObjectClass this_) => this_ -> IO (())
processPlayingGame object_ = jmethod object_ "processPlayingGame" (\() -> (processPlayingGame_impl (javaCast object_ :: CombatGameCanvas))) ()

processPlayingGame_super :: (JavaObjectClass this_) => this_ -> IO (())
processPlayingGame_super object_ = (processPlayingGame_impl (javaCast object_ :: CombatGameCanvas))

processPlayingGame_impl :: CombatGameCanvas -> IO (())
processPlayingGame_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.processPlayingGame_super this.base)
        index <- newIORef ((jlength (jget CombatGameCanvas.basicLayerProcessor)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (process ((jindex ((jget CombatGameCanvas.basicLayerProcessor)) ((jget index)))) (jget (this).base.gameLayerManager))
        pure ()


-- throws Exception
cleanupGame :: (JavaObjectClass this_) => this_ -> IO (())
cleanupGame object_ = jmethod object_ "cleanupGame" (\() -> (cleanupGame_impl (javaCast object_ :: CombatGameCanvas))) ()

cleanupGame_super :: (JavaObjectClass this_) => this_ -> IO (())
cleanupGame_super object_ = (cleanupGame_impl (javaCast object_ :: CombatGameCanvas))

cleanupGame_impl :: CombatGameCanvas -> IO (())
cleanupGame_impl this = do
        Control.Monad.void (AllBinaryGameCanvas.cleanupGame_super this.base)
        index <- newIORef ((jlength (jget CombatGameCanvas.basicLayerProcessor)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (clear ((jio (getList ((jindex ((jget CombatGameCanvas.basicLayerProcessor)) ((jget index))))))))
        Control.Monad.void (GroupLayerManagerListener.clear ((jio (GroupLayerManagerListener.getInstance))))
        Control.Monad.void (GroupLayerManagerListener.log ((jio (GroupLayerManagerListener.getInstance))))
        Control.Monad.void (DestroyedEventHandler.removeAllListeners ((jio (DestroyedEventHandler.getInstance))))
        Control.Monad.void (CombatGameCanvas.cleanupManager this)
        pure ()


-- throws Exception
cleanupManager :: (JavaObjectClass this_) => this_ -> IO (())
cleanupManager object_ = jmethod object_ "cleanupManager" (\() -> (cleanupManager_impl (javaCast object_ :: CombatGameCanvas))) ()

cleanupManager_super :: (JavaObjectClass this_) => this_ -> IO (())
cleanupManager_super object_ = (cleanupManager_impl (javaCast object_ :: CombatGameCanvas))

cleanupManager_impl :: CombatGameCanvas -> IO (())
cleanupManager_impl this = do
        Control.Monad.void (AllBinaryGameLayerManager.cleanup ((jget (this).base.gameLayerManager)))
        pure ()


