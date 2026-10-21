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
-- package org.allbinary.game.terrain
module TerrainEvent (module TerrainEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, getBasicTerrainInfo, getBasicTerrainInfo_super, getBasicTerrainInfo_impl, setBasicTerrainInfo, setBasicTerrainInfo_super, setBasicTerrainInfo_impl, setBasicTerrainInfoForCircularStaticPool, setBasicTerrainInfoForCircularStaticPool_super, setBasicTerrainInfoForCircularStaticPool_impl, basicTerrainInfo)
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
import qualified BasicTerrainInfo -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data TerrainEvent = TerrainEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , basicTerrainInfo :: IORef (BasicTerrainInfo.BasicTerrainInfo)
    }

instance JavaNull TerrainEvent where
    javaNull = javaNullRecord "TerrainEvent"

instance JavaEquals TerrainEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TerrainEvent where
    (==) = jrecordEquals

instance JavaObjectClass TerrainEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TerrainEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    basicTerrainInfo <- newIORef javaNull
    let this = TerrainEvent header_ base basicTerrainInfo
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getBasicTerrainInfo" (\() -> getBasicTerrainInfo_impl this)
    jregisterMethod header_ "setBasicTerrainInfo" (\() -> setBasicTerrainInfo_impl this)
    jregisterMethod header_ "setBasicTerrainInfoForCircularStaticPool" (\() -> setBasicTerrainInfoForCircularStaticPool_impl this)
    pure this

initFields_ :: TerrainEvent -> IO ()
initFields_ this = do
    jset this.basicTerrainInfo (BasicTerrainInfo.nULL_BASIC_TERRAIN_INFO)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO TerrainEvent
new_1 basicTerrainInfoObject_ = do
    this <- newRecord_
    init_1 this basicTerrainInfoObject_
    pure this

init_1 :: (JavaObjectClass o1) => TerrainEvent -> o1 -> IO ()
init_1 this basicTerrainInfoObject_ = do
        let basicTerrainInfo = jtoObject basicTerrainInfoObject_
        AllBinaryEventObject.init_1 this.base (basicTerrainInfo)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TerrainEvent.setBasicTerrainInfo this (jget (this).basicTerrainInfo))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TerrainEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TerrainEvent))

toString_impl :: TerrainEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "TerrainEvent: \n")
        Control.Monad.void (StringMaker.append stringBuffer "LayerInterface: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (BasicTerrainInfo.toString ((jget (this).basicTerrainInfo)))))
        (StringMaker.toString stringBuffer)


getBasicTerrainInfo :: (JavaObjectClass this_) => this_ -> IO (BasicTerrainInfo.BasicTerrainInfo)
getBasicTerrainInfo object_ = jmethod object_ "getBasicTerrainInfo" (\() -> (getBasicTerrainInfo_impl (javaCast object_ :: TerrainEvent))) ()

getBasicTerrainInfo_super :: (JavaObjectClass this_) => this_ -> IO (BasicTerrainInfo.BasicTerrainInfo)
getBasicTerrainInfo_super object_ = (getBasicTerrainInfo_impl (javaCast object_ :: TerrainEvent))

getBasicTerrainInfo_impl :: TerrainEvent -> IO (BasicTerrainInfo.BasicTerrainInfo)
getBasicTerrainInfo_impl this = do
        pure ((jget (this).basicTerrainInfo))


setBasicTerrainInfo :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfo object_ a1 = jmethod object_ "setBasicTerrainInfo" (\() -> (setBasicTerrainInfo_impl (javaCast object_ :: TerrainEvent))) () a1

setBasicTerrainInfo_super :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfo_super object_ a1 = (setBasicTerrainInfo_impl (javaCast object_ :: TerrainEvent)) a1

setBasicTerrainInfo_impl :: TerrainEvent -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfo_impl this basicTerrainInfo = do
        jset (this).basicTerrainInfo (basicTerrainInfo)
        pure ()


setBasicTerrainInfoForCircularStaticPool :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfoForCircularStaticPool object_ a1 = jmethod object_ "setBasicTerrainInfoForCircularStaticPool" (\() -> (setBasicTerrainInfoForCircularStaticPool_impl (javaCast object_ :: TerrainEvent))) () a1

setBasicTerrainInfoForCircularStaticPool_super :: (JavaObjectClass this_) => this_ -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfoForCircularStaticPool_super object_ a1 = (setBasicTerrainInfoForCircularStaticPool_impl (javaCast object_ :: TerrainEvent)) a1

setBasicTerrainInfoForCircularStaticPool_impl :: TerrainEvent -> BasicTerrainInfo.BasicTerrainInfo -> IO (())
setBasicTerrainInfoForCircularStaticPool_impl this basicTerrainInfo = do
        jset (this).basicTerrainInfo (basicTerrainInfo)
        pure ()


