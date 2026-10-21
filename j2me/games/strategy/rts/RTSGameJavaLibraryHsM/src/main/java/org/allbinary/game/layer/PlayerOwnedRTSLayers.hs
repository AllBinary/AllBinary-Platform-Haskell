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
-- package org.allbinary.game.layer
module PlayerOwnedRTSLayers where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data PlayerOwnedRTSLayers = PlayerOwnedRTSLayers
    { header_ :: JavaHeader
    , rtsLayerList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull PlayerOwnedRTSLayers where
    javaNull = javaNullRecord "PlayerOwnedRTSLayers"

instance JavaEquals PlayerOwnedRTSLayers where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerOwnedRTSLayers where
    (==) = jrecordEquals

instance JavaObjectClass PlayerOwnedRTSLayers where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerOwnedRTSLayers
newRecord_ = do
    header_ <- newJavaHeader
    rtsLayerList <- newIORef javaNull
    let this = PlayerOwnedRTSLayers header_ rtsLayerList
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PlayerOwnedRTSLayers -> IO ()
initFields_ this = do
    jset this.rtsLayerList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO PlayerOwnedRTSLayers
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PlayerOwnedRTSLayers -> IO ()
init_ this = do
    initFields_ this


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PlayerOwnedRTSLayers))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PlayerOwnedRTSLayers))

toString_impl :: PlayerOwnedRTSLayers -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "All: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).rtsLayerList)))))
        (StringMaker.toString stringBuffer)


