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
module AndroidGameStatistics (module AndroidGameStatistics, module BaseGameStatistics) where

import BaseGameStatistics hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initView, initView_super, initView_impl, process, process_super, process_impl, nextOnDraw, nextOnDraw_super, nextOnDraw_impl, toStringArray, toStringArray_super, toStringArray_impl, toString, toString_super, toString_impl, view, totalOnDraws, aNDROID_STRING_ARRAY, tOTAL_ONDRAWS, oNDRAWS_RATE)
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
import qualified GameTickTimeDelayHelper -- same package or java.lang
import qualified View -- android.view.View
import qualified BaseViewWrapper -- org.allbinary.android.view.BaseViewWrapper
import qualified ViewWrapper -- org.allbinary.android.view.ViewWrapper
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BaseGameStatistics

data AndroidGameStatistics = AndroidGameStatistics
    { header_ :: JavaHeader
    , base :: BaseGameStatistics.BaseGameStatistics
    , view :: IORef (BaseViewWrapper.BaseViewWrapper)
    , totalOnDraws :: IORef (Int64)
    , aNDROID_STRING_ARRAY :: IORef (JavaArray (String))
    , tOTAL_ONDRAWS :: IORef (String)
    , oNDRAWS_RATE :: IORef (String)
    }

instance JavaNull AndroidGameStatistics where
    javaNull = javaNullRecord "AndroidGameStatistics"

instance JavaEquals AndroidGameStatistics where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidGameStatistics where
    (==) = jrecordEquals

instance JavaObjectClass AndroidGameStatistics where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AndroidGameStatistics
newRecord_ = do
    base <- BaseGameStatistics.newRecord_
    let header_ = base.header_
    view <- newIORef javaNull
    totalOnDraws <- newIORef 0
    aNDROID_STRING_ARRAY <- newIORef javaNull
    tOTAL_ONDRAWS <- newIORef ""
    oNDRAWS_RATE <- newIORef ""
    let this = AndroidGameStatistics header_ base view totalOnDraws aNDROID_STRING_ARRAY tOTAL_ONDRAWS oNDRAWS_RATE
    jregisterLevel header_ this
    jregisterMethod header_ "initView" (\() -> initView_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "nextOnDraw" (\() -> nextOnDraw_impl this)
    jregisterMethod header_ "toStringArray" (\() -> toStringArray_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: AndroidGameStatistics -> IO ()
initFields_ this = do
    jset this.view (BaseViewWrapper.nULL_VIEW_WRAPPER)
    jset this.totalOnDraws (0)
    jset this.aNDROID_STRING_ARRAY ((jnewArray (14) javaNull))
    jset this.tOTAL_ONDRAWS (" Total onDraws: ")
    jset this.oNDRAWS_RATE (" onDraws(/10) Sec: ")
    pure ()

new_ :: IO AndroidGameStatistics
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidGameStatistics -> IO ()
init_ this = do
        BaseGameStatistics.init_ this.base
        initFields_ this
        stringUtil <- (StringUtil.getInstance)
        forM_ [0 .. (jlength (jget (this).aNDROID_STRING_ARRAY)) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (index) ((jget (stringUtil).eMPTY_STRING))
        pure ()


initView :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
initView object_ a1 = jmethod object_ "initView" (\() -> (initView_impl (javaCast object_ :: AndroidGameStatistics))) () a1

initView_super :: (JavaObjectClass this_) => this_ -> View.View -> IO (())
initView_super object_ a1 = (initView_impl (javaCast object_ :: AndroidGameStatistics)) a1

initView_impl :: AndroidGameStatistics -> View.View -> IO (())
initView_impl this view = do
        Control.Monad.void (BaseGameStatistics.init_super this.base)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: View.View) (ViewWrapper.new_1 view))
        jset (this).view (assignedValue)
        jset (this).totalOnDraws (0)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: AndroidGameStatistics))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: AndroidGameStatistics))

process_impl :: AndroidGameStatistics -> IO (())
process_impl this = do
        Control.Monad.void (BaseViewWrapper.postInvalidate ((jget (this).view)))
        pure ()


nextOnDraw :: (JavaObjectClass this_) => this_ -> IO (())
nextOnDraw object_ = jmethod object_ "nextOnDraw" (\() -> (nextOnDraw_impl (javaCast object_ :: AndroidGameStatistics))) ()

nextOnDraw_super :: (JavaObjectClass this_) => this_ -> IO (())
nextOnDraw_super object_ = (nextOnDraw_impl (javaCast object_ :: AndroidGameStatistics))

nextOnDraw_impl :: AndroidGameStatistics -> IO (())
nextOnDraw_impl this = do
        jset (this).totalOnDraws ((jget (this).totalOnDraws) + 1)
        pure ()


toStringArray :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray object_ = jmethod object_ "toStringArray" (\() -> (toStringArray_impl (javaCast object_ :: AndroidGameStatistics))) ()

toStringArray_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (String))
toStringArray_super object_ = (toStringArray_impl (javaCast object_ :: AndroidGameStatistics))

toStringArray_impl :: AndroidGameStatistics -> IO (JavaArray (String))
toStringArray_impl this = do
        stringArray <- (BaseGameStatistics.toStringArray_super this.base)
        forM_ [0 .. (jlength stringArray) - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (index) ((jindex stringArray (index)))
        totalTime <- newIORef =<< (TimeDelayHelper.getElapsed ((jio (BaseGameStatistics.getTimeDelayHelper this))) (jget ((jget (this).base.gameTickTimeDelayHelper)).startTime))
        jset totalTime ((((jget totalTime) `quot` 10000)))
        jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (10) ((jget (this).tOTAL_ONDRAWS))
        jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (11) ((javaToString (jget (this).totalOnDraws)))
        jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (12) ((jget (this).oNDRAWS_RATE))
        jsetIndex ((jget (this).aNDROID_STRING_ARRAY)) (13) ((javaToString ((jget (this).totalOnDraws) `quot` (jget totalTime))))
        pure ((jget (this).aNDROID_STRING_ARRAY))


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: AndroidGameStatistics))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: AndroidGameStatistics))

toString_impl :: AndroidGameStatistics -> IO (String)
toString_impl this = do
    javaCatchReturn $ do
        totalTime <- newIORef =<< (TimeDelayHelper.getElapsed ((jio (BaseGameStatistics.getTimeDelayHelper this))) (jget ((jget (this).base.gameTickTimeDelayHelper)).startTime))
        jset totalTime ((((jget totalTime) `quot` 1000)))
        if ((jget totalTime) > 0) then do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (BaseGameStatistics.toStringAt_super this.base (jget totalTime))))
            when ((jget (this).totalOnDraws) > 0) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).tOTAL_ONDRAWS))
                Control.Monad.void (StringMaker.append stringBuffer (javaToString (jget (this).totalOnDraws)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).oNDRAWS_RATE))
                let drawsOverTime = (javaToString ((jget (this).totalOnDraws) `quot` (jget totalTime)))
                Control.Monad.void (StringMaker.append stringBuffer drawsOverTime)
            javaReturn =<< (StringMaker.toString stringBuffer)
        else do
            javaReturn ((jget (this).base.nOT))


