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
-- package org.allbinary.game.layer.weapon
module WeaponLayer (module WeaponLayer, module MultiPlayerGameLayer) where

import MultiPlayerGameLayer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCollidableInferface, setCollidableInferface_super, setCollidableInferface_impl, initXYZ, initXYZ_super, initXYZ_impl, init, init_super, init_impl, setGroupInterfaces, setGroupInterfaces_super, setGroupInterfaces_impl, processTick, processTick_super, processTick_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, damage, damage_super, damage_impl, givePoints, givePoints_super, givePoints_impl, isExhausted, isExhausted_super, isExhausted_impl, getDamage, getDamage_super, getDamage_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, getInitDamage, getInitDamage_super, getInitDamage_impl, setAnimationInterface, setAnimationInterface_super, setAnimationInterface_impl, getAnimationInterface, getAnimationInterface_super, getAnimationInterface_impl, getInitAnimationInterfaceP, getInitAnimationInterfaceP_super, getInitAnimationInterfaceP_impl, setInitAnimationInterfaceP, setInitAnimationInterfaceP_super, setInitAnimationInterfaceP_impl, getDestroyedAnimationInterface, getDestroyedAnimationInterface_super, getDestroyedAnimationInterface_impl, getOwnerLayerInterface, getOwnerLayerInterface_super, getOwnerLayerInterface_impl, setOwnerLayerInterface, setOwnerLayerInterface_super, setOwnerLayerInterface_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, getMovement, getMovement_super, getMovement_impl, setMovement, setMovement_super, setMovement_impl, getType, getType_super, getType_impl, getStaticType, getStaticType_super, getStaticType_impl, getMultiPlayerType, getMultiPlayerType_super, getMultiPlayerType_impl, setWeaponPropertiesP, setWeaponPropertiesP_super, setWeaponPropertiesP_impl, getWeaponPropertiesP, getWeaponPropertiesP_super, getWeaponPropertiesP_impl, implmentsTickableInterface, implmentsTickableInterface_super, implmentsTickableInterface_impl, set, set_super, set_impl, animationInterface, initAnimationInterface, destroyedAnimationInterface, sourceLayerInterface, totalDamage, initDamage, destroyed, scoreableInterface, movement, weaponProperties, multiPlayerType, collidableWeaponBehavior)
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
import qualified CollidableWeaponBehavior -- same package or java.lang
import qualified GL -- javax.microedition.khronos.opengles.GL
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified IndexedAnimation -- org.allbinary.animation.IndexedAnimation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified CollidableBaseBehavior -- org.allbinary.game.collision.CollidableBaseBehavior
import qualified DestroyedLayerProcessor -- org.allbinary.game.combat.destroy.DestroyedLayerProcessor
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified GameConfigurationUtil -- org.allbinary.game.configuration.GameConfigurationUtil
import qualified BasicGroupFactory -- org.allbinary.game.identification.BasicGroupFactory
import qualified MultiPlayerGameLayer -- org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
import qualified RemoteInfo -- org.allbinary.game.multiplayer.layer.RemoteInfo
import qualified NoScoreable -- org.allbinary.game.score.NoScoreable
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified TickableInterface -- org.allbinary.game.tick.TickableInterface
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified Movement -- org.allbinary.physics.movement.Movement
import qualified ViewPosition -- org.allbinary.view.ViewPosition
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase

-- implements TickableInterface
data WeaponLayer = WeaponLayer
    { header_ :: JavaHeader
    , base :: MultiPlayerGameLayer.MultiPlayerGameLayer
    , animationInterface :: IORef (Animation.Animation)
    , initAnimationInterface :: IORef (Animation.Animation)
    , destroyedAnimationInterface :: IORef (Animation.Animation)
    , sourceLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , totalDamage :: IORef (Int)
    , initDamage :: IORef (Int)
    , destroyed :: IORef (Bool)
    , scoreableInterface :: IORef (ScoreableInterface.ScoreableInterface)
    , movement :: IORef (Movement.Movement)
    , weaponProperties :: IORef (WeaponProperties.WeaponProperties)
    , multiPlayerType :: IORef (Int)
    , collidableWeaponBehavior :: IORef (CollidableWeaponBehavior.CollidableWeaponBehavior)
    }

