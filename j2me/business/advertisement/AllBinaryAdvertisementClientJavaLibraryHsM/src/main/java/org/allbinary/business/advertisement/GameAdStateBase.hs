{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.business.advertisement
module GameAdStateBase where

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
import qualified AdConfiguration -- same package or java.lang
import qualified Advertisements -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified GameType -- org.allbinary.game.GameType
import qualified GameState -- org.allbinary.game.state.GameState
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings

data GameAdStateBase = GameAdStateBase
    { header_ :: JavaHeader
    , adConfigurationP :: IORef (AdConfiguration.AdConfiguration)
    , advertisementsP :: IORef (Advertisements.Advertisements)
    , okayToShowAdsP :: IORef (Bool)
    }

instance JavaNull GameAdStateBase where
    javaNull = javaNullRecord "GameAdStateBase"

instance JavaEquals GameAdStateBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameAdStateBase where
    (==) = jrecordEquals

instance JavaObjectClass GameAdStateBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameAdStateBase
newRecord_ = do
    header_ <- newJavaHeader
    adConfigurationP <- newIORef javaNull
    advertisementsP <- newIORef javaNull
    okayToShowAdsP <- newIORef False
    let this = GameAdStateBase header_ adConfigurationP advertisementsP okayToShowAdsP
    jregisterLevel header_ this
    jregisterMethod header_ "initViewArray" (\() -> initViewArray_impl this)
    jregisterMethod header_ "onStart" (\() -> onStart_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isShowingAtLocation" (\() -> isShowingAtLocation_impl this)
    jregisterMethod header_ "isShowingAt" (\() -> isShowingAt_impl this)
    jregisterMethod header_ "show" (\() -> show_impl this)
    jregisterMethod header_ "hide" (\() -> hide_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "processAdState" (\() -> processAdState_impl this)
    jregisterMethod header_ "processPageAdState" (\() -> processPageAdState_impl this)
    jregisterMethod header_ "playingAdState" (\() -> playingAdState_impl this)
    jregisterMethod header_ "playingAdStateWH" (\() -> playingAdStateWH_impl this)
    jregisterMethod header_ "notPlayingAdState" (\() -> notPlayingAdState_impl this)
    jregisterMethod header_ "setGameIsReady" (\() -> setGameIsReady_impl this)
    jregisterMethod header_ "isGameIsReady" (\() -> isGameIsReady_impl this)
    jregisterMethod header_ "getAdvertisements" (\() -> getAdvertisements_impl this)
    jregisterMethod header_ "getAdConfiguration" (\() -> getAdConfiguration_impl this)
    jregisterMethod header_ "isOkayToShowPageAd" (\() -> isOkayToShowPageAd_impl this)
    jregisterMethod header_ "setOkayToShowAds" (\() -> setOkayToShowAds_impl this)
    jregisterMethod header_ "isOkayToShowAds" (\() -> isOkayToShowAds_impl this)
    jregisterMethod header_ "isEnabled" (\() -> isEnabled_impl this)
    pure this

initFields_ :: GameAdStateBase -> IO ()
initFields_ this = do
    jset this.adConfigurationP (javaNull)
    jset this.advertisementsP =<< (Advertisements.new_)
    jset this.okayToShowAdsP (False)
    pure ()

new_1 :: AdConfiguration.AdConfiguration -> IO GameAdStateBase
new_1 adConfiguration = do
    this <- newRecord_
    init_1 this adConfiguration
    pure this

init_1 :: GameAdStateBase -> AdConfiguration.AdConfiguration -> IO ()
init_1 this adConfiguration = do
        initFields_ this
        jset (this).adConfigurationP (adConfiguration)
        pure ()


initViewArray :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
initViewArray object_ a1 = jmethod object_ "initViewArray" (\() -> (initViewArray_impl (javaCast object_ :: GameAdStateBase))) () a1

initViewArray_super :: (JavaObjectClass this_) => this_ -> JavaArray (Any.Any) -> IO (())
initViewArray_super object_ a1 = (initViewArray_impl (javaCast object_ :: GameAdStateBase)) a1

initViewArray_impl :: GameAdStateBase -> JavaArray (Any.Any) -> IO (())
initViewArray_impl this viewArray = do
        pure ()


onStart :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onStart object_ a1 = jmethod object_ "onStart" (\() -> (onStart_impl (javaCast object_ :: GameAdStateBase))) () (jtoObject a1)

onStart_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
onStart_super object_ a1 = (onStart_impl (javaCast object_ :: GameAdStateBase)) (jtoObject a1)

onStart_impl :: GameAdStateBase -> JavaObject -> IO (())
onStart_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (GameAdStateBase.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameAdStateBase))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GameAdStateBase))

