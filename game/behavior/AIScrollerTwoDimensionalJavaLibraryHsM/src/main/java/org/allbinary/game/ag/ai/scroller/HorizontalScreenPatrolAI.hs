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
-- package org.allbinary.game.ag.ai.scroller
module HorizontalScreenPatrolAI (module HorizontalScreenPatrolAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, nextDirection, nextDirection_super, nextDirection_impl, keyDirection, displayInfoSingleton, firingX, firedIndex, mAX_FIRE, timeDelayHelper, secondaryPlayerQueue, sound, sOUND)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified PlayerQueue -- org.allbinary.media.audio.PlayerQueue
import qualified SecondaryPlayerQueueFactory -- org.allbinary.media.audio.SecondaryPlayerQueueFactory
import qualified Sound -- org.allbinary.media.audio.Sound
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data HorizontalScreenPatrolAI = HorizontalScreenPatrolAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , keyDirection :: IORef (Int)
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , firingX :: IORef (Int)
    , firedIndex :: IORef (Int)
    , mAX_FIRE :: IORef (Int)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , secondaryPlayerQueue :: IORef (PlayerQueue.PlayerQueue)
    , sound :: IORef (Sound.Sound)
    }

instance JavaNull HorizontalScreenPatrolAI where
    javaNull = javaNullRecord "HorizontalScreenPatrolAI"

instance JavaEquals HorizontalScreenPatrolAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HorizontalScreenPatrolAI where
    (==) = jrecordEquals

instance JavaObjectClass HorizontalScreenPatrolAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sOUND #-}
sOUND = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 433))

newRecord_ :: IO HorizontalScreenPatrolAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    keyDirection <- newIORef 0
    displayInfoSingleton <- newIORef javaNull
    firingX <- newIORef 0
    firedIndex <- newIORef 0
    mAX_FIRE <- newIORef 0
    timeDelayHelper <- newIORef javaNull
    secondaryPlayerQueue <- newIORef javaNull
    sound <- newIORef javaNull
    let this = HorizontalScreenPatrolAI header_ base keyDirection displayInfoSingleton firingX firedIndex mAX_FIRE timeDelayHelper secondaryPlayerQueue sound
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "nextDirection" (\() -> nextDirection_impl this)
    pure this

initFields_ :: HorizontalScreenPatrolAI -> IO ()
initFields_ this = do
    jset this.keyDirection (Canvas.lEFT)
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.firingX =<< (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))
    jset this.firedIndex (0)
    jset this.mAX_FIRE (28)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 240)
    jset this.secondaryPlayerQueue =<< (SecondaryPlayerQueueFactory.getInstance)
    jset this.sound (javaNull)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO HorizontalScreenPatrolAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: HorizontalScreenPatrolAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).sound ((javaCast (jio (ABHashtable.get hashtable (HorizontalScreenPatrolAI.sOUND))) :: Sound.Sound))
        when ((jget (this).sound) == javaNull) $ do
            javaThrow ((JavaException "Exception" "No Sound Provided!!"))
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: HorizontalScreenPatrolAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: HorizontalScreenPatrolAI)) a1

processAI_impl :: HorizontalScreenPatrolAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        Control.Monad.void (BasicAI.processKeyAI_super this.base (jget (this).keyDirection))
        when (jio (TimeDelayHelper.isTimeTNT ((jget (this).timeDelayHelper)))) $ do
            layerInterface <- (BasicAI.getOwnerLayerInterface this)
            currentOwnerLayerX <- (AllBinaryLayer.getXP layerInterface)
            when (currentOwnerLayerX < (Prelude.negate (jio (AllBinaryLayer.getWidth layerInterface)))) $ do
                y <- (MyRandomFactory.getAbsoluteNextIntAllowZero ((jio (MyRandomFactory.getInstance))) 50)
                Control.Monad.void (AllBinaryLayer.setPosition layerInterface (((jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))) + (jio (AllBinaryLayer.getWidth layerInterface))) + 50) y (jio (AllBinaryLayer.getZP layerInterface)))
                jset (this).firedIndex (0)
                jset (this).firingX (((jio (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton)))) + (jio (MyRandomFactory.getNextInt ((jio (MyRandomFactory.getInstance))) (jio (DisplayInfoSingleton.getLastHalfWidth ((jget (this).displayInfoSingleton))))))))
                Control.Monad.void (PlayerQueue.add ((jget (this).secondaryPlayerQueue)) (jget (this).sound))
            when ((currentOwnerLayerX < (jget (this).firingX)) && (currentOwnerLayerX > (Prelude.negate (jio (AllBinaryLayer.getWidth layerInterface))))) $ do
                Control.Monad.void (BasicAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
                let gameLayerManager = (javaCast allBinaryLayerManager :: AllBinaryGameLayerManager.AllBinaryGameLayerManager)
                fIRE <- newIORef (((((jio (GameInfo.getCurrentLevel ((jio (AllBinaryGameLayerManager.getGameInfo gameLayerManager))))) + 12)) `Data.Bits.shiftR` 2))
                when ((jget fIRE) > (jget (this).mAX_FIRE)) $ do
                    jset fIRE ((jget (this).mAX_FIRE))
                when ((jget (this).firedIndex) > (jget fIRE)) $ do
                    jset (this).firedIndex (0)
                    jset (this).firingX (((-2147483648) :: Int))
                jset (this).firedIndex ((jget (this).firedIndex) + 1)
        pure ()


nextDirection :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection object_ = jmethod object_ "nextDirection" (\() -> (nextDirection_impl (javaCast object_ :: HorizontalScreenPatrolAI))) ()

nextDirection_super :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection_super object_ = (nextDirection_impl (javaCast object_ :: HorizontalScreenPatrolAI))

nextDirection_impl :: HorizontalScreenPatrolAI -> IO (())
nextDirection_impl this = do
        pure ()


