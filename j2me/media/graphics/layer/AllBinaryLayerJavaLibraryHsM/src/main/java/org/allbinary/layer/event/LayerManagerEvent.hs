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
-- package org.allbinary.layer.event
module LayerManagerEvent (module LayerManagerEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLayerInterface, getLayerInterface_super, getLayerInterface_impl, setLayerInterface, setLayerInterface_super, setLayerInterface_impl, toString, toString_super, toString_impl, layerInterface, crud)
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
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified LayerManager -- org.allbinary.layer.LayerManager
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data LayerManagerEvent = LayerManagerEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , layerInterface :: IORef (AllBinaryLayer.AllBinaryLayer)
    , crud :: IORef (String)
    }

instance JavaNull LayerManagerEvent where
    javaNull = javaNullRecord "LayerManagerEvent"

instance JavaEquals LayerManagerEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManagerEvent where
    (==) = jrecordEquals

instance JavaObjectClass LayerManagerEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LayerManagerEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    layerInterface <- newIORef javaNull
    crud <- newIORef ""
    let this = LayerManagerEvent header_ base layerInterface crud
    jregisterLevel header_ this
    jregisterMethod header_ "getLayerInterface" (\() -> getLayerInterface_impl this)
    jregisterMethod header_ "setLayerInterface" (\() -> setLayerInterface_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: LayerManagerEvent -> IO ()
initFields_ this = do
    jset this.layerInterface (AllBinaryLayer.nULL_ALLBINARY_LAYER)
    jset this.crud (javaNull)
    pure ()

new_2 :: LayerManager.LayerManager -> String -> IO LayerManagerEvent
new_2 layerManager crud = do
    this <- newRecord_
    init_2 this layerManager crud
    pure this

init_2 :: LayerManagerEvent -> LayerManager.LayerManager -> String -> IO ()
init_2 this layerManager crud = do
        AllBinaryEventObject.init_1 this.base (layerManager)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).crud (crud)
        pure ()


getLayerInterface :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface object_ = jmethod object_ "getLayerInterface" (\() -> (getLayerInterface_impl (javaCast object_ :: LayerManagerEvent))) ()

getLayerInterface_super :: (JavaObjectClass this_) => this_ -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_super object_ = (getLayerInterface_impl (javaCast object_ :: LayerManagerEvent))

getLayerInterface_impl :: LayerManagerEvent -> IO (AllBinaryLayer.AllBinaryLayer)
getLayerInterface_impl this = do
        pure ((jget (this).layerInterface))


setLayerInterface :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface object_ a1 = jmethod object_ "setLayerInterface" (\() -> (setLayerInterface_impl (javaCast object_ :: LayerManagerEvent))) () a1

setLayerInterface_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface_super object_ a1 = (setLayerInterface_impl (javaCast object_ :: LayerManagerEvent)) a1

setLayerInterface_impl :: LayerManagerEvent -> AllBinaryLayer.AllBinaryLayer -> IO (())
setLayerInterface_impl this layerInterface = do
        jset (this).layerInterface (layerInterface)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: LayerManagerEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: LayerManagerEvent))

toString_impl :: LayerManagerEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "LayerManagerEvent: \n")
        Control.Monad.void (StringMaker.append stringBuffer "LayerInterface: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (AllBinaryLayer.toString ((jio (LayerManagerEvent.getLayerInterface this))))))
        Control.Monad.void (StringMaker.append stringBuffer "\nCRUD: ")
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).crud))
        (StringMaker.toString stringBuffer)


