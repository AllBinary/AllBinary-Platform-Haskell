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
-- package org.allbinary.game.media.graphics.geography.map.racetrack
module PathFinderGraphHackVisitor (module PathFinderGraphHackVisitor, module BasePathFinderGraphVisitor) where

import BasePathFinderGraphVisitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, visit, visit_super, visit_impl, fixStart, fixStart_super, fixStart_impl, fixEnd, fixEnd_super, fixEnd_impl, fixOverPassEdges, fixOverPassEdges_super, fixOverPassEdges_impl, fixPath, fixPath_super, fixPath_impl, removeOverPassEdges, removeOverPassEdges_super, removeOverPassEdges_impl, isValid, isValid_super, isValid_impl)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicGeographicMap -- org.allbinary.media.graphics.geography.map.BasicGeographicMap
import qualified BasePathFinderGraphVisitor

data PathFinderGraphHackVisitor = PathFinderGraphHackVisitor
    { header_ :: JavaHeader
    , base :: BasePathFinderGraphVisitor.BasePathFinderGraphVisitor
    }

instance JavaNull PathFinderGraphHackVisitor where
    javaNull = javaNullRecord "PathFinderGraphHackVisitor"

instance JavaEquals PathFinderGraphHackVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinderGraphHackVisitor where
    (==) = jrecordEquals

instance JavaObjectClass PathFinderGraphHackVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFinderGraphHackVisitor
newRecord_ = do
    base <- BasePathFinderGraphVisitor.newRecord_
    let header_ = base.header_
    let this = PathFinderGraphHackVisitor header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "fixStart" (\() -> fixStart_impl this)
    jregisterMethod header_ "fixEnd" (\() -> fixEnd_impl this)
    jregisterMethod header_ "fixOverPassEdges" (\() -> fixOverPassEdges_impl this)
    jregisterMethod header_ "fixPath" (\() -> fixPath_impl this)
    jregisterMethod header_ "removeOverPassEdges" (\() -> removeOverPassEdges_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: PathFinderGraphHackVisitor -> IO ()
initFields_ this = do
    pure ()

new_4 :: BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO PathFinderGraphHackVisitor
new_4 geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
    this <- newRecord_
    init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight
    pure this

init_4 :: PathFinderGraphHackVisitor -> BasicGeographicMap.BasicGeographicMap -> Int -> Int -> Int -> IO ()
init_4 this geographicMapInterface edgeMinimum minPathWeight maxPathWeight = do
        BasePathFinderGraphVisitor.init_4 this.base (geographicMapInterface) (edgeMinimum) (minPathWeight) (maxPathWeight)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () (jtoObject a1) a2 a3

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: PathFinderGraphHackVisitor)) (jtoObject a1) a2 a3

visit_impl :: PathFinderGraphHackVisitor -> JavaObject -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_impl this graphObject_ startPathFindingNodeList endPathFindingNodeList = do
        let graph = jtoObject graphObject_
        Control.Monad.void (PathFinderGraphHackVisitor.fixStart this graph startPathFindingNodeList)
        Control.Monad.void (PathFinderGraphHackVisitor.fixEnd this graph endPathFindingNodeList)
        Control.Monad.void (PathFinderGraphHackVisitor.fixOverPassEdges this graph)
        pure ()


-- throws Exception
fixStart :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> IO (())
fixStart object_ a1 a2 = jmethod object_ "fixStart" (\() -> (fixStart_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () (jtoObject a1) a2

fixStart_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> IO (())
fixStart_super object_ a1 a2 = (fixStart_impl (javaCast object_ :: PathFinderGraphHackVisitor)) (jtoObject a1) a2

fixStart_impl :: PathFinderGraphHackVisitor -> JavaObject -> BasicArrayList.BasicArrayList -> IO (())
fixStart_impl this graphObject_ startPathFindingNodeList = do
        let graph = jtoObject graphObject_
        pure ()


-- throws Exception
fixEnd :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> IO (())
fixEnd object_ a1 a2 = jmethod object_ "fixEnd" (\() -> (fixEnd_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () (jtoObject a1) a2

fixEnd_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> IO (())
fixEnd_super object_ a1 a2 = (fixEnd_impl (javaCast object_ :: PathFinderGraphHackVisitor)) (jtoObject a1) a2

fixEnd_impl :: PathFinderGraphHackVisitor -> JavaObject -> BasicArrayList.BasicArrayList -> IO (())
fixEnd_impl this graphObject_ endPathFindingNodeList = do
        let graph = jtoObject graphObject_
        pure ()


-- throws Exception
fixOverPassEdges :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
fixOverPassEdges object_ a1 = jmethod object_ "fixOverPassEdges" (\() -> (fixOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () (jtoObject a1)

fixOverPassEdges_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
fixOverPassEdges_super object_ a1 = (fixOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor)) (jtoObject a1)

fixOverPassEdges_impl :: PathFinderGraphHackVisitor -> JavaObject -> IO (())
fixOverPassEdges_impl this graphObject_ = do
        let graph = jtoObject graphObject_
        pure ()


-- throws Exception
fixPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath object_ a1 a2 a3 = jmethod object_ "fixPath" (\() -> (fixPath_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1 a2 a3

fixPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_super object_ a1 a2 a3 = (fixPath_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1 a2 a3

fixPath_impl :: PathFinderGraphHackVisitor -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_impl this startPathFindingNodeList endPathFindingNodeList pathList = do
        pure ()


-- throws Exception
removeOverPassEdges :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges object_ a1 = jmethod object_ "removeOverPassEdges" (\() -> (removeOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () a1

removeOverPassEdges_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges_super object_ a1 = (removeOverPassEdges_impl (javaCast object_ :: PathFinderGraphHackVisitor)) a1

removeOverPassEdges_impl :: PathFinderGraphHackVisitor -> BasicArrayList.BasicArrayList -> IO (())
removeOverPassEdges_impl this pathList = do
        pure ()


isValid :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PathFinderGraphHackVisitor))) () (jtoObject a1)

isValid_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: PathFinderGraphHackVisitor)) (jtoObject a1)

isValid_impl :: PathFinderGraphHackVisitor -> JavaObject -> IO (Bool)
isValid_impl this graphPathObject_ = do
        let graphPath = jtoObject graphPathObject_
        pure (False)


