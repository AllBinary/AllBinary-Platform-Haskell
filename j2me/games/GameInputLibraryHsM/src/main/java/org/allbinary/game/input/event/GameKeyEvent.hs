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
-- package org.allbinary.game.input.event
module GameKeyEvent (module GameKeyEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createEvent, createEvent_super, createEvent_impl, init, init_super, init_impl, setRepeatEvents, setRepeatEvents_super, setRepeatEvents_impl, hasRepeatEvents, hasRepeatEvents_super, hasRepeatEvents_impl, getKey, getKey_super, getKey_impl, toString, toString_super, toString_impl, getOriginalKey, getOriginalKey_super, getOriginalKey_impl, setOriginalKey, setOriginalKey_super, setOriginalKey_impl, getGameActionKey, getGameActionKey_super, getGameActionKey_impl, setGameActionKey, setGameActionKey_super, setGameActionKey_impl, getSourceId, getSourceId_super, getSourceId_impl, nONE, sourceId, repeated, key, gameActionKey, originalKey)
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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data GameKeyEvent = GameKeyEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , sourceId :: IORef (Int)
    , repeated :: IORef (Bool)
    , key :: IORef (Int)
    , gameActionKey :: IORef (Int)
    , originalKey :: IORef (Int)
    }

instance JavaNull GameKeyEvent where
    javaNull = javaNullRecord "GameKeyEvent"

instance JavaEquals GameKeyEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameKeyEvent where
    (==) = jrecordEquals

instance JavaObjectClass GameKeyEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nONE #-}
nONE = unsafePerformIO ((new_6 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) (Prelude.negate 1) False))

newRecord_ :: IO GameKeyEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    sourceId <- newIORef 0
    repeated <- newIORef False
    key <- newIORef 0
    gameActionKey <- newIORef 0
    originalKey <- newIORef 0
    let this = GameKeyEvent header_ base sourceId repeated key gameActionKey originalKey
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setRepeatEvents" (\() -> setRepeatEvents_impl this)
    jregisterMethod header_ "hasRepeatEvents" (\() -> hasRepeatEvents_impl this)
    jregisterMethod header_ "getKey" (\() -> getKey_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getOriginalKey" (\() -> getOriginalKey_impl this)
    jregisterMethod header_ "setOriginalKey" (\() -> setOriginalKey_impl this)
    jregisterMethod header_ "getGameActionKey" (\() -> getGameActionKey_impl this)
    jregisterMethod header_ "setGameActionKey" (\() -> setGameActionKey_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    pure this

initFields_ :: GameKeyEvent -> IO ()
initFields_ this = do
    jset this.sourceId (0)
    jset this.repeated (False)
    jset this.key (0)
    jset this.gameActionKey (0)
    jset this.originalKey (0)
    pure ()


createEvent :: (JavaObjectClass o1) => o1 -> Int -> Int -> IO (GameKeyEvent)
createEvent anyTypeObject_ sourceId key = do
        let anyType = jtoObject anyTypeObject_
        (new_6 anyType sourceId 0 0 key False)

new_6 :: (JavaObjectClass o1) => o1 -> Int -> Int -> Int -> Int -> Bool -> IO GameKeyEvent
new_6 anyTypeObject_ sourceId originalKey gameActionKey key repeated = do
    this <- newRecord_
    init_6 this anyTypeObject_ sourceId originalKey gameActionKey key repeated
    pure this

init_6 :: (JavaObjectClass o1) => GameKeyEvent -> o1 -> Int -> Int -> Int -> Int -> Bool -> IO ()
init_6 this anyTypeObject_ sourceId originalKey gameActionKey key repeated = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).sourceId (sourceId)
        Control.Monad.void (GameKeyEvent.setOriginalKey this originalKey)
        jset (this).key (key)
        Control.Monad.void (GameKeyEvent.setGameActionKey this gameActionKey)
        Control.Monad.void (GameKeyEvent.setRepeatEvents this repeated)
        pure ()


init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameKeyEvent))) () (jtoObject a1)

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: GameKeyEvent)) (jtoObject a1)

