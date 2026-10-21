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
module RandomPatrolAI (module RandomPatrolAI, module BasePatrolAI) where

import BasePatrolAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateRandomDistance, updateRandomDistance_super, updateRandomDistance_impl, processAI, processAI_super, processAI_impl, nextDirection, nextDirection_super, nextDirection_impl, changedDirection)
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
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified MyRandomFactory -- org.allbinary.game.rand.MyRandomFactory
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasePatrolAI

data RandomPatrolAI = RandomPatrolAI
    { header_ :: JavaHeader
    , base :: BasePatrolAI.BasePatrolAI
    , changedDirection :: IORef (Bool)
    }

instance JavaNull RandomPatrolAI where
    javaNull = javaNullRecord "RandomPatrolAI"

instance JavaEquals RandomPatrolAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RandomPatrolAI where
    (==) = jrecordEquals

instance JavaObjectClass RandomPatrolAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RandomPatrolAI
newRecord_ = do
    base <- BasePatrolAI.newRecord_
    let header_ = base.header_
    changedDirection <- newIORef False
    let this = RandomPatrolAI header_ base changedDirection
    jregisterLevel header_ this
    jregisterMethod header_ "updateRandomDistance" (\() -> updateRandomDistance_impl this)
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "nextDirection" (\() -> nextDirection_impl this)
    pure this

initFields_ :: RandomPatrolAI -> IO ()
initFields_ this = do
    jset this.changedDirection (True)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO RandomPatrolAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: RandomPatrolAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasePatrolAI.init_3 this.base (hashtable) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (RandomPatrolAI.updateRandomDistance this)
        pure ()


updateRandomDistance :: (JavaObjectClass this_) => this_ -> IO (())
updateRandomDistance object_ = jmethod object_ "updateRandomDistance" (\() -> (updateRandomDistance_impl (javaCast object_ :: RandomPatrolAI))) ()

updateRandomDistance_super :: (JavaObjectClass this_) => this_ -> IO (())
updateRandomDistance_super object_ = (updateRandomDistance_impl (javaCast object_ :: RandomPatrolAI))

updateRandomDistance_impl :: RandomPatrolAI -> IO (())
updateRandomDistance_impl this = do
        assignedValue <- (MyRandomFactory.getAbsoluteNextInt ((jio (MyRandomFactory.getInstance))) (jget (this).base.maxDistance))
        jset (this).base.currentDistance (assignedValue)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: RandomPatrolAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: RandomPatrolAI)) a1

processAI_impl :: RandomPatrolAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        Control.Monad.void (BasePatrolAI.update_super this.base)
        Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (jget (this).base.keyDirection))
        when (jget (this).changedDirection) $ do
            Control.Monad.void (BasePatrolAI.processKeyAI_super this.base (Canvas.kEY_NUM1))
            Control.Monad.void (RandomPatrolAI.updateRandomDistance this)
            jset (this).changedDirection (False)
        pure ()


nextDirection :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection object_ = jmethod object_ "nextDirection" (\() -> (nextDirection_impl (javaCast object_ :: RandomPatrolAI))) ()

nextDirection_super :: (JavaObjectClass this_) => this_ -> IO (())
nextDirection_super object_ = (nextDirection_impl (javaCast object_ :: RandomPatrolAI))

nextDirection_impl :: RandomPatrolAI -> IO (())
nextDirection_impl this = do
        Control.Monad.void (BasePatrolAI.nextDirection_super this.base)
        jset (this).changedDirection (True)
        pure ()


