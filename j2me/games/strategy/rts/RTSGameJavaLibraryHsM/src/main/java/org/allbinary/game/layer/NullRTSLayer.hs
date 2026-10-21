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
-- package org.allbinary.game.layer
module NullRTSLayer (module NullRTSLayer, module NullPathFindingLayer) where

import NullPathFindingLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, processInput, processInput_super, processInput_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, getGameNotificationHud, getGameNotificationHud_super, getGameNotificationHud_impl, getCurrentScrollSelectionForm, getCurrentScrollSelectionForm_super, getCurrentScrollSelectionForm_impl, setCurrentScrollSelectionForm, setCurrentScrollSelectionForm_super, setCurrentScrollSelectionForm_impl, getBuildingScrollSelectionForm, getBuildingScrollSelectionForm_super, getBuildingScrollSelectionForm_impl, getPlayerGameInput, getPlayerGameInput_super, getPlayerGameInput_impl, onEvent, onEvent_super, onEvent_impl, onDestroyed, onDestroyed_super, onDestroyed_impl, processTick, processTick_super, processTick_impl, getCapital, getCapital_super, getCapital_impl, getRTSFormInput, getRTSFormInput_super, getRTSFormInput_impl, add, add_super, add_impl, getPlayerOwnedRTSLayers, getPlayerOwnedRTSLayers_super, getPlayerOwnedRTSLayers_impl, implmentsArtificialIntelligenceCompositeInterface, implmentsArtificialIntelligenceCompositeInterface_super, implmentsArtificialIntelligenceCompositeInterface_impl, nULL_RTS_LAYER)
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
import qualified PlayerOwnedRTSLayers -- same package or java.lang
import qualified GameNotificationHud -- org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud
import qualified DestroyedEvent -- org.allbinary.game.combat.destroy.event.DestroyedEvent
import qualified PlayerGameInput -- org.allbinary.game.input.PlayerGameInput
import qualified NullRTSFormInputFactory -- org.allbinary.game.input.form.NullRTSFormInputFactory
import qualified RTSFormInput -- org.allbinary.game.input.form.RTSFormInput
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified NullPathFindingLayer
import qualified RTSPlayerLayerInterface

-- implements RTSPlayerLayerInterface
data NullRTSLayer = NullRTSLayer
    { header_ :: JavaHeader
    , base :: NullPathFindingLayer.NullPathFindingLayer
    }

instance JavaNull NullRTSLayer where
    javaNull = javaNullRecord "NullRTSLayer"

instance JavaEquals NullRTSLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NullRTSLayer where
    (==) = jrecordEquals

instance JavaObjectClass NullRTSLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_RTS_LAYER #-}
nULL_RTS_LAYER = unsafePerformIO ((new_))

newRecord_ :: IO NullRTSLayer
newRecord_ = do
    base <- NullPathFindingLayer.newRecord_
    let header_ = base.header_
    let this = NullRTSLayer header_ base
    jregisterLevel header_ this
    RTSPlayerLayerInterface.registerInterface_ header_
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "getGameNotificationHud" (\() -> getGameNotificationHud_impl this)
    jregisterMethod header_ "getCurrentScrollSelectionForm" (\() -> getCurrentScrollSelectionForm_impl this)
    jregisterMethod header_ "setCurrentScrollSelectionForm" (\() -> setCurrentScrollSelectionForm_impl this)
    jregisterMethod header_ "getBuildingScrollSelectionForm" (\() -> getBuildingScrollSelectionForm_impl this)
    jregisterMethod header_ "getPlayerGameInput" (\() -> getPlayerGameInput_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDestroyed" (\() -> onDestroyed_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "getCapital" (\() -> getCapital_impl this)
    jregisterMethod header_ "getRTSFormInput" (\() -> getRTSFormInput_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "getPlayerOwnedRTSLayers" (\() -> getPlayerOwnedRTSLayers_impl this)
    jregisterMethod header_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> implmentsArtificialIntelligenceCompositeInterface_impl this)
    pure this

initFields_ :: NullRTSLayer -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NullRTSLayer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NullRTSLayer -> IO ()
init_ this = do
    NullPathFindingLayer.init_ this.base
    initFields_ this


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: NullRTSLayer))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: NullRTSLayer))

getName_impl :: NullRTSLayer -> IO (String)
getName_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: NullRTSLayer))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: NullRTSLayer)) a1

processInput_impl :: NullRTSLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: NullRTSLayer))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: NullRTSLayer))

initInputProcessors_impl :: NullRTSLayer -> IO (())
initInputProcessors_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getGameNotificationHud :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud object_ = jmethod object_ "getGameNotificationHud" (\() -> (getGameNotificationHud_impl (javaCast object_ :: NullRTSLayer))) ()

getGameNotificationHud_super :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_super object_ = (getGameNotificationHud_impl (javaCast object_ :: NullRTSLayer))

