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
-- package org.allbinary.game.health
module Health where

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
import qualified NullHealthListener -- same package or java.lang
import qualified HealthListenerInterface -- same package or java.lang
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified HealthInterface

-- implements HealthInterface
data Health = Health
    { header_ :: JavaHeader
    , health :: IORef (Int)
    , maxHealth :: IORef (Int)
    , healthListenerInterface :: IORef (HealthListenerInterface.HealthListenerInterface)
    }

instance JavaNull Health where
    javaNull = javaNullRecord "Health"

instance JavaEquals Health where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Health where
    (==) = jrecordEquals

instance JavaObjectClass Health where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_HEALTH #-}
nULL_HEALTH = unsafePerformIO ((new_1 0))

nAME = "Health Resource"

hEALTH_LABEL = "Health: "

mAX_HEALTH_LABEL = " Max: "

newRecord_ :: IO Health
newRecord_ = do
    header_ <- newJavaHeader
    health <- newIORef 0
    maxHealth <- newIORef 0
    healthListenerInterface <- newIORef javaNull
    let this = Health header_ health maxHealth healthListenerInterface
    jregisterLevel header_ this
    HealthInterface.registerInterface_ header_
    jregisterMethod header_ "heal" (\() -> heal_impl this)
    jregisterMethod header_ "healMax" (\() -> healMax_impl this)
    jregisterMethod header_ "isDamaged" (\() -> isDamaged_impl this)
    jregisterMethod header_ "damage" (\() -> damage_impl this)
    jregisterMethod header_ "isAlive" (\() -> isAlive_impl this)
    jregisterMethod header_ "getMaxHealth" (\() -> getMaxHealth_impl this)
    jregisterMethod header_ "setMaxHealth" (\() -> setMaxHealth_impl this)
    jregisterMethod header_ "setHealth" (\() -> setHealth_impl this)
    jregisterMethod header_ "getHealth" (\() -> getHealth_impl this)
    jregisterMethod header_ "addListener" (\() -> addListener_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: Health -> IO ()
initFields_ this = do
    jset this.health (0)
    jset this.maxHealth (0)
    jset this.healthListenerInterface ((javaCast NullHealthListener.nULL_HEALTH_LISTENER :: HealthListenerInterface.HealthListenerInterface))
    pure ()

new_1 :: Int -> IO Health
new_1 maxHealth = do
    this <- newRecord_
    init_1 this maxHealth
    pure this

init_1 :: Health -> Int -> IO ()
init_1 this maxHealth = do
        initFields_ this
        Control.Monad.void (Health.setMaxHealth this maxHealth)
        Control.Monad.void (Health.setHealth this maxHealth)
        pure ()


heal :: (JavaObjectClass this_) => this_ -> Int -> IO (())
heal object_ a1 = jmethod object_ "heal" (\() -> (heal_impl (javaCast object_ :: Health))) () a1

heal_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
heal_super object_ a1 = (heal_impl (javaCast object_ :: Health)) a1

heal_impl :: Health -> Int -> IO (())
heal_impl this ahealth = do
        let newHealth = ((jio (Health.getHealth this)) + ahealth)
        if (newHealth > (jio (Health.getMaxHealth this))) then do
            Control.Monad.void (Health.setHealth this (jio (Health.getMaxHealth this)))
        else do
            Control.Monad.void (Health.setHealth this newHealth)
        pure ()


healMax :: (JavaObjectClass this_) => this_ -> IO (())
healMax object_ = jmethod object_ "healMax" (\() -> (healMax_impl (javaCast object_ :: Health))) ()

healMax_super :: (JavaObjectClass this_) => this_ -> IO (())
healMax_super object_ = (healMax_impl (javaCast object_ :: Health))

healMax_impl :: Health -> IO (())
healMax_impl this = do
        Control.Monad.void (Health.setHealth this (jio (Health.getMaxHealth this)))
        pure ()


isDamaged :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDamaged object_ = jmethod object_ "isDamaged" (\() -> (isDamaged_impl (javaCast object_ :: Health))) ()

isDamaged_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDamaged_super object_ = (isDamaged_impl (javaCast object_ :: Health))

isDamaged_impl :: Health -> IO (Bool)
isDamaged_impl this = do
    javaCatchReturn $ do
        if ((jio (Health.getHealth this)) /= (jio (Health.getMaxHealth this))) then do
            javaReturn (True)
        else do
            javaReturn (False)


damage :: (JavaObjectClass this_) => this_ -> Int -> IO (())
damage object_ a1 = jmethod object_ "damage" (\() -> (damage_impl (javaCast object_ :: Health))) () a1

damage_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
damage_super object_ a1 = (damage_impl (javaCast object_ :: Health)) a1

damage_impl :: Health -> Int -> IO (())
damage_impl this ahealth = do
    javaCatchReturn $ do
        when (ahealth < 0) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "******* Trying to heal when damaging. Damage: ")
            Control.Monad.void (StringMaker.appendint stringBuffer ahealth)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jio (Health.toString this)))
            Control.Monad.void (ForcedLogUtil.log (jio (StringMaker.toString stringBuffer)) this)
            javaReturn (())
        let health = ((jio (Health.getHealth this)) - ahealth)
        Control.Monad.void (Health.setHealth this health)
    pure ()


