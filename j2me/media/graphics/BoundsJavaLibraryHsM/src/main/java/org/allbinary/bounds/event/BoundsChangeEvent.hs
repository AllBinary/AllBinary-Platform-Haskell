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
-- package org.allbinary.bounds.event
module BoundsChangeEvent (module BoundsChangeEvent, module AllBinaryEventObject) where

import AllBinaryEventObject hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRectangle, getRectangle_super, getRectangle_impl)
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
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject

data BoundsChangeEvent = BoundsChangeEvent
    { header_ :: JavaHeader
    , base :: AllBinaryEventObject.AllBinaryEventObject
    }

instance JavaNull BoundsChangeEvent where
    javaNull = javaNullRecord "BoundsChangeEvent"

instance JavaEquals BoundsChangeEvent where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BoundsChangeEvent where
    (==) = jrecordEquals

instance JavaObjectClass BoundsChangeEvent where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BoundsChangeEvent
newRecord_ = do
    base <- AllBinaryEventObject.newRecord_
    let header_ = base.header_
    let this = BoundsChangeEvent header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "getRectangle" (\() -> getRectangle_impl this)
    pure this

initFields_ :: BoundsChangeEvent -> IO ()
initFields_ this = do
    pure ()

new_1 :: Rectangle.Rectangle -> IO BoundsChangeEvent
new_1 rectangle = do
    this <- newRecord_
    init_1 this rectangle
    pure this

init_1 :: BoundsChangeEvent -> Rectangle.Rectangle -> IO ()
init_1 this rectangle = do
        AllBinaryEventObject.init_1 this.base (rectangle)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getRectangle :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle object_ = jmethod object_ "getRectangle" (\() -> (getRectangle_impl (javaCast object_ :: BoundsChangeEvent))) ()

getRectangle_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
getRectangle_super object_ = (getRectangle_impl (javaCast object_ :: BoundsChangeEvent))

getRectangle_impl :: BoundsChangeEvent -> IO (Rectangle.Rectangle)
getRectangle_impl this = do
        pure ((javaCast (jio (AllBinaryEventObject.getSource this)) :: Rectangle.Rectangle))


