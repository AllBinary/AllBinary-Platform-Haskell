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
module ScrollMapPlayerGameInput (module ScrollMapPlayerGameInput, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, move, move_super, move_impl, init, init_super, init_impl, scrollMiddleX, scrollMiddleX_super, scrollMiddleX_impl, scrollY, scrollY_super, scrollY_impl, up, up_super, up_impl, down, down_super, down_impl, right, right_super, right_impl, left, left_super, left_impl, initInputProcessors, initInputProcessors_super, initInputProcessors_impl, processInputKey, processInputKey_super, processInputKey_impl, processInput, processInput_super, processInput_impl, getSpecialHeight, getSpecialHeight_super, getSpecialHeight_impl, getSpecialWidth, getSpecialWidth_super, getSpecialWidth_impl, keepOnMapMaxY, keepOnMapMaxY_super, keepOnMapMaxY_impl, keepOnMapMinY, keepOnMapMinY_super, keepOnMapMinY_impl, keepOnMapMaxX, keepOnMapMaxX_super, keepOnMapMaxX_impl, keepOnMapMinX, keepOnMapMinX_super, keepOnMapMinX_impl, inputProcessorArray, border, inputList, isSingleKeyProcessing, geographicMapInterface, maxBottom, maxRight, scrollMapEvent)
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
import qualified GameInputProcessor -- same package or java.lang
import qualified InputFactory -- same package or java.lang
import qualified ScrollMapUpGameInputProcessor -- same package or java.lang
import qualified ScrollMapDownGameInputProcessor -- same package or java.lang
import qualified ScrollMapRightGameInputProcessor -- same package or java.lang
import qualified ScrollMapLeftGameInputProcessor -- same package or java.lang
import qualified GameInputProcessorUtil -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified GameInputStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified AllBinaryTiledLayer -- org.allbinary.game.layer.AllBinaryTiledLayer
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ScrollMapEvent -- org.allbinary.layer.event.ScrollMapEvent
import qualified ScrollMapEventHandler -- org.allbinary.layer.event.ScrollMapEventHandler
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PlayerGameInput

data ScrollMapPlayerGameInput = ScrollMapPlayerGameInput
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , inputProcessorArray :: IORef (JavaArray (GameInputProcessor.GameInputProcessor))
    , border :: IORef (Int)
    , inputList :: IORef (BasicArrayList.BasicArrayList)
    , isSingleKeyProcessing :: IORef (Bool)
    , geographicMapInterface :: IORef (BasicGeographicMap.BasicGeographicMap)
    , maxBottom :: IORef (Int)
    , maxRight :: IORef (Int)
    , scrollMapEvent :: IORef (ScrollMapEvent.ScrollMapEvent)
    }

instance JavaNull ScrollMapPlayerGameInput where
    javaNull = javaNullRecord "ScrollMapPlayerGameInput"

instance JavaEquals ScrollMapPlayerGameInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollMapPlayerGameInput where
    (==) = jrecordEquals

instance JavaObjectClass ScrollMapPlayerGameInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollMapPlayerGameInput
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    inputProcessorArray <- newIORef javaNull
    border <- newIORef 0
    inputList <- newIORef javaNull
    isSingleKeyProcessing <- newIORef False
    geographicMapInterface <- newIORef javaNull
    maxBottom <- newIORef 0
    maxRight <- newIORef 0
    scrollMapEvent <- newIORef javaNull
    let this = ScrollMapPlayerGameInput header_ base inputProcessorArray border inputList isSingleKeyProcessing geographicMapInterface maxBottom maxRight scrollMapEvent
    jregisterLevel header_ this
    jregisterMethod header_ "move" (\() -> move_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "scrollMiddleX" (\() -> scrollMiddleX_impl this)
    jregisterMethod header_ "scrollY" (\() -> scrollY_impl this)
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "initInputProcessors" (\() -> initInputProcessors_impl this)
    jregisterMethod header_ "processInputKey" (\() -> processInputKey_impl this)
    jregisterMethod header_ "processInput" (\() -> processInput_impl this)
    jregisterMethod header_ "getSpecialHeight" (\() -> getSpecialHeight_impl this)
    jregisterMethod header_ "getSpecialWidth" (\() -> getSpecialWidth_impl this)
    jregisterMethod header_ "keepOnMapMaxY" (\() -> keepOnMapMaxY_impl this)
    jregisterMethod header_ "keepOnMapMinY" (\() -> keepOnMapMinY_impl this)
    jregisterMethod header_ "keepOnMapMaxX" (\() -> keepOnMapMaxX_impl this)
    jregisterMethod header_ "keepOnMapMinX" (\() -> keepOnMapMinX_impl this)
    pure this

initFields_ :: ScrollMapPlayerGameInput -> IO ()
initFields_ this = do
    jset this.inputProcessorArray ((jnewArray ((jget ((jio (InputFactory.getInstance))).mAX)) javaNull))
    jset this.border (150)
    jset this.inputList (javaNull)
    jset this.isSingleKeyProcessing (((jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS))) || (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_PRESS)))))
    jset this.geographicMapInterface (javaNull)
    jset this.maxBottom (0)
    jset this.maxRight (0)
    jset this.scrollMapEvent =<< (ScrollMapEvent.new_1 this)
    pure ()