instance JavaNull WeaponLayer where
    javaNull = javaNullRecord "WeaponLayer"

instance JavaEquals WeaponLayer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeaponLayer where
    (==) = jrecordEquals

instance JavaObjectClass WeaponLayer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WeaponLayer
newRecord_ = do
    base <- MultiPlayerGameLayer.newRecord_
    let header_ = base.header_
    animationInterface <- newIORef javaNull
    initAnimationInterface <- newIORef javaNull
    destroyedAnimationInterface <- newIORef javaNull
    sourceLayerInterface <- newIORef javaNull
    totalDamage <- newIORef 0
    initDamage <- newIORef 0
    destroyed <- newIORef False
    scoreableInterface <- newIORef javaNull
    movement <- newIORef javaNull
    weaponProperties <- newIORef javaNull
    multiPlayerType <- newIORef 0
    collidableWeaponBehavior <- newIORef javaNull
    let this = WeaponLayer header_ base animationInterface initAnimationInterface destroyedAnimationInterface sourceLayerInterface totalDamage initDamage destroyed scoreableInterface movement weaponProperties multiPlayerType collidableWeaponBehavior
    jregisterLevel header_ this
    TickableInterface.registerInterface_ header_
    jregisterMethod header_ "setCollidableInferface" (\() -> setCollidableInferface_impl this)
    jregisterMethod header_ "initXYZ" (\() -> initXYZ_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setGroupInterfaces" (\() -> setGroupInterfaces_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "givePoints" (\() -> givePoints_impl this)
    jregisterMethod header_ "isExhausted" (\() -> isExhausted_impl this)
    jregisterMethod header_ "getDamage" (\() -> getDamage_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "getInitDamage" (\() -> getInitDamage_impl this)
    jregisterMethod header_ "setAnimationInterface" (\() -> setAnimationInterface_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "getInitAnimationInterfaceP" (\() -> getInitAnimationInterfaceP_impl this)
    jregisterMethod header_ "setInitAnimationInterfaceP" (\() -> setInitAnimationInterfaceP_impl this)
    jregisterMethod header_ "getDestroyedAnimationInterface" (\() -> getDestroyedAnimationInterface_impl this)
    jregisterMethod header_ "getOwnerLayerInterface" (\() -> getOwnerLayerInterface_impl this)
    jregisterMethod header_ "setOwnerLayerInterface" (\() -> setOwnerLayerInterface_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getMovement" (\() -> getMovement_impl this)
    jregisterMethod header_ "setMovement" (\() -> setMovement_impl this)
    jregisterMethod header_ "getType" (\() -> getType_impl this)
    jregisterMethod header_ "getMultiPlayerType" (\() -> getMultiPlayerType_impl this)
    jregisterMethod header_ "setWeaponPropertiesP" (\() -> setWeaponPropertiesP_impl this)
    jregisterMethod header_ "getWeaponPropertiesP" (\() -> getWeaponPropertiesP_impl this)
    jregisterMethod header_ "implmentsTickableInterface" (\() -> implmentsTickableInterface_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: WeaponLayer -> IO ()
initFields_ this = do
    jset this.animationInterface =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    jset this.initAnimationInterface (javaNull)
    jset this.destroyedAnimationInterface (javaNull)
    jset this.sourceLayerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    jset this.totalDamage (0)
    jset this.initDamage (0)
    jset this.destroyed (True)
    jset this.scoreableInterface =<< (fmap (\value_ -> javaCast value_ :: ScoreableInterface.ScoreableInterface) (NoScoreable.getInstance))
    jset this.movement (javaNull)
    jset this.weaponProperties (WeaponProperties.nULL_WEAPON_PROPERTIES)
    jset this.multiPlayerType (0)
    jset this.collidableWeaponBehavior =<< (CollidableWeaponBehavior.getNullInstance)
    pure ()

new_8 :: String -> RemoteInfo.RemoteInfo -> Int -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO WeaponLayer
new_8 name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition = do
    this <- newRecord_
    init_8 this name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition
    pure this

init_8 :: WeaponLayer -> String -> RemoteInfo.RemoteInfo -> Int -> Movement.Movement -> Animation.Animation -> Animation.Animation -> Rectangle.Rectangle -> ViewPositionBase.ViewPositionBase -> IO ()
init_8 this name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition = do
        MultiPlayerGameLayer.init_5 this.base (remoteInfo) (jget ((jio (BasicGroupFactory.getInstance))).nONE_ARRAY) (name) (rectangle) (viewPosition)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).initAnimationInterface (animationInterface)
        Control.Monad.void (WeaponLayer.setAnimationInterface this animationInterface)
        jset (this).destroyedAnimationInterface (destroyedAnimationInterface)
        jset (this).movement (movement)
        jset (this).multiPlayerType (multiPlayerType)
        pure ()


setCollidableInferface :: (JavaObjectClass this_) => this_ -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface object_ a1 = jmethod object_ "setCollidableInferface" (\() -> (setCollidableInferface_impl (javaCast object_ :: WeaponLayer))) () a1

setCollidableInferface_super :: (JavaObjectClass this_) => this_ -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface_super object_ a1 = (setCollidableInferface_impl (javaCast object_ :: WeaponLayer)) a1

setCollidableInferface_impl :: WeaponLayer -> CollidableBaseBehavior.CollidableBaseBehavior -> IO (())
setCollidableInferface_impl this collidableInferface = do
        Control.Monad.void (MultiPlayerGameLayer.setCollidableInferface_super this.base collidableInferface)
        jset (this).collidableWeaponBehavior ((javaCast (jio (MultiPlayerGameLayer.getCollidableInferface this)) :: CollidableWeaponBehavior.CollidableWeaponBehavior))
        pure ()


-- throws Exception
initXYZ :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ object_ a1 a2 a3 = jmethod object_ "initXYZ" (\() -> (initXYZ_impl (javaCast object_ :: WeaponLayer))) () a1 a2 a3

initXYZ_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> IO (())
initXYZ_super object_ a1 a2 a3 = (initXYZ_impl (javaCast object_ :: WeaponLayer)) a1 a2 a3

initXYZ_impl :: WeaponLayer -> Int -> Int -> Int -> IO (())
initXYZ_impl this x y z = do
        jset (this).base.base.base.base.base.base.x (x)
        jset (this).base.base.base.base.base.base.y (y)
        jset (this).base.base.base.base.base.base.z (z)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
init object_ a1 a2 a3 a4 a5 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: WeaponLayer))) () a1 a2 a3 a4 a5

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
init_super object_ a1 a2 a3 a4 a5 = (init_impl (javaCast object_ :: WeaponLayer)) a1 a2 a3 a4 a5

init_impl :: WeaponLayer -> AllBinaryLayer.AllBinaryLayer -> Int -> Int -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
init_impl this sourceLayerInterface angle otherAngle weaponProperties scoreable = do
        Control.Monad.void (WeaponLayer.setWeaponPropertiesP this weaponProperties)
        Control.Monad.void (MultiPlayerGameLayer.setReadyForExplosion this False)
        Control.Monad.void (WeaponLayer.setAnimationInterface this (jio (WeaponLayer.getInitAnimationInterfaceP this)))
        Control.Monad.void (WeaponLayer.setOwnerLayerInterface this sourceLayerInterface)
        Control.Monad.void (CollidableWeaponBehavior.init ((jget (this).collidableWeaponBehavior)) sourceLayerInterface)
        Control.Monad.void (WeaponLayer.setGroupInterfaces this)
        when (scoreable /= javaNull) $ do
            jset (this).scoreableInterface (scoreable)
        jset (this).totalDamage (0)
        assignedValue <- (WeaponProperties.getDamage weaponProperties)
        jset (this).initDamage (assignedValue)
        Control.Monad.void (WeaponLayer.setDestroyed this False)
        Control.Monad.void (Movement.init ((jget (this).movement)) (jio (WeaponProperties.getSpeed weaponProperties)) angle otherAngle)
        pure ()


setGroupInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
setGroupInterfaces object_ = jmethod object_ "setGroupInterfaces" (\() -> (setGroupInterfaces_impl (javaCast object_ :: WeaponLayer))) ()

setGroupInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
setGroupInterfaces_super object_ = (setGroupInterfaces_impl (javaCast object_ :: WeaponLayer))

setGroupInterfaces_impl :: WeaponLayer -> IO (())
setGroupInterfaces_impl this = do
        basicGroupFactory <- (BasicGroupFactory.getInstance)
        if ((jindex ((jio (AllBinaryLayer.getGroupInterface ((jget (this).sourceLayerInterface))))) (0)) == (jget (basicGroupFactory).eNEMY)) then do
            Control.Monad.void (MultiPlayerGameLayer.setGroupInterface this (jget (basicGroupFactory).eNEMY_ARRAY))
        else do
            Control.Monad.void (MultiPlayerGameLayer.setGroupInterface this (jio (AllBinaryLayer.getGroupInterface ((jget (this).sourceLayerInterface)))))
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick object_ a1 = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: WeaponLayer))) () a1

