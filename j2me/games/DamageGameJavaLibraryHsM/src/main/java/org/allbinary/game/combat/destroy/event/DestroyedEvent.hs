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
module DestroyedEvent (module DestroyedEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAllBinaryGameCanvas, getAllBinaryGameCanvas_super, getAllBinaryGameCanvas_impl, getLayerInterface, getLayerInterface_super, getLayerInterface_impl, setAllBinaryGameCanvas, setAllBinaryGameCanvas_super, setAllBinaryGameCanvas_impl, setLayerInterfaceForCircularStaticPool, setLayerInterfaceForCircularStaticPool_super, setLayerInterfaceForCircularStaticPool_impl, toString, toString_super, toString_impl, allBinaryGameCanvas, allBinaryLayerInterface)
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
import qualified DestroyedEventHandler -- same package or java.lang
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified NullGameCanvas -- org.allbinary.game.displayable.canvas.NullGameCanvas
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data DestroyedEvent = DestroyedEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , allBinaryGameCanvas :: IORef (AllBinaryGameCanvas.AllBinaryGameCanvas)
    , allBinaryLayerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    }

instance JavaNull DestroyedEvent where
    javaNull = javaNullRecord "DestroyedEvent"

instance JavaEquals DestroyedEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DestroyedEvent where
    (==) = jrecordEquals

instance JavaObjectClass DestroyedEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO DestroyedEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    allBinaryGameCanvas <- newIORef javaNull
    allBinaryLayerInterface <- newIORef javaNull
    let this = DestroyedEvent header_ base allBinaryGameCanvas allBinaryLayerInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getAllBinaryGameCanvas" (\() -> getAllBinaryGameCanvas_impl this)
    jregisterMethod header_ "getLayerInterface" (\() -> getLayerInterface_impl this)
    jregisterMethod header_ "setAllBinaryGameCanvas" (\() -> setAllBinaryGameCanvas_impl this)
    jregisterMethod header_ "setLayerInterfaceForCircularStaticPool" (\() -> setLayerInterfaceForCircularStaticPool_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: DestroyedEvent -> IO ()
initFields_ this = do
    jset this.allBinaryGameCanvas =<< (fmap (\value_ -> javaCast value_ :: AllBinaryGameCanvas.AllBinaryGameCanvas) (NullGameCanvas.getInstance))
    jset this.allBinaryLayerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    pure ()

new_1 :: AllBinaryGameCanvas.AllBinaryGameCanvas -> IO DestroyedEvent
new_1 combatGameCanvas = do
    this <- newRecord_
    init_1 this combatGameCanvas
    pure this

init_1 :: DestroyedEvent -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO ()
init_1 this combatGameCanvas = do
        AllBinaryEventObject.init_1 this.base (jio (DestroyedEventHandler.getInstance))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (DestroyedEvent.setAllBinaryGameCanvas this combatGameCanvas)
        pure ()


getAllBinaryGameCanvas :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getAllBinaryGameCanvas object_ = jmethod object_ "getAllBinaryGameCanvas" (\() -> (getAllBinaryGameCanvas_impl (javaCast object_ :: DestroyedEvent))) ()

getAllBinaryGameCanvas_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getAllBinaryGameCanvas_super object_ = (getAllBinaryGameCanvas_impl (javaCast object_ :: DestroyedEvent))

getAllBinaryGameCanvas_impl :: DestroyedEvent -> IO (AllBinaryGameCanvas.AllBinaryGameCanvas)
getAllBinaryGameCanvas_impl this = do
        pure ((jget (this).allBinaryGameCanvas))


getLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: DestroyedEvent))) ()

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ = (getLayerInterface_impl (javaCast object_ :: DestroyedEvent))

getLayerInterface_impl :: DestroyedEvent -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this = do
        pure ((jget (this).allBinaryLayerInterface))


setAllBinaryGameCanvas :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setAllBinaryGameCanvas object_ a1 = jmethod object_ "setAllBinaryGameCanvas" (\() -> (setAllBinaryGameCanvas_impl (javaCast object_ :: DestroyedEvent))) () a1

setAllBinaryGameCanvas_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setAllBinaryGameCanvas_super object_ a1 = (setAllBinaryGameCanvas_impl (javaCast object_ :: DestroyedEvent)) a1

setAllBinaryGameCanvas_impl :: DestroyedEvent -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
setAllBinaryGameCanvas_impl this allBinaryGameCanvas = do
        jset (this).allBinaryGameCanvas (allBinaryGameCanvas)
        pure ()


setLayerInterfaceForCircularStaticPool :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool object_ a1 = jmethod object_ "setLayerInterfaceForCircularStaticPool" (\() -> (setLayerInterfaceForCircularStaticPool_impl (javaCast object_ :: DestroyedEvent))) () a1

setLayerInterfaceForCircularStaticPool_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool_super object_ a1 = (setLayerInterfaceForCircularStaticPool_impl (javaCast object_ :: DestroyedEvent)) a1

setLayerInterfaceForCircularStaticPool_impl :: DestroyedEvent -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterfaceForCircularStaticPool_impl this allBinaryLayerInterface = do
        jset (this).allBinaryLayerInterface (allBinaryLayerInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: DestroyedEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: DestroyedEvent))

toString_impl :: DestroyedEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "DestroyedEvent: \n")
        Control.Monad.void (StringMaker.append stringBuffer "AllBinaryLayerInterface: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (AllBinaryLayer.toString ((jget (this).allBinaryLayerInterface)))))
        Control.Monad.void (StringMaker.append stringBuffer "\nAllBinaryGameCanvas: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (DestroyedEvent.getAllBinaryGameCanvas this)))))
        (StringMaker.toString stringBuffer)


