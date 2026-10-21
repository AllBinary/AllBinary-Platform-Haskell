{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
module RTSFormInput where

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
import qualified GroupCommonFactory -- org.allbinary.game.identification.GroupCommonFactory
import qualified RTSLayer -- org.allbinary.game.layer.RTSLayer
import qualified RTSPlayerLayerInterface -- org.allbinary.game.layer.RTSPlayerLayerInterface
import qualified LayerInterfaceFactoryImageItem -- org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified DirectionFactory -- org.allbinary.direction.DirectionFactory
import qualified Group -- org.allbinary.game.identification.Group
import qualified AllBinaryGameLayerManager -- org.allbinary.game.layer.AllBinaryGameLayerManager
import qualified CollidableDestroyableDamageableLayer -- org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified LayerInterfaceFactoryInterface -- org.allbinary.layer.LayerInterfaceFactoryInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data RTSFormInput = RTSFormInput
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , groupCommonFactory :: IORef (GroupCommonFactory.GroupCommonFactory)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , newUnconstructedRTSLayerInterfaceArray :: IORef (JavaArray (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer))
    , groupInterfaceArray :: IORef (JavaArray (Group.Group))
    , selectedGeographicCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    , stickyItemSelected :: IORef (Bool)
    , selectedStickyItemIndex :: IORef (Int)
    , selectedStickyItem :: IORef (ABCustomItem.ABCustomItem)
    }

instance JavaNull RTSFormInput where
    javaNull = javaNullRecord "RTSFormInput"

instance JavaEquals RTSFormInput where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RTSFormInput where
    (==) = jrecordEquals

instance JavaObjectClass RTSFormInput where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RTSFormInput
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    groupCommonFactory <- newIORef javaNull
    hashtable <- newIORef javaNull
    newUnconstructedRTSLayerInterfaceArray <- newIORef javaNull
    groupInterfaceArray <- newIORef javaNull
    selectedGeographicCellPosition <- newIORef javaNull
    stickyItemSelected <- newIORef False
    selectedStickyItemIndex <- newIORef 0
    selectedStickyItem <- newIORef javaNull
    let this = RTSFormInput header_ logUtil groupCommonFactory hashtable newUnconstructedRTSLayerInterfaceArray groupInterfaceArray selectedGeographicCellPosition stickyItemSelected selectedStickyItemIndex selectedStickyItem
    jregisterLevel header_ this
    jregisterMethod header_ "setAllBinaryGameLayerManager" (\() -> setAllBinaryGameLayerManager_impl this)
    jregisterMethod header_ "processAtPoint" (\() -> processAtPoint_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "processGameSpecific" (\() -> processGameSpecific_impl this)
    jregisterMethod header_ "processSticky" (\() -> processSticky_impl this)
    jregisterMethod header_ "processStickyGameSpecific" (\() -> processStickyGameSpecific_impl this)
    jregisterMethod header_ "getItemAt" (\() -> getItemAt_impl this)
    jregisterMethod header_ "getIndexAt" (\() -> getIndexAt_impl this)
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    jregisterMethod header_ "getSelectedGeographicCellPosition" (\() -> getSelectedGeographicCellPosition_impl this)
    jregisterMethod header_ "setSelectedGeographicCellPosition" (\() -> setSelectedGeographicCellPosition_impl this)
    jregisterMethod header_ "isStickyItemSelected" (\() -> isStickyItemSelected_impl this)
    jregisterMethod header_ "setStickyItemSelected" (\() -> setStickyItemSelected_impl this)
    jregisterMethod header_ "getSelectedStickyItem" (\() -> getSelectedStickyItem_impl this)
    jregisterMethod header_ "setSelectedStickyItem" (\() -> setSelectedStickyItem_impl this)
    jregisterMethod header_ "getSelectedStickyItemIndex" (\() -> getSelectedStickyItemIndex_impl this)
    jregisterMethod header_ "setSelectedStickyItemIndex" (\() -> setSelectedStickyItemIndex_impl this)
    jregisterMethod header_ "getHashtable" (\() -> getHashtable_impl this)
    pure this

initFields_ :: RTSFormInput -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.groupCommonFactory =<< (GroupCommonFactory.getInstance)
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.newUnconstructedRTSLayerInterfaceArray ((jnewArray (7) javaNull))
    jset this.groupInterfaceArray (javaNull)
    jset this.selectedGeographicCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    jset this.stickyItemSelected (False)
    jset this.selectedStickyItemIndex (0)
    jset this.selectedStickyItem =<< (ABCustomItem.getNullInstance)
    pure ()

new_1 :: JavaArray (Group.Group) -> IO RTSFormInput
new_1 groupInterfaceArray = do
    this <- newRecord_
    init_1 this groupInterfaceArray
    pure this

init_1 :: RTSFormInput -> JavaArray (Group.Group) -> IO ()
init_1 this groupInterfaceArray = do
        initFields_ this
        let size = (jlength (jget (this).newUnconstructedRTSLayerInterfaceArray))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (CollidableDestroyableDamageableLayer.getNullInstance)
            jsetIndex ((jget (this).newUnconstructedRTSLayerInterfaceArray)) (index) (assignedValue)
        jset (this).groupInterfaceArray (groupInterfaceArray)
        Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (jget ((jio (DirectionFactory.getInstance))).nAME) (jget ((jio (DirectionFactory.getInstance))).dOWN))
        when (groupInterfaceArray /= javaNull) $ do
            Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (jget ((jget (this).groupCommonFactory)).iD) groupInterfaceArray)
        pure ()