new_3 :: BasicGeographicMap.BasicGeographicMap -> BasicArrayList.BasicArrayList -> Int -> IO ScrollMapPlayerGameInput
new_3 geographicMapInterface list playerInputId = do
    this <- newRecord_
    init_3 this geographicMapInterface list playerInputId
    pure this

init_3 :: ScrollMapPlayerGameInput -> BasicGeographicMap.BasicGeographicMap -> BasicArrayList.BasicArrayList -> Int -> IO ()
init_3 this geographicMapInterface list playerInputId = do
        PlayerGameInput.init_3 this.base (list) (jio (BasicArrayListD.new_)) (playerInputId)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ScrollMapPlayerGameInput.initInputProcessors this)
        jset (this).geographicMapInterface (geographicMapInterface)
        jset (this).inputList (list)
        Control.Monad.void (ScrollMapPlayerGameInput.init this)
        pure ()


-- throws Exception
move :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
move object_ a1 a2 = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1 a2

move_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
move_super object_ a1 a2 = (move_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1 a2

move_impl :: ScrollMapPlayerGameInput -> Int -> Int -> IO (())
move_impl this dx dy = do
        terrainTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        Control.Monad.void (AllBinaryTiledLayer.moveDXY terrainTiledLayer (Prelude.negate dx) (Prelude.negate dy))
        Control.Monad.void (ScrollMapEvent.setDxDy ((jget (this).scrollMapEvent)) (Prelude.negate dx) (Prelude.negate dy))
        Control.Monad.void (ScrollMapEventHandler.fireEvent ((jio (ScrollMapEventHandler.getInstance))) (jget (this).scrollMapEvent))
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: ScrollMapPlayerGameInput))

init_impl :: ScrollMapPlayerGameInput -> IO (())
init_impl this = do
        assignedValue <- (ScrollMapPlayerGameInput.getSpecialHeight this)
        jset (this).maxBottom (assignedValue)
        assignedValue <- (ScrollMapPlayerGameInput.getSpecialWidth this)
        jset (this).maxRight (assignedValue)
        pure ()


-- throws Exception
scrollMiddleX :: (JavaObjectClass this_) => this_ -> IO (())
scrollMiddleX object_ = jmethod object_ "scrollMiddleX" (\() -> (scrollMiddleX_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

scrollMiddleX_super :: (JavaObjectClass this_) => this_ -> IO (())
scrollMiddleX_super object_ = (scrollMiddleX_impl (javaCast object_ :: ScrollMapPlayerGameInput))

scrollMiddleX_impl :: ScrollMapPlayerGameInput -> IO (())
scrollMiddleX_impl this = do
        terrainTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        displayInfo <- (DisplayInfoSingleton.getInstance)
        Control.Monad.void (ScrollMapPlayerGameInput.move this (Prelude.negate (jio (AllBinaryTiledLayer.getXP terrainTiledLayer))) 0)
        if ((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) < (jio (DisplayInfoSingleton.getLastWidth displayInfo))) then do
            let diffX = (((((jio (DisplayInfoSingleton.getLastWidth displayInfo)) - (jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)))) `Data.Bits.shiftR` 1))
            Control.Monad.void (ScrollMapPlayerGameInput.move this (Prelude.negate diffX) 0)
        else do
            let diffX = (((((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) - (jio (DisplayInfoSingleton.getLastWidth displayInfo)))) `Data.Bits.shiftR` 1))
            Control.Monad.void (ScrollMapPlayerGameInput.move this diffX 0)
        pure ()


-- throws Exception
scrollY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
scrollY object_ a1 = jmethod object_ "scrollY" (\() -> (scrollY_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

scrollY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
scrollY_super object_ a1 = (scrollY_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

scrollY_impl :: ScrollMapPlayerGameInput -> Int -> IO (())
scrollY_impl this anchor = do
        terrainTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        displayInfo <- (DisplayInfoSingleton.getInstance)
        if (anchor == Graphics.tOP) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Top" this "scrollY")
        else if (anchor == Graphics.bOTTOM) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Bottom" this "scrollY")
            let diffY = (((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) - (jio (DisplayInfoSingleton.getLastHeight displayInfo))))
            Control.Monad.void (ScrollMapPlayerGameInput.move this 0 diffY)
        else if (anchor == Graphics.vCENTER) then do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) "Center" this "scrollY")
            let diffY = ((((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) - (jio (DisplayInfoSingleton.getLastHeight displayInfo)))) `quot` 2)
            Control.Monad.void (ScrollMapPlayerGameInput.move this 0 diffY)
        else do
            javaThrow ((JavaException "Exception" "No Such Anchor Supported"))
        pure ()


-- throws Exception
up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: ScrollMapPlayerGameInput))