processTick_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_super object_ a1 = (processTick_impl (javaCast object_ :: WeaponLayer)) a1

processTick_impl :: WeaponLayer -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processTick_impl this allBinaryLayerManager = do
        when ((jio (WeaponLayer.isExhausted this)) && (Prelude.not (jio (WeaponLayer.isDestroyed this)))) $ do
            if (jio (MultiPlayerGameLayer.isReadyForExplosion this)) then do
                let indexedAnimationInterface = (javaCast (jio (WeaponLayer.getAnimationInterface this)) :: IndexedAnimation.IndexedAnimation)
                currentFrame <- (IndexedAnimation.getFrame indexedAnimationInterface)
                if (currentFrame < ((jio (IndexedAnimation.getAnimationSize indexedAnimationInterface)) - 1)) then do
                    Control.Monad.void (IndexedAnimation.nextFrame indexedAnimationInterface)
                else do
                    Control.Monad.void (WeaponLayer.setDestroyed this True)
            else do
                let collidableWeaponBehavior = (javaCast (jio (MultiPlayerGameLayer.getCollidableInferface this)) :: CollidableWeaponBehavior.CollidableWeaponBehavior)
                if (jio (CollidableWeaponBehavior.isCollided collidableWeaponBehavior)) then do
                    Control.Monad.void (WeaponLayer.setAnimationInterface this (jget (this).destroyedAnimationInterface))
                    Control.Monad.void (Movement.stop ((jio (WeaponLayer.getMovement this))))
                    Control.Monad.void (MultiPlayerGameLayer.setReadyForExplosion this True)
                else do
                    Control.Monad.void (WeaponLayer.setDestroyed this True)
        Control.Monad.void (Movement.process ((jget (this).movement)) this)
        jset (this).totalDamage (((jget (this).totalDamage) + (Prelude.fromIntegral (WeaponProperties.getDissipation ((jget (this).weaponProperties))))))
        pure ()


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: WeaponLayer))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: WeaponLayer))

