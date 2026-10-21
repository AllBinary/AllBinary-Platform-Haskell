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
-- package org.allbinary.game.layer.identification
module GroupLayerManagerListener (module GroupLayerManagerListener, module LayerManagerEventListener) where

import LayerManagerEventListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, clear, clear_super, clear_impl, getGroupSizeFromInterface, getGroupSizeFromInterface_super, getGroupSizeFromInterface_impl, getGroupSize, getGroupSize_super, getGroupSize_impl, getList, getList_super, getList_impl, getListById, getListById_super, getListById_impl, getGroupSizeById, getGroupSizeById_super, getGroupSizeById_impl, areAllOtherGroupsEmpty, areAllOtherGroupsEmpty_super, areAllOtherGroupsEmpty_impl, isIdInList, isIdInList_super, isIdInList_impl, areAllOtherGroupsLessThan, areAllOtherGroupsLessThan_super, areAllOtherGroupsLessThan_impl, init, init_super, init_impl, onEvent, onEvent_super, onEvent_impl, onCreateLayerManagerEvent, onCreateLayerManagerEvent_super, onCreateLayerManagerEvent_impl, onDeleteLayerManagerEvent, onDeleteLayerManagerEvent_super, onDeleteLayerManagerEvent_impl, log, log_super, log_impl, sINGLETON, logUtil, list)
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
import qualified Group -- org.allbinary.game.identification.Group
import qualified GroupInterfaceCompositeInterface -- org.allbinary.game.identification.GroupInterfaceCompositeInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LayerManagerEvent -- org.allbinary.layer.event.LayerManagerEvent
import qualified LayerManagerEventHandler -- org.allbinary.layer.event.LayerManagerEventHandler
import qualified LayerManagerEventListener -- org.allbinary.layer.event.LayerManagerEventListener
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GroupLayerManagerListener = GroupLayerManagerListener
    { header_ :: JavaHeader
    , base :: LayerManagerEventListener.LayerManagerEventListener
    , logUtil :: IORef (LogUtil.LogUtil)
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GroupLayerManagerListener where
    javaNull = javaNullRecord "GroupLayerManagerListener"

instance JavaEquals GroupLayerManagerListener where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GroupLayerManagerListener where
    (==) = jrecordEquals

instance JavaObjectClass GroupLayerManagerListener where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO GroupLayerManagerListener
newRecord_ = do
    base <- LayerManagerEventListener.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    list <- newIORef javaNull
    let this = GroupLayerManagerListener header_ base logUtil list
    jregisterLevel header_ this
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getGroupSizeFromInterface" (\() -> getGroupSizeFromInterface_impl this)
    jregisterMethod header_ "getGroupSize" (\() -> getGroupSize_impl this)
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    jregisterMethod header_ "getListById" (\() -> getListById_impl this)
    jregisterMethod header_ "getGroupSizeById" (\() -> getGroupSizeById_impl this)
    jregisterMethod header_ "areAllOtherGroupsEmpty" (\() -> areAllOtherGroupsEmpty_impl this)
    jregisterMethod header_ "isIdInList" (\() -> isIdInList_impl this)
    jregisterMethod header_ "areAllOtherGroupsLessThan" (\() -> areAllOtherGroupsLessThan_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onCreateLayerManagerEvent" (\() -> onCreateLayerManagerEvent_impl this)
    jregisterMethod header_ "onDeleteLayerManagerEvent" (\() -> onDeleteLayerManagerEvent_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: GroupLayerManagerListener -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


getInstance :: IO (GroupLayerManagerListener)
getInstance = do
        pure ((jget GroupLayerManagerListener.sINGLETON))

new_ :: IO GroupLayerManagerListener
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GroupLayerManagerListener -> IO ()
init_ this = do
        LayerManagerEventListener.init_ this.base
        initFields_ this
        Control.Monad.void (LayerManagerEventHandler.addListener ((jio (LayerManagerEventHandler.getInstance))) this)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: GroupLayerManagerListener))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: GroupLayerManagerListener))

