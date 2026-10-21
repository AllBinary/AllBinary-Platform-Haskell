{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellPositionTrackingCompositeInterface where

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
import qualified GeographicMapCellPositionTracking -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GeographicMapCellPositionTrackingCompositeInterface = GeographicMapCellPositionTrackingCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCellPositionTrackingCompositeInterface where
    javaNull = javaNullRecord "GeographicMapCellPositionTrackingCompositeInterface"

instance JavaEquals GeographicMapCellPositionTrackingCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellPositionTrackingCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellPositionTrackingCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GeographicMapCellPositionTrackingCompositeInterface
fromHeader_ header = GeographicMapCellPositionTrackingCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GeographicMapCellPositionTrackingCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getGeographicMapCellPositionTracking :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking object_ = jmethod object_ "getGeographicMapCellPositionTracking" (\() -> (getGeographicMapCellPositionTracking_impl (javaCast object_ :: GeographicMapCellPositionTrackingCompositeInterface))) ()

getGeographicMapCellPositionTracking_super :: (JavaObjectClass this_) => this_ -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_super object_ = (getGeographicMapCellPositionTracking_impl (javaCast object_ :: GeographicMapCellPositionTrackingCompositeInterface))

getGeographicMapCellPositionTracking_impl :: GeographicMapCellPositionTrackingCompositeInterface -> IO (GeographicMapCellPositionTracking.GeographicMapCellPositionTracking)
getGeographicMapCellPositionTracking_impl this = javaAbstractMethod "getGeographicMapCellPositionTracking"


