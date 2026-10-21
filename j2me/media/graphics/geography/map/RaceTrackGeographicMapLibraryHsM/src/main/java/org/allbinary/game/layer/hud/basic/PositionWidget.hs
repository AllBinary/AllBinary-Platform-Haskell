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
-- package org.allbinary.game.layer.hud.basic
module PositionWidget (module PositionWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, set, set_super, set_impl, paint, paint_super, paint_impl, toString, toString_super, toString_impl, position, positionString)
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
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor

data PositionWidget = PositionWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , position :: IORef (Int)
    , positionString :: IORef (String)
    }

instance JavaNull PositionWidget where
    javaNull = javaNullRecord "PositionWidget"

instance JavaEquals PositionWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PositionWidget where
    (==) = jrecordEquals

instance JavaObjectClass PositionWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PositionWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    position <- newIORef 0
    positionString <- newIORef ""
    let this = PositionWidget header_ base position positionString
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: PositionWidget -> IO ()
initFields_ this = do
    jset this.position (0)
    jset this.positionString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    pure ()

new_4 :: Int -> Int -> Int -> BasicColor.BasicColor -> IO PositionWidget
new_4 position location direction basicColor = do
    this <- newRecord_
    init_4 this position location direction basicColor
    pure this

init_4 :: PositionWidget -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_4 this position location direction basicColor = do
        BasicHud.init_4 this.base (location) (direction) (2) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).base.updateMaxHeight (10)
        jset (this).base.updateMaxWidth (40)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Int)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: PositionWidget))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int)
get_super object_ = (get_impl (javaCast object_ :: PositionWidget))

get_impl :: PositionWidget -> IO (Int)
get_impl this = do
        pure ((jget (this).position))


set :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: PositionWidget))) () a1

set_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: PositionWidget)) a1

set_impl :: PositionWidget -> Int -> IO (())
set_impl this position = do
        jset (this).position (position)
        assignedValue <- (PositionWidget.toString (jio (PositionWidget.get this)))
        jset (this).positionString (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PositionWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PositionWidget)) a1

paint_impl :: PositionWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (BasicHud.paintString_super this.base graphics (jget (this).positionString))
        pure ()


toString :: Int -> IO (String)
toString position = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (javaToString position))
        if (position == 1) then do
            Control.Monad.void (StringMaker.append stringBuffer "st")
        else if (position == 2) then do
            Control.Monad.void (StringMaker.append stringBuffer "nd")
        else if (position == 3) then do
            Control.Monad.void (StringMaker.append stringBuffer "rd")
        else do
            Control.Monad.void (StringMaker.append stringBuffer "th")
        (StringMaker.toString stringBuffer)