clear_impl :: GroupLayerManagerListener -> IO (())
clear_impl this = do
        groupList <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset groupList ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: BasicArrayList.BasicArrayList))
            Control.Monad.void (BasicArrayList.clear ((jget groupList)))
        pure ()


getGroupSizeFromInterface :: (JavaObjectClass this_) => this_ -> GroupInterfaceCompositeInterface.GroupInterfaceCompositeInterface -> IO (Int)
getGroupSizeFromInterface object_ a1 = jmethod object_ "getGroupSizeFromInterface" (\() -> (getGroupSizeFromInterface_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

getGroupSizeFromInterface_super :: (JavaObjectClass this_) => this_ -> GroupInterfaceCompositeInterface.GroupInterfaceCompositeInterface -> IO (Int)
getGroupSizeFromInterface_super object_ a1 = (getGroupSizeFromInterface_impl (javaCast object_ :: GroupLayerManagerListener)) a1

getGroupSizeFromInterface_impl :: GroupLayerManagerListener -> GroupInterfaceCompositeInterface.GroupInterfaceCompositeInterface -> IO (Int)
getGroupSizeFromInterface_impl this groupInterfaceCompositeInterface = do
        groupInterfaceArray <- (GroupInterfaceCompositeInterface.getGroupInterface groupInterfaceCompositeInterface)
        (GroupLayerManagerListener.getGroupSize this (jindex groupInterfaceArray (0)))


getGroupSize :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Int)
getGroupSize object_ a1 = jmethod object_ "getGroupSize" (\() -> (getGroupSize_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

getGroupSize_super :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Int)
getGroupSize_super object_ a1 = (getGroupSize_impl (javaCast object_ :: GroupLayerManagerListener)) a1

getGroupSize_impl :: GroupLayerManagerListener -> Group.Group -> IO (Int)
getGroupSize_impl this groupInterface = do
        let id = (Prelude.fromIntegral (jio (Group.getGroupId groupInterface)))
        (GroupLayerManagerListener.getGroupSizeById this id)


getList :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (BasicArrayList.BasicArrayList)
getList object_ a1 = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

getList_super :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (BasicArrayList.BasicArrayList)
getList_super object_ a1 = (getList_impl (javaCast object_ :: GroupLayerManagerListener)) a1

getList_impl :: GroupLayerManagerListener -> Group.Group -> IO (BasicArrayList.BasicArrayList)
getList_impl this groupInterface = do
        let id = (Prelude.fromIntegral (jio (Group.getGroupId groupInterface)))
        (GroupLayerManagerListener.getListById this id)


getListById :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getListById object_ a1 = jmethod object_ "getListById" (\() -> (getListById_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

getListById_super :: (JavaObjectClass this_) => this_ -> Int -> IO (BasicArrayList.BasicArrayList)
getListById_super object_ a1 = (getListById_impl (javaCast object_ :: GroupLayerManagerListener)) a1

getListById_impl :: GroupLayerManagerListener -> Int -> IO (BasicArrayList.BasicArrayList)
getListById_impl this groupId = do
        let groupList = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) (groupId)) :: BasicArrayList.BasicArrayList)
        pure (groupList)


getGroupSizeById :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getGroupSizeById object_ a1 = jmethod object_ "getGroupSizeById" (\() -> (getGroupSizeById_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

getGroupSizeById_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
getGroupSizeById_super object_ a1 = (getGroupSizeById_impl (javaCast object_ :: GroupLayerManagerListener)) a1

getGroupSizeById_impl :: GroupLayerManagerListener -> Int -> IO (Int)
getGroupSizeById_impl this groupId = do
        let groupList = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) (groupId)) :: BasicArrayList.BasicArrayList)
        size <- (BasicArrayList.size groupList)
        pure (size)


