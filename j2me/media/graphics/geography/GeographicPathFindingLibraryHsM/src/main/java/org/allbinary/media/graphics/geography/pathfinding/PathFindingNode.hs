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
module PathFindingNode where

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
import qualified Class -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GeographicMapCellPosition -- org.allbinary.media.graphics.geography.map.GeographicMapCellPosition
import qualified SimpleGeographicMapCellPositionFactory -- org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels

data PathFindingNode = PathFindingNode
    { header_ :: JavaHeader
    , parent :: IORef (Any.Any)
    , geographicMapCellPosition :: IORef (GeographicMapCellPosition.GeographicMapCellPosition)
    }

instance JavaNull PathFindingNode where
    javaNull = javaNullRecord "PathFindingNode"

instance JavaEquals PathFindingNode where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PathFindingNode where
    (==) = jrecordEquals

instance JavaObjectClass PathFindingNode where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PathFindingNode
newRecord_ = do
    header_ <- newJavaHeader
    parent <- newIORef javaNull
    geographicMapCellPosition <- newIORef javaNull
    let this = PathFindingNode header_ parent geographicMapCellPosition
    jregisterLevel header_ this
    jregisterMethod header_ "getParentP" (\() -> getParentP_impl this)
    jregisterMethod header_ "setGeographicMapCellPositionP" (\() -> setGeographicMapCellPositionP_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: PathFindingNode -> IO ()
initFields_ this = do
    jset this.parent ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT))
    jset this.geographicMapCellPosition (SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION)
    pure ()

new_2 :: (JavaObjectClass o1) => o1 -> GeographicMapCellPosition.GeographicMapCellPosition -> IO PathFindingNode
new_2 parentObject_ geographicMapCellPosition = do
    this <- newRecord_
    init_2 this parentObject_ geographicMapCellPosition
    pure this

init_2 :: (JavaObjectClass o1) => PathFindingNode -> o1 -> GeographicMapCellPosition.GeographicMapCellPosition -> IO ()
init_2 this parentObject_ geographicMapCellPosition = do
        let parent = jtoObject parentObject_
        initFields_ this
        jset (this).parent (parent)
        Control.Monad.void (PathFindingNode.setGeographicMapCellPositionP this geographicMapCellPosition)
        when ((jget (this).geographicMapCellPosition) == SimpleGeographicMapCellPositionFactory.nULL_GEOGRAPHIC_MAP_CELL_POSITION) $ do
            javaThrow ((JavaException "Exception" "No GeographicMapCellPosition"))
        pure ()


getParentP :: (JavaObjectClass this_) => this_ -> IO (PathFindingNode)
getParentP object_ = jmethod object_ "getParentP" (\() -> (getParentP_impl (javaCast object_ :: PathFindingNode))) ()

getParentP_super :: (JavaObjectClass this_) => this_ -> IO (PathFindingNode)
getParentP_super object_ = (getParentP_impl (javaCast object_ :: PathFindingNode))

getParentP_impl :: PathFindingNode -> IO (PathFindingNode)
getParentP_impl this = do
        pure ((javaCast (jget (this).parent) :: PathFindingNode))


setGeographicMapCellPositionP :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPositionP object_ a1 = jmethod object_ "setGeographicMapCellPositionP" (\() -> (setGeographicMapCellPositionP_impl (javaCast object_ :: PathFindingNode))) () a1

setGeographicMapCellPositionP_super :: (JavaObjectClass this_) => this_ -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPositionP_super object_ a1 = (setGeographicMapCellPositionP_impl (javaCast object_ :: PathFindingNode)) a1

setGeographicMapCellPositionP_impl :: PathFindingNode -> GeographicMapCellPosition.GeographicMapCellPosition -> IO (())
setGeographicMapCellPositionP_impl this geographicMapCellPosition = do
        jset (this).geographicMapCellPosition (geographicMapCellPosition)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: PathFindingNode))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: PathFindingNode))

toString_impl :: PathFindingNode -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass this))))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonLabels.getInstance))).cOLON_SEP))
        Control.Monad.void (StringMaker.append stringBuffer " Path: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (GeographicMapCellPosition.toString ((jget (this).geographicMapCellPosition)))))
        pathFindingNode <- newIORef =<< (PathFindingNode.getParentP this)
        fix $ \loop -> when ((jget pathFindingNode) /= javaNull) $ javaIteration (loop) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jio (toString ((jget ((jget pathFindingNode)).geographicMapCellPosition)))))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
            assignedValue <- (PathFindingNode.getParentP ((jget pathFindingNode)))
            jset pathFindingNode (assignedValue)
        (StringMaker.toString stringBuffer)


