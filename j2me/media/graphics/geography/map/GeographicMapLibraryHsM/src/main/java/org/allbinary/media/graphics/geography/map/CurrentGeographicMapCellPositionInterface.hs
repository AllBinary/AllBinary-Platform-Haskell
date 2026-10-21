{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package org.allbinary.media.graphics.geography.map
module CurrentGeographicMapCellPositionInterface where

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
import qualified GeographicMapCellPosition -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data CurrentGeographicMapCellPositionInterface = CurrentGeographicMapCellPositionInterface
    { header_ :: JavaHeader
    }

instance JavaNull CurrentGeographicMapCellPositionInterface where
    javaNull = javaNullRecord "CurrentGeographicMapCellPositionInterface"

instance JavaEquals CurrentGeographicMapCellPositionInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CurrentGeographicMapCellPositionInterface where
    (==) = jrecordEquals

instance JavaObjectClass CurrentGeographicMapCellPositionInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> CurrentGeographicMapCellPositionInterface
fromHeader_ header = CurrentGeographicMapCellPositionInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (CurrentGeographicMapCellPositionInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getCurrentGeographicMapCellPosition :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition object_ = jmethod object_ "getCurrentGeographicMapCellPosition" (\() -> (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: CurrentGeographicMapCellPositionInterface))) ()

getCurrentGeographicMapCellPosition_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_super object_ = (getCurrentGeographicMapCellPosition_impl (javaCast object_ :: CurrentGeographicMapCellPositionInterface))

getCurrentGeographicMapCellPosition_impl :: CurrentGeographicMapCellPositionInterface -> IO (GeographicMapCellPosition.GeographicMapCellPosition)
getCurrentGeographicMapCellPosition_impl this = javaAbstractMethod "getCurrentGeographicMapCellPosition"