areAllOtherGroupsEmpty :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Bool)
areAllOtherGroupsEmpty object_ a1 = jmethod object_ "areAllOtherGroupsEmpty" (\() -> (areAllOtherGroupsEmpty_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

areAllOtherGroupsEmpty_super :: (JavaObjectClass this_) => this_ -> Group.Group -> IO (Bool)
areAllOtherGroupsEmpty_super object_ a1 = (areAllOtherGroupsEmpty_impl (javaCast object_ :: GroupLayerManagerListener)) a1

areAllOtherGroupsEmpty_impl :: GroupLayerManagerListener -> Group.Group -> IO (Bool)
areAllOtherGroupsEmpty_impl this groupInterface = do
    javaCatchReturn $ do
        let id = (Prelude.fromIntegral (jio (Group.getGroupId groupInterface)))
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (id /= index) $ do
                groupSize <- (GroupLayerManagerListener.getGroupSizeById this index)
                when (groupSize /= 0) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "Group Size: "))) groupSize))))) this "areAllOtherGroupsEmpty")
                    javaReturn (False)
        pure (True)


isIdInList :: (JavaObjectClass this_) => this_ -> Int -> BasicArrayList.BasicArrayList -> IO (Bool)
isIdInList object_ a1 a2 = jmethod object_ "isIdInList" (\() -> (isIdInList_impl (javaCast object_ :: GroupLayerManagerListener))) () a1 a2

isIdInList_super :: (JavaObjectClass this_) => this_ -> Int -> BasicArrayList.BasicArrayList -> IO (Bool)
isIdInList_super object_ a1 a2 = (isIdInList_impl (javaCast object_ :: GroupLayerManagerListener)) a1 a2

isIdInList_impl :: GroupLayerManagerListener -> Int -> BasicArrayList.BasicArrayList -> IO (Bool)
isIdInList_impl this id excludeGroupList = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size excludeGroupList)
        groupInterfaceArray <- newIORef (javaNull)
        groupInterface <- newIORef (javaNull)
        groupId <- newIORef (0)
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset groupInterfaceArray ((javaCast (jindex ((jget (excludeGroupList).objectArray)) (index)) :: JavaArray (Group.Group)))
            let size2 = (jlength (jget groupInterfaceArray))
            forM_ [0 .. size2 - 1] $ \index2 -> javaIteration (pure ()) $ do
                jset groupInterface ((jindex ((jget groupInterfaceArray)) (index2)))
                jset groupId ((Prelude.fromIntegral (jio (Group.getGroupId ((jget groupInterface))))))
                when ((jget groupId) == id) $ do
                    javaReturn (True)
        pure (False)


areAllOtherGroupsLessThan :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (Bool)
areAllOtherGroupsLessThan object_ a1 a2 = jmethod object_ "areAllOtherGroupsLessThan" (\() -> (areAllOtherGroupsLessThan_impl (javaCast object_ :: GroupLayerManagerListener))) () a1 a2

areAllOtherGroupsLessThan_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> Int -> IO (Bool)
areAllOtherGroupsLessThan_super object_ a1 a2 = (areAllOtherGroupsLessThan_impl (javaCast object_ :: GroupLayerManagerListener)) a1 a2

areAllOtherGroupsLessThan_impl :: GroupLayerManagerListener -> BasicArrayList.BasicArrayList -> Int -> IO (Bool)
areAllOtherGroupsLessThan_impl this excludeGroupList maxSize = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            when (Prelude.not (jio (GroupLayerManagerListener.isIdInList this index excludeGroupList))) $ do
                groupSize <- (GroupLayerManagerListener.getGroupSizeById this index)
                when (groupSize >= maxSize) $ do
                    javaReturn (False)
        pure (True)


init :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

init_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: GroupLayerManagerListener)) a1

