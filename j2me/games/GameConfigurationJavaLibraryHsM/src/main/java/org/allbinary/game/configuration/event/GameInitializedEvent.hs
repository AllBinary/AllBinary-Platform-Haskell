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
-- package org.allbinary.game.configuration.event
module GameInitializedEvent (module GameInitializedEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setLevel, setLevel_super, setLevel_impl, getLevel, getLevel_super, getLevel_impl, setResourceLoadingLevel, setResourceLoadingLevel_super, setResourceLoadingLevel_impl, getResourceLoadingLevel, getResourceLoadingLevel_super, getResourceLoadingLevel_impl, resourceLoadingLevel, level)
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
import qualified ResourceLoadingLevel -- org.allbinary.game.resource.ResourceLoadingLevel
import qualified ResourceLoadingLevelFactory -- org.allbinary.game.resource.ResourceLoadingLevelFactory
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data GameInitializedEvent = GameInitializedEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , resourceLoadingLevel :: IORef (ResourceLoadingLevel.ResourceLoadingLevel)
    , level :: IORef (Int)
    }

instance JavaNull GameInitializedEvent where
    javaNull = javaNullRecord "GameInitializedEvent"

instance JavaEquals GameInitializedEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInitializedEvent where
    (==) = jrecordEquals

instance JavaObjectClass GameInitializedEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameInitializedEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    resourceLoadingLevel <- newIORef javaNull
    level <- newIORef 0
    let this = GameInitializedEvent header_ base resourceLoadingLevel level
    jregisterLevel header_ this
    jregisterMethod header_ "setLevel" (\() -> setLevel_impl this)
    jregisterMethod header_ "getLevel" (\() -> getLevel_impl this)
    jregisterMethod header_ "setResourceLoadingLevel" (\() -> setResourceLoadingLevel_impl this)
    jregisterMethod header_ "getResourceLoadingLevel" (\() -> getResourceLoadingLevel_impl this)
    pure this

initFields_ :: GameInitializedEvent -> IO ()
initFields_ this = do
    jset this.resourceLoadingLevel ((jget ((jio (ResourceLoadingLevelFactory.getInstance))).lEVEL))
    jset this.level (0)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO GameInitializedEvent
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => GameInitializedEvent -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: GameInitializedEvent))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: GameInitializedEvent)) a1

setLevel_impl :: GameInitializedEvent -> Int -> IO (())
setLevel_impl this level = do
        jset (this).level (level)
        jset (this).resourceLoadingLevel ((jget ((jio (ResourceLoadingLevelFactory.getInstance))).lEVEL))
        pure ()


getLevel :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel object_ = jmethod object_ "getLevel" (\() -> (getLevel_impl (javaCast object_ :: GameInitializedEvent))) ()

getLevel_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLevel_super object_ = (getLevel_impl (javaCast object_ :: GameInitializedEvent))

getLevel_impl :: GameInitializedEvent -> IO (Int)
getLevel_impl this = do
        pure ((jget (this).level))


setResourceLoadingLevel :: (JavaObjectClass this_) => this_ -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
setResourceLoadingLevel object_ a1 = jmethod object_ "setResourceLoadingLevel" (\() -> (setResourceLoadingLevel_impl (javaCast object_ :: GameInitializedEvent))) () a1

setResourceLoadingLevel_super :: (JavaObjectClass this_) => this_ -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
setResourceLoadingLevel_super object_ a1 = (setResourceLoadingLevel_impl (javaCast object_ :: GameInitializedEvent)) a1

setResourceLoadingLevel_impl :: GameInitializedEvent -> ResourceLoadingLevel.ResourceLoadingLevel -> IO (())
setResourceLoadingLevel_impl this resourceLoadingLevel = do
        jset (this).resourceLoadingLevel (resourceLoadingLevel)
        assignedValue <- (ResourceLoadingLevel.getLevel ((jget (this).resourceLoadingLevel)))
        jset (this).level (assignedValue)
        pure ()


getResourceLoadingLevel :: (JavaObjectClass this_) => this_ -> IO (ResourceLoadingLevel.ResourceLoadingLevel)
getResourceLoadingLevel object_ = jmethod object_ "getResourceLoadingLevel" (\() -> (getResourceLoadingLevel_impl (javaCast object_ :: GameInitializedEvent))) ()

getResourceLoadingLevel_super :: (JavaObjectClass this_) => this_ -> IO (ResourceLoadingLevel.ResourceLoadingLevel)
getResourceLoadingLevel_super object_ = (getResourceLoadingLevel_impl (javaCast object_ :: GameInitializedEvent))

getResourceLoadingLevel_impl :: GameInitializedEvent -> IO (ResourceLoadingLevel.ResourceLoadingLevel)
getResourceLoadingLevel_impl this = do
        pure ((jget (this).resourceLoadingLevel))


