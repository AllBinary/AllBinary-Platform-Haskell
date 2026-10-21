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
-- package org.allbinary.game.configuration.event
module BaseChangedGameFeatureListener where

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
import qualified GameFeatureEvent -- same package or java.lang
import qualified Feature -- org.allbinary.game.configuration.feature.Feature
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureUtil -- org.allbinary.game.configuration.feature.GameFeatureUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified GameFeatureListenerInterface

-- implements GameFeatureListenerInterface
data BaseChangedGameFeatureListener = BaseChangedGameFeatureListener
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameFeatureUtil :: IORef (GameFeatureUtil.GameFeatureUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , changed :: IORef (Bool)
    }

instance JavaNull BaseChangedGameFeatureListener where
    javaNull = javaNullRecord "BaseChangedGameFeatureListener"

instance JavaEquals BaseChangedGameFeatureListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseChangedGameFeatureListener where
    (==) = jrecordEquals

instance JavaObjectClass BaseChangedGameFeatureListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseChangedGameFeatureListener
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    gameFeatureUtil <- newIORef javaNull
    list <- newIORef javaNull
    changed <- newIORef False
    let this = BaseChangedGameFeatureListener header_ logUtil gameFeatureUtil list changed
    jregisterLevel header_ this
    GameFeatureListenerInterface.registerInterface_ header_
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onGameFeatureChange" (\() -> onGameFeatureChange_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "setChanged" (\() -> setChanged_impl this)
    jregisterMethod header_ "isChangedFeature" (\() -> isChangedFeature_impl this)
    jregisterMethod header_ "isChanged" (\() -> isChanged_impl this)
    pure this

initFields_ :: BaseChangedGameFeatureListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameFeatureUtil =<< (GameFeatureUtil.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.changed (True)
    pure ()

new_ :: IO BaseChangedGameFeatureListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseChangedGameFeatureListener -> IO ()
init_ this = do
    initFields_ this


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

onEvent_impl :: BaseChangedGameFeatureListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (CommonStrings.getInstance))).nOT_IMPLEMENTED) this)
        pure ()


onGameFeatureChange :: (JavaObjectClass this_) => this_ -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange object_ a1 = jmethod object_ "onGameFeatureChange" (\() -> (onGameFeatureChange_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

onGameFeatureChange_super :: (JavaObjectClass this_) => this_ -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange_super object_ a1 = (onGameFeatureChange_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

onGameFeatureChange_impl :: BaseChangedGameFeatureListener -> GameFeatureEvent.GameFeatureEvent -> IO (())
onGameFeatureChange_impl this gameFeatureEvent = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameFeatureUtil)).gAME_FEATURE_CHANGED)))) (jio (GameFeatureEvent.getWhatChanged gameFeatureEvent))))))) this (jget ((jget (this).gameFeatureUtil)).oN_GAME_FEATURE_CHANGE))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jio (GameFeatureEvent.getGameOption gameFeatureEvent)))
        Control.Monad.void (BaseChangedGameFeatureListener.setChanged this True)
        pure ()


add :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

add_impl :: BaseChangedGameFeatureListener -> Feature.Feature -> IO (())
add_impl this gameFeature = do
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) gameFeature)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

remove_impl :: BaseChangedGameFeatureListener -> Feature.Feature -> IO (())
remove_impl this gameFeature = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).list)) gameFeature)
        pure ()


setChanged :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setChanged object_ a1 = jmethod object_ "setChanged" (\() -> (setChanged_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

setChanged_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setChanged_super object_ a1 = (setChanged_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

setChanged_impl :: BaseChangedGameFeatureListener -> Bool -> IO (())
setChanged_impl this initialized = do
        jset (this).changed (initialized)
        when (Prelude.not (jio (BaseChangedGameFeatureListener.isChanged this))) $ do
            Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


isChangedFeature :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isChangedFeature object_ a1 = jmethod object_ "isChangedFeature" (\() -> (isChangedFeature_impl (javaCast object_ :: BaseChangedGameFeatureListener))) () a1

isChangedFeature_super :: (JavaObjectClass this_) => this_ -> Feature.Feature -> IO (Bool)
isChangedFeature_super object_ a1 = (isChangedFeature_impl (javaCast object_ :: BaseChangedGameFeatureListener)) a1

isChangedFeature_impl :: BaseChangedGameFeatureListener -> Feature.Feature -> IO (Bool)
isChangedFeature_impl this gameFeature = do
        isChanged <- (BasicArrayList.contains ((jget (this).list)) gameFeature)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "GameFeature: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) gameFeature)))
        Control.Monad.void (StringMaker.append stringBuffer " isFeature: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer (jio (Features.isFeature ((jio (Features.getInstance))) gameFeature)))
        Control.Monad.void (StringMaker.append stringBuffer " isChanged: ")
        Control.Monad.void (StringMaker.appendboolean stringBuffer isChanged)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "isChanged")
        pure (isChanged)


isChanged :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChanged object_ = jmethod object_ "isChanged" (\() -> (isChanged_impl (javaCast object_ :: BaseChangedGameFeatureListener))) ()

isChanged_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isChanged_super object_ = (isChanged_impl (javaCast object_ :: BaseChangedGameFeatureListener))

isChanged_impl :: BaseChangedGameFeatureListener -> IO (Bool)
isChanged_impl this = do
        pure ((jget (this).changed))


