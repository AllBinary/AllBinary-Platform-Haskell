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
-- package org.allbinary.ai
module ArtificialIntelligence where

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
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified ArtificialIntelligenceInterface

-- implements ArtificialIntelligenceInterface
data ArtificialIntelligence = ArtificialIntelligence
    { header_ :: JavaHeader
    }

instance JavaNull ArtificialIntelligence where
    javaNull = javaNullRecord "ArtificialIntelligence"

instance JavaEquals ArtificialIntelligence where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArtificialIntelligence where
    (==) = jrecordEquals

instance JavaObjectClass ArtificialIntelligence where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

aI_ID = 2

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ArtificialIntelligence
newRecord_ = do
    header_ <- newJavaHeader
    let this = ArtificialIntelligence header_
    jregisterLevel header_ this
    ArtificialIntelligenceInterface.registerInterface_ header_
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    pure this

initFields_ :: ArtificialIntelligence -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (ArtificialIntelligence)
getInstance = do
        pure (ArtificialIntelligence.instance_)

new_ :: IO ArtificialIntelligence
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ArtificialIntelligence -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: ArtificialIntelligence))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: ArtificialIntelligence)) a1

processAI_impl :: ArtificialIntelligence -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this layerManager = do
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: ArtificialIntelligence))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: ArtificialIntelligence))

getId_impl :: ArtificialIntelligence -> IO (Int)
getId_impl this = do
        pure (1)


