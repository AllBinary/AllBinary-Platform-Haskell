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
-- package org.allbinary.game.configuration.feature
module Features where

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
import qualified Feature -- same package or java.lang
import qualified GameFeatureFactory -- same package or java.lang
import qualified InputFeatureFactory -- same package or java.lang
import qualified SensorFeatureFactory -- same package or java.lang
import qualified TouchFeatureFactory -- same package or java.lang
import qualified MainFeatureFactory -- same package or java.lang
import qualified GameFeatureEvent -- org.allbinary.game.configuration.event.GameFeatureEvent
import qualified GameFeatureEventHandler -- org.allbinary.game.configuration.event.GameFeatureEventHandler
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data Features = Features
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , defaultList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull Features where
    javaNull = javaNullRecord "Features"

instance JavaEquals Features where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Features where
    (==) = jrecordEquals

instance JavaObjectClass Features where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Features
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    list <- newIORef javaNull
    defaultList <- newIORef javaNull
    let this = Features header_ logUtil commonStrings list defaultList
    jregisterLevel header_ this
    jregisterMethod header_ "addDefault" (\() -> addDefault_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "removeDefault" (\() -> removeDefault_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isDefault" (\() -> isDefault_impl this)
    jregisterMethod header_ "isFeature" (\() -> isFeature_impl this)
    jregisterMethod header_ "toggle" (\() -> toggle_impl this)
    pure this

initFields_ :: Features -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.list (javaNull)
    jset this.defaultList (javaNull)
    pure ()


getInstance :: IO (Features)
getInstance = do
        when ((jget Features.sINGLETON) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset Features.sINGLETON (assignedValue)
        pure ((javaCast (jget Features.sINGLETON) :: Features))

new_ :: IO Features
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Features -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).list (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).defaultList (assignedValue)
        Control.Monad.void (Features.init this)
        pure ()


-- throws Exception
addDefault :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
addDefault object_ a1 = jmethod object_ "addDefault" (\() -> (addDefault_impl (javaCast object_ :: Features))) () a1

addDefault_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
addDefault_super object_ a1 = (addDefault_impl (javaCast object_ :: Features)) a1

addDefault_impl :: Features -> Feature.Feature -> IO (())
addDefault_impl this gameFeature = do
        Control.Monad.void (Features.add this gameFeature)
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).defaultList)) gameFeature))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).defaultList)) gameFeature)
        pure ()


-- throws Exception
add :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: Features))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: Features)) a1

add_impl :: Features -> Feature.Feature -> IO (())
add_impl this gameFeature = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).list)) gameFeature))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (Feature.toString gameFeature))))))) this (jget ((jget (this).commonStrings)).aDD))
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) gameFeature)
            Control.Monad.void (GameFeatureEventHandler.fireEvent ((jio (GameFeatureEventHandler.getInstance))) (jio (GameFeatureEvent.new_2 gameFeature (jio (Feature.toString gameFeature)))))
        pure ()


-- throws Exception
removeDefault :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
removeDefault object_ a1 = jmethod object_ "removeDefault" (\() -> (removeDefault_impl (javaCast object_ :: Features))) () a1

removeDefault_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
removeDefault_super object_ a1 = (removeDefault_impl (javaCast object_ :: Features)) a1

removeDefault_impl :: Features -> Feature.Feature -> IO (())
removeDefault_impl this gameFeature = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (Feature.toString gameFeature))))))) this "removeDefault")
        Control.Monad.void (Features.remove this gameFeature)
        Control.Monad.void (BasicArrayList.remove ((jget (this).defaultList)) gameFeature)
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: Features))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: Features)) a1

remove_impl :: Features -> Feature.Feature -> IO (())
remove_impl this gameFeature = do
        when (jio (BasicArrayList.contains ((jget (this).list)) gameFeature)) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).rEMOVE))
            Control.Monad.void (BasicArrayList.remove ((jget (this).list)) gameFeature)
            Control.Monad.void (GameFeatureEventHandler.fireEvent ((jio (GameFeatureEventHandler.getInstance))) (jio (GameFeatureEvent.new_2 gameFeature (jio (Feature.toString gameFeature)))))
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: Features))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: Features))

