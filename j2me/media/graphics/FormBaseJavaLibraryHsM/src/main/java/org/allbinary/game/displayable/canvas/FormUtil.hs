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
-- package org.allbinary.game.displayable.canvas
module FormUtil where

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
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data FormUtil = FormUtil
    { header_ :: JavaHeader
    }

instance JavaNull FormUtil where
    javaNull = javaNullRecord "FormUtil"

instance JavaEquals FormUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FormUtil where
    (==) = jrecordEquals

instance JavaObjectClass FormUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FormUtil
newRecord_ = do
    header_ <- newJavaHeader
    let this = FormUtil header_
    jregisterLevel header_ this
    jregisterMethod header_ "createFormRectangle" (\() -> createFormRectangle_impl this)
    pure this

initFields_ :: FormUtil -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FormUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FormUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (FormUtil)
getInstance = do
        pure (FormUtil.instance_)


createFormRectangle :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
createFormRectangle object_ = jmethod object_ "createFormRectangle" (\() -> (createFormRectangle_impl (javaCast object_ :: FormUtil))) ()

createFormRectangle_super :: (JavaObjectClass this_) => this_ -> IO (Rectangle.Rectangle)
createFormRectangle_super object_ = (createFormRectangle_impl (javaCast object_ :: FormUtil))

createFormRectangle_impl :: FormUtil -> IO (Rectangle.Rectangle)
createFormRectangle_impl this = do
        displayInfo <- (DisplayInfoSingleton.getInstance)
        pointFactory <- (PointFactory.getInstance)
        rectangle <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory 30 10)) ((jio (DisplayInfoSingleton.getLastWidth displayInfo)) - 30) ((jio (DisplayInfoSingleton.getLastHeight displayInfo)) - 35))
        pure (rectangle)


