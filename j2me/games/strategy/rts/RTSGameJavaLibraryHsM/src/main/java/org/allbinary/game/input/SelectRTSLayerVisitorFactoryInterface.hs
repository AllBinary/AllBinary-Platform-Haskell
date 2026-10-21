{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.input
module SelectRTSLayerVisitorFactoryInterface where

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
import qualified SelectedRTSLayersPlayerGameInput -- same package or java.lang
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

-- Java interface: the classes that implement it have these functions
data SelectRTSLayerVisitorFactoryInterface = SelectRTSLayerVisitorFactoryInterface
    { header_ :: JavaHeader
    }

instance JavaNull SelectRTSLayerVisitorFactoryInterface where
    javaNull = javaNullRecord "SelectRTSLayerVisitorFactoryInterface"

instance JavaEquals SelectRTSLayerVisitorFactoryInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectRTSLayerVisitorFactoryInterface where
    (==) = jrecordEquals

instance JavaObjectClass SelectRTSLayerVisitorFactoryInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> SelectRTSLayerVisitorFactoryInterface
fromHeader_ header = SelectRTSLayerVisitorFactoryInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (SelectRTSLayerVisitorFactoryInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


create :: (JavaObjectClass this_) => this_ -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: SelectRTSLayerVisitorFactoryInterface))) () a1

create_super :: (JavaObjectClass this_) => this_ -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create_super object_ a1 = (create_impl (javaCast object_ :: SelectRTSLayerVisitorFactoryInterface)) a1

create_impl :: SelectRTSLayerVisitorFactoryInterface -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create_impl this selectedRTSLayersPlayerGameInput = javaAbstractMethod "create"


