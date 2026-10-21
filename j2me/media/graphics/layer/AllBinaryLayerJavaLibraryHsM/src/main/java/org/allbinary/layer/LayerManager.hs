{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.layer
module LayerManager where

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
import qualified LayerManagerLoggingBase -- same package or java.lang
import qualified AllBinaryLayer -- same package or java.lang
import qualified Layer -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified SynchObject -- org.allbinary.thread.SynchObject
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper

data LayerManager = LayerManager
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , systemWrapper :: IORef (ABSystemWrapper.ABSystemWrapper)
    , tsUtil :: IORef (TsUtil.TsUtil)
    , layerManagerLogging :: IORef (LayerManagerLoggingBase.LayerManagerLoggingBase)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , anyType :: IORef (SynchObject.SynchObject)
    }

instance JavaNull LayerManager where
    javaNull = javaNullRecord "LayerManager"

instance JavaEquals LayerManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManager where
    (==) = jrecordEquals

instance JavaObjectClass LayerManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerManager
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    systemWrapper <- newIORef javaNull
    tsUtil <- newIORef javaNull
    layerManagerLogging <- newIORef javaNull
    list <- newIORef javaNull
    anyType <- newIORef javaNull
    let this = LayerManager header_ logUtil commonStrings systemWrapper tsUtil layerManagerLogging list anyType
    jregisterLevel header_ this
    jregisterMethod header_ "contains" (\() -> contains_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "appendAt" (\() -> appendAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "getLayerAt" (\() -> getLayerAt_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    jregisterMethod header_ "cleanup" (\() -> cleanup_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: LayerManager -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.systemWrapper =<< (ABSystemWrapper.getInstance)
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.layerManagerLogging (javaNull)
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.anyType =<< (SynchObject.new_)
    pure ()

new_1 :: LayerManagerLoggingBase.LayerManagerLoggingBase -> IO LayerManager
new_1 layerManagerLogging = do
    this <- newRecord_
    init_1 this layerManagerLogging
    pure this

init_1 :: LayerManager -> LayerManagerLoggingBase.LayerManagerLoggingBase -> IO ()
init_1 this layerManagerLogging = do
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        jset (this).layerManagerLogging (layerManagerLogging)
        pure ()


contains :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
contains object_ a1 = jmethod object_ "contains" (\() -> (contains_impl (javaCast object_ :: LayerManager))) () a1

contains_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
contains_super object_ a1 = (contains_impl (javaCast object_ :: LayerManager)) a1

contains_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (Bool)
contains_impl this layerInterface = do
        (BasicArrayList.contains ((jget (this).list)) layerInterface)


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: LayerManager))) () a1

update_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: LayerManager)) a1

update_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
update_impl this layerInterface = do
    javaCatchReturn $ do
        had <- (BasicArrayList.remove ((jget (this).list)) layerInterface)
        when had $ do
            nextLayerInterface <- newIORef (javaNull)
            size <- (BasicArrayList.size ((jget (this).list)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                jset nextLayerInterface ((javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: AllBinaryLayer.AllBinaryLayer))
                when ((jio (AllBinaryLayer.getZP layerInterface)) > (jio (AllBinaryLayer.getZP ((jget nextLayerInterface))))) $ do
                    Control.Monad.void (BasicArrayList.addAt ((jget (this).list)) index layerInterface)
                    javaReturn (())
            Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterface)
    pure ()


-- throws Exception
insert :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: LayerManager))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: LayerManager)) a1

insert_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
insert_impl this layerInterface = do
    javaCatchReturn $ do
        nextLayerInterface <- newIORef (javaNull)
        size <- (BasicArrayList.size ((jget (this).list)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextLayerInterface ((javaCast (jio (BasicArrayList.get ((jget (this).list)) index)) :: AllBinaryLayer.AllBinaryLayer))
            when ((jio (AllBinaryLayer.getZP layerInterface)) > (jio (AllBinaryLayer.getZP ((jget nextLayerInterface))))) $ do
                Control.Monad.void (LayerManager.appendAt this layerInterface index)
                javaReturn (())
        Control.Monad.void (LayerManager.append this layerInterface)
    pure ()


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: LayerManager))) () a1

