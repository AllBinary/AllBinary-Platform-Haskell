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
-- package org.allbinary.game.configuration
module GameConfigurationCentral where

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
import qualified GameConfiguration -- same package or java.lang
import qualified GameConfigurationPersistanceSingleton -- org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton
import qualified KeyValuePersistance -- org.allbinary.game.configuration.persistance.KeyValuePersistance
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

data GameConfigurationCentral = GameConfigurationCentral
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sCALE :: IORef (GameConfiguration.GameConfiguration)
    , oRIENTATION :: IORef (GameConfiguration.GameConfiguration)
    , sENSOR_UPDATE_RATE :: IORef (GameConfiguration.GameConfiguration)
    , vIBRATION :: IORef (GameConfiguration.GameConfiguration)
    , cHALLENGE_LEVEL :: IORef (GameConfiguration.GameConfiguration)
    , cOLLIDE_DAMAGE :: IORef (GameConfiguration.GameConfiguration)
    , dURABILITY_CHALLENGE_LEVEL :: IORef (GameConfiguration.GameConfiguration)
    , sPEED_CHALLENGE_LEVEL :: IORef (GameConfiguration.GameConfiguration)
    , aTTACK_CHALLENGE_LEVEL :: IORef (GameConfiguration.GameConfiguration)
    , cONTROL_LEVEL :: IORef (GameConfiguration.GameConfiguration)
    , pLAYER_INPUT_WAIT :: IORef (GameConfiguration.GameConfiguration)
    , sPEED :: IORef (GameConfiguration.GameConfiguration)
    , sOUND_VOLUME :: IORef (GameConfiguration.GameConfiguration)
    , mAX_GAME_OBJECTS :: IORef (GameConfiguration.GameConfiguration)
    , mAX_LAYERS :: IORef (GameConfiguration.GameConfiguration)
    , gameControlFidelity :: IORef (Int)
    }

instance JavaNull GameConfigurationCentral where
    javaNull = javaNullRecord "GameConfigurationCentral"

instance JavaEquals GameConfigurationCentral where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfigurationCentral where
    (==) = jrecordEquals

instance JavaObjectClass GameConfigurationCentral where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO GameConfigurationCentral
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sCALE <- newIORef javaNull
    oRIENTATION <- newIORef javaNull
    sENSOR_UPDATE_RATE <- newIORef javaNull
    vIBRATION <- newIORef javaNull
    cHALLENGE_LEVEL <- newIORef javaNull
    cOLLIDE_DAMAGE <- newIORef javaNull
    dURABILITY_CHALLENGE_LEVEL <- newIORef javaNull
    sPEED_CHALLENGE_LEVEL <- newIORef javaNull
    aTTACK_CHALLENGE_LEVEL <- newIORef javaNull
    cONTROL_LEVEL <- newIORef javaNull
    pLAYER_INPUT_WAIT <- newIORef javaNull
    sPEED <- newIORef javaNull
    sOUND_VOLUME <- newIORef javaNull
    mAX_GAME_OBJECTS <- newIORef javaNull
    mAX_LAYERS <- newIORef javaNull
    gameControlFidelity <- newIORef 0
    let this = GameConfigurationCentral header_ logUtil sCALE oRIENTATION sENSOR_UPDATE_RATE vIBRATION cHALLENGE_LEVEL cOLLIDE_DAMAGE dURABILITY_CHALLENGE_LEVEL sPEED_CHALLENGE_LEVEL aTTACK_CHALLENGE_LEVEL cONTROL_LEVEL pLAYER_INPUT_WAIT sPEED sOUND_VOLUME mAX_GAME_OBJECTS mAX_LAYERS gameControlFidelity
    jregisterLevel header_ this
    jregisterMethod header_ "load" (\() -> load_impl this)
    jregisterMethod header_ "setGameControlFidelity" (\() -> setGameControlFidelity_impl this)
    jregisterMethod header_ "getGameControlFidelity" (\() -> getGameControlFidelity_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameConfigurationCentral -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sCALE (javaNull)
    jset this.oRIENTATION (javaNull)
    jset this.sENSOR_UPDATE_RATE (javaNull)
    jset this.vIBRATION (javaNull)
    jset this.cHALLENGE_LEVEL (javaNull)
    jset this.cOLLIDE_DAMAGE (javaNull)
    jset this.dURABILITY_CHALLENGE_LEVEL (javaNull)
    jset this.sPEED_CHALLENGE_LEVEL (javaNull)
    jset this.aTTACK_CHALLENGE_LEVEL (javaNull)
    jset this.cONTROL_LEVEL (javaNull)
    jset this.pLAYER_INPUT_WAIT (javaNull)
    jset this.sPEED (javaNull)
    jset this.sOUND_VOLUME (javaNull)
    jset this.mAX_GAME_OBJECTS (javaNull)
    jset this.mAX_LAYERS (javaNull)
    jset this.gameControlFidelity (36)
    pure ()


getInstance :: IO (GameConfigurationCentral)
getInstance = do
        when ((jget GameConfigurationCentral.sINGLETON) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset GameConfigurationCentral.sINGLETON (assignedValue)
        pure ((javaCast (jget GameConfigurationCentral.sINGLETON) :: GameConfigurationCentral))

new_ :: IO GameConfigurationCentral
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameConfigurationCentral -> IO ()
init_ this = do
        initFields_ this
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        assignedValue <- (GameConfiguration.new_4 "Scale" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 2)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)))
        jset (this).sCALE (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Orientation" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 8)))
        jset (this).oRIENTATION (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Sensor Update Rate" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)))
        jset (this).sENSOR_UPDATE_RATE (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Vibration" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)))
        jset (this).vIBRATION (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Global Challenge Level" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).cHALLENGE_LEVEL (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Collide Damage Challenge Level" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).cOLLIDE_DAMAGE (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Enemy Durability Challenge Level" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).dURABILITY_CHALLENGE_LEVEL (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Enemy Speed Challenge Level" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).sPEED_CHALLENGE_LEVEL (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Enemy Attack Challenge Level" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 3)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).aTTACK_CHALLENGE_LEVEL (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Control Fidelity" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 5)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).cONTROL_LEVEL (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Input Wait" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 5)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).pLAYER_INPUT_WAIT (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Game Speed (Device Specific)" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 5)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).sPEED (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Sound Volume" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 6)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 0)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 10)))
        jset (this).sOUND_VOLUME (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Max Game Objects" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 20)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 50)))
        jset (this).mAX_GAME_OBJECTS (assignedValue)
        assignedValue <- (GameConfiguration.new_4 "Max Layers" (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 20)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 1)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory 50)))
        jset (this).mAX_LAYERS (assignedValue)
        pure ()


