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
module InGameFeatures (module InGameFeatures, module Init) where

import Init hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, addToInGameMenu, addToInGameMenu_super, addToInGameMenu_impl, isAny, isAny_super, isAny_impl)
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
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureChoiceGroups -- org.allbinary.game.configuration.feature.GameFeatureChoiceGroups
import qualified InGameFeatureChoiceGroups -- org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups
import qualified SensorFeatureFactory -- org.allbinary.game.configuration.feature.SensorFeatureFactory
import qualified TouchFeatureFactory -- org.allbinary.game.configuration.feature.TouchFeatureFactory
import qualified Init -- org.allbinary.init.Init
import qualified OrientationData -- org.allbinary.input.gyro.OrientationData
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data InGameFeatures = InGameFeatures
    { header_ :: JavaHeader
    , base :: Init.Init
    }

instance JavaNull InGameFeatures where
    javaNull = javaNullRecord "InGameFeatures"

instance JavaEquals InGameFeatures where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InGameFeatures where
    (==) = jrecordEquals

instance JavaObjectClass InGameFeatures where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InGameFeatures
newRecord_ = do
    base <- Init.newRecord_
    let header_ = base.header_
    let this = InGameFeatures header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "addToInGameMenu" (\() -> addToInGameMenu_impl this)
    jregisterMethod header_ "isAny" (\() -> isAny_impl this)
    pure this

initFields_ :: InGameFeatures -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InGameFeatures
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InGameFeatures -> IO ()
init_ this = do
    Init.init_ this.base
    initFields_ this


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InGameFeatures))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InGameFeatures))

init_impl :: InGameFeatures -> IO (())
init_impl this = do
        let lABEL = "Screen Buttons"
        orientationData <- (OrientationData.getInstance)
        let exclusiveOrientationSensorVector = (javaCast (jio (ABHashtable.get ((jio (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance)))))) (javaCast (jget (orientationData).oRIENTATION_SENSOR_INPUT) :: Any.Any))) :: BasicArrayList.BasicArrayList)
        inGameFeatureChoiceGroups <- (InGameFeatureChoiceGroups.getExclusiveInstance)
        when (exclusiveOrientationSensorVector /= javaNull) $ do
            inGameExclusiveOrientationSensorVectorCanBeNull <- (ABHashtable.get ((jio (InGameFeatureChoiceGroups.get inGameFeatureChoiceGroups))) (javaCast (jget (orientationData).oRIENTATION_SENSOR_INPUT) :: Any.Any))
            if (inGameExclusiveOrientationSensorVectorCanBeNull == javaNull) then do
                Control.Monad.void (InGameFeatures.addToInGameMenu this)
            else do
                let inGameExclusiveOrientationSensorVector = (javaCast inGameExclusiveOrientationSensorVectorCanBeNull :: BasicArrayList.BasicArrayList)
                when ((jio (BasicArrayList.size inGameExclusiveOrientationSensorVector)) == 0) $ do
                    Control.Monad.void (InGameFeatures.addToInGameMenu this)
        features <- (Features.getInstance)
        when (((jio (Features.isFeature features (jget ((jio (TouchFeatureFactory.getInstance))).sHOW_SCREEN_BUTTONS))) || (jio (Features.isFeature features (jget ((jio (TouchFeatureFactory.getInstance))).aUTO_HIDE_SHOW_SCREEN_BUTTONS)))) || (jio (Features.isFeature features (jget ((jio (TouchFeatureFactory.getInstance))).hIDE_SCREEN_BUTTONS)))) $ do
            exclusiveScreenButtonsVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            touchFeatureFactory <- (TouchFeatureFactory.getInstance)
            Control.Monad.void (BasicArrayList.add exclusiveScreenButtonsVector (jget (touchFeatureFactory).aUTO_HIDE_SHOW_SCREEN_BUTTONS))
            Control.Monad.void (BasicArrayList.add exclusiveScreenButtonsVector (jget (touchFeatureFactory).sHOW_SCREEN_BUTTONS))
            Control.Monad.void (BasicArrayList.add exclusiveScreenButtonsVector (jget (touchFeatureFactory).hIDE_SCREEN_BUTTONS))
            Control.Monad.void (InGameFeatureChoiceGroups.add inGameFeatureChoiceGroups lABEL exclusiveScreenButtonsVector)
        pure ()


addToInGameMenu :: (JavaObjectClass this_) => this_ -> IO (())
addToInGameMenu object_ = jmethod object_ "addToInGameMenu" (\() -> (addToInGameMenu_impl (javaCast object_ :: InGameFeatures))) ()

addToInGameMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
addToInGameMenu_super object_ = (addToInGameMenu_impl (javaCast object_ :: InGameFeatures))

addToInGameMenu_impl :: InGameFeatures -> IO (())
addToInGameMenu_impl this = do
        orientationData <- (OrientationData.getInstance)
        inGameExclusiveOrientationSensorVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add inGameExclusiveOrientationSensorVector (jget ((jio (SensorFeatureFactory.getInstance))).oRIENTATION_SENSORS))
        Control.Monad.void (BasicArrayList.add inGameExclusiveOrientationSensorVector (jget ((jio (SensorFeatureFactory.getInstance))).nO_ORIENTATION))
        Control.Monad.void (InGameFeatureChoiceGroups.add ((jio (InGameFeatureChoiceGroups.getExclusiveInstance))) (jget (orientationData).oRIENTATION_SENSOR_INPUT) inGameExclusiveOrientationSensorVector)
        pure ()


isAny :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAny object_ = jmethod object_ "isAny" (\() -> (isAny_impl (javaCast object_ :: InGameFeatures))) ()

isAny_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAny_super object_ = (isAny_impl (javaCast object_ :: InGameFeatures))

isAny_impl :: InGameFeatures -> IO (Bool)
isAny_impl this = do
    javaCatchReturn $ do
        features <- (Features.getInstance)
        touchFeatureFactory <- (TouchFeatureFactory.getInstance)
        when (((jio (Features.isFeature features (jget (touchFeatureFactory).sHOW_SCREEN_BUTTONS))) || (jio (Features.isFeature features (jget (touchFeatureFactory).aUTO_HIDE_SHOW_SCREEN_BUTTONS)))) || (jio (Features.isFeature features (jget (touchFeatureFactory).hIDE_SCREEN_BUTTONS)))) $ do
            javaReturn (True)
        let exclusiveOrientationSensorVector = (javaCast (jio (ABHashtable.get ((jio (GameFeatureChoiceGroups.get ((jio (GameFeatureChoiceGroups.getExclusiveInstance)))))) (javaCast (jget ((jio (OrientationData.getInstance))).oRIENTATION_SENSOR_INPUT) :: Any.Any))) :: BasicArrayList.BasicArrayList)
        when (exclusiveOrientationSensorVector /= javaNull) $ do
            javaReturn (True)
        pure (False)


