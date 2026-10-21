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
-- package org.allbinary.game.layer
module GameLayerUtil where

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
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified ViewPositionBase -- org.allbinary.view.ViewPositionBase

data GameLayerUtil = GameLayerUtil
    { header_ :: JavaHeader
    }

instance JavaNull GameLayerUtil where
    javaNull = javaNullRecord "GameLayerUtil"

instance JavaEquals GameLayerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameLayerUtil where
    (==) = jrecordEquals

instance JavaObjectClass GameLayerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameLayerUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = GameLayerUtil header_
    jregisterLevel header_ this
    pure this

initFields_ :: GameLayerUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GameLayerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameLayerUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isOnScreen :: AllBinaryLayer.AllBinaryLayer -> IO (Bool)
isOnScreen layer = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        viewPosition <- (AllBinaryLayer.getViewPosition layer)
        (GameLayerUtil.isInside (jio (ViewPositionBase.getX viewPosition)) (jio (ViewPositionBase.getY viewPosition)) (jio (ViewPositionBase.getX2 viewPosition)) (jio (ViewPositionBase.getY2 viewPosition)) 0 0 (jio (DisplayInfoSingleton.getLastWidth displayInfo)) (jio (DisplayInfoSingleton.getLastHeight displayInfo)))


isInside :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> IO (Bool)
isInside rectX1 rectY1 rectX2 rectY2 rect2X1 rect2Y1 rect2X2 rect2Y2 = do
    javaCatchReturn $ do
        if ((((rectX1 > rect2X1) && (rectX2 < rect2X2)) && (rectY1 > rect2Y1)) && (rectY2 < rect2Y2)) then do
            javaReturn (True)
        else do
            javaReturn (False)