init_impl :: GameKeyEvent -> JavaObject -> IO (())
init_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (AllBinaryEventObject.setSource this anyType)
        pure ()


setRepeatEvents :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRepeatEvents object_ a1 = jmethod object_ "setRepeatEvents" (\() -> (setRepeatEvents_impl (javaCast object_ :: GameKeyEvent))) () a1

setRepeatEvents_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setRepeatEvents_super object_ a1 = (setRepeatEvents_impl (javaCast object_ :: GameKeyEvent)) a1

setRepeatEvents_impl :: GameKeyEvent -> Bool -> IO (())
setRepeatEvents_impl this repeated = do
        jset (this).repeated (repeated)
        pure ()


hasRepeatEvents :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasRepeatEvents object_ = jmethod object_ "hasRepeatEvents" (\() -> (hasRepeatEvents_impl (javaCast object_ :: GameKeyEvent))) ()

hasRepeatEvents_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
hasRepeatEvents_super object_ = (hasRepeatEvents_impl (javaCast object_ :: GameKeyEvent))

hasRepeatEvents_impl :: GameKeyEvent -> IO (Bool)
hasRepeatEvents_impl this = do
        pure ((jget (this).repeated))


getKey :: (JavaObjectClass this_) => this_ -> IO (Int)
getKey object_ = jmethod object_ "getKey" (\() -> (getKey_impl (javaCast object_ :: GameKeyEvent))) ()

getKey_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getKey_super object_ = (getKey_impl (javaCast object_ :: GameKeyEvent))

getKey_impl :: GameKeyEvent -> IO (Int)
getKey_impl this = do
        pure ((jget (this).key))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameKeyEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameKeyEvent))

toString_impl :: GameKeyEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "\nKey: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (GameKeyEvent.getKey this)))
        (StringMaker.toString stringBuffer)


getOriginalKey :: (JavaObjectClass this_) => this_ -> IO (Int)
getOriginalKey object_ = jmethod object_ "getOriginalKey" (\() -> (getOriginalKey_impl (javaCast object_ :: GameKeyEvent))) ()

getOriginalKey_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getOriginalKey_super object_ = (getOriginalKey_impl (javaCast object_ :: GameKeyEvent))

getOriginalKey_impl :: GameKeyEvent -> IO (Int)
getOriginalKey_impl this = do
        pure ((jget (this).originalKey))


setOriginalKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOriginalKey object_ a1 = jmethod object_ "setOriginalKey" (\() -> (setOriginalKey_impl (javaCast object_ :: GameKeyEvent))) () a1

setOriginalKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setOriginalKey_super object_ a1 = (setOriginalKey_impl (javaCast object_ :: GameKeyEvent)) a1

setOriginalKey_impl :: GameKeyEvent -> Int -> IO (())
setOriginalKey_impl this originalKey = do
        jset (this).originalKey (originalKey)
        pure ()


getGameActionKey :: (JavaObjectClass this_) => this_ -> IO (Int)
getGameActionKey object_ = jmethod object_ "getGameActionKey" (\() -> (getGameActionKey_impl (javaCast object_ :: GameKeyEvent))) ()

getGameActionKey_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getGameActionKey_super object_ = (getGameActionKey_impl (javaCast object_ :: GameKeyEvent))

getGameActionKey_impl :: GameKeyEvent -> IO (Int)
getGameActionKey_impl this = do
        pure ((jget (this).gameActionKey))


setGameActionKey :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setGameActionKey object_ a1 = jmethod object_ "setGameActionKey" (\() -> (setGameActionKey_impl (javaCast object_ :: GameKeyEvent))) () a1

setGameActionKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setGameActionKey_super object_ a1 = (setGameActionKey_impl (javaCast object_ :: GameKeyEvent)) a1

setGameActionKey_impl :: GameKeyEvent -> Int -> IO (())
setGameActionKey_impl this gameActionKey = do
        jset (this).gameActionKey (gameActionKey)
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: GameKeyEvent))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: GameKeyEvent))

getSourceId_impl :: GameKeyEvent -> IO (Int)
getSourceId_impl this = do
        pure ((jget (this).sourceId))


