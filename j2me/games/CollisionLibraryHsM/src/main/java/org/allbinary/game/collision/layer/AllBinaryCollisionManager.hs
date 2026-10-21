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
-- package org.allbinary.game.collision.layer
module AllBinaryCollisionManager where

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
import qualified CollidableBaseBehavior -- org.allbinary.game.collision.CollidableBaseBehavior
import qualified CollidableInterfaceCompositeInterface -- org.allbinary.game.collision.CollidableInterfaceCompositeInterface
import qualified CollidableCompositeLayer -- org.allbinary.game.layer.CollidableCompositeLayer
import qualified LayerManager -- org.allbinary.layer.LayerManager

data AllBinaryCollisionManager = AllBinaryCollisionManager
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryCollisionManager where
    javaNull = javaNullRecord "AllBinaryCollisionManager"

instance JavaEquals AllBinaryCollisionManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryCollisionManager where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryCollisionManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE allBinaryCollisionManager #-}
allBinaryCollisionManager = unsafePerformIO ((new_) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryCollisionManager
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryCollisionManager header_
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "collide" (\() -> collide_impl this)
    pure this

initFields_ :: AllBinaryCollisionManager -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryCollisionManager
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryCollisionManager -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (AllBinaryCollisionManager)
getInstance = do
        pure ((jget AllBinaryCollisionManager.allBinaryCollisionManager))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> Int -> IO (())
process object_ a1 a2 a3 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AllBinaryCollisionManager))) () a1 a2 a3

process_super :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> Int -> IO (())
process_super object_ a1 a2 a3 = (process_impl (javaCast object_ :: AllBinaryCollisionManager)) a1 a2 a3

process_impl :: AllBinaryCollisionManager -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> Int -> IO (())
process_impl this layerManager collidableInterfaceCompositeInterface startIndex = do
        size <- (LayerManager.getSize layerManager)
        forM_ [(startIndex + 1) .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let collidableInterfaceCompositeInterface2 = (javaCast (jio (LayerManager.getLayerAt layerManager index)) :: CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface)
            Control.Monad.void (AllBinaryCollisionManager.collide this layerManager collidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2)
        pure ()


-- throws Exception
collide :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collide object_ a1 a2 a3 = jmethod object_ "collide" (\() -> (collide_impl (javaCast object_ :: AllBinaryCollisionManager))) () a1 a2 a3

collide_super :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collide_super object_ a1 a2 a3 = (collide_impl (javaCast object_ :: AllBinaryCollisionManager)) a1 a2 a3

collide_impl :: AllBinaryCollisionManager -> LayerManager.LayerManager -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> CollidableInterfaceCompositeInterface.CollidableInterfaceCompositeInterface -> IO (())
collide_impl this layerManager collidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2 = do
        collidableBase2 <- (CollidableInterfaceCompositeInterface.getCollidableInferface collidableInterfaceCompositeInterface2)
        collidableBase <- (CollidableInterfaceCompositeInterface.getCollidableInferface collidableInterfaceCompositeInterface)
        when (jio (CollidableBaseBehavior.isCollidable collidableBase2 (javaCast collidableInterfaceCompositeInterface :: CollidableCompositeLayer.CollidableCompositeLayer))) $ do
            when (jio (CollidableBaseBehavior.isCollisionInterface collidableBase (javaCast collidableInterfaceCompositeInterface :: CollidableCompositeLayer.CollidableCompositeLayer) collidableInterfaceCompositeInterface2)) $ do
                Control.Monad.void (CollidableBaseBehavior.collideInterface collidableBase (javaCast collidableInterfaceCompositeInterface :: CollidableCompositeLayer.CollidableCompositeLayer) collidableInterfaceCompositeInterface2)
                Control.Monad.void (CollidableBaseBehavior.collideInterface collidableBase2 (javaCast collidableInterfaceCompositeInterface :: CollidableCompositeLayer.CollidableCompositeLayer) collidableInterfaceCompositeInterface)
        pure ()