load :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
load object_ a1 = jmethod object_ "load" (\() -> (load_impl (javaCast object_ :: GameConfigurationCentral))) () a1

load_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
load_super object_ a1 = (load_impl (javaCast object_ :: GameConfigurationCentral)) a1

load_impl :: GameConfigurationCentral -> AbeClientInformationInterface.AbeClientInformationInterface -> IO (())
load_impl this abeClientInformation = do
        commonStrings <- (CommonStrings.getInstance)
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).lOAD) e)
            ) $ do
            smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
            keyValuePersistance <- (fmap (\value_ -> javaCast value_ :: KeyValuePersistance.KeyValuePersistance) (GameConfigurationPersistanceSingleton.getInstance))
            Control.Monad.void (KeyValuePersistance.clear keyValuePersistance)
            Control.Monad.void (KeyValuePersistance.loadAll keyValuePersistance abeClientInformation)
            list <- (KeyValuePersistance.getIds keyValuePersistance)
            if ((jio (BasicArrayList.size list)) > 0) then do
                hashtable <- (KeyValuePersistance.get keyValuePersistance 0)
                let anyType = (javaCast (jio (GameConfiguration.getName ((jget (this).sCALE)))) :: Any.Any)
                let value = (javaCast (jio (ABHashtable.get hashtable anyType)) :: String)
                Control.Monad.void (GameConfiguration.setValue ((jget (this).sCALE)) (jio (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory (javaToString value))))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "No Game Configuration To Load" this (jget (commonStrings).lOAD))
        pure ()


setGameControlFidelity :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setGameControlFidelity object_ a1 = jmethod object_ "setGameControlFidelity" (\() -> (setGameControlFidelity_impl (javaCast object_ :: GameConfigurationCentral))) () a1

setGameControlFidelity_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setGameControlFidelity_super object_ a1 = (setGameControlFidelity_impl (javaCast object_ :: GameConfigurationCentral)) a1

setGameControlFidelity_impl :: GameConfigurationCentral -> Int -> IO (())
setGameControlFidelity_impl this gameControlFidelity = do
        jset (this).gameControlFidelity (gameControlFidelity)
        pure ()


getGameControlFidelity :: (JavaObjectClass this_) => this_ -> IO (Int)
getGameControlFidelity object_ = jmethod object_ "getGameControlFidelity" (\() -> (getGameControlFidelity_impl (javaCast object_ :: GameConfigurationCentral))) ()

getGameControlFidelity_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getGameControlFidelity_super object_ = (getGameControlFidelity_impl (javaCast object_ :: GameConfigurationCentral))

getGameControlFidelity_impl :: GameConfigurationCentral -> IO (Int)
getGameControlFidelity_impl this = do
        pure ((jget (this).gameControlFidelity))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameConfigurationCentral))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameConfigurationCentral))

toString_impl :: GameConfigurationCentral -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        commonStrings <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).sCALE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).sCALE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).oRIENTATION)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).oRIENTATION)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).sENSOR_UPDATE_RATE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).sENSOR_UPDATE_RATE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).vIBRATION)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).vIBRATION)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).cHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).cHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).cOLLIDE_DAMAGE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).cOLLIDE_DAMAGE)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).dURABILITY_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).dURABILITY_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).sPEED_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).sPEED_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).aTTACK_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).aTTACK_CHALLENGE_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).cONTROL_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).cONTROL_LEVEL)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).sPEED)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).sPEED)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).mAX_GAME_OBJECTS)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).mAX_GAME_OBJECTS)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).cOMMA_SEP))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName ((jget (this).mAX_LAYERS)))))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonStrings).eQUALS))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue ((jget (this).mAX_LAYERS)))))
        (StringMaker.toString stringBuffer)


