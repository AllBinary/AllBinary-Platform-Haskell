{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
-- package org.allbinary.android.input.motion
module ActivityFractureInputUtilFactory where

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
import qualified ActivityFractureUtil -- org.allbinary.android.ActivityFractureUtil
import qualified AndroidInfoFactory -- org.allbinary.android.AndroidInfoFactory
import qualified ActivityFractureUtilAPI1 -- org.allbinary.android.api1.ActivityFractureUtilAPI1
import qualified ActivityFractureUtilAPI16 -- org.allbinary.android.api16.ActivityFractureUtilAPI16
import qualified ActivityFractureUtilAPI19 -- org.allbinary.android.api19.ActivityFractureUtilAPI19
import qualified ActivityFractureUtilAPI5 -- org.allbinary.android.api5.ActivityFractureUtilAPI5

data ActivityFractureInputUtilFactory = ActivityFractureInputUtilFactory
    { header_ :: JavaHeader
    }

instance JavaNull ActivityFractureInputUtilFactory where
    javaNull = javaNullRecord "ActivityFractureInputUtilFactory"

instance JavaEquals ActivityFractureInputUtilFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ActivityFractureInputUtilFactory where
    (==) = jrecordEquals

instance JavaObjectClass ActivityFractureInputUtilFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ActivityFractureInputUtilFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ActivityFractureInputUtilFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ActivityFractureInputUtilFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ActivityFractureInputUtilFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ActivityFractureInputUtilFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ActivityFractureUtil.ActivityFractureUtil)
getInstance = do
    javaCatchReturn $ do
        sDK_VERSION <- (AndroidInfoFactory.getVersion ((jio (AndroidInfoFactory.getInstance))))
        if (sDK_VERSION <= 4) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ActivityFractureUtil.ActivityFractureUtil) (ActivityFractureUtilAPI1.getInstance))
        else if (sDK_VERSION <= 15) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ActivityFractureUtil.ActivityFractureUtil) (ActivityFractureUtilAPI5.getInstance))
        else if (sDK_VERSION <= 16) then do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ActivityFractureUtil.ActivityFractureUtil) (ActivityFractureUtilAPI16.getInstance))
        else do
            javaReturn =<< (fmap (\value_ -> javaCast value_ :: ActivityFractureUtil.ActivityFractureUtil) (ActivityFractureUtilAPI19.getInstance))


