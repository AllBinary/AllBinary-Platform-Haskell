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
-- package org.allbinary.media.graphics.geography.map.racetrack
module RaceTracksPathPrinter where

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
import qualified Any -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data RaceTracksPathPrinter = RaceTracksPathPrinter
    { header_ :: JavaHeader
    }

instance JavaNull RaceTracksPathPrinter where
    javaNull = javaNullRecord "RaceTracksPathPrinter"

instance JavaEquals RaceTracksPathPrinter where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RaceTracksPathPrinter where
    (==) = jrecordEquals

instance JavaObjectClass RaceTracksPathPrinter where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO RaceTracksPathPrinter
newRecord_ = do
    header_ <- newJavaHeader
    let this = RaceTracksPathPrinter header_
    jregisterLevel header_ this
    jregisterMethod header_ "printPath" (\() -> printPath_impl this)
    jregisterMethod header_ "printPaths" (\() -> printPaths_impl this)
    pure this

initFields_ :: RaceTracksPathPrinter -> IO ()
initFields_ this = do
    pure ()

new_ :: IO RaceTracksPathPrinter
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: RaceTracksPathPrinter -> IO ()
init_ this = do
    initFields_ this


printPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
printPath object_ a1 = jmethod object_ "printPath" (\() -> (printPath_impl (javaCast object_ :: RaceTracksPathPrinter))) () a1

printPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
printPath_super object_ a1 = (printPath_impl (javaCast object_ :: RaceTracksPathPrinter)) a1

printPath_impl :: RaceTracksPathPrinter -> BasicArrayList.BasicArrayList -> IO (())
printPath_impl this list = do
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            anyType <- (BasicArrayList.get list index)
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "pathList.add(cellPositionFactory.getInstance"))) (jio (Any.toString anyType))))) ");"))))) this "printPath")
        pure ()


printPaths :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
printPaths object_ a1 = jmethod object_ "printPaths" (\() -> (printPaths_impl (javaCast object_ :: RaceTracksPathPrinter))) () a1

printPaths_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
printPaths_super object_ a1 = (printPaths_impl (javaCast object_ :: RaceTracksPathPrinter)) a1

printPaths_impl :: RaceTracksPathPrinter -> BasicArrayList.BasicArrayList -> IO (())
printPaths_impl this list = do
        size <- (BasicArrayList.size list)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (putStrLn (javaToString (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) " Path "))) index))) (jget ((jio (CommonLabels.getInstance))).cOLON_SEP))))))))
            Control.Monad.void (RaceTracksPathPrinter.printPath this (javaCast (jio (BasicArrayList.get list index)) :: BasicArrayList.BasicArrayList))
        pure ()