init_impl :: Features -> IO (())
init_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).iNIT) e)
            ) $ do
            gameFeatureFactory <- (GameFeatureFactory.getInstance)
            inputFeatureFactory <- (InputFeatureFactory.getInstance)
            sensorFeatureFactory <- (SensorFeatureFactory.getInstance)
            touchFeatureFactory <- (TouchFeatureFactory.getInstance)
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).aRTIFICIAL_INTELLEGENCE_PROCESSOR))
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).cOLLIDABLE_INTERFACE_LAYER_PROCESSOR))
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).gAME_INPUT_LAYER_PROCESSOR))
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).tICKABLE_LAYER_PROCESSOR))
            Control.Monad.void (Features.addDefault this (jget (inputFeatureFactory).mULTI_KEY_PRESS))
            Control.Monad.void (Features.addDefault this (jget (inputFeatureFactory).rEMOVE_DUPLICATE_KEY_PRESSES))
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).sCREEN_SHAKE))
            Control.Monad.void (Features.addDefault this (jget (gameFeatureFactory).pOST_IMAGE_LOADING_MODIFICATION))
            operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
            if (jio (GenericOperatingSystem.isOverScan operatingSystemInterface)) then do
                Control.Monad.void (Features.addDefault this (jget (sensorFeatureFactory).nO_ORIENTATION))
                Control.Monad.void (Features.addDefault this (jget (touchFeatureFactory).hIDE_SCREEN_BUTTONS))
            else do
                Control.Monad.void (Features.addDefault this (jget (sensorFeatureFactory).oRIENTATION_SENSORS))
                Control.Monad.void (Features.addDefault this (jget (touchFeatureFactory).aUTO_HIDE_SHOW_SCREEN_BUTTONS))
            Control.Monad.void (Features.addDefault this (jget (touchFeatureFactory).tOUCH_ENABLED))
            Control.Monad.void (Features.addDefault this (jget ((jio (MainFeatureFactory.getInstance))).fULL_SCREEN))
            Control.Monad.void (Features.addDefault this (jget ((jio (MainFeatureFactory.getInstance))).lOAD_ONDEMAND))
        pure ()


isDefault :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isDefault object_ a1 = jmethod object_ "isDefault" (\() -> (isDefault_impl (javaCast object_ :: Features))) () a1

isDefault_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isDefault_super object_ a1 = (isDefault_impl (javaCast object_ :: Features)) a1

isDefault_impl :: Features -> Feature.Feature -> IO (Bool)
isDefault_impl this gameFeature = do
        (BasicArrayList.contains ((jget (this).defaultList)) gameFeature)


isFeature :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isFeature object_ a1 = jmethod object_ "isFeature" (\() -> (isFeature_impl (javaCast object_ :: Features))) () a1

isFeature_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isFeature_super object_ a1 = (isFeature_impl (javaCast object_ :: Features)) a1

isFeature_impl :: Features -> Feature.Feature -> IO (Bool)
isFeature_impl this gameFeature = do
        (BasicArrayList.contains ((jget (this).list)) gameFeature)


-- throws Exception
toggle :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
toggle object_ a1 = jmethod object_ "toggle" (\() -> (toggle_impl (javaCast object_ :: Features))) () a1

toggle_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
toggle_super object_ a1 = (toggle_impl (javaCast object_ :: Features)) a1

toggle_impl :: Features -> Feature.Feature -> IO (())
toggle_impl this gameFeature = do
        if (jio (Features.isFeature this gameFeature)) then do
            Control.Monad.void (Features.remove this gameFeature)
        else do
            Control.Monad.void (Features.add this gameFeature)
        pure ()