up_impl :: ScrollMapPlayerGameInput -> IO (())
up_impl this = do
        let y = ((jio (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))) - 10)
        when (jio (ScrollMapPlayerGameInput.keepOnMapMinY this y)) $ do
            Control.Monad.void (ScrollMapPlayerGameInput.move this 0 (Prelude.negate 10))
        pure ()


-- throws Exception
down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: ScrollMapPlayerGameInput))

down_impl :: ScrollMapPlayerGameInput -> IO (())
down_impl this = do
        let y = ((Prelude.negate (jio (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))))))) + 10)
        when (jio (ScrollMapPlayerGameInput.keepOnMapMaxY this y)) $ do
            Control.Monad.void (ScrollMapPlayerGameInput.move this 0 10)
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: ScrollMapPlayerGameInput))

right_impl :: ScrollMapPlayerGameInput -> IO (())
right_impl this = do
        let x = ((jio (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))) + 10)
        when (jio (ScrollMapPlayerGameInput.keepOnMapMinX this x)) $ do
            Control.Monad.void (ScrollMapPlayerGameInput.move this 10 0)
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: ScrollMapPlayerGameInput))

left_impl :: ScrollMapPlayerGameInput -> IO (())
left_impl this = do
        let x = ((Prelude.negate (jio (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))))))) - 10)
        when (jio (ScrollMapPlayerGameInput.keepOnMapMaxX this x)) $ do
            Control.Monad.void (ScrollMapPlayerGameInput.move this (Prelude.negate 10) 0)
        pure ()


initInputProcessors :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors object_ = jmethod object_ "initInputProcessors" (\() -> (initInputProcessors_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

initInputProcessors_super :: (JavaObjectClass this_) => this_ -> IO (())
initInputProcessors_super object_ = (initInputProcessors_impl (javaCast object_ :: ScrollMapPlayerGameInput))

initInputProcessors_impl :: ScrollMapPlayerGameInput -> IO (())
initInputProcessors_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (ScrollMapUpGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.uP) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (ScrollMapDownGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.dOWN) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (ScrollMapRightGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM9) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: GameInputProcessor.GameInputProcessor) (ScrollMapLeftGameInputProcessor.new_1 this))
        jsetIndex ((jget (this).inputProcessorArray)) (Canvas.kEY_NUM7) (assignedValue)
        Control.Monad.void (GameInputProcessorUtil.init (jget (this).inputProcessorArray))
        pure ()