isDestroyed_impl :: WeaponLayer -> IO (Bool)
isDestroyed_impl this = do
        pure ((jget (this).destroyed))


damage :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage object_ a1 a2 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: WeaponLayer))) () a1 a2

damage_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
damage_super object_ a1 a2 = (damage_impl (javaCast object_ :: WeaponLayer)) a1 a2

damage_impl :: WeaponLayer -> Int -> Int -> IO (())
damage_impl this damage damageType = do
        jset (this).totalDamage (((jget (this).totalDamage) + (damage * damage)))
        pure ()


givePoints :: (JavaObjectClass this_) => this_ -> Int -> IO (())
givePoints object_ a1 = jmethod object_ "givePoints" (\() -> (givePoints_impl (javaCast object_ :: WeaponLayer))) () a1

givePoints_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
givePoints_super object_ a1 = (givePoints_impl (javaCast object_ :: WeaponLayer)) a1

givePoints_impl :: WeaponLayer -> Int -> IO (())
givePoints_impl this total = do
        Control.Monad.void (ScoreableInterface.addPoints ((jget (this).scoreableInterface)) ((jio (GameConfigurationUtil.getCompetitionValue ((jio (GameConfigurationUtil.getInstance))))) * total))
        pure ()


isExhausted :: (JavaObjectClass this_) => this_ -> IO (Bool)
isExhausted object_ = jmethod object_ "isExhausted" (\() -> (isExhausted_impl (javaCast object_ :: WeaponLayer))) ()

