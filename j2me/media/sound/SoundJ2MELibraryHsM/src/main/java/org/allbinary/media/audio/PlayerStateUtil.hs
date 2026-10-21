{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
-- package org.allbinary.media.audio
module PlayerStateUtil where

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
import qualified Player -- javax.microedition.media.Player
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data PlayerStateUtil = PlayerStateUtil
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , uNREALIZED :: IORef (String)
    , rEALIZED :: IORef (String)
    , pREFETCHED :: IORef (String)
    , sTARTED :: IORef (String)
    , cLOSED :: IORef (String)
    }

instance JavaNull PlayerStateUtil where
    javaNull = javaNullRecord "PlayerStateUtil"

instance JavaEquals PlayerStateUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerStateUtil where
    (==) = jrecordEquals

instance JavaObjectClass PlayerStateUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PlayerStateUtil
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    uNREALIZED <- newIORef ""
    rEALIZED <- newIORef ""
    pREFETCHED <- newIORef ""
    sTARTED <- newIORef ""
    cLOSED <- newIORef ""
    let this = PlayerStateUtil header_ commonStrings uNREALIZED rEALIZED pREFETCHED sTARTED cLOSED
    jregisterLevel header_ this
    jregisterMethod header_ "convert" (\() -> convert_impl this)
    pure this

initFields_ :: PlayerStateUtil -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.uNREALIZED ("UNREALIZED")
    jset this.rEALIZED ("REALIZED")
    jset this.pREFETCHED ("PREFETCHED")
    jset this.sTARTED ("STARTED")
    jset this.cLOSED ("CLOSED")
    pure ()

new_ :: IO PlayerStateUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlayerStateUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (PlayerStateUtil)
getInstance = do
        pure (PlayerStateUtil.instance_)


convert :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
convert object_ a1 = jmethod object_ "convert" (\() -> (convert_impl (javaCast object_ :: PlayerStateUtil))) () a1

convert_super :: (JavaObjectClass this_) => this_ -> Int -> IO (String)
convert_super object_ a1 = (convert_impl (javaCast object_ :: PlayerStateUtil)) a1

convert_impl :: PlayerStateUtil -> Int -> IO (String)
convert_impl this state = do
    javaCatchReturn $ do
        if (state == Player.uNREALIZED) then do
            javaReturn ((jget (this).uNREALIZED))
        else if (state == Player.rEALIZED) then do
            javaReturn ((jget (this).rEALIZED))
        else if (state == Player.pREFETCHED) then do
            javaReturn ((jget (this).pREFETCHED))
        else if (state == Player.sTARTED) then do
            javaReturn ((jget (this).sTARTED))
        else when (state == Player.cLOSED) $ do
            javaReturn ((jget (this).cLOSED))
        pure ((jget ((jget (this).commonStrings)).uNKNOWN))


