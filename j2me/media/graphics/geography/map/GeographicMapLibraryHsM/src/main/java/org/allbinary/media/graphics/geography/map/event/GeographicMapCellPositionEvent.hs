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
-- package org.allbinary.media.graphics.geography.map.event
module GeographicMapCellPositionEvent (module GeographicMapCellPositionEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, setGeographicMapCellPosition, setGeographicMapCellPosition_super, setGeographicMapCellPosition_impl, getGeographicMapCellPosition, getGeographicMapCellPosition_super, getGeographicMapCellPosition_impl, toString, toString_super, toString_impl, geographicMapCellPosition)
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
import qualified CellPosition -- org.allbinary.graphics.CellPosition
import qualified CellPositionFactory -- org.allbinary.graphics.CellPositionFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition

data GeographicMapCellPositionEvent = GeographicMapCellPositionEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , geographicMapCellPosition :: IORef (CellPosition.CellPosition)
    }

instance JavaNull GeographicMapCellPositionEvent where
    javaNull = javaNullRecord "GeographicMapCellPositionEvent"

instance JavaEquals GeographicMapCellPositionEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionEvent where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapCellPositionEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    geographicMapCellPosition <- newIORef javaNull
    let this = GeographicMapCellPositionEvent header_ base geographicMapCellPosition
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "setGeographicMapCellPosition" (\() -> setGeographicMapCellPosition_impl this)
    jregisterMethod header_ "getGeographicMapCellPosition" (\() -> getGeographicMapCellPosition_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GeographicMapCellPositionEvent -> IO ()
initFields_ this = do
    jset this.geographicMapCellPosition ((jget ((jio (CellPositionFactory.getInstance))).nONE))
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> CellPosition.CellPosition -> IO GeographicMapCellPositionEvent
new_2 anyTypeObject_ geographicMapCellPosition = do
    this <- newRecord_
    init_2 this anyTypeObject_ geographicMapCellPosition
    pure this

init_2 :: (JavaObjectClass o1) => GeographicMapCellPositionEvent -> o1 -> CellPosition.CellPosition -> IO ()
init_2 this anyTypeObject_ geographicMapCellPosition = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).geographicMapCellPosition (geographicMapCellPosition)
        pure ()


init :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GeographicMapCellPositionEvent))) () (jtoObject a1)

init_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: GeographicMapCellPositionEvent)) (jtoObject a1)

init_impl :: GeographicMapCellPositionEvent -> JavaObject -> IO (())
init_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        Control.Monad.void (AllBinaryEventObject.setSource this anyType)
        pure ()


setGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPosition object_ a1 = jmethod object_ "setGeographicMapCellPosition" (\() -> (setGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionEvent))) () a1

setGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPosition_super object_ a1 = (setGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionEvent)) a1

setGeographicMapCellPosition_impl :: GeographicMapCellPositionEvent -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPosition_impl this geographicMapCellPosition = do
        jset (this).geographicMapCellPosition (geographicMapCellPosition)
        pure ()


getGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPosition object_ = jmethod object_ "getGeographicMapCellPosition" (\() -> (getGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionEvent))) ()

getGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPosition_super object_ = (getGeographicMapCellPosition_impl (javaCast object_ :: GeographicMapCellPositionEvent))

getGeographicMapCellPosition_impl :: GeographicMapCellPositionEvent -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getGeographicMapCellPosition_impl this = do
        pure ((javaCast (jget (this).geographicMapCellPosition) :: GeographicMapCellPosition.GeographicMapCellPosition))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GeographicMapCellPositionEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GeographicMapCellPositionEvent))

toString_impl :: GeographicMapCellPositionEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "CellPositionEvent: ")
        Control.Monad.void (StringMaker.append stringBuffer "\nGeographicMapCellPosition: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jio (GeographicMapCellPositionEvent.getGeographicMapCellPosition this)))))
        (StringMaker.toString stringBuffer)


