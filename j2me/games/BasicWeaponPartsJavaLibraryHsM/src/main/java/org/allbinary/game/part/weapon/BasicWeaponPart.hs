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
-- package org.allbinary.game.part.weapon
module BasicWeaponPart where

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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified WeaponProperties -- org.allbinary.game.combat.weapon.WeaponProperties
import qualified PartInterface -- org.allbinary.game.part.PartInterface
import qualified NoScoreable -- org.allbinary.game.score.NoScoreable
import qualified ScoreableInterface -- org.allbinary.game.score.ScoreableInterface
import qualified RelativeRelationship -- org.allbinary.graphics.RelativeRelationship
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase
import qualified SalvoInterface

-- implements PartInterface
-- implements SalvoInterface
data BasicWeaponPart = BasicWeaponPart
    { header_ :: JavaHeader
    , animationInterface :: IORef (Animation.Animation)
    , ownerLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , weaponProperties :: IORef (WeaponProperties.WeaponProperties)
    , scoreableInterface :: IORef (ScoreableInterface.ScoreableInterface)
    , relativeRelationship :: IORef (RelativeRelationship.RelativeRelationship)
    }

instance JavaNull BasicWeaponPart where
    javaNull = javaNullRecord "BasicWeaponPart"

instance JavaEquals BasicWeaponPart where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicWeaponPart where
    (==) = jrecordEquals

instance JavaObjectClass BasicWeaponPart where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_BASIC_WEAPON_PART #-}
nULL_BASIC_WEAPON_PART = unsafePerformIO ((BasicWeaponPart.createBasicWeaponPart (jio (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicWeaponPart
newRecord_ = do
    header_ <- newJavaHeader
    animationInterface <- newIORef javaNull
    ownerLayerInterface <- newIORef javaNull
    weaponProperties <- newIORef javaNull
    scoreableInterface <- newIORef javaNull
    relativeRelationship <- newIORef javaNull
    let this = BasicWeaponPart header_ animationInterface ownerLayerInterface weaponProperties scoreableInterface relativeRelationship
    jregisterLevel header_ this
    PartInterface.registerInterface_ header_
    SalvoInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "processScore" (\() -> processScore_impl this)
    jregisterMethod header_ "getOwnerLayerInterface" (\() -> getOwnerLayerInterface_impl this)
    jregisterMethod header_ "setOwnerLayerInterface" (\() -> setOwnerLayerInterface_impl this)
    jregisterMethod header_ "getAnimationInterface" (\() -> getAnimationInterface_impl this)
    jregisterMethod header_ "setAnimationInterface" (\() -> setAnimationInterface_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getWeaponProperties" (\() -> getWeaponProperties_impl this)
    jregisterMethod header_ "setWeaponProperties" (\() -> setWeaponProperties_impl this)
    pure this

initFields_ :: BasicWeaponPart -> IO ()
initFields_ this = do
    jset this.animationInterface =<< (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
    jset this.ownerLayerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    jset this.weaponProperties (WeaponProperties.nULL_WEAPON_PROPERTIES)
    jset this.scoreableInterface =<< (fmap (\value_ -> javaCast value_ :: ScoreableInterface.ScoreableInterface) (NoScoreable.getInstance))
    jset this.relativeRelationship (RelativeRelationship.nULL_RELATIVE_RELATIONSHIP)
    pure ()


createBasicWeaponPart :: Animation.Animation -> IO (BasicWeaponPart)
createBasicWeaponPart animationInterface = do
        (new_5 animationInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER) (WeaponProperties.nULL_WEAPON_PROPERTIES) (jio (NoScoreable.getInstance)) (RelativeRelationship.nULL_RELATIVE_RELATIONSHIP))

new_5 :: Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO BasicWeaponPart
new_5 animationInterface sourceLayerInterface weaponProperties scoreableInterface relativeRelationship = do
    this <- newRecord_
    init_5 this animationInterface sourceLayerInterface weaponProperties scoreableInterface relativeRelationship
    pure this

init_5 :: BasicWeaponPart -> Animation.Animation -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO ()
init_5 this animationInterface sourceLayerInterface weaponProperties scoreableInterface relativeRelationship = do
        initFields_ this
        Control.Monad.void (BasicWeaponPart.init this sourceLayerInterface weaponProperties scoreableInterface relativeRelationship)
        Control.Monad.void (BasicWeaponPart.setAnimationInterface this animationInterface)
        pure ()


init :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (())
init object_ a1 a2 a3 a4 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BasicWeaponPart))) () a1 a2 a3 a4

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (())
init_super object_ a1 a2 a3 a4 = (init_impl (javaCast object_ :: BasicWeaponPart)) a1 a2 a3 a4

init_impl :: BasicWeaponPart -> AllBinaryLayer.AllBinaryLayer -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> RelativeRelationship.RelativeRelationship -> IO (())
init_impl this sourceLayerInterface weaponProperties scoreableInterface relativeRelationship = do
        Control.Monad.void (BasicWeaponPart.setOwnerLayerInterface this sourceLayerInterface)
        Control.Monad.void (BasicWeaponPart.setWeaponProperties this weaponProperties)
        jset (this).scoreableInterface (scoreableInterface)
        jset (this).relativeRelationship (relativeRelationship)
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BasicWeaponPart))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: BasicWeaponPart)) a1 a2 a3

