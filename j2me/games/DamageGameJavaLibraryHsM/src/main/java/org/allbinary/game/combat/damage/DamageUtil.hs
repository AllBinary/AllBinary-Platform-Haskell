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
-- package org.allbinary.game.combat.damage
module DamageUtil where

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
import qualified DamageableInterface -- same package or java.lang
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data DamageUtil = DamageUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , cOLLIDE :: IORef (String)
    }

instance JavaNull DamageUtil where
    javaNull = javaNullRecord "DamageUtil"

instance JavaEquals DamageUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DamageUtil where
    (==) = jrecordEquals

instance JavaObjectClass DamageUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DamageUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    cOLLIDE <- newIORef ""
    let this = DamageUtil header_ logUtil cOLLIDE
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "debugDamage" (\() -> debugDamage_impl this)
    pure this

initFields_ :: DamageUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.cOLLIDE ("collide")
    pure ()


getInstance :: IO (DamageUtil)
getInstance = do
        pure (DamageUtil.instance_)

new_ :: IO DamageUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DamageUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> DamageableInterface.DamageableInterface -> DamageableInterface.DamageableInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DamageUtil))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> DamageableInterface.DamageableInterface -> DamageableInterface.DamageableInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: DamageUtil)) a1 a2

process_impl :: DamageUtil -> DamageableInterface.DamageableInterface -> DamageableInterface.DamageableInterface -> IO (())
process_impl this damageableInterface damageableInterface2 = do
        Control.Monad.void (DamageableInterface.damage damageableInterface (jio (DamageableInterface.getDamage damageableInterface2 0)) 0)
        pure ()


-- throws Exception
debugDamage :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
debugDamage object_ a1 a2 = jmethod object_ "debugDamage" (\() -> (debugDamage_impl (javaCast object_ :: DamageUtil))) () a1 a2

debugDamage_super :: (JavaObjectClass this_) => this_ -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
debugDamage_super object_ a1 a2 = (debugDamage_impl (javaCast object_ :: DamageUtil)) a1 a2

debugDamage_impl :: DamageUtil -> CollidableCompositeLayer.CollidableCompositeLayer -> CollidableCompositeLayer.CollidableCompositeLayer -> IO (())
debugDamage_impl this collidableInterfaceCompositeInterface1 collidableInterfaceCompositeInterface = do
        let collidableDestroyableDamageableLayer = (javaCast collidableInterfaceCompositeInterface :: CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
        damage <- (CollidableDestroyableDamageableLayer.getDamage collidableDestroyableDamageableLayer 0)
        when (damage > 20000) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Collision ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableCompositeLayer.toString collidableInterfaceCompositeInterface1)))
            Control.Monad.void (StringMaker.append stringBuffer " with: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (CollidableCompositeLayer.toString collidableInterfaceCompositeInterface)))
            Control.Monad.void (StringMaker.append stringBuffer " damage: ")
            Control.Monad.void (StringMaker.appendint stringBuffer damage)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) collidableInterfaceCompositeInterface1 (jget (this).cOLLIDE))
        pure ()