init_impl :: GameAdStateBase -> IO (())
init_impl this = do
        pure ()


isShowingAtLocation :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isShowingAtLocation object_ a1 = jmethod object_ "isShowingAtLocation" (\() -> (isShowingAtLocation_impl (javaCast object_ :: GameAdStateBase))) () a1

isShowingAtLocation_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Bool)
isShowingAtLocation_super object_ a1 = (isShowingAtLocation_impl (javaCast object_ :: GameAdStateBase)) a1

isShowingAtLocation_impl :: GameAdStateBase -> Int -> IO (Bool)
isShowingAtLocation_impl this location = do
        pure (False)


isShowingAt :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowingAt object_ = jmethod object_ "isShowingAt" (\() -> (isShowingAt_impl (javaCast object_ :: GameAdStateBase))) ()

isShowingAt_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isShowingAt_super object_ = (isShowingAt_impl (javaCast object_ :: GameAdStateBase))

isShowingAt_impl :: GameAdStateBase -> IO (Bool)
isShowingAt_impl this = do
        pure (False)


show :: (JavaObjectClass this_) => this_ -> IO (())
show object_ = jmethod object_ "show" (\() -> (show_impl (javaCast object_ :: GameAdStateBase))) ()

show_super :: (JavaObjectClass this_) => this_ -> IO (())
show_super object_ = (show_impl (javaCast object_ :: GameAdStateBase))

show_impl :: GameAdStateBase -> IO (())
show_impl this = do
        pure ()


hide :: (JavaObjectClass this_) => this_ -> IO (())
hide object_ = jmethod object_ "hide" (\() -> (hide_impl (javaCast object_ :: GameAdStateBase))) ()

hide_super :: (JavaObjectClass this_) => this_ -> IO (())
hide_super object_ = (hide_impl (javaCast object_ :: GameAdStateBase))

hide_impl :: GameAdStateBase -> IO (())
hide_impl this = do
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameAdStateBase))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameAdStateBase)) a1

onEvent_impl :: GameAdStateBase -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


processAdState :: (JavaObjectClass this_) => this_ -> GameState.GameState -> GameType.GameType -> IO (())
processAdState object_ a1 a2 = jmethod object_ "processAdState" (\() -> (processAdState_impl (javaCast object_ :: GameAdStateBase))) () a1 a2

processAdState_super :: (JavaObjectClass this_) => this_ -> GameState.GameState -> GameType.GameType -> IO (())
processAdState_super object_ a1 a2 = (processAdState_impl (javaCast object_ :: GameAdStateBase)) a1 a2

processAdState_impl :: GameAdStateBase -> GameState.GameState -> GameType.GameType -> IO (())
processAdState_impl this gameState gameType = do
        pure ()


processPageAdState :: (JavaObjectClass this_) => this_ -> IO (())
processPageAdState object_ = jmethod object_ "processPageAdState" (\() -> (processPageAdState_impl (javaCast object_ :: GameAdStateBase))) ()

processPageAdState_super :: (JavaObjectClass this_) => this_ -> IO (())
processPageAdState_super object_ = (processPageAdState_impl (javaCast object_ :: GameAdStateBase))

processPageAdState_impl :: GameAdStateBase -> IO (())
processPageAdState_impl this = do
        pure ()


-- throws Exception
playingAdState :: (JavaObjectClass this_) => this_ -> IO (())
playingAdState object_ = jmethod object_ "playingAdState" (\() -> (playingAdState_impl (javaCast object_ :: GameAdStateBase))) ()

playingAdState_super :: (JavaObjectClass this_) => this_ -> IO (())
playingAdState_super object_ = (playingAdState_impl (javaCast object_ :: GameAdStateBase))

playingAdState_impl :: GameAdStateBase -> IO (())
playingAdState_impl this = do
        pure ()


-- throws Exception
playingAdStateWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
playingAdStateWH object_ a1 a2 = jmethod object_ "playingAdStateWH" (\() -> (playingAdStateWH_impl (javaCast object_ :: GameAdStateBase))) () a1 a2

playingAdStateWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
playingAdStateWH_super object_ a1 a2 = (playingAdStateWH_impl (javaCast object_ :: GameAdStateBase)) a1 a2

playingAdStateWH_impl :: GameAdStateBase -> Int -> Int -> IO (())
playingAdStateWH_impl this width height = do
        pure ()


-- throws Exception
notPlayingAdState :: (JavaObjectClass this_) => this_ -> IO (())
notPlayingAdState object_ = jmethod object_ "notPlayingAdState" (\() -> (notPlayingAdState_impl (javaCast object_ :: GameAdStateBase))) ()