process_impl :: BasicWeaponPart -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> IO (())
process_impl this allbinaryLayerManager angle otherAngle = do
        Control.Monad.void (BasicWeaponPart.processScore this allbinaryLayerManager angle otherAngle (jio (BasicWeaponPart.getWeaponProperties this)) (jget (this).scoreableInterface))
        pure ()


-- throws Exception
processScore :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore object_ a1 a2 a3 a4 a5 = jmethod object_ "processScore" (\() -> (processScore_impl (javaCast object_ :: BasicWeaponPart))) () a1 a2 a3 a4 a5

processScore_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_super object_ a1 a2 a3 a4 a5 = (processScore_impl (javaCast object_ :: BasicWeaponPart)) a1 a2 a3 a4 a5

processScore_impl :: BasicWeaponPart -> AllBinaryLayerManager.AllBinaryLayerManager -> Int16 -> Int16 -> WeaponProperties.WeaponProperties -> ScoreableInterface.ScoreableInterface -> IO (())
processScore_impl this allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface = do
        javaThrow ((JavaException "Exception" (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED)))
        pure ()


getOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface object_ = jmethod object_ "getOwnerLayerInterface" (\() -> (getOwnerLayerInterface_impl (javaCast object_ :: BasicWeaponPart))) ()

getOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_super object_ = (getOwnerLayerInterface_impl (javaCast object_ :: BasicWeaponPart))

getOwnerLayerInterface_impl :: BasicWeaponPart -> IO (AllBinaryLayer.AllBinaryLayer)
getOwnerLayerInterface_impl this = do
        pure ((jget (this).ownerLayerInterface))


setOwnerLayerInterface :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface object_ a1 = jmethod object_ "setOwnerLayerInterface" (\() -> (setOwnerLayerInterface_impl (javaCast object_ :: BasicWeaponPart))) () a1

setOwnerLayerInterface_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_super object_ a1 = (setOwnerLayerInterface_impl (javaCast object_ :: BasicWeaponPart)) a1

setOwnerLayerInterface_impl :: BasicWeaponPart -> AllBinaryLayer.AllBinaryLayer -> IO (())
setOwnerLayerInterface_impl this ownerLayerInterface = do
        jset (this).ownerLayerInterface (ownerLayerInterface)
        pure ()


getAnimationInterface :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface object_ = jmethod object_ "getAnimationInterface" (\() -> (getAnimationInterface_impl (javaCast object_ :: BasicWeaponPart))) ()

getAnimationInterface_super :: (JavaObjectClass this_) => this_ -> IO (Animation.Animation)
getAnimationInterface_super object_ = (getAnimationInterface_impl (javaCast object_ :: BasicWeaponPart))

getAnimationInterface_impl :: BasicWeaponPart -> IO (Animation.Animation)
getAnimationInterface_impl this = do
        pure ((jget (this).animationInterface))


setAnimationInterface :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface object_ a1 = jmethod object_ "setAnimationInterface" (\() -> (setAnimationInterface_impl (javaCast object_ :: BasicWeaponPart))) () a1

setAnimationInterface_super :: (JavaObjectClass this_) => this_ -> Animation.Animation -> IO (())
setAnimationInterface_super object_ a1 = (setAnimationInterface_impl (javaCast object_ :: BasicWeaponPart)) a1

setAnimationInterface_impl :: BasicWeaponPart -> Animation.Animation -> IO (())
setAnimationInterface_impl this animationInterface = do
        jset (this).animationInterface (animationInterface)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: BasicWeaponPart))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: BasicWeaponPart)) a1

paint_impl :: BasicWeaponPart -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        viewPosition <- (AllBinaryLayer.getViewPosition ((jio (BasicWeaponPart.getOwnerLayerInterface this))))
        viewX <- (ViewPositionBase.getX viewPosition)
        viewY <- (ViewPositionBase.getY viewPosition)
        Control.Monad.void (Animation.paintXY ((jget (this).animationInterface)) graphics viewX viewY)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: BasicWeaponPart))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: BasicWeaponPart)) a1

paintThreed_impl :: BasicWeaponPart -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getWeaponProperties :: (JavaObjectClass this_) => this_ -> IO (WeaponProperties.WeaponProperties)
getWeaponProperties object_ = jmethod object_ "getWeaponProperties" (\() -> (getWeaponProperties_impl (javaCast object_ :: BasicWeaponPart))) ()

getWeaponProperties_super :: (JavaObjectClass this_) => this_ -> IO (WeaponProperties.WeaponProperties)
getWeaponProperties_super object_ = (getWeaponProperties_impl (javaCast object_ :: BasicWeaponPart))

getWeaponProperties_impl :: BasicWeaponPart -> IO (WeaponProperties.WeaponProperties)
getWeaponProperties_impl this = do
        pure ((jget (this).weaponProperties))


setWeaponProperties :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (())
setWeaponProperties object_ a1 = jmethod object_ "setWeaponProperties" (\() -> (setWeaponProperties_impl (javaCast object_ :: BasicWeaponPart))) () a1

setWeaponProperties_super :: (JavaObjectClass this_) => this_ -> WeaponProperties.WeaponProperties -> IO (())
setWeaponProperties_super object_ a1 = (setWeaponProperties_impl (javaCast object_ :: BasicWeaponPart)) a1

setWeaponProperties_impl :: BasicWeaponPart -> WeaponProperties.WeaponProperties -> IO (())
setWeaponProperties_impl this weaponProperties = do
        jset (this).weaponProperties (weaponProperties)
        pure ()


