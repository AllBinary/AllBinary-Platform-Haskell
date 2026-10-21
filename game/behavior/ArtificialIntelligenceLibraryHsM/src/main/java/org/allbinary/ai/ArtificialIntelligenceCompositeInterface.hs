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
module ArtificialIntelligenceCompositeInterface where

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
import qualified ArtificialIntelligenceInterface -- same package or java.lang

-- Java interface: the classes that implement it have these functions
data ArtificialIntelligenceCompositeInterface = ArtificialIntelligenceCompositeInterface
    { header_ :: JavaHeader
    }

instance JavaNull ArtificialIntelligenceCompositeInterface where
    javaNull = javaNullRecord "ArtificialIntelligenceCompositeInterface"

instance JavaEquals ArtificialIntelligenceCompositeInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ArtificialIntelligenceCompositeInterface where
    (==) = jrecordEquals

instance JavaObjectClass ArtificialIntelligenceCompositeInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> ArtificialIntelligenceCompositeInterface
fromHeader_ header = ArtificialIntelligenceCompositeInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (ArtificialIntelligenceCompositeInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


-- throws Exception
getArtificialIntelligenceInterface :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface object_ = jmethod object_ "getArtificialIntelligenceInterface" (\() -> (getArtificialIntelligenceInterface_impl (javaCast object_ :: ArtificialIntelligenceCompositeInterface))) ()

getArtificialIntelligenceInterface_super :: (JavaObjectClass this_) => this_ -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface_super object_ = (getArtificialIntelligenceInterface_impl (javaCast object_ :: ArtificialIntelligenceCompositeInterface))

getArtificialIntelligenceInterface_impl :: ArtificialIntelligenceCompositeInterface -> IO (ArtificialIntelligenceInterface.ArtificialIntelligenceInterface)
getArtificialIntelligenceInterface_impl this = javaAbstractMethod "getArtificialIntelligenceInterface"