-- throws Exception
setAllBinaryGameLayerManager :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager object_ a1 = jmethod object_ "setAllBinaryGameLayerManager" (\() -> (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSFormInput))) () a1

setAllBinaryGameLayerManager_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_super object_ a1 = (setAllBinaryGameLayerManager_impl (javaCast object_ :: RTSFormInput)) a1

setAllBinaryGameLayerManager_impl :: RTSFormInput -> AllBinaryGameLayerManager.AllBinaryGameLayerManager -> IO (())
setAllBinaryGameLayerManager_impl this allBinaryGameLayerManager = do
        pure ()


-- throws Exception
processAtPoint :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint object_ a1 a2 a3 a4 = jmethod object_ "processAtPoint" (\() -> (processAtPoint_impl (javaCast object_ :: RTSFormInput))) () a1 a2 a3 a4

processAtPoint_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_super object_ a1 a2 a3 a4 = (processAtPoint_impl (javaCast object_ :: RTSFormInput)) a1 a2 a3 a4

processAtPoint_impl :: RTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (())
processAtPoint_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager point = do
    javaCatchReturn $ do
        index <- (RTSFormInput.getIndexAt this rtsPlayerLayerInterface point)
        when (index < 0) $ do
            javaReturn (())
        scrollSelectionForm <- (RTSPlayerLayerInterface.getCurrentScrollSelectionForm rtsPlayerLayerInterface)
        item <- (ScrollSelectionForm.get scrollSelectionForm index)
        when (item == javaNull) $ do
            javaReturn (())
        Control.Monad.void (RTSFormInput.processGameSpecific this associatedRtsLayer rtsPlayerLayerInterface layerManager item index)
    pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: RTSFormInput))) () a1

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: RTSFormInput)) a1

process_impl :: RTSFormInput -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
process_impl this layerManager = do
        Control.Monad.void (RTSFormInput.setAllBinaryGameLayerManager this (javaCast layerManager :: AllBinaryGameLayerManager.AllBinaryGameLayerManager))
        pure ()


-- throws Exception
processGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processGameSpecific" (\() -> (processGameSpecific_impl (javaCast object_ :: RTSFormInput))) () a1 a2 a3 a4 a5

processGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_super object_ a1 a2 a3 a4 a5 = (processGameSpecific_impl (javaCast object_ :: RTSFormInput)) a1 a2 a3 a4 a5

processGameSpecific_impl :: RTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item index = do
        pure ()


-- throws Exception
processSticky :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky object_ a1 a2 a3 a4 = jmethod object_ "processSticky" (\() -> (processSticky_impl (javaCast object_ :: RTSFormInput))) () a1 a2 a3 a4

processSticky_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky_super object_ a1 a2 a3 a4 = (processSticky_impl (javaCast object_ :: RTSFormInput)) a1 a2 a3 a4

processSticky_impl :: RTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> GPoint.GPoint -> IO (Bool)
processSticky_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager point = do
    javaCatchReturn $ do
        index <- (RTSFormInput.getIndexAt this rtsPlayerLayerInterface point)
        when (index < 0) $ do
            javaReturn (False)
        scrollSelectionForm <- (RTSPlayerLayerInterface.getCurrentScrollSelectionForm rtsPlayerLayerInterface)
        item <- (ScrollSelectionForm.get scrollSelectionForm index)
        when (item == javaNull) $ do
            javaReturn (False)
        Control.Monad.void (RTSFormInput.processStickyGameSpecific this associatedRtsLayer rtsPlayerLayerInterface layerManager item index)
        pure (True)


-- throws Exception
processStickyGameSpecific :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific object_ a1 a2 a3 a4 a5 = jmethod object_ "processStickyGameSpecific" (\() -> (processStickyGameSpecific_impl (javaCast object_ :: RTSFormInput))) () a1 a2 a3 a4 a5

