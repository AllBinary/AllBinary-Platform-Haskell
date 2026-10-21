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
-- package org.allbinary.game.layer
module LayerPlacer where

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
import qualified LayerPlacementInterface -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified LayerPlacementType -- same package or java.lang
import qualified LayerPlacementTypeFactory -- same package or java.lang
import qualified Enumeration -- java.util.Enumeration
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LayerInterfaceFactory -- org.allbinary.layer.LayerInterfaceFactory
import qualified LayerInterfaceVisitor -- org.allbinary.layer.LayerInterfaceVisitor
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified EnumerationUtil -- org.allbinary.util.EnumerationUtil

data LayerPlacer = LayerPlacer
    { header_ :: JavaHeader
    , enumerationUtil :: IORef (EnumerationUtil.EnumerationUtil)
    , layerInterfaceVisitor :: IORef (LayerInterfaceVisitor.LayerInterfaceVisitor)
    , dimension :: IORef (GPoint.GPoint)
    }

instance JavaNull LayerPlacer where
    javaNull = javaNullRecord "LayerPlacer"

instance JavaEquals LayerPlacer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerPlacer where
    (==) = jrecordEquals

instance JavaObjectClass LayerPlacer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO LayerPlacer
newRecord_ = do
    header_ <- newJavaHeader
    enumerationUtil <- newIORef javaNull
    layerInterfaceVisitor <- newIORef javaNull
    dimension <- newIORef javaNull
    let this = LayerPlacer header_ enumerationUtil layerInterfaceVisitor dimension
    jregisterLevel header_ this
    jregisterMethod header_ "processList" (\() -> processList_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    pure this

initFields_ :: LayerPlacer -> IO ()
initFields_ this = do
    jset this.enumerationUtil =<< (EnumerationUtil.getInstance)
    jset this.layerInterfaceVisitor (javaNull)
    jset this.dimension (javaNull)
    pure ()

new_2 :: LayerInterfaceVisitor.LayerInterfaceVisitor -> GPoint.GPoint -> IO LayerPlacer
new_2 layerInterfaceVisitor dimension = do
    this <- newRecord_
    init_2 this layerInterfaceVisitor dimension
    pure this

init_2 :: LayerPlacer -> LayerInterfaceVisitor.LayerInterfaceVisitor -> GPoint.GPoint -> IO ()
init_2 this layerInterfaceVisitor dimension = do
        initFields_ this
        jset (this).layerInterfaceVisitor (layerInterfaceVisitor)
        jset (this).dimension (dimension)
        pure ()


-- throws Exception
processList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
processList object_ a1 = jmethod object_ "processList" (\() -> (processList_impl (javaCast object_ :: LayerPlacer))) () a1

processList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
processList_super object_ a1 = (processList_impl (javaCast object_ :: LayerPlacer)) a1

processList_impl :: LayerPlacer -> BasicArrayList.BasicArrayList -> IO (())
processList_impl this list = do
        size <- (BasicArrayList.size list)
        layerPlacementInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset layerPlacementInterface ((javaCast (jindex ((jget (list).objectArray)) (index)) :: LayerPlacementInterface.LayerPlacementInterface))
            Control.Monad.void (LayerPlacer.process this (jget layerPlacementInterface))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> LayerPlacementInterface.LayerPlacementInterface -> IO (())
process object_ a1 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: LayerPlacer))) () a1

process_super :: (JavaObjectClass this_) => this_ -> LayerPlacementInterface.LayerPlacementInterface -> IO (())
process_super object_ a1 = (process_impl (javaCast object_ :: LayerPlacer)) a1

process_impl :: LayerPlacer -> LayerPlacementInterface.LayerPlacementInterface -> IO (())
process_impl this layerPlacementInterface = do
        relativePoint <- (LayerPlacer.getPoint this layerPlacementInterface)
        layerInterfaceFactory <- (LayerInterfaceFactory.getInstance)
        hashtable <- (LayerPlacementInterface.getInstance layerPlacementInterface)
        enumeration <- (ABHashtable.keys hashtable)
        point <- newIORef (javaNull)
        layerHashtable <- newIORef (javaNull)
        x <- newIORef (0)
        y <- newIORef (0)
        z <- newIORef (0)
        layerInterface <- newIORef (javaNull)
        fix $ \loop -> when (jio (EnumerationUtil.hasMoreElements ((jget (this).enumerationUtil)) enumeration)) $ javaIteration (loop) $ do
            jset point ((javaCast (jio (EnumerationUtil.nextElement ((jget (this).enumerationUtil)) enumeration)) :: GPoint.GPoint))
            jset layerHashtable ((javaCast (jio (ABHashtable.get hashtable (jget point))) :: ABHashtable.ABHashtable))
            jset x (((jio (GPoint.getX ((jget point)))) + (jio (GPoint.getX relativePoint))))
            jset y (((jio (GPoint.getY ((jget point)))) + (jio (GPoint.getY relativePoint))))
            jset z (((jio (GPoint.getZ ((jget point)))) + (jio (GPoint.getZ relativePoint))))
            assignedValue <- (LayerInterfaceFactory.getNexInstance layerInterfaceFactory (jget layerHashtable) (jget x) (jget y) (jget z))
            jset layerInterface (assignedValue)
            Control.Monad.void (LayerInterfaceVisitor.visit ((jget (this).layerInterfaceVisitor)) (jget layerInterface))
        pure ()


-- throws Exception
getPoint :: (JavaObjectClass this_) => this_ -> LayerPlacementInterface.LayerPlacementInterface -> IO (GPoint.GPoint)
getPoint object_ a1 = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: LayerPlacer))) () a1

getPoint_super :: (JavaObjectClass this_) => this_ -> LayerPlacementInterface.LayerPlacementInterface -> IO (GPoint.GPoint)
getPoint_super object_ a1 = (getPoint_impl (javaCast object_ :: LayerPlacer)) a1

getPoint_impl :: LayerPlacer -> LayerPlacementInterface.LayerPlacementInterface -> IO (GPoint.GPoint)
getPoint_impl this layerPlacementInterface = do
    javaCatchReturn $ do
        pointFactory <- (PointFactory.getInstance)
        layerPlacementType <- (LayerPlacementInterface.getLayerType layerPlacementInterface)
        if (layerPlacementType == (jget ((jio (LayerPlacementTypeFactory.getInstance))).mAP)) then do
            width <- (LayerPlacementInterface.getWidth layerPlacementInterface)
            height <- (LayerPlacementInterface.getHeight layerPlacementInterface)
            let x = (((((jio (GPoint.getX ((jget (this).dimension)))) - width)) `quot` 2))
            let y = (((((jio (GPoint.getY ((jget (this).dimension)))) - height)) `quot` 2))
            javaReturn =<< (PointFactory.createXY pointFactory x y)
        else if (layerPlacementType == (jget ((jio (LayerPlacementTypeFactory.getInstance))).uP)) then do
            width <- (LayerPlacementInterface.getWidth layerPlacementInterface)
            height <- (LayerPlacementInterface.getHeight layerPlacementInterface)
            let x = (((((jio (GPoint.getX ((jget (this).dimension)))) - width)) `quot` 2))
            let y = (Prelude.negate height)
            javaReturn =<< (PointFactory.createXY pointFactory x y)
        else do
            javaThrow ((JavaException "Exception" "PlacementType Not Recognized"))


