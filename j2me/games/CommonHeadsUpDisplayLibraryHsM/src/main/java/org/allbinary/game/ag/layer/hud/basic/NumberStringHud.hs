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
-- package org.allbinary.game.ag.layer.hud.basic
module NumberStringHud (module NumberStringHud, module BasicHud) where

import BasicHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, get, get_super, get_impl, add, add_super, add_impl, set, set_super, set_impl, reduce, reduce_super, reduce_impl, paint, paint_super, paint_impl, paintXY, paintXY_super, paintXY_impl, paintThreed, paintThreed_super, paintThreed_impl, primitiveLongUtil, prependString, pREPEND_STRING, value, max, offset, valueString, valueTotalDigits)
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
import qualified BasicColorSetUtil -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified BasicHud -- org.allbinary.game.graphics.hud.BasicHud
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified PrimitiveLongSingleton -- org.allbinary.logic.math.PrimitiveLongSingleton
import qualified PrimitiveLongUtil -- org.allbinary.logic.math.PrimitiveLongUtil

-- implements PaintableInterface
data NumberStringHud = NumberStringHud
    { header_ :: JavaHeader
    , base :: BasicHud.BasicHud
    , primitiveLongUtil :: IORef (PrimitiveLongUtil.PrimitiveLongUtil)
    , prependString :: IORef (String)
    , pREPEND_STRING :: IORef (JavaArray (Char))
    , value :: IORef (Int)
    , max :: IORef (Int)
    , offset :: IORef (Int)
    , valueString :: IORef (JavaArray (Char))
    , valueTotalDigits :: IORef (Int)
    }

instance JavaNull NumberStringHud where
    javaNull = javaNullRecord "NumberStringHud"

instance JavaEquals NumberStringHud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NumberStringHud where
    (==) = jrecordEquals

instance JavaObjectClass NumberStringHud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NumberStringHud
newRecord_ = do
    base <- BasicHud.newRecord_
    let header_ = base.header_
    primitiveLongUtil <- newIORef javaNull
    prependString <- newIORef ""
    pREPEND_STRING <- newIORef javaNull
    value <- newIORef 0
    max <- newIORef 0
    offset <- newIORef 0
    valueString <- newIORef javaNull
    valueTotalDigits <- newIORef 0
    let this = NumberStringHud header_ base primitiveLongUtil prependString pREPEND_STRING value max offset valueString valueTotalDigits
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "reduce" (\() -> reduce_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintXY" (\() -> paintXY_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: NumberStringHud -> IO ()
initFields_ this = do
    jset this.primitiveLongUtil (javaNull)
    jset this.prependString (javaNull)
    jset this.pREPEND_STRING (javaNull)
    jset this.value (0)
    jset this.max (0)
    jset this.offset (0)
    jset this.valueString (javaNull)
    jset this.valueTotalDigits (0)
    pure ()

new_6 :: String -> Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO NumberStringHud
new_6 prependString max location direction bufferZone basicColor = do
    this <- newRecord_
    init_6 this prependString max location direction bufferZone basicColor
    pure this

init_6 :: NumberStringHud -> String -> Int -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_6 this prependString max location direction bufferZone basicColor = do
        BasicHud.init_4 this.base (location) (direction) (bufferZone) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).prependString (prependString)
        assignedValue <- (String.toCharArray prependString)
        jset (this).pREPEND_STRING (assignedValue)
        jset (this).valueString ((jindex ((jget ((jio (PrimitiveLongSingleton.getInstance))).nUMBER_CHAR_ARRAYS)) (0)))
        assignedValue <- (PrimitiveLongUtil.createPowerOfTen (max + 1))
        jset (this).primitiveLongUtil (assignedValue)
        jset (this).max (max)
        jset (this).value (0)
        when (direction == 0) $ do
            javaThrow ((JavaException "RuntimeException" (jget ((jio (BasicHudFactory.getInstance))).dIRECTION_EXCEPTION)))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: NumberStringHud))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: NumberStringHud)) a1

updateMeasurement_impl :: NumberStringHud -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        jset (this).offset (((jio (Font.stringWidth font (jget (this).prependString))) + (jio (MyFontProcessor.defaultCharWidth font))))
        Control.Monad.void (BasicHud.updateMeasurement_super this.base graphics)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Int)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: NumberStringHud))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Int)
get_super object_ = (get_impl (javaCast object_ :: NumberStringHud))

get_impl :: NumberStringHud -> IO (Int)
get_impl this = do
        pure ((jget (this).value))


add :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: NumberStringHud))) () a1

add_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: NumberStringHud)) a1

add_impl :: NumberStringHud -> Int -> IO (())
add_impl this value = do
        Control.Monad.void (NumberStringHud.set this ((jget (this).value) + value))
        pure ()


set :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: NumberStringHud))) () a1

set_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: NumberStringHud)) a1

set_impl :: NumberStringHud -> Int -> IO (())
set_impl this value = do
        jset (this).value (value)
        when ((jget (this).value) > (jget (this).max)) $ do
            jset (this).value (0)
        assignedValue <- (PrimitiveLongUtil.getCharArray ((jget (this).primitiveLongUtil)) (jget (this).value))
        jset (this).valueString (assignedValue)
        assignedValue <- (PrimitiveLongUtil.getCurrentTotalDigits ((jget (this).primitiveLongUtil)))
        jset (this).valueTotalDigits (assignedValue)
        pure ()


reduce :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce object_ a1 = jmethod object_ "reduce" (\() -> (reduce_impl (javaCast object_ :: NumberStringHud))) () a1

reduce_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
reduce_super object_ a1 = (reduce_impl (javaCast object_ :: NumberStringHud)) a1

reduce_impl :: NumberStringHud -> Int -> IO (())
reduce_impl this value = do
        Control.Monad.void (NumberStringHud.set this ((jget (this).value) - value))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: NumberStringHud))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: NumberStringHud)) a1

paint_impl :: NumberStringHud -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (BasicHud.paintDX_super this.base graphics (jget (this).pREPEND_STRING) 0 (jlength (jget (this).pREPEND_STRING)) (jget (this).valueString) 0 (jget (this).valueTotalDigits) (jget (this).offset))
        pure ()


paintXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY object_ a1 a2 a3 = jmethod object_ "paintXY" (\() -> (paintXY_impl (javaCast object_ :: NumberStringHud))) () a1 a2 a3

paintXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_super object_ a1 a2 a3 = (paintXY_impl (javaCast object_ :: NumberStringHud)) a1 a2 a3

paintXY_impl :: NumberStringHud -> Graphics.Graphics -> Int -> Int -> IO (())
paintXY_impl this graphics x y = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        let charArray = (jget (this).pREPEND_STRING)
        let len = (jlength (jget (this).pREPEND_STRING))
        let charArray2 = (jget (this).valueString)
        let len2 = (jget (this).valueTotalDigits)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).base.basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        Control.Monad.void (Graphics.drawChars graphics charArray 0 len x y 0)
        Control.Monad.void (Graphics.drawChars graphics charArray2 0 len2 (x - (jget (this).offset)) y 0)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: NumberStringHud))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: NumberStringHud)) a1

paintThreed_impl :: NumberStringHud -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