append_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_super object_ a1 = (append_impl (javaCast object_ :: LayerManager)) a1

append_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_impl this layerInterface = do
        Control.Monad.void (LayerManagerLoggingBase.append ((jget (this).layerManagerLogging)) layerInterface)
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) layerInterface)
        pure ()


-- throws Exception
appendAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt object_ a1 a2 = jmethod object_ "appendAt" (\() -> (appendAt_impl (javaCast object_ :: LayerManager))) () a1 a2

appendAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_super object_ a1 a2 = (appendAt_impl (javaCast object_ :: LayerManager)) a1 a2

appendAt_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_impl this layerInterface index = do
        Control.Monad.void (LayerManagerLoggingBase.appendAt ((jget (this).layerManagerLogging)) layerInterface index)
        Control.Monad.void (BasicArrayList.addAt ((jget (this).list)) index layerInterface)
        pure ()


-- throws Exception
remove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: LayerManager))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: LayerManager)) a1

remove_impl :: LayerManager -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_impl this layerInterface = do
        do -- synchronized
            Control.Monad.void (LayerManagerLoggingBase.remove ((jget (this).layerManagerLogging)) layerInterface)
            result <- (BasicArrayList.remove ((jget (this).list)) layerInterface)
            Control.Monad.void (LayerManagerLoggingBase.removeResult ((jget (this).layerManagerLogging)) this layerInterface result)
        pure ()


getLayerAt :: (JavaObjectClass this_) => this_ -> Int -> IO (Layer.Layer)
getLayerAt object_ a1 = jmethod object_ "getLayerAt" (\() -> (getLayerAt_impl (javaCast object_ :: LayerManager))) () a1

getLayerAt_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Layer.Layer)
getLayerAt_super object_ a1 = (getLayerAt_impl (javaCast object_ :: LayerManager)) a1

getLayerAt_impl :: LayerManager -> Int -> IO (Layer.Layer)
getLayerAt_impl this index = do
        pure ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) (index)) :: Layer.Layer))


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: LayerManager))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: LayerManager))

getSize_impl :: LayerManager -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).list)))


-- throws Exception
cleanup :: (JavaObjectClass this_) => this_ -> IO (())
cleanup object_ = jmethod object_ "cleanup" (\() -> (cleanup_impl (javaCast object_ :: LayerManager))) ()

cleanup_super :: (JavaObjectClass this_) => this_ -> IO (())
cleanup_super object_ = (cleanup_impl (javaCast object_ :: LayerManager))

cleanup_impl :: LayerManager -> IO (())
cleanup_impl this = do
        do -- synchronized
            Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
            Control.Monad.void (LayerManagerLoggingBase.clear ((jget (this).layerManagerLogging)))
            Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
            Control.Monad.void (TsUtil.gc ((jget (this).tsUtil)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paint object_ a1 a2 a3 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LayerManager))) () a1 a2 a3

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paint_super object_ a1 a2 a3 = (paint_impl (javaCast object_ :: LayerManager)) a1 a2 a3

paint_impl :: LayerManager -> Graphics.Graphics -> Int -> Int -> IO (())
paint_impl this g x y = do
        do -- synchronized
            comp <- newIORef (javaNull)
            index <- newIORef =<< (BasicArrayList.size ((jget (this).list)))
            fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
                jset comp ((javaCast (jindex ((jget ((jget (this).list)).objectArray)) ((jget index))) :: Layer.Layer))
                when (((jget comp) /= javaNull) && (jio (Layer.isVisible ((jget comp))))) $ do
                    Control.Monad.void (Layer.paint ((jget comp)) g)
        pure ()


