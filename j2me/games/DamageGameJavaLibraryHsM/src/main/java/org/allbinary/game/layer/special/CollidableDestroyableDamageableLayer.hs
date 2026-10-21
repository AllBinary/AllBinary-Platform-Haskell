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
-- package org.allbinary.game.layer.special
module CollidableDestroyableDamageableLayer (module CollidableDestroyableDamageableLayer, module CollidableCompositeLayer) where

import CollidableCompositeLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullInstance, getNullInstance_super, getNullInstance_impl, initPosition, initPosition_super, initPosition_impl, initPositionXYZ, initPositionXYZ_super, initPositionXYZ_impl, paint, paint_super, paint_impl, damage, damage_super, damage_impl, getDamage, getDamage_super, getDamage_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, getGroupInterface, getGroupInterface_super, getGroupInterface_impl, setGroupInterface, setGroupInterface_super, setGroupInterface_impl, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, isReadyForExplosion, isReadyForExplosion_super, isReadyForExplosion_impl, setReadyForExplosion, setReadyForExplosion_super, setReadyForExplosion_impl, getInitWidth, getInitWidth_super, getInitWidth_impl, getInitHeight, getInitHeight_super, getInitHeight_impl, getInitX, getInitX_super, getInitX_impl, getInitY, getInitY_super, getInitY_impl, up, up_super, up_impl, down, down_super, down_impl, right, right_super, right_impl, left, left_super, left_impl, strafeLeft, strafeLeft_super, strafeLeft_impl, strafeRight, strafeRight_super, strafeRight_impl, fire, fire_super, fire_impl, special1, special1_super, special1_impl, special2, special2_super, special2_impl, special3, special3_super, special3_impl, special4, special4_super, special4_impl, special5, special5_super, special5_impl, upAnalog, upAnalog_super, upAnalog_impl, downAnalog, downAnalog_super, downAnalog_impl, rightAnalog, rightAnalog_super, rightAnalog_impl, leftAnalog, leftAnalog_super, leftAnalog_impl, rightTrigger, rightTrigger_super, rightTrigger_impl, leftTrigger, leftTrigger_super, leftTrigger_impl, onDestroyed, onDestroyed_super, onDestroyed_impl, getPickupBehavior, getPickupBehavior_super, getPickupBehavior_impl, setPickupBehavior, setPickupBehavior_super, setPickupBehavior_impl, addPart, addPart_super, addPart_impl, setPartInterfaceArray, setPartInterfaceArray_super, setPartInterfaceArray_impl, getPartInterfaceArray, getPartInterfaceArray_super, getPartInterfaceArray_impl, toStringAppend, toStringAppend_super, toStringAppend_impl, toString, toString_super, toString_impl, nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, groupInterface, readyForExplosion, initWidth, initHeight, initX, initY, initZ, partInterfaceArrayP, pickupBehavior, allBinaryGameLayerManagerP, isDraggable, isDragged, isDropped, rEADYFOREXPLOSION)
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
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified CollidableNeverCollideBehaviorFactory -- org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
import qualified DamageableInterface -- org.allbinary.game.combat.damage.DamageableInterface
import qualified DestroyableInterface -- org.allbinary.game.combat.destroy.DestroyableInterface
import qualified DestroyedEvent -- org.allbinary.game.combat.destroy.event.DestroyedEvent
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified PickupBehavior -- org.allbinary.game.layer.pickup.PickupBehavior
import qualified PickupCompositeInterface -- org.allbinary.game.layer.pickup.PickupCompositeInterface
import qualified PartInterface -- org.allbinary.game.part.PartInterface
import qualified PartInterfaceUtil -- org.allbinary.game.part.PartInterfaceUtil
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PositionStrings -- org.allbinary.math.PositionStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified SpecialGameInputInterface