init_impl :: GroupLayerManagerListener -> Int -> IO (())
init_impl this total = do
        fix $ \loop -> when ((jio (BasicArrayList.size ((jget (this).list)))) <= (total + 1)) $ javaIteration (loop) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) (jio (BasicArrayListD.new_)))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GroupLayerManagerListener)) a1

onEvent_impl :: GroupLayerManagerListener -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


-- throws Exception
onCreateLayerManagerEvent :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent object_ a1 = jmethod object_ "onCreateLayerManagerEvent" (\() -> (onCreateLayerManagerEvent_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

onCreateLayerManagerEvent_super :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent_super object_ a1 = (onCreateLayerManagerEvent_impl (javaCast object_ :: GroupLayerManagerListener)) a1

onCreateLayerManagerEvent_impl :: GroupLayerManagerListener -> LayerManagerEvent.LayerManagerEvent -> IO (())
onCreateLayerManagerEvent_impl this layerManagerEvent = do
        layerInterface <- (LayerManagerEvent.getLayerInterface layerManagerEvent)
        groupInterfaceArray <- (AllBinaryLayer.getGroupInterface layerInterface)
        let size = (jlength groupInterfaceArray)
        id <- newIORef (0)
        groupList <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset id ((Prelude.fromInteger (jnumericInteger (jio (getGroupId ((jindex groupInterfaceArray (index))))))))
            jset groupList ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget id))) :: BasicArrayList.BasicArrayList))
            when ((jget groupList) == javaNull) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "id: "))) (jget id)))))) this "onCreateLayerManagerEvent")
            if (Prelude.not (jio (BasicArrayList.contains ((jget groupList)) layerInterface))) then do
                Control.Monad.void (BasicArrayList.add ((jget groupList)) layerInterface)
            else do
                pure ()
        pure ()


-- throws Exception
onDeleteLayerManagerEvent :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent object_ a1 = jmethod object_ "onDeleteLayerManagerEvent" (\() -> (onDeleteLayerManagerEvent_impl (javaCast object_ :: GroupLayerManagerListener))) () a1

onDeleteLayerManagerEvent_super :: (JavaObjectClass this_) => this_ -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent_super object_ a1 = (onDeleteLayerManagerEvent_impl (javaCast object_ :: GroupLayerManagerListener)) a1

onDeleteLayerManagerEvent_impl :: GroupLayerManagerListener -> LayerManagerEvent.LayerManagerEvent -> IO (())
onDeleteLayerManagerEvent_impl this layerManagerEvent = do
        layerInterface <- (LayerManagerEvent.getLayerInterface layerManagerEvent)
        groupInterfaceArray <- (AllBinaryLayer.getGroupInterface layerInterface)
        let size = (jlength groupInterfaceArray)
        id <- newIORef (0)
        groupList <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset id ((Prelude.fromInteger (jnumericInteger (jio (getGroupId ((jindex groupInterfaceArray (index))))))))
            jset groupList ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget id))) :: BasicArrayList.BasicArrayList))
            Control.Monad.void (BasicArrayList.remove ((jget groupList)) layerInterface)
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (())
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: GroupLayerManagerListener))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (())
log_super object_ = (log_impl (javaCast object_ :: GroupLayerManagerListener))

log_impl :: GroupLayerManagerListener -> IO (())
log_impl this = do
        stringBuffer <- (StringMaker.new_)
        let gROUP = "Group: "
        let sPACE = (jget ((jio (CommonSeps.getInstance))).sPACE)
        let tOTAL_LABEL = (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL)
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let groupList = (javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: BasicArrayList.BasicArrayList)
            Control.Monad.void (StringMaker.append stringBuffer gROUP)
            Control.Monad.void (StringMaker.appendint stringBuffer index)
            Control.Monad.void (StringMaker.append stringBuffer sPACE)
            Control.Monad.void (StringMaker.append stringBuffer tOTAL_LABEL)
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size groupList)))
            Control.Monad.void (StringMaker.append stringBuffer sPACE)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "log")
        pure ()


