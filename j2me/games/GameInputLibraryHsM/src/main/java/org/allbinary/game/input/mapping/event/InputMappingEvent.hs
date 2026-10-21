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
-- package org.allbinary.game.input.mapping.event
module InputMappingEvent (module InputMappingEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setInputToGameKeyMapping, setInputToGameKeyMapping_super, setInputToGameKeyMapping_impl, getInputToGameKeyMapping, getInputToGameKeyMapping_super, getInputToGameKeyMapping_impl, inputToGameKeyMapping)
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
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data InputMappingEvent = InputMappingEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    }

instance JavaNull InputMappingEvent where
    javaNull = javaNullRecord "InputMappingEvent"

instance JavaEquals InputMappingEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InputMappingEvent where
    (==) = jrecordEquals

instance JavaObjectClass InputMappingEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InputMappingEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    inputToGameKeyMapping <- newIORef javaNull
    let this = InputMappingEvent header_ base inputToGameKeyMapping
    jregisterLevel header_ this
    jregisterMethod header_ "setInputToGameKeyMapping" (\() -> setInputToGameKeyMapping_impl this)
    jregisterMethod header_ "getInputToGameKeyMapping" (\() -> getInputToGameKeyMapping_impl this)
    pure this

initFields_ :: InputMappingEvent -> IO ()
initFields_ this = do
    jset this.inputToGameKeyMapping =<< (InputToGameKeyMapping.getNullInstance)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO InputMappingEvent
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => InputMappingEvent -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


setInputToGameKeyMapping :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
setInputToGameKeyMapping object_ a1 = jmethod object_ "setInputToGameKeyMapping" (\() -> (setInputToGameKeyMapping_impl (javaCast object_ :: InputMappingEvent))) () a1

setInputToGameKeyMapping_super :: (JavaObjectClass this_) => this_ -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
setInputToGameKeyMapping_super object_ a1 = (setInputToGameKeyMapping_impl (javaCast object_ :: InputMappingEvent)) a1

setInputToGameKeyMapping_impl :: InputMappingEvent -> InputToGameKeyMapping.InputToGameKeyMapping -> IO (())
setInputToGameKeyMapping_impl this inputToGameKeyMapping = do
        jset (this).inputToGameKeyMapping (inputToGameKeyMapping)
        pure ()


getInputToGameKeyMapping :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputToGameKeyMapping object_ = jmethod object_ "getInputToGameKeyMapping" (\() -> (getInputToGameKeyMapping_impl (javaCast object_ :: InputMappingEvent))) ()

getInputToGameKeyMapping_super :: (JavaObjectClass this_) => this_ -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputToGameKeyMapping_super object_ = (getInputToGameKeyMapping_impl (javaCast object_ :: InputMappingEvent))

getInputToGameKeyMapping_impl :: InputMappingEvent -> IO (InputToGameKeyMapping.InputToGameKeyMapping)
getInputToGameKeyMapping_impl this = do
        pure ((jget (this).inputToGameKeyMapping))