-- implements DestroyableInterface
-- implements DamageableInterface
-- implements PickupCompositeInterface
-- implements SpecialGameInputInterface
data CollidableDestroyableDamageableLayer = CollidableDestroyableDamageableLayer
    { header_ :: JavaHeader
    , base :: CollidableCompositeLayer.CollidableCompositeLayer
    , groupInterface :: IORef (JavaArray (Group.Group))
    , readyForExplosion :: IORef (Bool)
    , initWidth :: IORef (Int)
    , initHeight :: IORef (Int)
    , initX :: IORef (Int)
    , initY :: IORef (Int)
    , initZ :: IORef (Int)
    , partInterfaceArrayP :: IORef (JavaArray (PartInterface.PartInterface))
    , pickupBehavior :: IORef (PickupBehavior.PickupBehavior)
    , allBinaryGameLayerManagerP :: IORef (AllBinaryGameLayerManager.AllBinaryGameLayerManager)
    , isDraggable :: IORef (Bool)
    , isDragged :: IORef (Bool)
    , isDropped :: IORef (Bool)
    }

instance JavaNull CollidableDestroyableDamageableLayer where
    javaNull = javaNullRecord "CollidableDestroyableDamageableLayer"

instance JavaEquals CollidableDestroyableDamageableLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CollidableDestroyableDamageableLayer where
    (==) = jrecordEquals

instance JavaObjectClass CollidableDestroyableDamageableLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER #-}
nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

rEADYFOREXPLOSION = "ReadyForExplosion: "

