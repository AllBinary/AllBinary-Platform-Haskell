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
-- package org.allbinary.canvas
module BaseGameStatistics where

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
import qualified PrimitiveLongSingleton -- org.allbinary.logic.math.PrimitiveLongSingleton
import qualified ScaleFactorFactory -- org.allbinary.logic.math.ScaleFactorFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper

data BaseGameStatistics = BaseGameStatistics
    { header_ :: JavaHeader
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , updateDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , totalRefreshes :: IORef (Int64)
    , totalFrames :: IORef (Int64)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , dEFAULT_SCALE_FACTOR :: IORef (Int)
    , nOT :: IORef (String)
    , eMPTY_STRING :: IORef (String)
    , sTRING_ARRAY :: IORef (JavaArray (String))
    , sPACE_CHAR :: IORef (Char)
    , pLUS_CHAR :: IORef (Char)
    , x_CHAR :: IORef (Char)
    , cHAR_ARRAY :: IORef (JavaArray (JavaArray (Char)))
    , primitiveLongSingleton :: IORef (PrimitiveLongSingleton.PrimitiveLongSingleton)
    }

instance JavaNull BaseGameStatistics where
    javaNull = javaNullRecord "BaseGameStatistics"

instance JavaEquals BaseGameStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseGameStatistics where
    (==) = jrecordEquals

instance JavaObjectClass BaseGameStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BaseGameStatistics
newRecord_ = do
    header_ <- newJavaHeader
    timeDelayHelper <- newIORef javaNull
    updateDelayHelper <- newIORef javaNull
    totalRefreshes <- newIORef 0
    totalFrames <- newIORef 0
    gameTickTimeDelayHelper <- newIORef javaNull
    dEFAULT_SCALE_FACTOR <- newIORef 0
    nOT <- newIORef ""
    eMPTY_STRING <- newIORef ""
    sTRING_ARRAY <- newIORef javaNull
    sPACE_CHAR <- newIORef '\0'
    pLUS_CHAR <- newIORef '\0'
    x_CHAR <- newIORef '\0'
    cHAR_ARRAY <- newIORef javaNull
    primitiveLongSingleton <- newIORef javaNull
    let this = BaseGameStatistics header_ timeDelayHelper updateDelayHelper totalRefreshes totalFrames gameTickTimeDelayHelper dEFAULT_SCALE_FACTOR nOT eMPTY_STRING sTRING_ARRAY sPACE_CHAR pLUS_CHAR x_CHAR cHAR_ARRAY primitiveLongSingleton
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "nextFrame" (\() -> nextFrame_impl this)
    jregisterMethod header_ "nextRefresh" (\() -> nextRefresh_impl this)
    jregisterMethod header_ "getRefreshRate" (\() -> getRefreshRate_impl this)
    jregisterMethod header_ "getTimeDelayHelper" (\() -> getTimeDelayHelper_impl this)
    jregisterMethod header_ "to2DCharArray" (\() -> to2DCharArray_impl this)
    jregisterMethod header_ "toStringArray" (\() -> toStringArray_impl this)
    jregisterMethod header_ "toStringAt" (\() -> toStringAt_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: BaseGameStatistics -> IO ()
initFields_ this = do
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 (2147483647 :: Int))
    jset this.updateDelayHelper =<< (TimeDelayHelper.new_1 2000)
    jset this.totalRefreshes (0)
    jset this.totalFrames (0)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.dEFAULT_SCALE_FACTOR ((jget ((jio (ScaleFactorFactory.getInstance))).dEFAULT_SCALE_FACTOR))
    jset this.nOT ("Not enough Time to Calculate")
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.sTRING_ARRAY ((jarrayFromList [" Total Time: ", (jget (this).eMPTY_STRING), " Total Frames: ", (jget (this).eMPTY_STRING), " Frames/10 Sec: ", (jget (this).eMPTY_STRING), " Total Paints: ", (jget (this).eMPTY_STRING), " Paints/10 Sec: ", (jget (this).eMPTY_STRING)]))
    jset this.sPACE_CHAR (' ')
    jset this.pLUS_CHAR ('+')
    jset this.x_CHAR ('X')
    jset this.cHAR_ARRAY ((jarrayFromList [(jarrayFromList ['F', 'r', 'a', 'm', 'e', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':']), (jarrayFromList ['X', 'X']), (jarrayFromList ['P', 'a', 'i', 'n', 't', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':']), (jarrayFromList ['X', 'X'])]))
    jset this.primitiveLongSingleton =<< (PrimitiveLongSingleton.getInstance)
    pure ()

new_ :: IO BaseGameStatistics
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseGameStatistics -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: BaseGameStatistics))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: BaseGameStatistics))

