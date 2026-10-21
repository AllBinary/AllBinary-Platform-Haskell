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
-- package org.allbinary.game.ag.ai.scroller
module TerrainPatrolAI (module TerrainPatrolAI, module PacePatrolAI) where

import PacePatrolAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, changeDirectionIfCliffReached, changeDirectionIfCliffReached_super, changeDirectionIfCliffReached_impl, terrainEventListener, dOWN, cLIFF)
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
import qualified LogUtil -- same package or java.lang
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified BasicTerrainInfo -- org.allbinary.game.terrain.BasicTerrainInfo
import qualified TerrainEvent -- org.allbinary.game.terrain.TerrainEvent
import qualified TerrainEventCircularStaticPool -- org.allbinary.game.terrain.TerrainEventCircularStaticPool
import qualified TerrainEventHandler -- org.allbinary.game.terrain.TerrainEventHandler
import qualified TerrainEventListener -- org.allbinary.game.terrain.TerrainEventListener
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified Angle -- org.allbinary.math.Angle
import qualified AngleFactory -- org.allbinary.math.AngleFactory
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified PacePatrolAI

data TerrainPatrolAI = TerrainPatrolAI
    { header_ :: JavaHeader
    , base :: PacePatrolAI.PacePatrolAI
    , terrainEventListener :: IORef (TerrainEventListener.TerrainEventListener)
    , dOWN :: IORef (Angle.Angle)
    , cLIFF :: IORef (BasicTerrainInfo.BasicTerrainInfo)
    }

instance JavaNull TerrainPatrolAI where
    javaNull = javaNullRecord "TerrainPatrolAI"

instance JavaEquals TerrainPatrolAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TerrainPatrolAI where
    (==) = jrecordEquals

instance JavaObjectClass TerrainPatrolAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TerrainPatrolAI
newRecord_ = do
    base <- PacePatrolAI.newRecord_
    let header_ = base.header_
    terrainEventListener <- newIORef javaNull
    dOWN <- newIORef javaNull
    cLIFF <- newIORef javaNull
    let this = TerrainPatrolAI header_ base terrainEventListener dOWN cLIFF
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "changeDirectionIfCliffReached" (\() -> changeDirectionIfCliffReached_impl this)
    pure this

initFields_ :: TerrainPatrolAI -> IO ()
initFields_ this = do
    jset this.terrainEventListener =<< (TerrainEventListener.new_)
    jset this.dOWN ((javaCast (jget ((jio (AngleFactory.getInstance))).dOWN) :: Angle.Angle))
    jset this.cLIFF =<< (BasicTerrainInfo.new_1 (jget (this).dOWN))
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO TerrainPatrolAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: TerrainPatrolAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        PacePatrolAI.init_3 this.base (hashtable) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TerrainEventHandler.addListener ((jio (TerrainEventHandler.getInstance ownerLayerInterface))) (jget (this).terrainEventListener))
        Control.Monad.void (TerrainEventListener.onTerrainEvent ((jget (this).terrainEventListener)) (jio (TerrainEventCircularStaticPool.getNext ((jio (TerrainEventCircularStaticPool.getInstance))) (jget (this).cLIFF))))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: TerrainPatrolAI))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: TerrainPatrolAI))

update_impl :: TerrainPatrolAI -> IO (())
update_impl this = do
        Control.Monad.void (PacePatrolAI.update_super this.base)
        Control.Monad.void (TerrainPatrolAI.changeDirectionIfCliffReached this)
        pure ()


changeDirectionIfCliffReached :: (JavaObjectClass this_) => this_ -> IO (())
changeDirectionIfCliffReached object_ = jmethod object_ "changeDirectionIfCliffReached" (\() -> (changeDirectionIfCliffReached_impl (javaCast object_ :: TerrainPatrolAI))) ()

changeDirectionIfCliffReached_super :: (JavaObjectClass this_) => this_ -> IO (())
changeDirectionIfCliffReached_super object_ = (changeDirectionIfCliffReached_impl (javaCast object_ :: TerrainPatrolAI))

changeDirectionIfCliffReached_impl :: TerrainPatrolAI -> IO (())
changeDirectionIfCliffReached_impl this = do
        list <- (TerrainEventListener.getList ((jget (this).terrainEventListener)))
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let terrainEvent = (javaCast (jio (BasicArrayList.removeAt list index)) :: TerrainEvent.TerrainEvent)
            basicTerrainInfo <- (TerrainEvent.getBasicTerrainInfo terrainEvent)
            angle <- (BasicTerrainInfo.getAngle basicTerrainInfo)
            when (angle == (jget (this).dOWN)) $ do
                Control.Monad.void (PacePatrolAI.nextDirection this)
                when (Prelude.not (jget (this).base.isFollowLimitedByTerrain)) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) "Following Limited" this "onTerrainEvent")
                    jset (this).base.isFollowLimitedByTerrain (True)
        pure ()


