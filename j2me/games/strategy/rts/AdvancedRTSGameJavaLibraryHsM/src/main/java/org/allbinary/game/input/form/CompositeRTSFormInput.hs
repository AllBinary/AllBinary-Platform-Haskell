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
module CompositeRTSFormInput (module CompositeRTSFormInput, module RTSFormInput) where

import RTSFormInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setAllBinaryGameLayerManager, setAllBinaryGameLayerManager_super, setAllBinaryGameLayerManager_impl, processAtPoint, processAtPoint_super, processAtPoint_impl, processGameSpecific, processGameSpecific_super, processGameSpecific_impl, processSticky, processSticky_super, processSticky_impl, processStickyGameSpecific, processStickyGameSpecific_super, processStickyGameSpecific_impl, getSelectedStickyItemIndex, getSelectedStickyItemIndex_super, getSelectedStickyItemIndex_impl, isStickyItemSelected, isStickyItemSelected_super, isStickyItemSelected_impl, setStickyItemSelected, setStickyItemSelected_super, setStickyItemSelected_impl, getSelectedStickyItem, getSelectedStickyItem_super, getSelectedStickyItem_impl, setSelectedStickyItem, setSelectedStickyItem_super, setSelectedStickyItem_impl, rtsFormInputArray, itemIndex, isPrimaryWaypointCreator)
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
import qualified WaypointRTSFormInput -- same package or java.lang
import qualified UnitRTSFormInput -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCompositeInterface -- org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified RTSFormInput

data CompositeRTSFormInput = CompositeRTSFormInput
    { header_ :: JavaHeader
    , base :: RTSFormInput.RTSFormInput
    , rtsFormInputArray :: IORef (JavaArray (RTSFormInput.RTSFormInput))
    , itemIndex :: IORef (JavaArray (Int))
    , isPrimaryWaypointCreator :: IORef (Bool)
    }

instance JavaNull CompositeRTSFormInput where
    javaNull = javaNullRecord "CompositeRTSFormInput"

instance JavaEquals CompositeRTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompositeRTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass CompositeRTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompositeRTSFormInput
newRecord_ = do
    base <- RTSFormInput.newRecord_
    let header_ = base.header_
    rtsFormInputArray <- newIORef javaNull
    itemIndex <- newIORef javaNull
    isPrimaryWaypointCreator <- newIORef False
    let this = CompositeRTSFormInput header_ base rtsFormInputArray itemIndex isPrimaryWaypointCreator
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processAtPoint" (\() -> processAtPoint_impl this)
    jregisterMethod header_ "processGameSpecific" (\() -> processGameSpecific_impl this)
    jregisterMethod header_ "processSticky" (\() -> processSticky_impl this)
    jregisterMethod header_ "processStickyGameSpecific" (\() -> processStickyGameSpecific_impl this)
    jregisterMethod header_ "getSelectedStickyItemIndex" (\() -> getSelectedStickyItemIndex_impl this)
    jregisterMethod header_ "isStickyItemSelected" (\() -> isStickyItemSelected_impl this)
    jregisterMethod header_ "setStickyItemSelected" (\() -> setStickyItemSelected_impl this)
    jregisterMethod header_ "getSelectedStickyItem" (\() -> getSelectedStickyItem_impl this)
    jregisterMethod header_ "setSelectedStickyItem" (\() -> setSelectedStickyItem_impl this)
    pure this

initFields_ :: CompositeRTSFormInput -> IO ()
initFields_ this = do
    jset this.rtsFormInputArray (javaNull)
    jset this.itemIndex (javaNull)
    jset this.isPrimaryWaypointCreator (False)
    pure ()

new_3 :: JavaArray (Group.Group) -> Bool -> JavaArray (Int) -> IO CompositeRTSFormInput
new_3 groupInterface isPrimaryWaypointCreator itemIndex = do
    this <- newRecord_
    init_3 this groupInterface isPrimaryWaypointCreator itemIndex
    pure this