-- throws Exception
processInputKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processInputKey object_ a1 = jmethod object_ "processInputKey" (\() -> (processInputKey_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

processInputKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
processInputKey_super object_ a1 = (processInputKey_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

processInputKey_impl :: ScrollMapPlayerGameInput -> Int -> IO (())
processInputKey_impl this key = do
        Control.Monad.void (processEvent ((jindex ((jget (this).inputProcessorArray)) (key))) (jio (AllBinaryGameLayerManager.getNullInstance)) (GameKeyEvent.nONE))
        pure ()


-- throws Exception
processInput :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput object_ a1 = jmethod object_ "processInput" (\() -> (processInput_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

processInput_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_super object_ a1 = (processInput_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

processInput_impl :: ScrollMapPlayerGameInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processInput_impl this layerManager = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.gameInputStrings)).pROCESS_INPUT) e)
            ) $ do
            size <- (BasicArrayList.size ((jget (this).inputList)))
            key <- newIORef (0)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let gameKeyEvent = (javaCast (jio (BasicArrayList.get ((jget (this).inputList)) index)) :: GameKeyEvent.GameKeyEvent)
                assignedValue <- (GameKeyEvent.getKey gameKeyEvent)
                jset key (assignedValue)
                Control.Monad.void (ScrollMapPlayerGameInput.processInputKey this (jget key))
            if (jget (this).isSingleKeyProcessing) then do
                Control.Monad.void (PlayerGameInput.clear this)
            else do
                Control.Monad.void (PlayerGameInput.update this)
        pure ()


getSpecialHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpecialHeight object_ = jmethod object_ "getSpecialHeight" (\() -> (getSpecialHeight_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

getSpecialHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpecialHeight_super object_ = (getSpecialHeight_impl (javaCast object_ :: ScrollMapPlayerGameInput))

getSpecialHeight_impl :: ScrollMapPlayerGameInput -> IO (Int)
getSpecialHeight_impl this = do
    javaCatchReturn $ do
        terrainTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        displayInfo <- (DisplayInfoSingleton.getInstance)
        if ((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) > (jio (DisplayInfoSingleton.getLastHeight displayInfo))) then do
            javaReturn (((jio (AllBinaryTiledLayer.getHeight terrainTiledLayer)) - (jio (DisplayInfoSingleton.getLastHeight displayInfo))))
        else do
            javaReturn ((((jio (DisplayInfoSingleton.getLastHeight displayInfo)) - (jio (AllBinaryTiledLayer.getHeight terrainTiledLayer))) + (jio (AllBinaryTiledLayer.getCellHeight terrainTiledLayer))))


getSpecialWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpecialWidth object_ = jmethod object_ "getSpecialWidth" (\() -> (getSpecialWidth_impl (javaCast object_ :: ScrollMapPlayerGameInput))) ()

getSpecialWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSpecialWidth_super object_ = (getSpecialWidth_impl (javaCast object_ :: ScrollMapPlayerGameInput))

getSpecialWidth_impl :: ScrollMapPlayerGameInput -> IO (Int)
getSpecialWidth_impl this = do
    javaCatchReturn $ do
        terrainTiledLayer <- (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface)))
        displayInfo <- (DisplayInfoSingleton.getInstance)
        if ((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) > (jio (DisplayInfoSingleton.getLastWidth displayInfo))) then do
            javaReturn (((jio (AllBinaryTiledLayer.getWidth terrainTiledLayer)) - (jio (DisplayInfoSingleton.getLastWidth displayInfo))))
        else do
            javaReturn ((((jio (DisplayInfoSingleton.getLastWidth displayInfo)) - (jio (AllBinaryTiledLayer.getWidth terrainTiledLayer))) + (jio (AllBinaryTiledLayer.getCellWidth terrainTiledLayer))))


keepOnMapMaxY :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMaxY object_ a1 = jmethod object_ "keepOnMapMaxY" (\() -> (keepOnMapMaxY_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

keepOnMapMaxY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMaxY_super object_ a1 = (keepOnMapMaxY_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

keepOnMapMaxY_impl :: ScrollMapPlayerGameInput -> Int -> IO (Bool)
keepOnMapMaxY_impl this newY = do
    javaCatchReturn $ do
        y <- (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))
        if (y > ((jget (this).maxBottom) + (jget (this).border))) then do
            javaReturn (False)
        else do
            javaReturn (True)


keepOnMapMinY :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMinY object_ a1 = jmethod object_ "keepOnMapMinY" (\() -> (keepOnMapMinY_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

keepOnMapMinY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMinY_super object_ a1 = (keepOnMapMinY_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

keepOnMapMinY_impl :: ScrollMapPlayerGameInput -> Int -> IO (Bool)
keepOnMapMinY_impl this newY = do
    javaCatchReturn $ do
        y <- (AllBinaryTiledLayer.getYP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))
        if (y < (Prelude.negate (jget (this).border))) then do
            javaReturn (False)
        else do
            javaReturn (True)


keepOnMapMaxX :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMaxX object_ a1 = jmethod object_ "keepOnMapMaxX" (\() -> (keepOnMapMaxX_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

keepOnMapMaxX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMaxX_super object_ a1 = (keepOnMapMaxX_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

keepOnMapMaxX_impl :: ScrollMapPlayerGameInput -> Int -> IO (Bool)
keepOnMapMaxX_impl this newX = do
    javaCatchReturn $ do
        x <- (AllBinaryTiledLayer.getXP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))
        if (x < ((Prelude.negate (jget (this).maxRight)) - (jget (this).border))) then do
            javaReturn (False)
        else do
            javaReturn (True)


keepOnMapMinX :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMinX object_ a1 = jmethod object_ "keepOnMapMinX" (\() -> (keepOnMapMinX_impl (javaCast object_ :: ScrollMapPlayerGameInput))) () a1

keepOnMapMinX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
keepOnMapMinX_super object_ a1 = (keepOnMapMinX_impl (javaCast object_ :: ScrollMapPlayerGameInput)) a1

keepOnMapMinX_impl :: ScrollMapPlayerGameInput -> Int -> IO (Bool)
keepOnMapMinX_impl this newX = do
    javaCatchReturn $ do
        x <- (AllBinaryTiledLayer.getXP ((jio (BasicGeographicMap.getAllBinaryTiledLayer ((jget (this).geographicMapInterface))))))
        if (x > (jget (this).border)) then do
            javaReturn (False)
        else do
            javaReturn (True)