newRecord_ :: IO CollidableDestroyableDamageableLayer
newRecord_ = do
    base <- CollidableCompositeLayer.newRecord_
    let header_ = base.header_
    groupInterface <- newIORef javaNull
    readyForExplosion <- newIORef False
    initWidth <- newIORef 0
    initHeight <- newIORef 0
    initX <- newIORef 0
    initY <- newIORef 0
    initZ <- newIORef 0
    partInterfaceArrayP <- newIORef javaNull
    pickupBehavior <- newIORef javaNull
    allBinaryGameLayerManagerP <- newIORef javaNull
    isDraggable <- newIORef False
    isDragged <- newIORef False
    isDropped <- newIORef False
    let this = CollidableDestroyableDamageableLayer header_ base groupInterface readyForExplosion initWidth initHeight initX initY initZ partInterfaceArrayP pickupBehavior allBinaryGameLayerManagerP isDraggable isDragged isDropped
    jregisterLevel header_ this
    DestroyableInterface.registerInterface_ header_
    DamageableInterface.registerInterface_ header_
    PickupCompositeInterface.registerInterface_ header_
    SpecialGameInputInterface.registerInterface_ header_
    jregisterMethod header_ "initPosition" (\() -> initPosition_impl this)
    jregisterMethod header_ "initPositionXYZ" (\() -> initPositionXYZ_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "getGroupInterface" (\() -> getGroupInterface_impl this)
    jregisterMethod header_ "setGroupInterface" (\() -> setGroupInterface_impl this)
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "isReadyForExplosion" (\() -> isReadyForExplosion_impl this)
    jregisterMethod header_ "setReadyForExplosion" (\() -> setReadyForExplosion_impl this)
    jregisterMethod header_ "getInitWidth" (\() -> getInitWidth_impl this)
    jregisterMethod header_ "getInitHeight" (\() -> getInitHeight_impl this)
    jregisterMethod header_ "getInitX" (\() -> getInitX_impl this)
    jregisterMethod header_ "getInitY" (\() -> getInitY_impl this)
    jregisterMethod header_ "up" (\() -> up_impl this)
    jregisterMethod header_ "down" (\() -> down_impl this)
    jregisterMethod header_ "right" (\() -> right_impl this)
    jregisterMethod header_ "left" (\() -> left_impl this)
    jregisterMethod header_ "strafeLeft" (\() -> strafeLeft_impl this)
    jregisterMethod header_ "strafeRight" (\() -> strafeRight_impl this)
    jregisterMethod header_ "fire" (\() -> fire_impl this)
    jregisterMethod header_ "special1" (\() -> special1_impl this)
    jregisterMethod header_ "special2" (\() -> special2_impl this)
    jregisterMethod header_ "special3" (\() -> special3_impl this)
    jregisterMethod header_ "special4" (\() -> special4_impl this)
    jregisterMethod header_ "special5" (\() -> special5_impl this)
    jregisterMethod header_ "upAnalog" (\() -> upAnalog_impl this)
    jregisterMethod header_ "downAnalog" (\() -> downAnalog_impl this)
    jregisterMethod header_ "rightAnalog" (\() -> rightAnalog_impl this)
    jregisterMethod header_ "leftAnalog" (\() -> leftAnalog_impl this)
    jregisterMethod header_ "rightTrigger" (\() -> rightTrigger_impl this)
    jregisterMethod header_ "leftTrigger" (\() -> leftTrigger_impl this)
    jregisterMethod header_ "onDestroyed" (\() -> onDestroyed_impl this)
    jregisterMethod header_ "getPickupBehavior" (\() -> getPickupBehavior_impl this)
    jregisterMethod header_ "setPickupBehavior" (\() -> setPickupBehavior_impl this)
    jregisterMethod header_ "addPart" (\() -> addPart_impl this)
    jregisterMethod header_ "setPartInterfaceArray" (\() -> setPartInterfaceArray_impl this)
    jregisterMethod header_ "getPartInterfaceArray" (\() -> getPartInterfaceArray_impl this)
    jregisterMethod header_ "toStringAppend" (\() -> toStringAppend_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: CollidableDestroyableDamageableLayer -> IO ()
initFields_ this = do
    jset this.groupInterface (javaNull)
    jset this.readyForExplosion (False)
    jset this.initWidth (0)
    jset this.initHeight (0)
    jset this.initX (0)
    jset this.initY (0)
    jset this.initZ (0)
    jset this.partInterfaceArrayP =<< (PartInterfaceUtil.getZeroArray)
    jset this.pickupBehavior (javaNull)
    jset this.allBinaryGameLayerManagerP =<< (AllBinaryGameLayerManager.getNullInstance)
    jset this.isDraggable (False)
    jset this.isDragged (False)
    jset this.isDropped (False)
    pure ()


getNullInstance :: IO (CollidableDestroyableDamageableLayer)
getNullInstance = do
        when ((jget CollidableDestroyableDamageableLayer.nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_4 (jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (RectangleFactory.sINGLETON) (ViewPositionBase.nULL_VIEW_POSITION))
            jset CollidableDestroyableDamageableLayer.nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (assignedValue)
        pure ((javaCast (jget CollidableDestroyableDamageableLayer.nULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) :: CollidableDestroyableDamageableLayer))

new_4 :: JavaArray (Group.Group) -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO CollidableDestroyableDamageableLayer
new_4 groupInterface name layerInfo viewPosition = do
    this <- newRecord_
    init_4 this groupInterface name layerInfo viewPosition
    pure this

init_4 :: CollidableDestroyableDamageableLayer -> JavaArray (Group.Group) -> String -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_4 this groupInterface name layerInfo viewPosition = do
        CollidableCompositeLayer.init_4 this.base (name) (layerInfo) (viewPosition) (jio (CollidableNeverCollideBehaviorFactory.getInstance))
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (Rectangle.getWidth layerInfo)
        jset (this).initWidth (assignedValue)
        assignedValue <- (Rectangle.getHeight layerInfo)
        jset (this).initHeight (assignedValue)
        jset (this).groupInterface (groupInterface)
        assignedValue <- (PickupBehavior.getNullInstance)
        jset (this).pickupBehavior (assignedValue)
        pure ()


-- throws Exception
initPosition :: (JavaObjectClass this_) => this_ -> IO (())
initPosition object_ = jmethod object_ "initPosition" (\() -> (initPosition_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

initPosition_super :: (JavaObjectClass this_) => this_ -> IO (())
initPosition_super object_ = (initPosition_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

initPosition_impl :: CollidableDestroyableDamageableLayer -> IO (())
initPosition_impl this = do
        Control.Monad.void (CollidableCompositeLayer.setPosition this (jget (this).initX) (jget (this).initY) (jget (this).initZ))
        pure ()


-- throws Exception
initPositionXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initPositionXYZ object_ a1 a2 a3 = jmethod object_ "initPositionXYZ" (\() -> (initPositionXYZ_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2 a3

initPositionXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initPositionXYZ_super object_ a1 a2 a3 = (initPositionXYZ_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2 a3

initPositionXYZ_impl :: CollidableDestroyableDamageableLayer -> Int -> Int -> Int -> IO (())
initPositionXYZ_impl this x y z = do
        jset (this).initX (x)
        jset (this).initY (y)
        jset (this).initZ (z)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

paint_impl :: CollidableDestroyableDamageableLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (CollidableCompositeLayer.paint_super this.base graphics)
        pure ()


-- throws Exception
damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

damage_impl :: CollidableDestroyableDamageableLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))
        pure ()


-- throws Exception
getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

getDamage_impl :: CollidableDestroyableDamageableLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


-- throws Exception
isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

isDestroyed_impl :: CollidableDestroyableDamageableLayer -> IO (Bool)
isDestroyed_impl this = do
        javaThrow ((JavaException "Exception" (jget ((jget (this).base.base.commonStrings)).nOT_IMPLEMENTED)))


getGroupInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface object_ = jmethod object_ "getGroupInterface" (\() -> (getGroupInterface_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getGroupInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Group.Group))
getGroupInterface_super object_ = (getGroupInterface_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getGroupInterface_impl :: CollidableDestroyableDamageableLayer -> IO (JavaArray (Group.Group))
getGroupInterface_impl this = do
        pure ((jget (this).groupInterface))


setGroupInterface :: (JavaObjectClass this_) => this_ -> JavaArray (Group.Group) -> IO (())
setGroupInterface object_ a1 = jmethod object_ "setGroupInterface" (\() -> (setGroupInterface_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

setGroupInterface_super :: (JavaObjectClass this_) => this_ -> JavaArray (Group.Group) -> IO (())
setGroupInterface_super object_ a1 = (setGroupInterface_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

setGroupInterface_impl :: CollidableDestroyableDamageableLayer -> JavaArray (Group.Group) -> IO (())
setGroupInterface_impl this teamInterface = do
        jset (this).groupInterface (teamInterface)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

setAllBinaryGameLayerManager_impl :: CollidableDestroyableDamageableLayer -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        jset (this).allBinaryGameLayerManagerP (allBinaryGameLayerManager)
        when ((jget (this).allBinaryGameLayerManagerP) == javaNull) $ do
            javaThrow ((JavaException "RuntimeException" ""))
        pure ()


isReadyForExplosion :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion object_ = jmethod object_ "isReadyForExplosion" (\() -> (isReadyForExplosion_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

isReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isReadyForExplosion_super object_ = (isReadyForExplosion_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

isReadyForExplosion_impl :: CollidableDestroyableDamageableLayer -> IO (Bool)
isReadyForExplosion_impl this = do
        pure ((jget (this).readyForExplosion))


setReadyForExplosion :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setReadyForExplosion object_ a1 = jmethod object_ "setReadyForExplosion" (\() -> (setReadyForExplosion_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

setReadyForExplosion_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setReadyForExplosion_super object_ a1 = (setReadyForExplosion_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

setReadyForExplosion_impl :: CollidableDestroyableDamageableLayer -> Bool -> IO (())
setReadyForExplosion_impl this isReadyForExplosion = do
        jset (this).readyForExplosion (isReadyForExplosion)
        pure ()


getInitWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitWidth object_ = jmethod object_ "getInitWidth" (\() -> (getInitWidth_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getInitWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitWidth_super object_ = (getInitWidth_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getInitWidth_impl :: CollidableDestroyableDamageableLayer -> IO (Int)
getInitWidth_impl this = do
        pure ((jget (this).initWidth))


getInitHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitHeight object_ = jmethod object_ "getInitHeight" (\() -> (getInitHeight_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getInitHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitHeight_super object_ = (getInitHeight_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getInitHeight_impl :: CollidableDestroyableDamageableLayer -> IO (Int)
getInitHeight_impl this = do
        pure ((jget (this).initHeight))


getInitX :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitX object_ = jmethod object_ "getInitX" (\() -> (getInitX_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getInitX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitX_super object_ = (getInitX_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getInitX_impl :: CollidableDestroyableDamageableLayer -> IO (Int)
getInitX_impl this = do
        pure ((jget (this).initX))


getInitY :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitY object_ = jmethod object_ "getInitY" (\() -> (getInitY_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getInitY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitY_super object_ = (getInitY_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getInitY_impl :: CollidableDestroyableDamageableLayer -> IO (Int)
getInitY_impl this = do
        pure ((jget (this).initY))


-- throws Exception
up :: (JavaObjectClass this_) => this_ -> IO (())
up object_ = jmethod object_ "up" (\() -> (up_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

up_super :: (JavaObjectClass this_) => this_ -> IO (())
up_super object_ = (up_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

up_impl :: CollidableDestroyableDamageableLayer -> IO (())
up_impl this = do
        pure ()


-- throws Exception
down :: (JavaObjectClass this_) => this_ -> IO (())
down object_ = jmethod object_ "down" (\() -> (down_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

down_super :: (JavaObjectClass this_) => this_ -> IO (())
down_super object_ = (down_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

down_impl :: CollidableDestroyableDamageableLayer -> IO (())
down_impl this = do
        pure ()


-- throws Exception
right :: (JavaObjectClass this_) => this_ -> IO (())
right object_ = jmethod object_ "right" (\() -> (right_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

right_super :: (JavaObjectClass this_) => this_ -> IO (())
right_super object_ = (right_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

right_impl :: CollidableDestroyableDamageableLayer -> IO (())
right_impl this = do
        pure ()


-- throws Exception
left :: (JavaObjectClass this_) => this_ -> IO (())
left object_ = jmethod object_ "left" (\() -> (left_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

left_super :: (JavaObjectClass this_) => this_ -> IO (())
left_super object_ = (left_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

left_impl :: CollidableDestroyableDamageableLayer -> IO (())
left_impl this = do
        pure ()


-- throws Exception
strafeLeft :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft object_ = jmethod object_ "strafeLeft" (\() -> (strafeLeft_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

strafeLeft_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeLeft_super object_ = (strafeLeft_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

strafeLeft_impl :: CollidableDestroyableDamageableLayer -> IO (())
strafeLeft_impl this = do
        pure ()


-- throws Exception
strafeRight :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight object_ = jmethod object_ "strafeRight" (\() -> (strafeRight_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

strafeRight_super :: (JavaObjectClass this_) => this_ -> IO (())
strafeRight_super object_ = (strafeRight_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

strafeRight_impl :: CollidableDestroyableDamageableLayer -> IO (())
strafeRight_impl this = do
        pure ()


-- throws Exception
fire :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire object_ a1 a2 = jmethod object_ "fire" (\() -> (fire_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

fire_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_super object_ a1 a2 = (fire_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

fire_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
fire_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special1 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1 object_ a1 a2 = jmethod object_ "special1" (\() -> (special1_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

special1_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_super object_ a1 a2 = (special1_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

special1_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special1_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special2 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2 object_ a1 a2 = jmethod object_ "special2" (\() -> (special2_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

special2_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_super object_ a1 a2 = (special2_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

special2_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special2_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special3 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3 object_ a1 a2 = jmethod object_ "special3" (\() -> (special3_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

special3_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_super object_ a1 a2 = (special3_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

special3_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special3_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special4 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4 object_ a1 a2 = jmethod object_ "special4" (\() -> (special4_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

special4_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_super object_ a1 a2 = (special4_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

special4_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special4_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
special5 :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5 object_ a1 a2 = jmethod object_ "special5" (\() -> (special5_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2

special5_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_super object_ a1 a2 = (special5_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2

special5_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> IO (())
special5_impl this layerManager gameKeyEvent = do
        pure ()


-- throws Exception
upAnalog :: (JavaObjectClass this_) => this_ -> Int -> IO (())
upAnalog object_ a1 = jmethod object_ "upAnalog" (\() -> (upAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

upAnalog_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
upAnalog_super object_ a1 = (upAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

upAnalog_impl :: CollidableDestroyableDamageableLayer -> Int -> IO (())
upAnalog_impl this yAnalogValue = do
        pure ()


-- throws Exception
downAnalog :: (JavaObjectClass this_) => this_ -> Int -> IO (())
downAnalog object_ a1 = jmethod object_ "downAnalog" (\() -> (downAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

downAnalog_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
downAnalog_super object_ a1 = (downAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

downAnalog_impl :: CollidableDestroyableDamageableLayer -> Int -> IO (())
downAnalog_impl this yAnalogValue = do
        pure ()


-- throws Exception
rightAnalog :: (JavaObjectClass this_) => this_ -> Int -> IO (())
rightAnalog object_ a1 = jmethod object_ "rightAnalog" (\() -> (rightAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

rightAnalog_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
rightAnalog_super object_ a1 = (rightAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

rightAnalog_impl :: CollidableDestroyableDamageableLayer -> Int -> IO (())
rightAnalog_impl this xAnalogValue = do
        pure ()


-- throws Exception
leftAnalog :: (JavaObjectClass this_) => this_ -> Int -> IO (())
leftAnalog object_ a1 = jmethod object_ "leftAnalog" (\() -> (leftAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

leftAnalog_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
leftAnalog_super object_ a1 = (leftAnalog_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

leftAnalog_impl :: CollidableDestroyableDamageableLayer -> Int -> IO (())
leftAnalog_impl this xAnalogValue = do
        pure ()


-- throws Exception
rightTrigger :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
rightTrigger object_ a1 a2 a3 = jmethod object_ "rightTrigger" (\() -> (rightTrigger_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2 a3

rightTrigger_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
rightTrigger_super object_ a1 a2 a3 = (rightTrigger_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2 a3

rightTrigger_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
rightTrigger_impl this layerManager gameKeyEvent xAnalogValue = do
        pure ()


-- throws Exception
leftTrigger :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
leftTrigger object_ a1 a2 a3 = jmethod object_ "leftTrigger" (\() -> (leftTrigger_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1 a2 a3

leftTrigger_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
leftTrigger_super object_ a1 a2 a3 = (leftTrigger_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1 a2 a3

leftTrigger_impl :: CollidableDestroyableDamageableLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> GameKeyEvent.GameKeyEvent -> Int -> IO (())
leftTrigger_impl this layerManager gameKeyEvent xAnalogValue = do
        pure ()


onDestroyed :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed object_ a1 = jmethod object_ "onDestroyed" (\() -> (onDestroyed_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

onDestroyed_super :: (JavaObjectClass this_) => this_ -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_super object_ a1 = (onDestroyed_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

onDestroyed_impl :: CollidableDestroyableDamageableLayer -> DestroyedEvent.DestroyedEvent -> IO (())
onDestroyed_impl this destroyedEvent = do
        pure ()


getPickupBehavior :: (JavaObjectClass this_) => this_ -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior object_ = jmethod object_ "getPickupBehavior" (\() -> (getPickupBehavior_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getPickupBehavior_super :: (JavaObjectClass this_) => this_ -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior_super object_ = (getPickupBehavior_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getPickupBehavior_impl :: CollidableDestroyableDamageableLayer -> IO (PickupBehavior.PickupBehavior)
getPickupBehavior_impl this = do
        pure ((jget (this).pickupBehavior))


setPickupBehavior :: (JavaObjectClass this_) => this_ -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior object_ a1 = jmethod object_ "setPickupBehavior" (\() -> (setPickupBehavior_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

setPickupBehavior_super :: (JavaObjectClass this_) => this_ -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior_super object_ a1 = (setPickupBehavior_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

setPickupBehavior_impl :: CollidableDestroyableDamageableLayer -> PickupBehavior.PickupBehavior -> IO (())
setPickupBehavior_impl this pickupBehavior = do
        jset (this).pickupBehavior (pickupBehavior)
        pure ()


-- throws Exception
addPart :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
addPart object_ a1 = jmethod object_ "addPart" (\() -> (addPart_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

addPart_super :: (JavaObjectClass this_) => this_ -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
addPart_super object_ a1 = (addPart_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

addPart_impl :: CollidableDestroyableDamageableLayer -> PickedUpLayerInterfaceFactoryInterface.PickedUpLayerInterfaceFactoryInterface -> IO (())
addPart_impl this pickedUpLayerInterfaceFactoryInterface = do
        pure ()


setPartInterfaceArray :: (JavaObjectClass this_) => this_ -> JavaArray (PartInterface.PartInterface) -> IO (())
setPartInterfaceArray object_ a1 = jmethod object_ "setPartInterfaceArray" (\() -> (setPartInterfaceArray_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

setPartInterfaceArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (PartInterface.PartInterface) -> IO (())
setPartInterfaceArray_super object_ a1 = (setPartInterfaceArray_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

setPartInterfaceArray_impl :: CollidableDestroyableDamageableLayer -> JavaArray (PartInterface.PartInterface) -> IO (())
setPartInterfaceArray_impl this partInterfaceArray = do
        jset (this).partInterfaceArrayP (partInterfaceArray)
        pure ()


getPartInterfaceArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (PartInterface.PartInterface))
getPartInterfaceArray object_ = jmethod object_ "getPartInterfaceArray" (\() -> (getPartInterfaceArray_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

getPartInterfaceArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (PartInterface.PartInterface))
getPartInterfaceArray_super object_ = (getPartInterfaceArray_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

getPartInterfaceArray_impl :: CollidableDestroyableDamageableLayer -> IO (JavaArray (PartInterface.PartInterface))
getPartInterfaceArray_impl this = do
        pure ((jget (this).partInterfaceArrayP))


toStringAppend :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend object_ a1 = jmethod object_ "toStringAppend" (\() -> (toStringAppend_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) () a1

toStringAppend_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (())
toStringAppend_super object_ a1 = (toStringAppend_impl (javaCast object_ :: CollidableDestroyableDamageableLayer)) a1

toStringAppend_impl :: CollidableDestroyableDamageableLayer -> StringMaker.StringMaker -> IO (())
toStringAppend_impl this stringBuffer = do
        commonSeps <- (CommonSeps.getInstance)
        positionStrings <- (PositionStrings.getInstance)
        Control.Monad.void (CollidableCompositeLayer.toStringAppend_super this.base stringBuffer)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        groupInterfaceArray <- (CollidableDestroyableDamageableLayer.getGroupInterface this)
        let size = (jlength groupInterfaceArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (toString ((jindex groupInterfaceArray (index))))))
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).cOMMA))
        pickupBehavior <- (CollidableDestroyableDamageableLayer.getPickupBehavior this)
        when (pickupBehavior /= javaNull) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (PickupBehavior.toString pickupBehavior)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (CollidableDestroyableDamageableLayer.rEADYFOREXPLOSION))
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jget (this).readyForExplosion))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).nEW_LINE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.commonStrings)).iNIT))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonSeps).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).x_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).initX))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).y_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).initX))
        Control.Monad.void (StringMaker.append stringBuffer (jget (positionStrings).z_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).initZ))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CollidableDestroyableDamageableLayer))

toString_impl :: CollidableDestroyableDamageableLayer -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (CollidableDestroyableDamageableLayer.toStringAppend this stringBuffer)
        (StringMaker.toString stringBuffer)


