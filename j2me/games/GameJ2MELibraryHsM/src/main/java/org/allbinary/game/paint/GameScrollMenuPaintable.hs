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
-- package org.allbinary.game.paint
module GameScrollMenuPaintable (module GameScrollMenuPaintable, module BasicGameDemoPaintable) where

import BasicGameDemoPaintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setState, setState_super, setState_impl, onEvent, onEvent_super, onEvent_impl, setColor, setColor_super, setColor_impl)
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
import qualified MainGameDemoStatePaintable -- same package or java.lang
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified ColorChangeEventHandler -- org.allbinary.graphics.color.ColorChangeEventHandler
import qualified ColorChangeListener -- org.allbinary.graphics.color.ColorChangeListener
import qualified FormPaintable -- org.allbinary.graphics.form.FormPaintable
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified ABStringComponent -- org.allbinary.graphics.form.item.ABStringComponent
import qualified ABTextItem -- org.allbinary.graphics.form.item.ABTextItem
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified BasicGameDemoPaintable

-- implements ColorChangeListener
data GameScrollMenuPaintable = GameScrollMenuPaintable
    { header_ :: JavaHeader
    , base :: BasicGameDemoPaintable.BasicGameDemoPaintable
    }

instance JavaNull GameScrollMenuPaintable where
    javaNull = javaNullRecord "GameScrollMenuPaintable"

instance JavaEquals GameScrollMenuPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameScrollMenuPaintable where
    (==) = jrecordEquals

instance JavaObjectClass GameScrollMenuPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameScrollMenuPaintable
newRecord_ = do
    base <- BasicGameDemoPaintable.newRecord_
    let header_ = base.header_
    let this = GameScrollMenuPaintable header_ base
    jregisterLevel header_ this
    ColorChangeListener.registerInterface_ header_
    jregisterMethod header_ "setState" (\() -> setState_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "setColor" (\() -> setColor_impl this)
    pure this

initFields_ :: GameScrollMenuPaintable -> IO ()
initFields_ this = do
    pure ()

new_4 :: Paintable.Paintable -> Paintable.Paintable -> Paintable.Paintable -> BasicColor.BasicColor -> IO GameScrollMenuPaintable
new_4 mainDemoStatePaintable ownershipPaintable helpPaintableInterface basicColor = do
    this <- newRecord_
    init_4 this mainDemoStatePaintable ownershipPaintable helpPaintableInterface basicColor
    pure this

init_4 :: GameScrollMenuPaintable -> Paintable.Paintable -> Paintable.Paintable -> Paintable.Paintable -> BasicColor.BasicColor -> IO ()
init_4 this mainDemoStatePaintable ownershipPaintable helpPaintableInterface basicColor = do
        BasicGameDemoPaintable.init_3 this.base (mainDemoStatePaintable) (ownershipPaintable) (helpPaintableInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (GameScrollMenuPaintable.setColor this basicColor)
        Control.Monad.void (ColorChangeEventHandler.addListenerInterface ((jio (ColorChangeEventHandler.getInstance))) this)
        pure ()


setState :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState object_ a1 = jmethod object_ "setState" (\() -> (setState_impl (javaCast object_ :: GameScrollMenuPaintable))) () a1

setState_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setState_super object_ a1 = (setState_impl (javaCast object_ :: GameScrollMenuPaintable)) a1

setState_impl :: GameScrollMenuPaintable -> Int -> IO (())
setState_impl this state = do
        Control.Monad.void (BasicGameDemoPaintable.setCurrentStatePaintable this (jio (BasicGameDemoPaintable.getMainDemoStatePaintable this)))
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameScrollMenuPaintable))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameScrollMenuPaintable)) a1

onEvent_impl :: GameScrollMenuPaintable -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        pure ()


setColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setColor object_ a1 = jmethod object_ "setColor" (\() -> (setColor_impl (javaCast object_ :: GameScrollMenuPaintable))) () a1

setColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setColor_super object_ a1 = (setColor_impl (javaCast object_ :: GameScrollMenuPaintable)) a1

setColor_impl :: GameScrollMenuPaintable -> BasicColor.BasicColor -> IO (())
setColor_impl this basicColor = do
        let mainGameDemoStatePaintable = (javaCast (jio (BasicGameDemoPaintable.getMainDemoStatePaintable this)) :: MainGameDemoStatePaintable.MainGameDemoStatePaintable)
        let formPaintable = (javaCast (jio (MainGameDemoStatePaintable.getMenuPaintableInterface mainGameDemoStatePaintable)) :: FormPaintable.FormPaintable)
        let scrollSelectionForm = (javaCast (jio (FormPaintable.getForm formPaintable)) :: ScrollSelectionForm.ScrollSelectionForm)
        Control.Monad.void (Paintable.setBasicColorP ((jio (MainGameDemoStatePaintable.getOwnershipPaintableInterface mainGameDemoStatePaintable))) basicColor)
        Control.Monad.void (ScrollSelectionForm.setButtonBasicColor scrollSelectionForm basicColor)
        item <- newIORef (javaNull)
        stringComponent <- newIORef (javaNull)
        forM_ [((jio (ScrollSelectionForm.size scrollSelectionForm)) - 1), ((jio (ScrollSelectionForm.size scrollSelectionForm)) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset item ((javaCast (jio (ScrollSelectionForm.get scrollSelectionForm index)) :: ABTextItem.ABTextItem))
            assignedValue <- (ABTextItem.getLabelStringComponent ((jget item)))
            jset stringComponent (assignedValue)
            when ((jget stringComponent) /= javaNull) $ do
                Control.Monad.void (ABStringComponent.setForegroundBasicColor ((jget stringComponent)) basicColor)
        pure ()


