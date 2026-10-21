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
-- package org.allbinary.game.behavior.topview
module TopViewCharacterInterface where

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
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified GeographicMapCellType -- org.allbinary.media.graphics.geography.map.GeographicMapCellType

-- Java interface: the classes that implement it have these functions
data TopViewCharacterInterface = TopViewCharacterInterface
    { header_ :: JavaHeader
    }

instance JavaNull TopViewCharacterInterface where
    javaNull = javaNullRecord "TopViewCharacterInterface"

instance JavaEquals TopViewCharacterInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TopViewCharacterInterface where
    (==) = jrecordEquals

instance JavaObjectClass TopViewCharacterInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TopViewCharacterInterface
fromHeader_ header = TopViewCharacterInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TopViewCharacterInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


terrainMove :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> Int -> Int -> IO (())
terrainMove object_ a1 a2 a3 a4 = jmethod object_ "terrainMove" (\() -> (terrainMove_impl (javaCast object_ :: TopViewCharacterInterface))) () a1 a2 a3 a4

terrainMove_super :: (JavaObjectClass this_) => this_ -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> Int -> Int -> IO (())
terrainMove_super object_ a1 a2 a3 a4 = (terrainMove_impl (javaCast object_ :: TopViewCharacterInterface)) a1 a2 a3 a4

terrainMove_impl :: TopViewCharacterInterface -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> Int -> Int -> IO (())
terrainMove_impl this geographicMapInterfaceArray geographicMapCellTypeArray x y = javaAbstractMethod "terrainMove"


-- throws Exception
terrainEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent object_ a1 a2 a3 a4 a5 = jmethod object_ "terrainEvent" (\() -> (terrainEvent_impl (javaCast object_ :: TopViewCharacterInterface))) () a1 a2 a3 a4 a5

terrainEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_super object_ a1 a2 a3 a4 a5 = (terrainEvent_impl (javaCast object_ :: TopViewCharacterInterface)) a1 a2 a3 a4 a5

terrainEvent_impl :: TopViewCharacterInterface -> Int -> Int -> JavaArray (BasicGeographicMap.BasicGeographicMap) -> JavaArray (GeographicMapCellType.GeographicMapCellType) -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
terrainEvent_impl this x y geographicMapInterfaceArray geographicMapCellTypeArray geographicMapCellPosition = javaAbstractMethod "terrainEvent"


move :: (JavaObjectClass this_) => this_ -> IO (())
move object_ = jmethod object_ "move" (\() -> (move_impl (javaCast object_ :: TopViewCharacterInterface))) ()

move_super :: (JavaObjectClass this_) => this_ -> IO (())
move_super object_ = (move_impl (javaCast object_ :: TopViewCharacterInterface))

move_impl :: TopViewCharacterInterface -> IO (())
move_impl this = javaAbstractMethod "move"


upp :: (JavaObjectClass this_) => this_ -> IO (())
upp object_ = jmethod object_ "upp" (\() -> (upp_impl (javaCast object_ :: TopViewCharacterInterface))) ()

upp_super :: (JavaObjectClass this_) => this_ -> IO (())
upp_super object_ = (upp_impl (javaCast object_ :: TopViewCharacterInterface))

upp_impl :: TopViewCharacterInterface -> IO (())
upp_impl this = javaAbstractMethod "upp"


leftp :: (JavaObjectClass this_) => this_ -> IO (())
leftp object_ = jmethod object_ "leftp" (\() -> (leftp_impl (javaCast object_ :: TopViewCharacterInterface))) ()

leftp_super :: (JavaObjectClass this_) => this_ -> IO (())
leftp_super object_ = (leftp_impl (javaCast object_ :: TopViewCharacterInterface))

leftp_impl :: TopViewCharacterInterface -> IO (())
leftp_impl this = javaAbstractMethod "leftp"


rightp :: (JavaObjectClass this_) => this_ -> IO (())
rightp object_ = jmethod object_ "rightp" (\() -> (rightp_impl (javaCast object_ :: TopViewCharacterInterface))) ()

rightp_super :: (JavaObjectClass this_) => this_ -> IO (())
rightp_super object_ = (rightp_impl (javaCast object_ :: TopViewCharacterInterface))

rightp_impl :: TopViewCharacterInterface -> IO (())
rightp_impl this = javaAbstractMethod "rightp"


-- throws Exception
reset :: (JavaObjectClass this_) => this_ -> IO (())
reset object_ = jmethod object_ "reset" (\() -> (reset_impl (javaCast object_ :: TopViewCharacterInterface))) ()

reset_super :: (JavaObjectClass this_) => this_ -> IO (())
reset_super object_ = (reset_impl (javaCast object_ :: TopViewCharacterInterface))

reset_impl :: TopViewCharacterInterface -> IO (())
reset_impl this = javaAbstractMethod "reset"