init_impl :: BaseGameStatistics -> IO (())
init_impl this = do
        Control.Monad.void (TimeDelayHelper.setStartTimeTNT ((jget (this).timeDelayHelper)))
        jset (this).totalRefreshes (0)
        jset (this).totalFrames (0)
        pure ()


add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: BaseGameStatistics))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: BaseGameStatistics)) a1

add_impl :: BaseGameStatistics -> String -> IO (())
add_impl this string = do
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: BaseGameStatistics))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: BaseGameStatistics))

process_impl :: BaseGameStatistics -> IO (())
process_impl this = do
        pure ()


nextFrame :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame object_ = jmethod object_ "nextFrame" (\() -> (nextFrame_impl (javaCast object_ :: BaseGameStatistics))) ()

nextFrame_super :: (JavaObjectClass this_) => this_ -> IO (())
nextFrame_super object_ = (nextFrame_impl (javaCast object_ :: BaseGameStatistics))

nextFrame_impl :: BaseGameStatistics -> IO (())
nextFrame_impl this = do
        jset (this).totalFrames ((jget (this).totalFrames) + 1)
        pure ()


nextRefresh :: (JavaObjectClass this_) => this_ -> IO (())
nextRefresh object_ = jmethod object_ "nextRefresh" (\() -> (nextRefresh_impl (javaCast object_ :: BaseGameStatistics))) ()

nextRefresh_super :: (JavaObjectClass this_) => this_ -> IO (())
nextRefresh_super object_ = (nextRefresh_impl (javaCast object_ :: BaseGameStatistics))

nextRefresh_impl :: BaseGameStatistics -> IO (())
nextRefresh_impl this = do
        jset (this).totalRefreshes ((jget (this).totalRefreshes) + 1)
        pure ()


getRefreshRate :: (JavaObjectClass this_) => this_ -> IO (Int16)
getRefreshRate object_ = jmethod object_ "getRefreshRate" (\() -> (getRefreshRate_impl (javaCast object_ :: BaseGameStatistics))) ()

getRefreshRate_super :: (JavaObjectClass this_) => this_ -> IO (Int16)
getRefreshRate_super object_ = (getRefreshRate_impl (javaCast object_ :: BaseGameStatistics))

getRefreshRate_impl :: BaseGameStatistics -> IO (Int16)
getRefreshRate_impl this = do
    javaCatchReturn $ do
        elapsed <- (TimeDelayHelper.getElapsed ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))
        if (elapsed > 1) then do
            let time = (Prelude.fromIntegral (((jget (this).totalRefreshes) `quot` ((elapsed `Data.Bits.shiftR` (jget (this).dEFAULT_SCALE_FACTOR))))))
            javaReturn (time)
        else do
            javaReturn (0)


getTimeDelayHelper :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper object_ = jmethod object_ "getTimeDelayHelper" (\() -> (getTimeDelayHelper_impl (javaCast object_ :: BaseGameStatistics))) ()

getTimeDelayHelper_super :: (JavaObjectClass this_) => this_ -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_super object_ = (getTimeDelayHelper_impl (javaCast object_ :: BaseGameStatistics))

getTimeDelayHelper_impl :: BaseGameStatistics -> IO (TimeDelayHelper.TimeDelayHelper)
getTimeDelayHelper_impl this = do
        pure ((jget (this).timeDelayHelper))


to2DCharArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Char)))
to2DCharArray object_ = jmethod object_ "to2DCharArray" (\() -> (to2DCharArray_impl (javaCast object_ :: BaseGameStatistics))) ()

to2DCharArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (JavaArray (Char)))
to2DCharArray_super object_ = (to2DCharArray_impl (javaCast object_ :: BaseGameStatistics))

to2DCharArray_impl :: BaseGameStatistics -> IO (JavaArray (JavaArray (Char)))
to2DCharArray_impl this = do
        totalTime <- newIORef =<< (TimeDelayHelper.getElapsed ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))
        jset totalTime ((((jget totalTime) `Data.Bits.shiftR` (jget (this).dEFAULT_SCALE_FACTOR))))
        when (((jget totalTime) > 0) && (jio (TimeDelayHelper.isTime ((jget (this).updateDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime)))) $ do
            let framesPerSec = (Prelude.fromIntegral (((jget (this).totalFrames) `quot` (jget totalTime))))
            if (framesPerSec < 10) then do
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (0) ((jget (this).sPACE_CHAR))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (1) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) (framesPerSec)))
            else if (framesPerSec < 100) then do
                let tens = (framesPerSec `quot` 10)
                let removeTens = (tens * 10)
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (0) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) (tens)))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (1) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) ((framesPerSec - removeTens))))
            else do
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (0) ((jget (this).pLUS_CHAR))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (1))) (1) ((jget (this).pLUS_CHAR))
            let refreshesPerSec = (Prelude.fromIntegral (((jget (this).totalRefreshes) `quot` (jget totalTime))))
            if (refreshesPerSec < 10) then do
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (0) ((jget (this).x_CHAR))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (1) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) (refreshesPerSec)))
            else if (refreshesPerSec < 100) then do
                let tens = (refreshesPerSec `quot` 10)
                let removeTens = (tens * 10)
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (0) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) ((refreshesPerSec `quot` 10))))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (1) ((jindex ((jget ((jget (this).primitiveLongSingleton)).nUMBER_CHAR_ARRAY)) ((refreshesPerSec - removeTens))))
            else do
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (0) ((jget (this).pLUS_CHAR))
                jsetIndex ((jindex ((jget (this).cHAR_ARRAY)) (3))) (1) ((jget (this).pLUS_CHAR))
        pure ((jget (this).cHAR_ARRAY))


toStringArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray object_ = jmethod object_ "toStringArray" (\() -> (toStringArray_impl (javaCast object_ :: BaseGameStatistics))) ()

toStringArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray_super object_ = (toStringArray_impl (javaCast object_ :: BaseGameStatistics))

toStringArray_impl :: BaseGameStatistics -> IO (JavaArray (String))
toStringArray_impl this = do
        totalTime <- newIORef =<< (TimeDelayHelper.getElapsed ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))
        jset totalTime ((((jget totalTime) `quot` 10000)))
        if ((jget totalTime) > 0) then do
            jsetIndex ((jget (this).sTRING_ARRAY)) (1) ((javaToString (jget totalTime)))
            jsetIndex ((jget (this).sTRING_ARRAY)) (3) ((javaToString (jget (this).totalFrames)))
            jsetIndex ((jget (this).sTRING_ARRAY)) (5) ((javaToString ((jget (this).totalFrames) `quot` (jget totalTime))))
            jsetIndex ((jget (this).sTRING_ARRAY)) (7) ((javaToString (jget (this).totalRefreshes)))
            jsetIndex ((jget (this).sTRING_ARRAY)) (9) ((javaToString ((jget (this).totalRefreshes) `quot` (jget totalTime))))
        else do
            let string = (jget (this).eMPTY_STRING)
            jsetIndex ((jget (this).sTRING_ARRAY)) (1) (string)
            jsetIndex ((jget (this).sTRING_ARRAY)) (3) (string)
            jsetIndex ((jget (this).sTRING_ARRAY)) (5) (string)
            jsetIndex ((jget (this).sTRING_ARRAY)) (7) (string)
            jsetIndex ((jget (this).sTRING_ARRAY)) (9) (string)
        pure ((jget (this).sTRING_ARRAY))


toStringAt :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
toStringAt object_ a1 = jmethod object_ "toStringAt" (\() -> (toStringAt_impl (javaCast object_ :: BaseGameStatistics))) () a1

toStringAt_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (String)
toStringAt_super object_ a1 = (toStringAt_impl (javaCast object_ :: BaseGameStatistics)) a1

toStringAt_impl :: BaseGameStatistics -> Int64 -> IO (String)
toStringAt_impl this totalTime = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jindex ((jget (this).sTRING_ARRAY)) (0)))
        Control.Monad.void (StringMaker.appendlong stringBuffer totalTime)
        Control.Monad.void (StringMaker.append stringBuffer (jindex ((jget (this).sTRING_ARRAY)) (2)))
        Control.Monad.void (StringMaker.appendlong stringBuffer (jget (this).totalFrames))
        Control.Monad.void (StringMaker.append stringBuffer (jindex ((jget (this).sTRING_ARRAY)) (4)))
        Control.Monad.void (StringMaker.appendlong stringBuffer ((jget (this).totalFrames) `quot` totalTime))
        when ((jget (this).totalRefreshes) > 0) $ do
            Control.Monad.void (StringMaker.append stringBuffer (jindex ((jget (this).sTRING_ARRAY)) (6)))
            Control.Monad.void (StringMaker.appendlong stringBuffer (jget (this).totalRefreshes))
            Control.Monad.void (StringMaker.append stringBuffer (jindex ((jget (this).sTRING_ARRAY)) (8)))
            Control.Monad.void (StringMaker.appendlong stringBuffer ((jget (this).totalRefreshes) `quot` totalTime))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).nEW_LINE))
        (StringMaker.toString stringBuffer)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: BaseGameStatistics))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: BaseGameStatistics))

toString_impl :: BaseGameStatistics -> IO (String)
toString_impl this = do
    javaCatchReturn $ do
        totalTime <- newIORef =<< (TimeDelayHelper.getElapsed ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))
        jset totalTime ((((jget totalTime) `quot` 1000)))
        if ((jget totalTime) > 0) then do
            javaReturn =<< (BaseGameStatistics.toStringAt this (jget totalTime))
        else do
            javaReturn ((jget (this).nOT))


