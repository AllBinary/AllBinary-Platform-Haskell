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
module InGameMenuBehavior (module InGameMenuBehavior, module BaseMenuBehavior) where

import BaseMenuBehavior hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, initSpecialPaint, initSpecialPaint_super, initSpecialPaint_impl, initMenu, initMenu_super, initMenu_impl, updateMenu, updateMenu_super, updateMenu_impl, popupMenu, popupMenu_super, popupMenu_impl, closeMenu, closeMenu_super, closeMenu_impl, instanceC)
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
import qualified GameCanvasNonBotPaintable -- same package or java.lang
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified BaseMenuBehavior

data InGameMenuBehavior = InGameMenuBehavior
    { header_ :: JavaHeader
    , base :: BaseMenuBehavior.BaseMenuBehavior
    }

instance JavaNull InGameMenuBehavior where
    javaNull = javaNullRecord "InGameMenuBehavior"

instance JavaEquals InGameMenuBehavior where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InGameMenuBehavior where
    (==) = jrecordEquals

instance JavaObjectClass InGameMenuBehavior where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instanceC #-}
instanceC = unsafePerformIO ((new_))

newRecord_ :: IO InGameMenuBehavior
newRecord_ = do
    base <- BaseMenuBehavior.newRecord_
    let header_ = base.header_
    let this = InGameMenuBehavior header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "initSpecialPaint" (\() -> initSpecialPaint_impl this)
    jregisterMethod header_ "initMenu" (\() -> initMenu_impl this)
    jregisterMethod header_ "updateMenu" (\() -> updateMenu_impl this)
    jregisterMethod header_ "popupMenu" (\() -> popupMenu_impl this)
    jregisterMethod header_ "closeMenu" (\() -> closeMenu_impl this)
    pure this

initFields_ :: InGameMenuBehavior -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InGameMenuBehavior
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InGameMenuBehavior -> IO ()
init_ this = do
    BaseMenuBehavior.init_ this.base
    initFields_ this


getInstance :: IO (InGameMenuBehavior)
getInstance = do
        pure (InGameMenuBehavior.instanceC)


-- throws Exception
onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 a2 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: InGameMenuBehavior))) () a1 a2

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 a2 = (onDisplayChangeEvent_impl (javaCast object_ :: InGameMenuBehavior)) a1 a2

onDisplayChangeEvent_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this allBinaryGameCanvas displayChangeEvent = do
        Control.Monad.void (AllBinaryGameCanvas.updateMenuFromEvent allBinaryGameCanvas displayChangeEvent)
        pure ()


initSpecialPaint :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint object_ a1 = jmethod object_ "initSpecialPaint" (\() -> (initSpecialPaint_impl (javaCast object_ :: InGameMenuBehavior))) () a1

initSpecialPaint_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint_super object_ a1 = (initSpecialPaint_impl (javaCast object_ :: InGameMenuBehavior)) a1

initSpecialPaint_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initSpecialPaint_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.setNonBotPaintableP allBinaryGameCanvas (javaCast (jio (GameCanvasNonBotPaintable.new_1 allBinaryGameCanvas))))
        pure ()


-- throws Exception
initMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu object_ a1 = jmethod object_ "initMenu" (\() -> (initMenu_impl (javaCast object_ :: InGameMenuBehavior))) () a1

initMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu_super object_ a1 = (initMenu_impl (javaCast object_ :: InGameMenuBehavior)) a1

initMenu_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
initMenu_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.initMenu2 allBinaryGameCanvas)
        pure ()


-- throws Exception
updateMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu object_ a1 = jmethod object_ "updateMenu" (\() -> (updateMenu_impl (javaCast object_ :: InGameMenuBehavior))) () a1

updateMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu_super object_ a1 = (updateMenu_impl (javaCast object_ :: InGameMenuBehavior)) a1

updateMenu_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
updateMenu_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.initMenu2 allBinaryGameCanvas)
        pure ()


-- throws Exception
popupMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu object_ a1 = jmethod object_ "popupMenu" (\() -> (popupMenu_impl (javaCast object_ :: InGameMenuBehavior))) () a1

popupMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu_super object_ a1 = (popupMenu_impl (javaCast object_ :: InGameMenuBehavior)) a1

popupMenu_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
popupMenu_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.popupMenu2 allBinaryGameCanvas)
        pure ()


closeMenu :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu object_ a1 = jmethod object_ "closeMenu" (\() -> (closeMenu_impl (javaCast object_ :: InGameMenuBehavior))) () a1

closeMenu_super :: (JavaObjectClass this_) => this_ -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu_super object_ a1 = (closeMenu_impl (javaCast object_ :: InGameMenuBehavior)) a1

closeMenu_impl :: InGameMenuBehavior -> AllBinaryGameCanvas.AllBinaryGameCanvas -> IO (())
closeMenu_impl this allBinaryGameCanvas = do
        Control.Monad.void (AllBinaryGameCanvas.closeMenu2 allBinaryGameCanvas)
        pure ()


