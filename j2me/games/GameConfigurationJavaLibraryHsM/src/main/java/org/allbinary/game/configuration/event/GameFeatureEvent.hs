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
module GameFeatureEvent (module GameFeatureEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getWhatChanged, getWhatChanged_super, getWhatChanged_impl, getGameOption, getGameOption_super, getGameOption_impl, whatChanged)
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
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data GameFeatureEvent = GameFeatureEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , whatChanged :: IORef (String)
    }

instance JavaNull GameFeatureEvent where
    javaNull = javaNullRecord "GameFeatureEvent"

instance JavaEquals GameFeatureEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameFeatureEvent where
    (==) = jrecordEquals

instance JavaObjectClass GameFeatureEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameFeatureEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    whatChanged <- newIORef ""
    let this = GameFeatureEvent header_ base whatChanged
    jregisterLevel header_ this
    jregisterMethod header_ "getWhatChanged" (\() -> getWhatChanged_impl this)
    jregisterMethod header_ "getGameOption" (\() -> getGameOption_impl this)
    pure this

initFields_ :: GameFeatureEvent -> IO ()
initFields_ this = do
    jset this.whatChanged (javaNull)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> String -> IO GameFeatureEvent
new_2 anyTypeObject_ whatChanged = do
    this <- newRecord_
    init_2 this anyTypeObject_ whatChanged
    pure this

init_2 :: (JavaObjectClass o1) => GameFeatureEvent -> o1 -> String -> IO ()
init_2 this anyTypeObject_ whatChanged = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).whatChanged (whatChanged)
        pure ()


getWhatChanged :: (JavaObjectClass this_) => this_ -> IO (String)
getWhatChanged object_ = jmethod object_ "getWhatChanged" (\() -> (getWhatChanged_impl (javaCast object_ :: GameFeatureEvent))) ()

getWhatChanged_super :: (JavaObjectClass this_) => this_ -> IO (String)
getWhatChanged_super object_ = (getWhatChanged_impl (javaCast object_ :: GameFeatureEvent))

getWhatChanged_impl :: GameFeatureEvent -> IO (String)
getWhatChanged_impl this = do
        pure ((jget (this).whatChanged))


getGameOption :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getGameOption object_ = jmethod object_ "getGameOption" (\() -> (getGameOption_impl (javaCast object_ :: GameFeatureEvent))) ()

getGameOption_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
getGameOption_super object_ = (getGameOption_impl (javaCast object_ :: GameFeatureEvent))

getGameOption_impl :: GameFeatureEvent -> IO (Any.Any)
getGameOption_impl this = do
        (fmap jtoObject (AllBinaryEventObject.getSource this))


