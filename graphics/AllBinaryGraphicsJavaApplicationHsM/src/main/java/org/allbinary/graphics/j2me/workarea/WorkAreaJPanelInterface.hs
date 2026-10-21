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
-- package org.allbinary.graphics.j2me.workarea
module WorkAreaJPanelInterface (module WorkAreaJPanelInterface, module KeyListener) where

import KeyListener hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getName, getName_super, getName_impl, deselect, deselect_super, deselect_impl, select, select_super, select_impl, changeZoom, changeZoom_super, changeZoom_impl, explodeAll, explodeAll_super, explodeAll_impl, autoRotate, autoRotate_super, autoRotate_impl, autoExplode, autoExplode_super, autoExplode_impl, autoMirror, autoMirror_super, autoMirror_impl, play, play_super, play_impl, stop, stop_super, stop_impl, isPlaying, isPlaying_super, isPlaying_impl, toDocument, toDocument_super, toDocument_impl, toString)
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
import qualified Document -- org.w3c.dom.Document
import qualified KeyListener

-- Java interface: the classes that implement it have these functions
data WorkAreaJPanelInterface = WorkAreaJPanelInterface
    { header_ :: JavaHeader
    }

instance JavaNull WorkAreaJPanelInterface where
    javaNull = javaNullRecord "WorkAreaJPanelInterface"

instance JavaEquals WorkAreaJPanelInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkAreaJPanelInterface where
    (==) = jrecordEquals

instance JavaObjectClass WorkAreaJPanelInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> WorkAreaJPanelInterface
fromHeader_ header = WorkAreaJPanelInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (WorkAreaJPanelInterface header)
    KeyListener.registerInterface_ header

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: WorkAreaJPanelInterface))

getName_impl :: WorkAreaJPanelInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


deselect :: (JavaObjectClass this_) => this_ -> IO (())
deselect object_ = jmethod object_ "deselect" (\() -> (deselect_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

deselect_super :: (JavaObjectClass this_) => this_ -> IO (())
deselect_super object_ = (deselect_impl (javaCast object_ :: WorkAreaJPanelInterface))

deselect_impl :: WorkAreaJPanelInterface -> IO (())
deselect_impl this = javaAbstractMethod "deselect"


select :: (JavaObjectClass this_) => this_ -> IO (())
select object_ = jmethod object_ "select" (\() -> (select_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

select_super :: (JavaObjectClass this_) => this_ -> IO (())
select_super object_ = (select_impl (javaCast object_ :: WorkAreaJPanelInterface))

select_impl :: WorkAreaJPanelInterface -> IO (())
select_impl this = javaAbstractMethod "select"


changeZoom :: (JavaObjectClass this_) => this_ -> Int -> IO (())
changeZoom object_ a1 = jmethod object_ "changeZoom" (\() -> (changeZoom_impl (javaCast object_ :: WorkAreaJPanelInterface))) () a1

changeZoom_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
changeZoom_super object_ a1 = (changeZoom_impl (javaCast object_ :: WorkAreaJPanelInterface)) a1

changeZoom_impl :: WorkAreaJPanelInterface -> Int -> IO (())
changeZoom_impl this factor = javaAbstractMethod "changeZoom"


explodeAll :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll object_ = jmethod object_ "explodeAll" (\() -> (explodeAll_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

explodeAll_super :: (JavaObjectClass this_) => this_ -> IO (())
explodeAll_super object_ = (explodeAll_impl (javaCast object_ :: WorkAreaJPanelInterface))

explodeAll_impl :: WorkAreaJPanelInterface -> IO (())
explodeAll_impl this = javaAbstractMethod "explodeAll"


-- throws Exception
autoRotate :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoRotate object_ a1 a2 = jmethod object_ "autoRotate" (\() -> (autoRotate_impl (javaCast object_ :: WorkAreaJPanelInterface))) () a1 a2

autoRotate_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoRotate_super object_ a1 a2 = (autoRotate_impl (javaCast object_ :: WorkAreaJPanelInterface)) a1 a2

autoRotate_impl :: WorkAreaJPanelInterface -> Int -> Int -> IO (())
autoRotate_impl this increments totalAngle = javaAbstractMethod "autoRotate"


-- throws Exception
autoExplode :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoExplode object_ a1 a2 = jmethod object_ "autoExplode" (\() -> (autoExplode_impl (javaCast object_ :: WorkAreaJPanelInterface))) () a1 a2

autoExplode_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
autoExplode_super object_ a1 a2 = (autoExplode_impl (javaCast object_ :: WorkAreaJPanelInterface)) a1 a2

autoExplode_impl :: WorkAreaJPanelInterface -> Int -> Int -> IO (())
autoExplode_impl this numberOfFrames explodeType = javaAbstractMethod "autoExplode"


-- throws Exception
autoMirror :: (JavaObjectClass this_) => this_ -> IO (())
autoMirror object_ = jmethod object_ "autoMirror" (\() -> (autoMirror_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

autoMirror_super :: (JavaObjectClass this_) => this_ -> IO (())
autoMirror_super object_ = (autoMirror_impl (javaCast object_ :: WorkAreaJPanelInterface))

autoMirror_impl :: WorkAreaJPanelInterface -> IO (())
autoMirror_impl this = javaAbstractMethod "autoMirror"


play :: (JavaObjectClass this_) => this_ -> IO (())
play object_ = jmethod object_ "play" (\() -> (play_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

play_super :: (JavaObjectClass this_) => this_ -> IO (())
play_super object_ = (play_impl (javaCast object_ :: WorkAreaJPanelInterface))

play_impl :: WorkAreaJPanelInterface -> IO (())
play_impl this = javaAbstractMethod "play"


stop :: (JavaObjectClass this_) => this_ -> IO (())
stop object_ = jmethod object_ "stop" (\() -> (stop_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

stop_super :: (JavaObjectClass this_) => this_ -> IO (())
stop_super object_ = (stop_impl (javaCast object_ :: WorkAreaJPanelInterface))

stop_impl :: WorkAreaJPanelInterface -> IO (())
stop_impl this = javaAbstractMethod "stop"


isPlaying :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPlaying object_ = jmethod object_ "isPlaying" (\() -> (isPlaying_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

isPlaying_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPlaying_super object_ = (isPlaying_impl (javaCast object_ :: WorkAreaJPanelInterface))

isPlaying_impl :: WorkAreaJPanelInterface -> IO (Bool)
isPlaying_impl this = javaAbstractMethod "isPlaying"


-- throws Exception
toDocument :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toDocument object_ = jmethod object_ "toDocument" (\() -> (toDocument_impl (javaCast object_ :: WorkAreaJPanelInterface))) ()

toDocument_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toDocument_super object_ = (toDocument_impl (javaCast object_ :: WorkAreaJPanelInterface))

toDocument_impl :: WorkAreaJPanelInterface -> IO (Document.Document)
toDocument_impl this = javaAbstractMethod "toDocument"