isExhausted_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isExhausted_super object_ = (isExhausted_impl (javaCast object_ :: WeaponLayer))

isExhausted_impl :: WeaponLayer -> IO (Bool)
isExhausted_impl this = do
    javaCatchReturn $ do
        if (((jget (this).totalDamage) > (jio (WeaponLayer.getInitDamage this))) || ((jget (this).totalDamage) < 0)) then do
            javaReturn (True)
        else do
            javaReturn (False)


getDamage :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage object_ a1 = jmethod object_ "getDamage" (\() -> (getDamage_impl (javaCast object_ :: WeaponLayer))) () a1

getDamage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getDamage_super object_ a1 = (getDamage_impl (javaCast object_ :: WeaponLayer)) a1

getDamage_impl :: WeaponLayer -> Int -> IO (Int)
getDamage_impl this damageType = do
    javaCatchReturn $ do
        when (Prelude.not (jio (WeaponLayer.isExhausted this))) $ do
            let total = ((jio (WeaponLayer.getInitDamage this)) - (jget (this).totalDamage))
            Control.Monad.void (WeaponLayer.givePoints this total)
            javaReturn (total)
        pure (0)


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: WeaponLayer))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: WeaponLayer)) a1

setDestroyed_impl :: WeaponLayer -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        jset (this).destroyed (destroyed)
        when (jio (WeaponLayer.isDestroyed this)) $ do
            assignedValue <- (NoScoreable.getInstance)
            jset (this).scoreableInterface (assignedValue)
            Control.Monad.void (BasicLayerProcessor.add ((jio (DestroyedLayerProcessor.getInstance))) this)
        pure ()


getInitDamage :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitDamage object_ = jmethod object_ "getInitDamage" (\() -> (getInitDamage_impl (javaCast object_ :: WeaponLayer))) ()

getInitDamage_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getInitDamage_super object_ = (getInitDamage_impl (javaCast object_ :: WeaponLayer))

getInitDamage_impl :: WeaponLayer -> IO (Int)
getInitDamage_impl this = do
        pure ((jget (this).initDamage))


setAnimationInterface :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface object_ a1 = jmethod object_ "setAnimationInterface" (\() -> (setAnimationInterface_impl (javaCast object_ :: WeaponLayer))) () a1

setAnimationInterface_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface_super object_ a1 = (setAnimationInterface_impl (javaCast object_ :: WeaponLayer)) a1

setAnimationInterface_impl :: WeaponLayer -> Animation.Animation -> IO (())
setAnimationInterface_impl this animationInterface = do
        jset (this).animationInterface (animationInterface)
        pure ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: WeaponLayer))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: WeaponLayer))

getAnimationInterface_impl :: WeaponLayer -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


getInitAnimationInterfaceP :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getInitAnimationInterfaceP object_ = jmethod object_ "getInitAnimationInterfaceP" (\() -> (getInitAnimationInterfaceP_impl (javaCast object_ :: WeaponLayer))) ()

getInitAnimationInterfaceP_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getInitAnimationInterfaceP_super object_ = (getInitAnimationInterfaceP_impl (javaCast object_ :: WeaponLayer))

