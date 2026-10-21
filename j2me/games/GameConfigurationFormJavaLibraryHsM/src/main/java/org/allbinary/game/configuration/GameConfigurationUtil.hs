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
module GameConfigurationUtil where

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
import qualified GameConfigurationSingleton -- same package or java.lang
import qualified GameConfiguration -- same package or java.lang
import qualified GameOptionsForm -- same package or java.lang
import qualified GameConfigurationGauge -- same package or java.lang
import qualified GameConfigurationCentral -- same package or java.lang
import qualified Item -- javax.microedition.lcdui.Item
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameConfigurationUtil = GameConfigurationUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , gAUGE_UPDATE :: IORef (String)
    , fROM :: IORef (String)
    , tO :: IORef (String)
    , cOMPETITION_VALUE :: IORef (Int)
    }

instance JavaNull GameConfigurationUtil where
    javaNull = javaNullRecord "GameConfigurationUtil"

instance JavaEquals GameConfigurationUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameConfigurationUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameConfigurationUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameConfigurationUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    gAUGE_UPDATE <- newIORef ""
    fROM <- newIORef ""
    tO <- newIORef ""
    cOMPETITION_VALUE <- newIORef 0
    let this = GameConfigurationUtil header_ logUtil commonStrings gAUGE_UPDATE fROM tO cOMPETITION_VALUE
    jregisterLevel header_ this
    jregisterMethod header_ "change" (\() -> change_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "updateChallange" (\() -> updateChallange_impl this)
    jregisterMethod header_ "updateCompetitionValue" (\() -> updateCompetitionValue_impl this)
    jregisterMethod header_ "getCompetitionValue" (\() -> getCompetitionValue_impl this)
    pure this

initFields_ :: GameConfigurationUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.gAUGE_UPDATE ("Gauge Update: ")
    jset this.fROM (" from: ")
    jset this.tO (" to: ")
    jset this.cOMPETITION_VALUE (1)
    pure ()

new_ :: IO GameConfigurationUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameConfigurationUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameConfigurationUtil)
getInstance = do
        pure (GameConfigurationUtil.instance_)


-- throws Exception
change :: (JavaObjectClass this_) => this_ -> GameOptionsForm.GameOptionsForm -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
change object_ a1 a2 = jmethod object_ "change" (\() -> (change_impl (javaCast object_ :: GameConfigurationUtil))) () a1 a2

change_super :: (JavaObjectClass this_) => this_ -> GameOptionsForm.GameOptionsForm -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
change_super object_ a1 a2 = (change_impl (javaCast object_ :: GameConfigurationUtil)) a1 a2

change_impl :: GameConfigurationUtil -> GameOptionsForm.GameOptionsForm -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
change_impl this gameOptionsForm gauge = do
        Control.Monad.void (GameConfigurationUtil.update this gauge)
        gameConfigurationSingleton <- (GameConfigurationSingleton.getInstance)
        gameConfiguration <- (GameConfigurationSingleton.getInstanceByName gameConfigurationSingleton (jio (GameConfigurationGauge.getLabel gauge)))
        Control.Monad.void (GameConfigurationUtil.updateChallange this gameOptionsForm gameConfiguration)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameConfigurationUtil))) () a1

update_super :: (JavaObjectClass this_) => this_ -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: GameConfigurationUtil)) a1

update_impl :: GameConfigurationUtil -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
update_impl this gauge = do
        gameConfigurationSingleton <- (GameConfigurationSingleton.getInstance)
        gameConfiguration <- (GameConfigurationSingleton.getInstanceByName gameConfigurationSingleton (jio (GameConfigurationGauge.getLabel gauge)))
        smallIntegerSingletonFactory <- (SmallIntegerSingletonFactory.getInstance)
        value <- (SmallIntegerSingletonFactory.getAt smallIntegerSingletonFactory ((jio (GameConfigurationGauge.getValue gauge)) + (jio (GameConfiguration.getMinValue gameConfiguration))))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).gAUGE_UPDATE))
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName gameConfiguration)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).fROM))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getValue gameConfiguration)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tO))
        Control.Monad.void (StringMaker.appendint stringBuffer (value))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget ((jget (this).commonStrings)).uPDATE))
        Control.Monad.void (GameConfiguration.setValue gameConfiguration value)
        pure ()


-- throws Exception
setDefault :: (JavaObjectClass this_) => this_ -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: GameConfigurationUtil))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: GameConfigurationUtil)) a1

setDefault_impl :: GameConfigurationUtil -> GameConfigurationGauge.GameConfigurationGauge -> IO (())
setDefault_impl this gauge = do
        gameConfigurationSingleton <- (GameConfigurationSingleton.getInstance)
        gameConfiguration <- (GameConfigurationSingleton.getInstanceByName gameConfigurationSingleton (jio (GameConfigurationGauge.getLabel gauge)))
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "Gauge Default: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (GameConfiguration.getName gameConfiguration)))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tO))
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameConfiguration.getDefaultValue gameConfiguration)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "setDefault")
        Control.Monad.void (GameConfigurationGauge.setValue gauge ((jio (GameConfiguration.getDefaultValue gameConfiguration)) - (jio (GameConfiguration.getMinValue gameConfiguration))))
        Control.Monad.void (GameConfiguration.setValue gameConfiguration (jio (GameConfiguration.getDefaultValue gameConfiguration)))
        pure ()


