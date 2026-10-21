{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
module SelectAdvancedRTSLayerVisitorFactory where

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
import qualified SelectAdvancedRTSLayerVisitor -- same package or java.lang
import qualified SelectedRTSLayersPlayerGameInput -- same package or java.lang
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified SelectRTSLayerVisitorFactoryInterface

-- implements SelectRTSLayerVisitorFactoryInterface
data SelectAdvancedRTSLayerVisitorFactory = SelectAdvancedRTSLayerVisitorFactory
    { header_ :: JavaHeader
    }

instance JavaNull SelectAdvancedRTSLayerVisitorFactory where
    javaNull = javaNullRecord "SelectAdvancedRTSLayerVisitorFactory"

instance JavaEquals SelectAdvancedRTSLayerVisitorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectAdvancedRTSLayerVisitorFactory where
    (==) = jrecordEquals

instance JavaObjectClass SelectAdvancedRTSLayerVisitorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SelectAdvancedRTSLayerVisitorFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = SelectAdvancedRTSLayerVisitorFactory header_
    jregisterLevel header_ this
    SelectRTSLayerVisitorFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "create" (\() -> create_impl this)
    pure this

initFields_ :: SelectAdvancedRTSLayerVisitorFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (SelectAdvancedRTSLayerVisitorFactory)
getInstance = do
        pure (SelectAdvancedRTSLayerVisitorFactory.instance_)

new_ :: IO SelectAdvancedRTSLayerVisitorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SelectAdvancedRTSLayerVisitorFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


create :: (JavaObjectClass this_) => this_ -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: SelectAdvancedRTSLayerVisitorFactory))) () a1

create_super :: (JavaObjectClass this_) => this_ -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create_super object_ a1 = (create_impl (javaCast object_ :: SelectAdvancedRTSLayerVisitorFactory)) a1

create_impl :: SelectAdvancedRTSLayerVisitorFactory -> SelectedRTSLayersPlayerGameInput.SelectedRTSLayersPlayerGameInput -> IO (Visitor.Visitor)
create_impl this selectedRTSLayersPlayerGameInput = do
        (fmap (\value_ -> javaCast value_ :: Visitor.Visitor) (SelectAdvancedRTSLayerVisitor.new_1 selectedRTSLayersPlayerGameInput))


