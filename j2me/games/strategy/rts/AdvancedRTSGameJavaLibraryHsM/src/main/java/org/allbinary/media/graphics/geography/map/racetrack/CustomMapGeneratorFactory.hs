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
-- package org.allbinary.media.graphics.geography.map.racetrack
module CustomMapGeneratorFactory (module CustomMapGeneratorFactory, module CustomMapGeneratorBaseFactory) where

import CustomMapGeneratorBaseFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, create, create_super, create_impl)
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
import qualified CustomMapGenerator -- same package or java.lang
import qualified CustomMapGeneratorBase -- same package or java.lang
import qualified RaceTrackGeographicMap -- same package or java.lang
import qualified CustomMapGeneratorBaseFactory

data CustomMapGeneratorFactory = CustomMapGeneratorFactory
    { header_ :: JavaHeader
    , base :: CustomMapGeneratorBaseFactory.CustomMapGeneratorBaseFactory
    }

instance JavaNull CustomMapGeneratorFactory where
    javaNull = javaNullRecord "CustomMapGeneratorFactory"

instance JavaEquals CustomMapGeneratorFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomMapGeneratorFactory where
    (==) = jrecordEquals

instance JavaObjectClass CustomMapGeneratorFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomMapGeneratorFactory
newRecord_ = do
    base <- CustomMapGeneratorBaseFactory.newRecord_
    let header_ = base.header_
    let this = CustomMapGeneratorFactory header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "create" (\() -> create_impl this)
    pure this

initFields_ :: CustomMapGeneratorFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CustomMapGeneratorFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomMapGeneratorFactory -> IO ()
init_ this = do
    CustomMapGeneratorBaseFactory.init_ this.base
    initFields_ this


-- throws Exception
create :: (JavaObjectClass this_) => this_ -> RaceTrackGeographicMap.RaceTrackGeographicMap -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
create object_ a1 = jmethod object_ "create" (\() -> (create_impl (javaCast object_ :: CustomMapGeneratorFactory))) () a1

create_super :: (JavaObjectClass this_) => this_ -> RaceTrackGeographicMap.RaceTrackGeographicMap -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
create_super object_ a1 = (create_impl (javaCast object_ :: CustomMapGeneratorFactory)) a1

create_impl :: CustomMapGeneratorFactory -> RaceTrackGeographicMap.RaceTrackGeographicMap -> IO (CustomMapGeneratorBase.CustomMapGeneratorBase)
create_impl this raceTrackGeographicMap = do
        (fmap (\value_ -> javaCast value_ :: CustomMapGeneratorBase.CustomMapGeneratorBase) (CustomMapGenerator.new_1 raceTrackGeographicMap))