getInitAnimationInterfaceP_impl :: WeaponLayer -> IO (Animation.Animation)
getInitAnimationInterfaceP_impl this = do
        pure ((jget (this).initAnimationInterface))


setInitAnimationInterfaceP :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setInitAnimationInterfaceP object_ a1 = jmethod object_ "setInitAnimationInterfaceP" (\() -> (setInitAnimationInterfaceP_impl (javaCast object_ :: WeaponLayer))) () a1

setInitAnimationInterfaceP_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setInitAnimationInterfaceP_super object_ a1 = (setInitAnimationInterfaceP_impl (javaCast object_ :: WeaponLayer)) a1

setInitAnimationInterfaceP_impl :: WeaponLayer -> Animation.Animation -> IO (())
setInitAnimationInterfaceP_impl this initAnimationInterface = do
        jset (this).initAnimationInterface (initAnimationInterface)
        pure ()


getDestroyedAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getDestroyedAnimationInterface object_ = jmethod object_ "getDestroyedAnimationInterface" (\() -> (getDestroyedAnimationInterface_impl (javaCast object_ :: WeaponLayer))) ()

getDestroyedAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getDestroyedAnimationInterface_super object_ = (getDestroyedAnimationInterface_impl (javaCast object_ :: WeaponLayer))

getDestroyedAnimationInterface_impl :: WeaponLayer -> IO (Animation.Animation)
getDestroyedAnimationInterface_impl this = do
        pure ((jget (this).destroyedAnimationInterface))


getOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface object_ = jmethod object_ "getOwnerLayerInterface" (\() -> (getOwnerLayerInterface_impl (javaCast object_ :: WeaponLayer))) ()

getOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_super object_ = (getOwnerLayerInterface_impl (javaCast object_ :: WeaponLayer))

getOwnerLayerInterface_impl :: WeaponLayer -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_impl this = do
        pure ((jget (this).sourceLayerInterface))


setOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface object_ a1 = jmethod object_ "setOwnerLayerInterface" (\() -> (setOwnerLayerInterface_impl (javaCast object_ :: WeaponLayer))) () a1

setOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_super object_ a1 = (setOwnerLayerInterface_impl (javaCast object_ :: WeaponLayer)) a1

setOwnerLayerInterface_impl :: WeaponLayer -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_impl this sourceLayerInterface = do
        jset (this).sourceLayerInterface (sourceLayerInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: WeaponLayer))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: WeaponLayer)) a1

paint_impl :: WeaponLayer -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        viewPosition <- (MultiPlayerGameLayer.getViewPosition this)
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics ((jio (ViewPositionBase.getX viewPosition)) - (jio (MultiPlayerGameLayer.getHalfWidth this))) ((jio (ViewPositionBase.getY viewPosition)) - (jio (MultiPlayerGameLayer.getHalfHeight this))))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: WeaponLayer))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: WeaponLayer)) a1

paintThreed_impl :: WeaponLayer -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        viewPosition <- (MultiPlayerGameLayer.getViewPosition this)
        Control.Monad.void (Animation.paintThreedXYZ ((jget (this).animationInterface)) graphics ((jio (ViewPositionBase.getX viewPosition)) - (jio (MultiPlayerGameLayer.getHalfWidth this))) ((jio (ViewPositionBase.getY viewPosition)) - (jio (MultiPlayerGameLayer.getHalfHeight this))) ((jio (ViewPositionBase.getZ viewPosition)) - (jio (MultiPlayerGameLayer.getHalfDepth this))))
        pure ()


getMovement :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovement object_ = jmethod object_ "getMovement" (\() -> (getMovement_impl (javaCast object_ :: WeaponLayer))) ()

getMovement_super :: (JavaObjectClass this_) => this_ -> IO (Movement.Movement)
getMovement_super object_ = (getMovement_impl (javaCast object_ :: WeaponLayer))

getMovement_impl :: WeaponLayer -> IO (Movement.Movement)
getMovement_impl this = do
        pure ((jget (this).movement))