init_3 :: CompositeRTSFormInput -> JavaArray (Group.Group) -> Bool -> JavaArray (Int) -> IO ()
init_3 this groupInterface isPrimaryWaypointCreator itemIndex = do
        RTSFormInput.init_1 this.base (groupInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).itemIndex (itemIndex)
        jset (this).isPrimaryWaypointCreator (isPrimaryWaypointCreator)
        jset (this).rtsFormInputArray ((jnewArray (2) javaNull))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: RTSFormInput.RTSFormInput) (WaypointRTSFormInput.new_2 (jget (this).base.groupInterfaceArray) isPrimaryWaypointCreator))
        jsetIndex ((jget (this).rtsFormInputArray)) (0) (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: RTSFormInput.RTSFormInput) (UnitRTSFormInput.new_1 (jget (this).base.groupInterfaceArray)))
        jsetIndex ((jget (this).rtsFormInputArray)) (1) (assignedValue)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: CompositeRTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: CompositeRTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: CompositeRTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager_super this.base allBinaryGameLayerManager)
        let geographicMapCompositeInterface = (javaCast allBinaryGameLayerManager :: GeographicMapCompositeInterface.GeographicMapCompositeInterface)
        let geographicMapInterface = (jindex ((jio (GeographicMapCompositeInterface.getGeographicMapInterface geographicMapCompositeInterface))) (0))
        let size = (jlength (jget (this).rtsFormInputArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (setAllBinaryGameLayerManager ((jindex ((jget (this).rtsFormInputArray)) (index))) allBinaryGameLayerManager)
        pure ()


-- throws Exception
processAtPoint :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint object_ a1 a2 a3 a4 = jmethod object_ "processAtPoint" (\() -> (processAtPoint_impl (javaCast object_ :: CompositeRTSFormInput))) () a1 a2 a3 a4

processAtPoint_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_super object_ a1 a2 a3 a4 = (processAtPoint_impl (javaCast object_ :: CompositeRTSFormInput)) a1 a2 a3 a4

processAtPoint_impl :: CompositeRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager point = do
        scrollSelectionForm <- (RTSPlayerLayerInterface.getCurrentScrollSelectionForm rtsPlayerLayerInterface)
        index <- (ScrollSelectionForm.getSelectedIndexForPoint scrollSelectionForm point)
        if ((jio (CompositeRTSFormInput.isStickyItemSelected this)) && (associatedRtsLayer == (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) then do
            when ((jio (CompositeRTSFormInput.getSelectedStickyItemIndex this)) <= (jindex ((jget (this).itemIndex)) (0))) $ do
                Control.Monad.void (processAtPoint ((jindex ((jget (this).rtsFormInputArray)) (0))) associatedRtsLayer rtsPlayerLayerInterface layerManager point)
        else when (index > (jindex ((jget (this).itemIndex)) (0))) $ do
            Control.Monad.void (processAtPoint ((jindex ((jget (this).rtsFormInputArray)) (1))) associatedRtsLayer rtsPlayerLayerInterface layerManager point)
        pure ()


-- throws Exception
processGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processGameSpecific" (\() -> (processGameSpecific_impl (javaCast object_ :: CompositeRTSFormInput))) () a1 a2 a3 a4 a5

processGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_super object_ a1 a2 a3 a4 a5 = (processGameSpecific_impl (javaCast object_ :: CompositeRTSFormInput)) a1 a2 a3 a4 a5

processGameSpecific_impl :: CompositeRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item index = do
        commonStrings <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) ((javaToString ((jget ((jio (CommonLabels.getInstance))).iNDEX_LABEL) + index) ++ " > ") ++ javaToString (jindex ((jget (this).itemIndex)) (0))) this (jget (commonStrings).pROCESS))
        if ((jio (CompositeRTSFormInput.isStickyItemSelected this)) && (associatedRtsLayer == (jio (CollidableDestroyableDamageableLayer.getNullInstance)))) then do
            when ((jio (CompositeRTSFormInput.getSelectedStickyItemIndex this)) <= (jindex ((jget (this).itemIndex)) (0))) $ do
                Control.Monad.void (processGameSpecific ((jindex ((jget (this).rtsFormInputArray)) (0))) associatedRtsLayer rtsPlayerLayerInterface layerManager item index)
        else when (index > (jindex ((jget (this).itemIndex)) (0))) $ do
            Control.Monad.void (processGameSpecific ((jindex ((jget (this).rtsFormInputArray)) (1))) associatedRtsLayer rtsPlayerLayerInterface layerManager item index)
        pure ()


-- throws Exception
processSticky :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky object_ a1 a2 a3 a4 = jmethod object_ "processSticky" (\() -> (processSticky_impl (javaCast object_ :: CompositeRTSFormInput))) () a1 a2 a3 a4

processSticky_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky_super object_ a1 a2 a3 a4 = (processSticky_impl (javaCast object_ :: CompositeRTSFormInput)) a1 a2 a3 a4

processSticky_impl :: CompositeRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager point = do
        (processSticky ((jindex ((jget (this).rtsFormInputArray)) (0))) associatedRtsLayer rtsPlayerLayerInterface layerManager point)


-- throws Exception
processStickyGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processStickyGameSpecific" (\() -> (processStickyGameSpecific_impl (javaCast object_ :: CompositeRTSFormInput))) () a1 a2 a3 a4 a5

processStickyGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_super object_ a1 a2 a3 a4 a5 = (processStickyGameSpecific_impl (javaCast object_ :: CompositeRTSFormInput)) a1 a2 a3 a4 a5

processStickyGameSpecific_impl :: CompositeRTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item index = do
        Control.Monad.void (processStickyGameSpecific ((jindex ((jget (this).rtsFormInputArray)) (0))) associatedRtsLayer rtsPlayerLayerInterface layerManager item index)
        pure ()


getSelectedStickyItemIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedStickyItemIndex object_ = jmethod object_ "getSelectedStickyItemIndex" (\() -> (getSelectedStickyItemIndex_impl (javaCast object_ :: CompositeRTSFormInput))) ()

getSelectedStickyItemIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedStickyItemIndex_super object_ = (getSelectedStickyItemIndex_impl (javaCast object_ :: CompositeRTSFormInput))

getSelectedStickyItemIndex_impl :: CompositeRTSFormInput -> IO (Int)
getSelectedStickyItemIndex_impl this = do
        (getSelectedStickyItemIndex ((jindex ((jget (this).rtsFormInputArray)) (0))))


isStickyItemSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isStickyItemSelected object_ = jmethod object_ "isStickyItemSelected" (\() -> (isStickyItemSelected_impl (javaCast object_ :: CompositeRTSFormInput))) ()

isStickyItemSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isStickyItemSelected_super object_ = (isStickyItemSelected_impl (javaCast object_ :: CompositeRTSFormInput))

isStickyItemSelected_impl :: CompositeRTSFormInput -> IO (Bool)
isStickyItemSelected_impl this = do
        (isStickyItemSelected ((jindex ((jget (this).rtsFormInputArray)) (0))))


setStickyItemSelected :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setStickyItemSelected object_ a1 = jmethod object_ "setStickyItemSelected" (\() -> (setStickyItemSelected_impl (javaCast object_ :: CompositeRTSFormInput))) () a1

setStickyItemSelected_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setStickyItemSelected_super object_ a1 = (setStickyItemSelected_impl (javaCast object_ :: CompositeRTSFormInput)) a1

setStickyItemSelected_impl :: CompositeRTSFormInput -> Bool -> IO (())
setStickyItemSelected_impl this stickyItemSelected = do
        Control.Monad.void (setStickyItemSelected ((jindex ((jget (this).rtsFormInputArray)) (0))) stickyItemSelected)
        pure ()


getSelectedStickyItem :: (JavaObjectClass this_) => this_ -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem object_ = jmethod object_ "getSelectedStickyItem" (\() -> (getSelectedStickyItem_impl (javaCast object_ :: CompositeRTSFormInput))) ()

getSelectedStickyItem_super :: (JavaObjectClass this_) => this_ -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem_super object_ = (getSelectedStickyItem_impl (javaCast object_ :: CompositeRTSFormInput))

getSelectedStickyItem_impl :: CompositeRTSFormInput -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem_impl this = do
        (getSelectedStickyItem ((jindex ((jget (this).rtsFormInputArray)) (0))))


setSelectedStickyItem :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem object_ a1 = jmethod object_ "setSelectedStickyItem" (\() -> (setSelectedStickyItem_impl (javaCast object_ :: CompositeRTSFormInput))) () a1

setSelectedStickyItem_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem_super object_ a1 = (setSelectedStickyItem_impl (javaCast object_ :: CompositeRTSFormInput)) a1

setSelectedStickyItem_impl :: CompositeRTSFormInput -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem_impl this selectedStickyItem = do
        Control.Monad.void (setSelectedStickyItem ((jindex ((jget (this).rtsFormInputArray)) (0))) selectedStickyItem)
        pure ()


