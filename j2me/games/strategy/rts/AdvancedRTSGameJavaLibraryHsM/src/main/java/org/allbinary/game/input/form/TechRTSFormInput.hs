{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
-- package org.allbinary.game.input.form
module TechRTSFormInput (module TechRTSFormInput, module RTSFormInput) where

import RTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processGameSpecific, processGameSpecific_super, processGameSpecific_impl, eVENT, noMoneyGameNotificationEvent)
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
import qualified LogUtil -- same package or java.lang
import qualified RTSGameStrings -- org.allbinary.game.layer.RTSGameStrings
import qualified RTSInterface -- org.allbinary.game.layer.RTSInterface
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified TechnologyRTSInterfaceImageItem -- org.allbinary.game.layer.TechnologyRTSInterfaceImageItem
import qualified Capital -- org.allbinary.game.layer.capital.Capital
import qualified TechEventHandler -- org.allbinary.game.rts.technology.event.TechEventHandler
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified BuildingSound -- org.allbinary.media.audio.BuildingSound
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ErrorSound -- org.allbinary.media.audio.ErrorSound
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified RTSFormInput

data TechRTSFormInput = TechRTSFormInput
    { header_ :: JavaHeader
    , base :: RTSFormInput.RTSFormInput
    , eVENT :: IORef (AllBinaryEventObject.AllBinaryEventObject)
    , noMoneyGameNotificationEvent :: IORef (GameNotificationEvent.GameNotificationEvent)
    }

instance JavaNull TechRTSFormInput where
    javaNull = javaNullRecord "TechRTSFormInput"

instance JavaEquals TechRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TechRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass TechRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TechRTSFormInput
newRecord_ = do
    base <- RTSFormInput.newRecord_
    let header_ = base.header_
    eVENT <- newIORef javaNull
    noMoneyGameNotificationEvent <- newIORef javaNull
    let this = TechRTSFormInput header_ base eVENT noMoneyGameNotificationEvent
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processGameSpecific" (\() -> processGameSpecific_impl this)
    pure this

initFields_ :: TechRTSFormInput -> IO ()
initFields_ this = do
    jset this.eVENT =<< (AllBinaryEventObject.new_1 this)
    jset this.noMoneyGameNotificationEvent (javaNull)
    pure ()

new_1 :: JavaArray (Group.Group) -> IO TechRTSFormInput
new_1 groupInterface = do
    this <- newRecord_
    init_1 this groupInterface
    pure this

init_1 :: TechRTSFormInput -> JavaArray (Group.Group) -> IO ()
init_1 this groupInterface = do
        RTSFormInput.init_1 this.base (groupInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        basicColorFactory <- (BasicColorFactory.getInstance)
        assignedValue <- (GameNotificationEvent.new_5 this (jget ((jio (RTSGameStrings.getInstance))).nO_MONEY) (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) 2)) (jget (basicColorFactory).wHITE) (jget ((jio (BooleanFactory.getInstance))).fALSE))
        jset (this).noMoneyGameNotificationEvent (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: TechRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: TechRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: TechRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        Control.Monad.void (GameNotificationEvent.setBasicColorP ((jget (this).noMoneyGameNotificationEvent)) (jio (BasicGeographicMap.getForegroundBasicColor geographicMapInterface)))
        pure ()


-- throws Exception
processGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processGameSpecific" (\() -> (processGameSpecific_impl (javaCast object_ :: TechRTSFormInput))) () a1 a2 a3 a4 a5

processGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_super object_ a1 a2 a3 a4 a5 = (processGameSpecific_impl (javaCast object_ :: TechRTSFormInput)) a1 a2 a3 a4 a5

processGameSpecific_impl :: TechRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item itemIndex = do
        Control.Monad.void (RTSFormInput.process_super this.base layerManager)
        commonStrings <- (CommonStrings.getInstance)
        stringMaker <- (StringMaker.new_)
        let technologyRTSInterfaceImageItem = (javaCast item :: TechnologyRTSInterfaceImageItem.TechnologyRTSInterfaceImageItem)
        rtsInterface <- (TechnologyRTSInterfaceImageItem.getRtsInterface technologyRTSInterfaceImageItem)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendboolean ((jio (StringMaker.append stringMaker "isUpgradeable: "))) (jio (RTSInterface.isUpgradeable rtsInterface))))))) this (jget (commonStrings).pROCESS))
        when (jio (RTSInterface.isUpgradeable rtsInterface)) $ do
            cost <- (RTSInterface.getUpgradeCost rtsInterface)
            capital <- (RTSPlayerLayerInterface.getCapital rtsPlayerLayerInterface)
            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint stringMaker cost))) "<="))) (jio (Capital.getTotalMoney capital))))))) this (jget (commonStrings).pROCESS))
            if (cost <= (jio (Capital.getTotalMoney capital))) then do
                Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (BuildingSound.getInstance)))
                Control.Monad.void (Capital.removeMoney capital cost)
                Control.Monad.void (RTSInterface.upgrade rtsInterface)
                Control.Monad.void (TechnologyRTSInterfaceImageItem.update technologyRTSInterfaceImageItem)
                Control.Monad.void (TechEventHandler.fireEvent ((jio (TechEventHandler.getInstance))) (jget (this).eVENT))
            else do
                Control.Monad.void (RTSPlayerLayerInterface.add rtsPlayerLayerInterface (jio (ErrorSound.getInstance)))
                when (Prelude.not (jio (RTSPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface rtsPlayerLayerInterface))) $ do
                    Control.Monad.void (GameNotificationEventHandler.fireEvent ((jio (GameNotificationEventHandler.getInstance))) (jget (this).noMoneyGameNotificationEvent))
        pure ()