getGameNotificationHud_impl :: NullRTSLayer -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getCurrentScrollSelectionForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm object_ = jmethod object_ "getCurrentScrollSelectionForm" (\() -> (getCurrentScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer))) ()

getCurrentScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm_super object_ = (getCurrentScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer))

getCurrentScrollSelectionForm_impl :: NullRTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getCurrentScrollSelectionForm_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


setCurrentScrollSelectionForm :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm object_ a1 = jmethod object_ "setCurrentScrollSelectionForm" (\() -> (setCurrentScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer))) () a1

setCurrentScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm_super object_ a1 = (setCurrentScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer)) a1

setCurrentScrollSelectionForm_impl :: NullRTSLayer -> ScrollSelectionForm.ScrollSelectionForm -> IO (())
setCurrentScrollSelectionForm_impl this currentScrollSelectionForm = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getBuildingScrollSelectionForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm object_ = jmethod object_ "getBuildingScrollSelectionForm" (\() -> (getBuildingScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer))) ()

getBuildingScrollSelectionForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm_super object_ = (getBuildingScrollSelectionForm_impl (javaCast object_ :: NullRTSLayer))

getBuildingScrollSelectionForm_impl :: NullRTSLayer -> IO (ScrollSelectionForm.ScrollSelectionForm)
getBuildingScrollSelectionForm_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getPlayerGameInput :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput object_ = jmethod object_ "getPlayerGameInput" (\() -> (getPlayerGameInput_impl (javaCast object_ :: NullRTSLayer))) ()

getPlayerGameInput_super :: (JavaObjectClass this_) => this_ -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_super object_ = (getPlayerGameInput_impl (javaCast object_ :: NullRTSLayer))

getPlayerGameInput_impl :: NullRTSLayer -> IO (PlayerGameInput.PlayerGameInput)
getPlayerGameInput_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: NullRTSLayer))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: NullRTSLayer)) a1

onEvent_impl :: NullRTSLayer -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
onDestroyed :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed object_ a1 = jmethod object_ "onDestroyed" (\() -> (onDestroyed_impl (javaCast object_ :: NullRTSLayer))) () a1

onDestroyed_super :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_super object_ a1 = (onDestroyed_impl (javaCast object_ :: NullRTSLayer)) a1

onDestroyed_impl :: NullRTSLayer -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_impl this destroyedEvent = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: NullRTSLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: NullRTSLayer)) a1

processTick_impl :: NullRTSLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getCapital :: (JavaObjectClass this_) => this_ -> IO (Capital.Capital)
getCapital object_ = jmethod object_ "getCapital" (\() -> (getCapital_impl (javaCast object_ :: NullRTSLayer))) ()

getCapital_super :: (JavaObjectClass this_) => this_ -> IO (Capital.Capital)
getCapital_super object_ = (getCapital_impl (javaCast object_ :: NullRTSLayer))

getCapital_impl :: NullRTSLayer -> IO (Capital.Capital)
getCapital_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


getRTSFormInput :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput object_ = jmethod object_ "getRTSFormInput" (\() -> (getRTSFormInput_impl (javaCast object_ :: NullRTSLayer))) ()

getRTSFormInput_super :: (JavaObjectClass this_) => this_ -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_super object_ = (getRTSFormInput_impl (javaCast object_ :: NullRTSLayer))

getRTSFormInput_impl :: NullRTSLayer -> IO (RTSFormInput.RTSFormInput)
getRTSFormInput_impl this = do
        (NullRTSFormInputFactory.getInstance)


add :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: NullRTSLayer))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Sound.Sound -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: NullRTSLayer)) a1

add_impl :: NullRTSLayer -> Sound.Sound -> IO (())
add_impl this sound = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


getPlayerOwnedRTSLayers :: (JavaObjectClass this_) => this_ -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers object_ = jmethod object_ "getPlayerOwnedRTSLayers" (\() -> (getPlayerOwnedRTSLayers_impl (javaCast object_ :: NullRTSLayer))) ()

getPlayerOwnedRTSLayers_super :: (JavaObjectClass this_) => this_ -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers_super object_ = (getPlayerOwnedRTSLayers_impl (javaCast object_ :: NullRTSLayer))

getPlayerOwnedRTSLayers_impl :: NullRTSLayer -> IO (PlayerOwnedRTSLayers.PlayerOwnedRTSLayers)
getPlayerOwnedRTSLayers_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


implmentsArtificialIntelligenceCompositeInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface object_ = jmethod object_ "implmentsArtificialIntelligenceCompositeInterface" (\() -> (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: NullRTSLayer))) ()

implmentsArtificialIntelligenceCompositeInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_super object_ = (implmentsArtificialIntelligenceCompositeInterface_impl (javaCast object_ :: NullRTSLayer))

implmentsArtificialIntelligenceCompositeInterface_impl :: NullRTSLayer -> IO (Bool)
implmentsArtificialIntelligenceCompositeInterface_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