setMovement :: (JavaObjectClass this_) => this_ -> Movement.Movement -> IO (())
setMovement object_ a1 = jmethod object_ "setMovement" (\() -> (setMovement_impl (javaCast object_ :: WeaponLayer))) () a1

setMovement_super :: (JavaObjectClass this_) => this_ -> Movement.Movement -> IO (())
setMovement_super object_ a1 = (setMovement_impl (javaCast object_ :: WeaponLayer)) a1

setMovement_impl :: WeaponLayer -> Movement.Movement -> IO (())
setMovement_impl this movement = do
        jset (this).movement (movement)
        pure ()


getType :: (JavaObjectClass this_) => this_ -> IO (Int)
getType object_ = jmethod object_ "getType" (\() -> (getType_impl (javaCast object_ :: WeaponLayer))) ()

getType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getType_super object_ = (getType_impl (javaCast object_ :: WeaponLayer))

getType_impl :: WeaponLayer -> IO (Int)
getType_impl this = do
        (WeaponLayer.getStaticType)


getStaticType :: IO (Int)
getStaticType = do
        pure (0)


getMultiPlayerType :: (JavaObjectClass this_) => this_ -> IO (Int)
getMultiPlayerType object_ = jmethod object_ "getMultiPlayerType" (\() -> (getMultiPlayerType_impl (javaCast object_ :: WeaponLayer))) ()

getMultiPlayerType_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMultiPlayerType_super object_ = (getMultiPlayerType_impl (javaCast object_ :: WeaponLayer))

getMultiPlayerType_impl :: WeaponLayer -> IO (Int)
getMultiPlayerType_impl this = do
        pure ((jget (this).multiPlayerType))


setWeaponPropertiesP :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (())
setWeaponPropertiesP object_ a1 = jmethod object_ "setWeaponPropertiesP" (\() -> (setWeaponPropertiesP_impl (javaCast object_ :: WeaponLayer))) () a1

setWeaponPropertiesP_super :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (())
setWeaponPropertiesP_super object_ a1 = (setWeaponPropertiesP_impl (javaCast object_ :: WeaponLayer)) a1

setWeaponPropertiesP_impl :: WeaponLayer -> WeaponProperties.WeaponProperties -> IO (())
setWeaponPropertiesP_impl this weaponProperties = do
        jset (this).weaponProperties (weaponProperties)
        pure ()


getWeaponPropertiesP :: (JavaObjectClass this_) => this_ -> IO (WeaponProperties.WeaponProperties)
getWeaponPropertiesP object_ = jmethod object_ "getWeaponPropertiesP" (\() -> (getWeaponPropertiesP_impl (javaCast object_ :: WeaponLayer))) ()

getWeaponPropertiesP_super :: (JavaObjectClass this_) => this_ -> IO (WeaponProperties.WeaponProperties)
getWeaponPropertiesP_super object_ = (getWeaponPropertiesP_impl (javaCast object_ :: WeaponLayer))

getWeaponPropertiesP_impl :: WeaponLayer -> IO (WeaponProperties.WeaponProperties)
getWeaponPropertiesP_impl this = do
        pure ((jget (this).weaponProperties))


implmentsTickableInterface :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface object_ = jmethod object_ "implmentsTickableInterface" (\() -> (implmentsTickableInterface_impl (javaCast object_ :: WeaponLayer))) ()

implmentsTickableInterface_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
implmentsTickableInterface_super object_ = (implmentsTickableInterface_impl (javaCast object_ :: WeaponLayer))

implmentsTickableInterface_impl :: WeaponLayer -> IO (Bool)
implmentsTickableInterface_impl this = do
        pure (True)


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: WeaponLayer))) () a1

set_super :: (JavaObjectClass this_) => this_ -> GL.GL -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: WeaponLayer)) a1

set_impl :: WeaponLayer -> GL.GL -> IO (())
set_impl this gl = do
        Control.Monad.void (Animation.set ((jget (this).initAnimationInterface)) gl)
        pure ()


