{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.capital.event
module CapitalEvent (module CapitalEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toString, toString_super, toString_impl, getValue, getValue_super, getValue_impl, setValue, setValue_super, setValue_impl, value)
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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data CapitalEvent = CapitalEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    , value :: IORef (Int)
    }

instance JavaNull CapitalEvent where
    javaNull = javaNullRecord "CapitalEvent"

instance JavaEquals CapitalEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CapitalEvent where
    (==) = jrecordEquals

instance JavaObjectClass CapitalEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CapitalEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    value <- newIORef 0
    let this = CapitalEvent header_ base value
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    pure this

initFields_ :: CapitalEvent -> IO ()
initFields_ this = do
    jset this.value (0)
    pure ()

new_1 :: (JavaObjectClass o1) => o1 -> IO CapitalEvent
new_1 anyTypeObject_ = do
    this <- newRecord_
    init_1 this anyTypeObject_
    pure this

init_1 :: (JavaObjectClass o1) => CapitalEvent -> o1 -> IO ()
init_1 this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        AllBinaryEventObject.init_1 this.base (anyType)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: CapitalEvent))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: CapitalEvent))

toString_impl :: CapitalEvent -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "CapitalEvent: Value: \n")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (CapitalEvent.getValue this)))
        (StringMaker.toString stringBuffer)


getValue :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: CapitalEvent))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getValue_super object_ = (getValue_impl (javaCast object_ :: CapitalEvent))

getValue_impl :: CapitalEvent -> IO (Int)
getValue_impl this = do
        pure ((jget (this).value))


setValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: CapitalEvent))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: CapitalEvent)) a1

setValue_impl :: CapitalEvent -> Int -> IO (())
setValue_impl this value = do
        jset (this).value (value)
        pure ()