processStickyGameSpecific_super :: (JavaObjectClass this_) => this_ -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_super object_ a1 a2 a3 a4 a5 = (processStickyGameSpecific_impl (javaCast object_ :: RTSFormInput)) a1 a2 a3 a4 a5

processStickyGameSpecific_impl :: RTSFormInput -> CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> Int -> IO (())
processStickyGameSpecific_impl this associatedRtsLayer rtsPlayerLayerInterface layerManager item index = do
        pure ()


-- throws Exception
getItemAt :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getItemAt object_ a1 a2 = jmethod object_ "getItemAt" (\() -> (getItemAt_impl (javaCast object_ :: RTSFormInput))) () a1 a2

getItemAt_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getItemAt_super object_ a1 a2 = (getItemAt_impl (javaCast object_ :: RTSFormInput)) a1 a2

getItemAt_impl :: RTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getItemAt_impl this rtsPlayerLayerInterface point = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Point: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) point))))))) this "getItemAt")
        scrollSelectionForm <- (RTSPlayerLayerInterface.getCurrentScrollSelectionForm rtsPlayerLayerInterface)
        (ScrollSelectionForm.getSelectedItem scrollSelectionForm point)


-- throws Exception
getIndexAt :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (Int)
getIndexAt object_ a1 a2 = jmethod object_ "getIndexAt" (\() -> (getIndexAt_impl (javaCast object_ :: RTSFormInput))) () a1 a2

getIndexAt_super :: (JavaObjectClass this_) => this_ -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (Int)
getIndexAt_super object_ a1 a2 = (getIndexAt_impl (javaCast object_ :: RTSFormInput)) a1 a2

getIndexAt_impl :: RTSFormInput -> RTSPlayerLayerInterface.RTSPlayerLayerInterface -> GPoint.GPoint -> IO (Int)
getIndexAt_impl this rtsPlayerLayerInterface point = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Point: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) point))))))) this "getItemAt")
        scrollSelectionForm <- (RTSPlayerLayerInterface.getCurrentScrollSelectionForm rtsPlayerLayerInterface)
        (ScrollSelectionForm.getSelectedIndexForPoint scrollSelectionForm point)


-- throws Exception
getInstance :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getInstance object_ a1 a2 a3 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: RTSFormInput))) () a1 a2 a3

getInstance_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getInstance_super object_ a1 a2 a3 = (getInstance_impl (javaCast object_ :: RTSFormInput)) a1 a2 a3

getInstance_impl :: RTSFormInput -> AllBinaryLayerManager.AllBinaryLayerManager -> ABCustomItem.ABCustomItem -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (CollidableDestroyableDamageableLayer.CollidableDestroyableDamageableLayer)
getInstance_impl this layerManager aItem geographicMapCellPosition = do
    javaCatchReturn $ do
        let item = (javaCast aItem :: LayerInterfaceFactoryImageItem.LayerInterfaceFactoryImageItem)
        layerInterfaceFactoryInterface <- (LayerInterfaceFactoryImageItem.getLayerInterfaceFactoryInterface item)
        cellPoint <- (GeographicMapCellPosition.getPoint geographicMapCellPosition)
        when (layerInterfaceFactoryInterface /= javaNull) $ do
            Control.Monad.void (ABHashtable.put ((jget (this).hashtable)) (AllBinaryGameLayerManager.iD) layerManager)
            javaReturn ((javaCast (jio (LayerInterfaceFactoryInterface.getNextInstance layerInterfaceFactoryInterface (jio (RTSFormInput.getHashtable this)) (jio (GPoint.getX cellPoint)) (jio (GPoint.getY cellPoint)) (jio (GPoint.getZ cellPoint)))) :: RTSLayer.RTSLayer))
        (CollidableDestroyableDamageableLayer.getNullInstance)


getSelectedGeographicCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getSelectedGeographicCellPosition object_ = jmethod object_ "getSelectedGeographicCellPosition" (\() -> (getSelectedGeographicCellPosition_impl (javaCast object_ :: RTSFormInput))) ()

getSelectedGeographicCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getSelectedGeographicCellPosition_super object_ = (getSelectedGeographicCellPosition_impl (javaCast object_ :: RTSFormInput))

getSelectedGeographicCellPosition_impl :: RTSFormInput -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getSelectedGeographicCellPosition_impl this = do
        pure ((jget (this).selectedGeographicCellPosition))


setSelectedGeographicCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedGeographicCellPosition object_ a1 = jmethod object_ "setSelectedGeographicCellPosition" (\() -> (setSelectedGeographicCellPosition_impl (javaCast object_ :: RTSFormInput))) () a1

setSelectedGeographicCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedGeographicCellPosition_super object_ a1 = (setSelectedGeographicCellPosition_impl (javaCast object_ :: RTSFormInput)) a1

setSelectedGeographicCellPosition_impl :: RTSFormInput -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setSelectedGeographicCellPosition_impl this selectedGeographicCellPosition = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Selected GeographicMapCellPosition: "))) (jio (GeographicMapCellPosition.toString selectedGeographicCellPosition))))))) this "setSelectedGeographicCellPosition")
        jset (this).selectedGeographicCellPosition (selectedGeographicCellPosition)
        pure ()


isStickyItemSelected :: (JavaObjectClass this_) => this_ -> IO (Bool)
isStickyItemSelected object_ = jmethod object_ "isStickyItemSelected" (\() -> (isStickyItemSelected_impl (javaCast object_ :: RTSFormInput))) ()

isStickyItemSelected_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isStickyItemSelected_super object_ = (isStickyItemSelected_impl (javaCast object_ :: RTSFormInput))

isStickyItemSelected_impl :: RTSFormInput -> IO (Bool)
isStickyItemSelected_impl this = do
        pure ((jget (this).stickyItemSelected))


setStickyItemSelected :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setStickyItemSelected object_ a1 = jmethod object_ "setStickyItemSelected" (\() -> (setStickyItemSelected_impl (javaCast object_ :: RTSFormInput))) () a1

setStickyItemSelected_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setStickyItemSelected_super object_ a1 = (setStickyItemSelected_impl (javaCast object_ :: RTSFormInput)) a1

setStickyItemSelected_impl :: RTSFormInput -> Bool -> IO (())
setStickyItemSelected_impl this stickyItemSelected = do
        jset (this).stickyItemSelected (stickyItemSelected)
        pure ()


getSelectedStickyItem :: (JavaObjectClass this_) => this_ -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem object_ = jmethod object_ "getSelectedStickyItem" (\() -> (getSelectedStickyItem_impl (javaCast object_ :: RTSFormInput))) ()

getSelectedStickyItem_super :: (JavaObjectClass this_) => this_ -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem_super object_ = (getSelectedStickyItem_impl (javaCast object_ :: RTSFormInput))

getSelectedStickyItem_impl :: RTSFormInput -> IO (ABCustomItem.ABCustomItem)
getSelectedStickyItem_impl this = do
        pure ((jget (this).selectedStickyItem))


setSelectedStickyItem :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem object_ a1 = jmethod object_ "setSelectedStickyItem" (\() -> (setSelectedStickyItem_impl (javaCast object_ :: RTSFormInput))) () a1

setSelectedStickyItem_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem_super object_ a1 = (setSelectedStickyItem_impl (javaCast object_ :: RTSFormInput)) a1

setSelectedStickyItem_impl :: RTSFormInput -> ABCustomItem.ABCustomItem -> IO (())
setSelectedStickyItem_impl this selectedStickyItem = do
        jset (this).selectedStickyItem (selectedStickyItem)
        pure ()


getSelectedStickyItemIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedStickyItemIndex object_ = jmethod object_ "getSelectedStickyItemIndex" (\() -> (getSelectedStickyItemIndex_impl (javaCast object_ :: RTSFormInput))) ()

getSelectedStickyItemIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSelectedStickyItemIndex_super object_ = (getSelectedStickyItemIndex_impl (javaCast object_ :: RTSFormInput))

getSelectedStickyItemIndex_impl :: RTSFormInput -> IO (Int)
getSelectedStickyItemIndex_impl this = do
        pure ((jget (this).selectedStickyItemIndex))


setSelectedStickyItemIndex :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedStickyItemIndex object_ a1 = jmethod object_ "setSelectedStickyItemIndex" (\() -> (setSelectedStickyItemIndex_impl (javaCast object_ :: RTSFormInput))) () a1

setSelectedStickyItemIndex_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setSelectedStickyItemIndex_super object_ a1 = (setSelectedStickyItemIndex_impl (javaCast object_ :: RTSFormInput)) a1

setSelectedStickyItemIndex_impl :: RTSFormInput -> Int -> IO (())
setSelectedStickyItemIndex_impl this selectedStickyItemIndex = do
        jset (this).selectedStickyItemIndex (selectedStickyItemIndex)
        pure ()


getHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable object_ = jmethod object_ "getHashtable" (\() -> (getHashtable_impl (javaCast object_ :: RTSFormInput))) ()

getHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getHashtable_super object_ = (getHashtable_impl (javaCast object_ :: RTSFormInput))

getHashtable_impl :: RTSFormInput -> IO (ABHashtable.ABHashtable)
getHashtable_impl this = do
        pure ((jget (this).hashtable))


