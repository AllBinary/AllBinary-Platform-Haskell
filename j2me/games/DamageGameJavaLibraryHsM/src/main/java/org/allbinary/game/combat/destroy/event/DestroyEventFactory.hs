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
-- package org.allbinary.game.combat.destroy.event
module DestroyEventFactory where

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
import qualified DestroyedEvent -- same package or java.lang
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified AllBinaryEventObjectFactoryInterface -- org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface

-- implements AllBinaryEventObjectFactoryInterface
data DestroyEventFactory = DestroyEventFactory
    { header_ :: JavaHeader
    , combatGameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    }

instance JavaNull DestroyEventFactory where
    javaNull = javaNullRecord "DestroyEventFactory"

instance JavaEquals DestroyEventFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyEventFactory where
    (==) = jrecordEquals

instance JavaObjectClass DestroyEventFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DestroyEventFactory
newRecord_ = do
    header_ <- newJavaHeader
    combatGameCanvas <- newIORef javaNull
    let this = DestroyEventFactory header_ combatGameCanvas
    jregisterLevel header_ this
    AllBinaryEventObjectFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: DestroyEventFactory -> IO ()
initFields_ this = do
    jset this.combatGameCanvas (javaNull)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO DestroyEventFactory
new_1 combatGameCanvas = do
    this <- newRecord_
    init_1 this combatGameCanvas
    pure this

init_1 :: DestroyEventFactory -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this combatGameCanvas = do
        initFields_ this
        jset (this).combatGameCanvas (combatGameCanvas)
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: DestroyEventFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: DestroyEventFactory))

getInstance_impl :: DestroyEventFactory -> IO (AllBinaryEventObject.AllBinaryEventObject)
getInstance_impl this = do
        (fmap (\value_ -> javaCast value_ :: AllBinaryEventObject.AllBinaryEventObject) (DestroyedEvent.new_1 (jget (this).combatGameCanvas)))