isAlive :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive object_ = jmethod object_ "isAlive" (\() -> (isAlive_impl (javaCast object_ :: Health))) ()

isAlive_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAlive_super object_ = (isAlive_impl (javaCast object_ :: Health))

isAlive_impl :: Health -> IO (Bool)
isAlive_impl this = do
    javaCatchReturn $ do
        if ((jio (Health.getHealth this)) <= 0) then do
            javaReturn (False)
        else do
            javaReturn (True)


getMaxHealth :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxHealth object_ = jmethod object_ "getMaxHealth" (\() -> (getMaxHealth_impl (javaCast object_ :: Health))) ()

getMaxHealth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getMaxHealth_super object_ = (getMaxHealth_impl (javaCast object_ :: Health))

getMaxHealth_impl :: Health -> IO (Int)
getMaxHealth_impl this = do
        pure ((jget (this).maxHealth))


setMaxHealth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxHealth object_ a1 = jmethod object_ "setMaxHealth" (\() -> (setMaxHealth_impl (javaCast object_ :: Health))) () a1

setMaxHealth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setMaxHealth_super object_ a1 = (setMaxHealth_impl (javaCast object_ :: Health)) a1

setMaxHealth_impl :: Health -> Int -> IO (())
setMaxHealth_impl this maxHealth = do
        jset (this).maxHealth (maxHealth)
        pure ()


setHealth :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHealth object_ a1 = jmethod object_ "setHealth" (\() -> (setHealth_impl (javaCast object_ :: Health))) () a1

setHealth_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setHealth_super object_ a1 = (setHealth_impl (javaCast object_ :: Health)) a1

setHealth_impl :: Health -> Int -> IO (())
setHealth_impl this health = do
        if (health > (jio (Health.getMaxHealth this))) then do
            assignedValue <- (Health.getMaxHealth this)
            jset (this).health (assignedValue)
        else if (health < 0) then do
            jset (this).health (0)
        else do
            jset (this).health (health)
        when ((jget (this).healthListenerInterface) /= javaNull) $ do
            Control.Monad.void (HealthListenerInterface.onHealthChange ((jget (this).healthListenerInterface)))
        pure ()


getHealth :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth object_ = jmethod object_ "getHealth" (\() -> (getHealth_impl (javaCast object_ :: Health))) ()

getHealth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getHealth_super object_ = (getHealth_impl (javaCast object_ :: Health))

getHealth_impl :: Health -> IO (Int)
getHealth_impl this = do
        pure ((jget (this).health))


addListener :: (JavaObjectClass this_) => this_ -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener object_ a1 = jmethod object_ "addListener" (\() -> (addListener_impl (javaCast object_ :: Health))) () a1

addListener_super :: (JavaObjectClass this_) => this_ -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener_super object_ a1 = (addListener_impl (javaCast object_ :: Health)) a1

addListener_impl :: Health -> HealthListenerInterface.HealthListenerInterface -> IO (())
addListener_impl this healthGraphic = do
        jset (this).healthListenerInterface (healthGraphic)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: Health))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: Health))

toString_impl :: Health -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (Health.hEALTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).health))
        Control.Monad.void (StringMaker.append stringBuffer (Health.mAX_HEALTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).maxHealth))
        (StringMaker.toString stringBuffer)


