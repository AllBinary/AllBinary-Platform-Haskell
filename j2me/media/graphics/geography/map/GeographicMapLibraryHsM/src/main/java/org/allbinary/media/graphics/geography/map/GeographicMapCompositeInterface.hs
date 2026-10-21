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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCompositeInterface where

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
import qualified GeographicMapCellType -- same package or java.lang
import qualified BasicGeographicMap -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data GeographicMapCompositeInterface = GeographicMapCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull GeographicMapCompositeInterface where
    javaNull = javaNullRecord "GeographicMapCompositeInterface"

instance JavaEquals GeographicMapCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> GeographicMapCompositeInterface
fromHeader_ header = GeographicMapCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (GeographicMapCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


geographicMapCellTypeArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray object_ = jmethod object_ "geographicMapCellTypeArray" (\() -> (geographicMapCellTypeArray_impl (javaCast object_ :: GeographicMapCompositeInterface))) ()

geographicMapCellTypeArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray_super object_ = (geographicMapCellTypeArray_impl (javaCast object_ :: GeographicMapCompositeInterface))

geographicMapCellTypeArray_impl :: GeographicMapCompositeInterface -> IO (JavaArray (GeographicMapCellType.GeographicMapCellType))
geographicMapCellTypeArray_impl this = javaAbstractMethod "geographicMapCellTypeArray"


getGeographicMapInterface :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface object_ = jmethod object_ "getGeographicMapInterface" (\() -> (getGeographicMapInterface_impl (javaCast object_ :: GeographicMapCompositeInterface))) ()

getGeographicMapInterface_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface_super object_ = (getGeographicMapInterface_impl (javaCast object_ :: GeographicMapCompositeInterface))

getGeographicMapInterface_impl :: GeographicMapCompositeInterface -> IO (JavaArray (BasicGeographicMap.BasicGeographicMap))
getGeographicMapInterface_impl this = javaAbstractMethod "getGeographicMapInterface"


setGeographicMapInterface :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface object_ a1 = jmethod object_ "setGeographicMapInterface" (\() -> (setGeographicMapInterface_impl (javaCast object_ :: GeographicMapCompositeInterface))) () a1

setGeographicMapInterface_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface_super object_ a1 = (setGeographicMapInterface_impl (javaCast object_ :: GeographicMapCompositeInterface)) a1

setGeographicMapInterface_impl :: GeographicMapCompositeInterface -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> IO (())
setGeographicMapInterface_impl this geographicMapInterface = javaAbstractMethod "setGeographicMapInterface"


