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
-- package org.allbinary.media.graphics.geography.pathfinding
module PathFinderGraphVisitorBase where

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

data PathFinderGraphVisitorBase = PathFinderGraphVisitorBase
    { header_ :: JavaHeader
    }

instance JavaNull PathFinderGraphVisitorBase where
    javaNull = javaNullRecord "PathFinderGraphVisitorBase"

instance JavaEquals PathFinderGraphVisitorBase where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFinderGraphVisitorBase where
    (==) = jrecordEquals

instance JavaObjectClass PathFinderGraphVisitorBase where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PathFinderGraphVisitorBase
newRecord_ = do
    header_ <- newJavaHeader
    let this = PathFinderGraphVisitorBase header_
    jregisterLevel header_ this
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "fixPath" (\() -> fixPath_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getInvalidReason" (\() -> getInvalidReason_impl this)
    pure this

initFields_ :: PathFinderGraphVisitorBase -> IO ()
initFields_ this = do
    pure ()

new_ :: IO PathFinderGraphVisitorBase
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PathFinderGraphVisitorBase -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
visit :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit object_ a1 a2 a3 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: PathFinderGraphVisitorBase))) () (jtoObject a1) a2 a3

visit_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_super object_ a1 a2 a3 = (visit_impl (javaCast object_ :: PathFinderGraphVisitorBase)) (jtoObject a1) a2 a3

visit_impl :: PathFinderGraphVisitorBase -> JavaObject -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
visit_impl this graphObject_ startPathFindingNodeList endPathFindingNodeList = do
        let graph = jtoObject graphObject_
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


-- throws Exception
fixPath :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath object_ a1 a2 a3 = jmethod object_ "fixPath" (\() -> (fixPath_impl (javaCast object_ :: PathFinderGraphVisitorBase))) () a1 a2 a3

fixPath_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_super object_ a1 a2 a3 = (fixPath_impl (javaCast object_ :: PathFinderGraphVisitorBase)) a1 a2 a3

fixPath_impl :: PathFinderGraphVisitorBase -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> BasicArrayList.BasicArrayList -> IO (())
fixPath_impl this startPathFindingNodeList endPathFindingNodeList pathList = do
        javaThrow ((JavaException "RuntimeException" ""))
        pure ()


isValid :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid object_ a1 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: PathFinderGraphVisitorBase))) () (jtoObject a1)

isValid_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (Bool)
isValid_super object_ a1 = (isValid_impl (javaCast object_ :: PathFinderGraphVisitorBase)) (jtoObject a1)

isValid_impl :: PathFinderGraphVisitorBase -> JavaObject -> IO (Bool)
isValid_impl this graphPathObject_ = do
        let graphPath = jtoObject graphPathObject_
        javaThrow ((JavaException "RuntimeException" ""))


getInvalidReason :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getInvalidReason object_ a1 = jmethod object_ "getInvalidReason" (\() -> (getInvalidReason_impl (javaCast object_ :: PathFinderGraphVisitorBase))) () (jtoObject a1)

getInvalidReason_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (String)
getInvalidReason_super object_ a1 = (getInvalidReason_impl (javaCast object_ :: PathFinderGraphVisitorBase)) (jtoObject a1)

getInvalidReason_impl :: PathFinderGraphVisitorBase -> JavaObject -> IO (String)
getInvalidReason_impl this graphPathObject_ = do
        let graphPath = jtoObject graphPathObject_
        javaThrow ((JavaException "RuntimeException" ""))


