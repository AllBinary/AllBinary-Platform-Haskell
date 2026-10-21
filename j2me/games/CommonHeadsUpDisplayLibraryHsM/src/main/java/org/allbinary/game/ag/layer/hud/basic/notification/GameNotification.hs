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
-- package org.allbinary.game.ag.layer.hud.basic.notification
module GameNotification where

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
import qualified GameNotificationEvent -- org.allbinary.game.layer.hud.event.GameNotificationEvent
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified BooleanFactory -- org.allbinary.logic.java.bool.BooleanFactory
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data GameNotification = GameNotification
    { header_ :: JavaHeader
    , stringList :: IORef (BasicArrayList.BasicArrayList)
    , timeList :: IORef (BasicArrayList.BasicArrayList)
    , colorList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull GameNotification where
    javaNull = javaNullRecord "GameNotification"

instance JavaEquals GameNotification where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameNotification where
    (==) = jrecordEquals

instance JavaObjectClass GameNotification where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_GAME_NOTIFICATION_EVENT #-}
nULL_GAME_NOTIFICATION_EVENT = unsafePerformIO ((GameNotificationEvent.new_5 (jget ((jio (NullUtil.getInstance))).nULL_OBJECT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Prelude.fromIntegral (0) :: Int) (jget ((jio (BasicColorFactory.getInstance))).rED) (jget ((jio (BooleanFactory.getInstance))).fALSE)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameNotification
newRecord_ = do
    header_ <- newJavaHeader
    stringList <- newIORef javaNull
    timeList <- newIORef javaNull
    colorList <- newIORef javaNull
    let this = GameNotification header_ stringList timeList colorList
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "getSize" (\() -> getSize_impl this)
    pure this

initFields_ :: GameNotification -> IO ()
initFields_ this = do
    jset this.stringList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.timeList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.colorList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO GameNotification
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameNotification -> IO ()
init_ this = do
    initFields_ this


add :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> IO (())
add object_ a1 a2 a3 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: GameNotification))) () a1 a2 a3

add_super :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> IO (())
add_super object_ a1 a2 a3 = (add_impl (javaCast object_ :: GameNotification)) a1 a2 a3

add_impl :: GameNotification -> String -> Int -> BasicColor.BasicColor -> IO (())
add_impl this string seconds basicColor = do
        when (Prelude.not (jio (BasicArrayList.contains ((jget (this).stringList)) string))) $ do
            Control.Monad.void (BasicArrayList.add ((jget (this).stringList)) string)
            Control.Monad.void (BasicArrayList.add ((jget (this).timeList)) seconds)
            Control.Monad.void (BasicArrayList.add ((jget (this).colorList)) basicColor)
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: GameNotification))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: GameNotification))

clear_impl :: GameNotification -> IO (())
clear_impl this = do
        Control.Monad.void (BasicArrayList.clear ((jget (this).stringList)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).timeList)))
        Control.Monad.void (BasicArrayList.clear ((jget (this).colorList)))
        pure ()


getSize :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize object_ = jmethod object_ "getSize" (\() -> (getSize_impl (javaCast object_ :: GameNotification))) ()

getSize_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSize_super object_ = (getSize_impl (javaCast object_ :: GameNotification))

getSize_impl :: GameNotification -> IO (Int)
getSize_impl this = do
        (BasicArrayList.size ((jget (this).stringList)))


