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
-- package org.allbinary.game.input.motion.action
module GameKeyCompleteMotionGestureInputEventFactory where

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
import qualified GameKeyCompleteMotionGestureInputEvent -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GameKeyCompleteMotionGestureInputEventFactory = GameKeyCompleteMotionGestureInputEventFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , eventList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GameKeyCompleteMotionGestureInputEventFactory where
    javaNull = javaNullRecord "GameKeyCompleteMotionGestureInputEventFactory"

instance JavaEquals GameKeyCompleteMotionGestureInputEventFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyCompleteMotionGestureInputEventFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyCompleteMotionGestureInputEventFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameKeyCompleteMotionGestureInputEventFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    eventList <- newIORef javaNull
    let this = GameKeyCompleteMotionGestureInputEventFactory header_ logUtil eventList
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "updateAll" (\() -> updateAll_impl this)
    pure this

initFields_ :: GameKeyCompleteMotionGestureInputEventFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.eventList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO GameKeyCompleteMotionGestureInputEventFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameKeyCompleteMotionGestureInputEventFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (GameKeyCompleteMotionGestureInputEventFactory)
getInstance = do
        pure (GameKeyCompleteMotionGestureInputEventFactory.sINGLETON)


add :: (JavaObjectClass this_) => this_ -> GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEventFactory))) () a1

add_super :: (JavaObjectClass this_) => this_ -> GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEventFactory)) a1

add_impl :: GameKeyCompleteMotionGestureInputEventFactory -> GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent -> IO (())
add_impl this gameKeyCompleteMotionGestureInputEvent = do
        Control.Monad.void (BasicArrayList.add ((jget (this).eventList)) gameKeyCompleteMotionGestureInputEvent)
        pure ()


updateAll :: (JavaObjectClass this_) => this_ -> IO (())
updateAll object_ = jmethod object_ "updateAll" (\() -> (updateAll_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEventFactory))) ()

updateAll_super :: (JavaObjectClass this_) => this_ -> IO (())
updateAll_super object_ = (updateAll_impl (javaCast object_ :: GameKeyCompleteMotionGestureInputEventFactory))

updateAll_impl :: GameKeyCompleteMotionGestureInputEventFactory -> IO (())
updateAll_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (BasicArrayList.size ((jget (this).eventList))))))))) this "updateAll")
        forM_ [((jio (BasicArrayList.size ((jget (this).eventList)))) - 1), ((jio (BasicArrayList.size ((jget (this).eventList)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            let gameKeyCompleteMotionGestureInputEvent = (javaCast (jindex ((jget ((jget (this).eventList)).objectArray)) (index)) :: GameKeyCompleteMotionGestureInputEvent.GameKeyCompleteMotionGestureInputEvent)
            Control.Monad.void (GameKeyCompleteMotionGestureInputEvent.update gameKeyCompleteMotionGestureInputEvent)
        pure ()