notPlayingAdState_super :: (JavaObjectClass this_) => this_ -> IO (())
notPlayingAdState_super object_ = (notPlayingAdState_impl (javaCast object_ :: GameAdStateBase))

notPlayingAdState_impl :: GameAdStateBase -> IO (())
notPlayingAdState_impl this = do
        pure ()


setGameIsReady :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameIsReady object_ a1 = jmethod object_ "setGameIsReady" (\() -> (setGameIsReady_impl (javaCast object_ :: GameAdStateBase))) () a1

setGameIsReady_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setGameIsReady_super object_ a1 = (setGameIsReady_impl (javaCast object_ :: GameAdStateBase)) a1

setGameIsReady_impl :: GameAdStateBase -> Bool -> IO (())
setGameIsReady_impl this gameIsReady = do
        pure ()


isGameIsReady :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameIsReady object_ = jmethod object_ "isGameIsReady" (\() -> (isGameIsReady_impl (javaCast object_ :: GameAdStateBase))) ()

isGameIsReady_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isGameIsReady_super object_ = (isGameIsReady_impl (javaCast object_ :: GameAdStateBase))

isGameIsReady_impl :: GameAdStateBase -> IO (Bool)
isGameIsReady_impl this = do
        pure (False)


getAdvertisements :: (JavaObjectClass this_) => this_ -> IO (Advertisements.Advertisements)
getAdvertisements object_ = jmethod object_ "getAdvertisements" (\() -> (getAdvertisements_impl (javaCast object_ :: GameAdStateBase))) ()

getAdvertisements_super :: (JavaObjectClass this_) => this_ -> IO (Advertisements.Advertisements)
getAdvertisements_super object_ = (getAdvertisements_impl (javaCast object_ :: GameAdStateBase))

getAdvertisements_impl :: GameAdStateBase -> IO (Advertisements.Advertisements)
getAdvertisements_impl this = do
        pure ((jget (this).advertisementsP))


getAdConfiguration :: (JavaObjectClass this_) => this_ -> IO (AdConfiguration.AdConfiguration)
getAdConfiguration object_ = jmethod object_ "getAdConfiguration" (\() -> (getAdConfiguration_impl (javaCast object_ :: GameAdStateBase))) ()

getAdConfiguration_super :: (JavaObjectClass this_) => this_ -> IO (AdConfiguration.AdConfiguration)
getAdConfiguration_super object_ = (getAdConfiguration_impl (javaCast object_ :: GameAdStateBase))

getAdConfiguration_impl :: GameAdStateBase -> IO (AdConfiguration.AdConfiguration)
getAdConfiguration_impl this = do
        pure ((jget (this).adConfigurationP))


isOkayToShowPageAd :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOkayToShowPageAd object_ = jmethod object_ "isOkayToShowPageAd" (\() -> (isOkayToShowPageAd_impl (javaCast object_ :: GameAdStateBase))) ()

isOkayToShowPageAd_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOkayToShowPageAd_super object_ = (isOkayToShowPageAd_impl (javaCast object_ :: GameAdStateBase))

isOkayToShowPageAd_impl :: GameAdStateBase -> IO (Bool)
isOkayToShowPageAd_impl this = do
        pure (False)


setOkayToShowAds :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOkayToShowAds object_ a1 = jmethod object_ "setOkayToShowAds" (\() -> (setOkayToShowAds_impl (javaCast object_ :: GameAdStateBase))) () a1

setOkayToShowAds_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOkayToShowAds_super object_ a1 = (setOkayToShowAds_impl (javaCast object_ :: GameAdStateBase)) a1

setOkayToShowAds_impl :: GameAdStateBase -> Bool -> IO (())
setOkayToShowAds_impl this okayToShowAds = do
        jset (this).okayToShowAdsP (okayToShowAds)
        pure ()


isOkayToShowAds :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOkayToShowAds object_ = jmethod object_ "isOkayToShowAds" (\() -> (isOkayToShowAds_impl (javaCast object_ :: GameAdStateBase))) ()

isOkayToShowAds_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOkayToShowAds_super object_ = (isOkayToShowAds_impl (javaCast object_ :: GameAdStateBase))

isOkayToShowAds_impl :: GameAdStateBase -> IO (Bool)
isOkayToShowAds_impl this = do
        pure ((jget (this).okayToShowAdsP))


isEnabled :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled object_ = jmethod object_ "isEnabled" (\() -> (isEnabled_impl (javaCast object_ :: GameAdStateBase))) ()

isEnabled_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isEnabled_super object_ = (isEnabled_impl (javaCast object_ :: GameAdStateBase))

isEnabled_impl :: GameAdStateBase -> IO (Bool)
isEnabled_impl this = do
        pure (False)