-- throws Exception
updateChallange :: (JavaObjectClass this_) => this_ -> GameOptionsForm.GameOptionsForm -> GameConfiguration.GameConfiguration -> IO (())
updateChallange object_ a1 a2 = jmethod object_ "updateChallange" (\() -> (updateChallange_impl (javaCast object_ :: GameConfigurationUtil))) () a1 a2

updateChallange_super :: (JavaObjectClass this_) => this_ -> GameOptionsForm.GameOptionsForm -> GameConfiguration.GameConfiguration -> IO (())
updateChallange_super object_ a1 a2 = (updateChallange_impl (javaCast object_ :: GameConfigurationUtil)) a1 a2

updateChallange_impl :: GameConfigurationUtil -> GameOptionsForm.GameOptionsForm -> GameConfiguration.GameConfiguration -> IO (())
updateChallange_impl this gameOptionsForm gameConfiguration = do
        gameConfigurationSingleton <- (GameConfigurationSingleton.getInstance)
        gameConfigurationCentral <- (GameConfigurationCentral.getInstance)
        when (gameConfiguration == (jget (gameConfigurationCentral).cHALLENGE_LEVEL)) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "updateChallange")
            Control.Monad.void (GameConfiguration.setValue ((jget (gameConfigurationCentral).cOLLIDE_DAMAGE)) (jio (GameConfiguration.getValue gameConfiguration)))
            Control.Monad.void (GameConfiguration.setValue ((jget (gameConfigurationCentral).aTTACK_CHALLENGE_LEVEL)) (jio (GameConfiguration.getValue gameConfiguration)))
            Control.Monad.void (GameConfiguration.setValue ((jget (gameConfigurationCentral).dURABILITY_CHALLENGE_LEVEL)) (jio (GameConfiguration.getValue gameConfiguration)))
            Control.Monad.void (GameConfiguration.setValue ((jget (gameConfigurationCentral).sPEED_CHALLENGE_LEVEL)) (jio (GameConfiguration.getValue gameConfiguration)))
            size <- (GameOptionsForm.size gameOptionsForm)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                item <- (GameOptionsForm.get gameOptionsForm index)
                when (javaInstanceOf item "GameConfigurationGauge") $ do
                    let gauge = (javaCast item :: GameConfigurationGauge.GameConfigurationGauge)
                    name <- (Item.getLabel item)
                    nextGameConfiguration <- (GameConfigurationSingleton.getInstanceByName gameConfigurationSingleton name)
                    if (nextGameConfiguration == (jget (gameConfigurationCentral).cOLLIDE_DAMAGE)) then do
                        Control.Monad.void (GameConfigurationGauge.setValue gauge ((jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).cOLLIDE_DAMAGE)))) - (jio (GameConfiguration.getMinValue gameConfiguration))))
                    else if (nextGameConfiguration == (jget (gameConfigurationCentral).dURABILITY_CHALLENGE_LEVEL)) then do
                        Control.Monad.void (GameConfigurationGauge.setValue gauge ((jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).dURABILITY_CHALLENGE_LEVEL)))) - (jio (GameConfiguration.getMinValue gameConfiguration))))
                    else if (nextGameConfiguration == (jget (gameConfigurationCentral).aTTACK_CHALLENGE_LEVEL)) then do
                        Control.Monad.void (GameConfigurationGauge.setValue gauge ((jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).aTTACK_CHALLENGE_LEVEL)))) - (jio (GameConfiguration.getMinValue gameConfiguration))))
                    else when (nextGameConfiguration == (jget (gameConfigurationCentral).sPEED_CHALLENGE_LEVEL)) $ do
                        Control.Monad.void (GameConfigurationGauge.setValue gauge ((jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).sPEED_CHALLENGE_LEVEL)))) - (jio (GameConfiguration.getMinValue gameConfiguration))))
        pure ()


updateCompetitionValue :: (JavaObjectClass this_) => this_ -> IO (())
updateCompetitionValue object_ = jmethod object_ "updateCompetitionValue" (\() -> (updateCompetitionValue_impl (javaCast object_ :: GameConfigurationUtil))) ()

updateCompetitionValue_super :: (JavaObjectClass this_) => this_ -> IO (())
updateCompetitionValue_super object_ = (updateCompetitionValue_impl (javaCast object_ :: GameConfigurationUtil))

updateCompetitionValue_impl :: GameConfigurationUtil -> IO (())
updateCompetitionValue_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "updateCompetitionValue")
        gameConfigurationCentral <- (GameConfigurationCentral.getInstance)
        jset (this).cOMPETITION_VALUE (((((jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).cOLLIDE_DAMAGE)))) + (jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).aTTACK_CHALLENGE_LEVEL))))) + (jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).dURABILITY_CHALLENGE_LEVEL))))) + (jio (GameConfiguration.getValue ((jget (gameConfigurationCentral).sPEED_CHALLENGE_LEVEL))))))
        jset (this).cOMPETITION_VALUE ((((jget (this).cOMPETITION_VALUE) `Data.Bits.shiftR` 2)))
        pure ()


getCompetitionValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getCompetitionValue object_ = jmethod object_ "getCompetitionValue" (\() -> (getCompetitionValue_impl (javaCast object_ :: GameConfigurationUtil))) ()

getCompetitionValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCompetitionValue_super object_ = (getCompetitionValue_impl (javaCast object_ :: GameConfigurationUtil))

getCompetitionValue_impl :: GameConfigurationUtil -> IO (Int)
getCompetitionValue_impl this = do
        pure ((jget (this).cOMPETITION_VALUE))


