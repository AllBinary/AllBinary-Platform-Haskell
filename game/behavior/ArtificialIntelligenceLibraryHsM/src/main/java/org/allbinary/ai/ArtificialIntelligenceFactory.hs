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
-- package org.allbinary.ai
module ArtificialIntelligenceFactory where

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
import qualified ArtificialIntelligence -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified ArtificialIntelligenceFactoryInterface

-- implements ArtificialIntelligenceFactoryInterface
data ArtificialIntelligenceFactory = ArtificialIntelligenceFactory
    { header_ :: JavaHeader
    }

instance JavaNull ArtificialIntelligenceFactory where
    javaNull = javaNullRecord "ArtificialIntelligenceFactory"

instance JavaEquals ArtificialIntelligenceFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArtificialIntelligenceFactory where
    (==) = jrecordEquals

instance JavaObjectClass ArtificialIntelligenceFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ArtificialIntelligenceFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ArtificialIntelligenceFactory header_
    jregisterLevel header_ this
    ArtificialIntelligenceFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: ArtificialIntelligenceFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ArtificialIntelligenceFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ArtificialIntelligenceFactory -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (ArtificialIntelligence.ArtificialIntelligence)
getInstance object_ a1 = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: ArtificialIntelligenceFactory))) () (jtoObject a1)

getInstance_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (ArtificialIntelligence.ArtificialIntelligence)
getInstance_super object_ a1 = (getInstance_impl (javaCast object_ :: ArtificialIntelligenceFactory)) (jtoObject a1)

getInstance_impl :: ArtificialIntelligenceFactory -> JavaObject -> IO (ArtificialIntelligence.ArtificialIntelligence)
getInstance_impl this anyTypeObject_ = do
        let anyType = jtoObject anyTypeObject_
        javaThrow ((JavaException "RuntimeException" ""))


