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
-- package org.allbinary.game.ag.layer.hud.basic.level
module LevelHudWidget (module LevelHudWidget, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createHud, createHud_super, createHud_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, update, update_super, update_impl, setLevel, setLevel_super, setLevel_impl, nextLevel, nextLevel_super, nextLevel_impl, previousLevel, previousLevel_super, previousLevel_impl, isComplete, isComplete_super, isComplete_impl, paint, paint_super, paint_impl, paintThreed, paintThreed_super, paintThreed_impl, level, maxlevel, levelString, levelNumberCharArray, levelNumberTotalDigits, offset, primitiveLongUtil)
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
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil

-- implements PaintableInterface
data LevelHudWidget = LevelHudWidget
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , level :: IORef (Int)
    , maxlevel :: IORef (Int)
    , levelString :: IORef (JavaArray (Char))
    , levelNumberCharArray :: IORef (JavaArray (Char))
    , levelNumberTotalDigits :: IORef (Int)
    , offset :: IORef (Int)
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    }

instance JavaNull LevelHudWidget where
    javaNull = javaNullRecord "LevelHudWidget"

instance JavaEquals LevelHudWidget where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LevelHudWidget where
    (==) = jrecordEquals

instance JavaObjectClass LevelHudWidget where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO LevelHudWidget
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    level <- newIORef 0
    maxlevel <- newIORef 0
    levelString <- newIORef javaNull
    levelNumberCharArray <- newIORef javaNull
    levelNumberTotalDigits <- newIORef 0
    offset <- newIORef 0
    primitiveLongUtil <- newIORef javaNull
    let this = LevelHudWidget header_ base level maxlevel levelString levelNumberCharArray levelNumberTotalDigits offset primitiveLongUtil
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "setLevel" (\() -> setLevel_impl this)
    jregisterMethod header_ "nextLevel" (\() -> nextLevel_impl this)
    jregisterMethod header_ "previousLevel" (\() -> previousLevel_impl this)
    jregisterMethod header_ "isComplete" (\() -> isComplete_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: LevelHudWidget -> IO ()
initFields_ this = do
    jset this.level (0)
    jset this.maxlevel (0)
    jset this.levelString (javaNull)
    jset this.levelNumberCharArray ((jget ((jio (NullUtil.getInstance))).nULL_CHAR_ARRAY))
    jset this.levelNumberTotalDigits (0)
    jset this.offset (0)
    jset this.primitiveLongUtil (javaNull)
    pure ()


-- throws Exception
createHud :: Int -> Int -> Int -> IO (LevelHudWidget)
createHud maxlevel location direction = do
        (new_3 maxlevel location direction)

new_3 :: Int -> Int -> Int -> IO LevelHudWidget
new_3 maxlevel location direction = do
    this <- newRecord_
    init_3 this maxlevel location direction
    pure this

init_3 :: LevelHudWidget -> Int -> Int -> Int -> IO ()
init_3 this maxlevel location direction = do
        BasicHud.init_4 this.base (location) (direction) (2) (jget ((jio (BasicColorFactory.getInstance))).gREY)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen 1000)
        jset (this).primitiveLongUtil (assignedValue)
        let lEVEL = "Lv "
        assignedValue <- (String.toCharArray lEVEL)
        jset (this).levelString (assignedValue)
        jset (this).maxlevel (maxlevel)
        jset (this).level (maxlevel)
        Control.Monad.void (LevelHudWidget.update this)
        jset (this).base.updateMaxHeight (14)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: LevelHudWidget))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: LevelHudWidget)) a1

updateMeasurement_impl :: LevelHudWidget -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).base.updateMaxWidth (((jio (Font.getSize font)) * 4))
        jset (this).offset (((jio (Font.charsWidth font (jget (this).levelString) 0 (jlength (jget (this).levelString)))) + (jio (Font.getSize font))))
        Control.Monad.void (BasicHud.updateMeasurement_super this.base graphics)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: LevelHudWidget))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: LevelHudWidget))

update_impl :: LevelHudWidget -> IO (())
update_impl this = do
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jget (this).level))
        jset (this).levelNumberCharArray (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
        jset (this).levelNumberTotalDigits (assignedValue)
        pure ()


setLevel :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel object_ a1 = jmethod object_ "setLevel" (\() -> (setLevel_impl (javaCast object_ :: LevelHudWidget))) () a1

setLevel_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLevel_super object_ a1 = (setLevel_impl (javaCast object_ :: LevelHudWidget)) a1

setLevel_impl :: LevelHudWidget -> Int -> IO (())
setLevel_impl this level = do
        jset (this).level (level)
        Control.Monad.void (LevelHudWidget.update this)
        pure ()


nextLevel :: (JavaObjectClass this_) => this_ -> IO (())
nextLevel object_ = jmethod object_ "nextLevel" (\() -> (nextLevel_impl (javaCast object_ :: LevelHudWidget))) ()

nextLevel_super :: (JavaObjectClass this_) => this_ -> IO (())
nextLevel_super object_ = (nextLevel_impl (javaCast object_ :: LevelHudWidget))

nextLevel_impl :: LevelHudWidget -> IO (())
nextLevel_impl this = do
        jset (this).level ((jget (this).level) + 1)
        Control.Monad.void (LevelHudWidget.update this)
        pure ()


previousLevel :: (JavaObjectClass this_) => this_ -> IO (())
previousLevel object_ = jmethod object_ "previousLevel" (\() -> (previousLevel_impl (javaCast object_ :: LevelHudWidget))) ()

previousLevel_super :: (JavaObjectClass this_) => this_ -> IO (())
previousLevel_super object_ = (previousLevel_impl (javaCast object_ :: LevelHudWidget))

previousLevel_impl :: LevelHudWidget -> IO (())
previousLevel_impl this = do
        jset (this).level ((jget (this).level) - 1)
        when ((jget (this).level) < 0) $ do
            jset (this).level (0)
        Control.Monad.void (LevelHudWidget.update this)
        pure ()


isComplete :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete object_ = jmethod object_ "isComplete" (\() -> (isComplete_impl (javaCast object_ :: LevelHudWidget))) ()

isComplete_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isComplete_super object_ = (isComplete_impl (javaCast object_ :: LevelHudWidget))

isComplete_impl :: LevelHudWidget -> IO (Bool)
isComplete_impl this = do
    javaCatchReturn $ do
        if ((jget (this).level) <= (jget (this).maxlevel)) then do
            javaReturn (False)
        else do
            javaReturn (True)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: LevelHudWidget))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: LevelHudWidget)) a1

paint_impl :: LevelHudWidget -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (BasicHud.paintDX_super this.base graphics (jget (this).levelString) 0 (jlength (jget (this).levelString)) (jget (this).levelNumberCharArray) 0 (jget (this).levelNumberTotalDigits) (jget (this).offset))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: LevelHudWidget))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: LevelHudWidget)) a1

paintThreed_impl :: LevelHudWidget -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


