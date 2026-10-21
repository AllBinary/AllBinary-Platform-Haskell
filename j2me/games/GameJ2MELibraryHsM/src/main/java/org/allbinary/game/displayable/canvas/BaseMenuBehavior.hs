{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
module BaseMenuBehavior where

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
import qualified AllBinaryGameCanvas -- same package or java.lang
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable

data BaseMenuBehavior = BaseMenuBehavior
    { header_ :: JavaHeader
    }

instance JavaNull BaseMenuBehavior where
    javaNull = javaNullRecord "BaseMenuBehavior"

instance JavaEquals BaseMenuBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BaseMenuBehavior where
    (==) = jrecordEquals

instance JavaObjectClass BaseMenuBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BaseMenuBehavior
newRecord_ = do
    header_ <- newJavaHeader
    let this = BaseMenuBehavior header_
    jregisterLevel header_ this
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "initSpecialPaint" (\() -> initSpecialPaint_impl this)
    jregisterMethod header_ "initMenu" (\() -> initMenu_impl this)
    jregisterMethod header_ "updateMenu" (\() -> updateMenu_impl this)
    jregisterMethod header_ "popupMenu" (\() -> popupMenu_impl this)
    jregisterMethod header_ "closeMenu" (\() -> closeMenu_impl this)
    pure this

initFields_ :: BaseMenuBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO BaseMenuBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BaseMenuBehavior -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BaseMenuBehavior)
getInstance = do
        pure (BaseMenuBehavior.instance_)


-- throws Exception
onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 a2 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: BaseMenuBehavior))) () a1 a2

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 a2 = (onDisplayChangeEvent_impl (javaCast object_ :: BaseMenuBehavior)) a1 a2

onDisplayChangeEvent_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this allBinaryGameCanvas displayChangeEvent = do
        pure ()


initSpecialPaint :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint object_ a1 = jmethod object_ "initSpecialPaint" (\() -> (initSpecialPaint_impl (javaCast object_ :: BaseMenuBehavior))) () a1

initSpecialPaint_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint_super object_ a1 = (initSpecialPaint_impl (javaCast object_ :: BaseMenuBehavior)) a1

initSpecialPaint_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.setNonBotPaintableP allBinaryGameCanvas (jio (NullPaintable.getInstance)))
        pure ()


-- throws Exception
initMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu object_ a1 = jmethod object_ "initMenu" (\() -> (initMenu_impl (javaCast object_ :: BaseMenuBehavior))) () a1

initMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu_super object_ a1 = (initMenu_impl (javaCast object_ :: BaseMenuBehavior)) a1

initMenu_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
updateMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu object_ a1 = jmethod object_ "updateMenu" (\() -> (updateMenu_impl (javaCast object_ :: BaseMenuBehavior))) () a1

updateMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu_super object_ a1 = (updateMenu_impl (javaCast object_ :: BaseMenuBehavior)) a1

updateMenu_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu_impl this allBinaryGameCanvas = do
        pure ()


-- throws Exception
popupMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu object_ a1 = jmethod object_ "popupMenu" (\() -> (popupMenu_impl (javaCast object_ :: BaseMenuBehavior))) () a1

popupMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu_super object_ a1 = (popupMenu_impl (javaCast object_ :: BaseMenuBehavior)) a1

popupMenu_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu_impl this allBinaryGameCanvas = do
        pure ()


closeMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu object_ a1 = jmethod object_ "closeMenu" (\() -> (closeMenu_impl (javaCast object_ :: BaseMenuBehavior))) () a1

closeMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu_super object_ a1 = (closeMenu_impl (javaCast object_ :: BaseMenuBehavior)) a1

closeMenu_impl :: BaseMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu_impl this allBinaryGameCanvas = do
        pure ()


