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
-- package org.allbinary.media.image.search
module ImageComparisonSearchConstraintsInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- Java interface: the classes that implement it have these functions
data ImageComparisonSearchConstraintsInterface = ImageComparisonSearchConstraintsInterface
    { header_ :: JavaHeader
    }

instance JavaNull ImageComparisonSearchConstraintsInterface where
    javaNull = javaNullRecord "ImageComparisonSearchConstraintsInterface"

instance JavaEquals ImageComparisonSearchConstraintsInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageComparisonSearchConstraintsInterface where
    (==) = jrecordEquals

instance JavaObjectClass ImageComparisonSearchConstraintsInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ImageComparisonSearchConstraintsInterface
fromHeader_ header = ImageComparisonSearchConstraintsInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ImageComparisonSearchConstraintsInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getStatisticalMatchConstraintsVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStatisticalMatchConstraintsVector object_ = jmethod object_ "getStatisticalMatchConstraintsVector" (\() -> (getStatisticalMatchConstraintsVector_impl (javaCast object_ :: ImageComparisonSearchConstraintsInterface))) ()

getStatisticalMatchConstraintsVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getStatisticalMatchConstraintsVector_super object_ = (getStatisticalMatchConstraintsVector_impl (javaCast object_ :: ImageComparisonSearchConstraintsInterface))

getStatisticalMatchConstraintsVector_impl :: ImageComparisonSearchConstraintsInterface -> IO (BasicArrayList.BasicArrayList)
getStatisticalMatchConstraintsVector_impl this = javaAbstractMethod "getStatisticalMatchConstraintsVector"


