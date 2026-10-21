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
module BasePatrolAI (module BasePatrolAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, updateTotalDistance, updateTotalDistance_super, updateTotalDistance_impl, changeDirectionIfReachedPacingAreaMax, changeDirectionIfReachedPacingAreaMax_super, changeDirectionIfReachedPacingAreaMax_impl, nextDirection, nextDirection_super, nextDirection_impl, disable, disable_super, disable_impl, mAX_DISTANCE, dIRECTION_ARRAY, fIRING_DISTANCE, sPEED, maxDistance, currentDistance, xTotalDistance, lastKeyDirection, keyDirection)
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
import qualified BasicVelocityProperties -- org.allbinary.game.physics.velocity.BasicVelocityProperties
import qualified VelocityInterfaceCompositeInterface -- org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified MathUtil -- org.allbinary.logic.math.MathUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data BasePatrolAI = BasePatrolAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , maxDistance :: IORef (Int)
    , currentDistance :: IORef (Int)
    , xTotalDistance :: IORef (Int)
    , lastKeyDirection :: IORef (Int)
    , keyDirection :: IORef (Int)
    }

instance JavaNull BasePatrolAI where
    javaNull = javaNullRecord "BasePatrolAI"

instance JavaEquals BasePatrolAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasePatrolAI where
    (==) = jrecordEquals

instance JavaObjectClass BasePatrolAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE mAX_DISTANCE #-}
mAX_DISTANCE = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2))

{-# NOINLINE dIRECTION_ARRAY #-}
dIRECTION_ARRAY = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 3))

{-# NOINLINE fIRING_DISTANCE #-}
fIRING_DISTANCE = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 4))

{-# NOINLINE sPEED #-}
sPEED = unsafePerformIO ((SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 5) >>= newIORef)

newRecord_ :: IO BasePatrolAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    maxDistance <- newIORef javaNull
    currentDistance <- newIORef 0
    xTotalDistance <- newIORef 0
    lastKeyDirection <- newIORef 0
    keyDirection <- newIORef 0
    let this = BasePatrolAI header_ base maxDistance currentDistance xTotalDistance lastKeyDirection keyDirection
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "updateTotalDistance" (\() -> updateTotalDistance_impl this)
    jregisterMethod header_ "changeDirectionIfReachedPacingAreaMax" (\() -> changeDirectionIfReachedPacingAreaMax_impl this)
    jregisterMethod header_ "nextDirection" (\() -> nextDirection_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    pure this

initFields_ :: BasePatrolAI -> IO ()
initFields_ this = do
    jset this.maxDistance (javaNull)
    jset this.currentDistance (0)
    jset this.xTotalDistance (0)
    jset this.lastKeyDirection (Canvas.rIGHT)
    jset this.keyDirection (Canvas.rIGHT)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO BasePatrolAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: BasePatrolAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).maxDistance ((javaCast (jio (ABHashtable.get hashtable (BasePatrolAI.mAX_DISTANCE))) :: Int))
        jset (this).currentDistance ((jget (this).maxDistance))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BasePatrolAI))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: BasePatrolAI))

update_impl :: BasePatrolAI -> IO (())
update_impl this = do
        Control.Monad.void (BasePatrolAI.updateTotalDistance this)
        Control.Monad.void (BasePatrolAI.changeDirectionIfReachedPacingAreaMax this)
        pure ()


updateTotalDistance :: (JavaObjectClass this_) => this_ -> IO (())
updateTotalDistance object_ = jmethod object_ "updateTotalDistance" (\() -> (updateTotalDistance_impl (javaCast object_ :: BasePatrolAI))) ()

updateTotalDistance_super :: (JavaObjectClass this_) => this_ -> IO (())
updateTotalDistance_super object_ = (updateTotalDistance_impl (javaCast object_ :: BasePatrolAI))

updateTotalDistance_impl :: BasePatrolAI -> IO (())
updateTotalDistance_impl this = do
        let velocityInterfaceCompositeInterface = (javaCast (jio (BasicAI.getOwnerLayerInterface this)) :: VelocityInterfaceCompositeInterface.VelocityInterfaceCompositeInterface)
        velocityProperties <- (VelocityInterfaceCompositeInterface.getVelocityProperties velocityInterfaceCompositeInterface)
        jset (this).xTotalDistance (((jget (this).xTotalDistance) + (BasicDecimal.getScaled ((jio (BasicVelocityProperties.getVelocityXBasicDecimalP velocityProperties))))))
        pure ()


changeDirectionIfReachedPacingAreaMax :: (JavaObjectClass this_) => this_ -> IO (())
changeDirectionIfReachedPacingAreaMax object_ = jmethod object_ "changeDirectionIfReachedPacingAreaMax" (\() -> (changeDirectionIfReachedPacingAreaMax_impl (javaCast object_ :: BasePatrolAI))) ()

changeDirectionIfReachedPacingAreaMax_super :: (JavaObjectClass this_) => this_ -> IO (())
changeDirectionIfReachedPacingAreaMax_super object_ = (changeDirectionIfReachedPacingAreaMax_impl (javaCast object_ :: BasePatrolAI))

changeDirectionIfReachedPacingAreaMax_impl :: BasePatrolAI -> IO (())
changeDirectionIfReachedPacingAreaMax_impl this = do
        mathUtil <- (MathUtil.getInstance)
        totalDistance <- (MathUtil.abs mathUtil (jget (this).xTotalDistance))
        when (totalDistance > (jget (this).currentDistance)) $ do
            Control.Monad.void (BasePatrolAI.nextDirection this)
        pure ()


nextDirection :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection object_ = jmethod object_ "nextDirection" (\() -> (nextDirection_impl (javaCast object_ :: BasePatrolAI))) ()

nextDirection_super :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection_super object_ = (nextDirection_impl (javaCast object_ :: BasePatrolAI))

nextDirection_impl :: BasePatrolAI -> IO (())
nextDirection_impl this = do
        if ((jget (this).lastKeyDirection) == Canvas.lEFT) then do
            jset (this).keyDirection (Canvas.rIGHT)
            jset (this).lastKeyDirection ((jget (this).keyDirection))
            jset (this).xTotalDistance (0)
        else when ((jget (this).lastKeyDirection) == Canvas.rIGHT) $ do
            jset (this).keyDirection (Canvas.lEFT)
            jset (this).lastKeyDirection ((jget (this).keyDirection))
            jset (this).xTotalDistance (0)
        pure ()


disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: BasePatrolAI))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: BasePatrolAI))

disable_impl :: BasePatrolAI -> IO (())
disable_impl this = do
        pure ()


