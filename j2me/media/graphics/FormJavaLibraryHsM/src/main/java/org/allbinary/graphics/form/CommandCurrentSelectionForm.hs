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
-- package org.allbinary.graphics.form
module CommandCurrentSelectionForm (module CommandCurrentSelectionForm, module ScrollCurrentSelectionForm) where

import ScrollCurrentSelectionForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, initAnimations, initAnimations_super, initAnimations_impl, addAll, addAll_super, addAll_impl, addAt, addAt_super, addAt_impl, updateAll, updateAll_super, updateAll_impl, updateAt, updateAt_super, updateAt_impl, getSelectedCommand, getSelectedCommand_super, getSelectedCommand_impl, append, append_super, append_impl, delete, delete_super, delete_impl, deleteAll, deleteAll_super, deleteAll_impl, insert, insert_super, insert_impl, set, set_super, set_impl, paint, paint_super, paint_impl, paintItem, paintItem_super, paintItem_impl, paintUnselectedItem, paintUnselectedItem_super, paintUnselectedItem_impl, selectedAnimationArray, unSelectedAnimationArray)
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
import qualified ItemPaintableFactory -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified Command -- javax.microedition.lcdui.Command
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Animation -- org.allbinary.animation.Animation
import qualified NullAnimationFactory -- org.allbinary.animation.NullAnimationFactory
import qualified RectangleAdjustedAnimation -- org.allbinary.animation.vector.RectangleAdjustedAnimation
import qualified RectangleFilledAdjustedAnimation -- org.allbinary.animation.vector.RectangleFilledAdjustedAnimation
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified CommandTextItem -- org.allbinary.graphics.form.item.CommandTextItem
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ScrollCurrentSelectionForm

-- implements UpdateMyFontInterface
data CommandCurrentSelectionForm = CommandCurrentSelectionForm
    { header_ :: JavaHeader
    , base :: ScrollCurrentSelectionForm.ScrollCurrentSelectionForm
    , selectedAnimationArray :: IORef (JavaArray (Animation.Animation))
    , unSelectedAnimationArray :: IORef (JavaArray (Animation.Animation))
    }

instance JavaNull CommandCurrentSelectionForm where
    javaNull = javaNullRecord "CommandCurrentSelectionForm"

instance JavaEquals CommandCurrentSelectionForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CommandCurrentSelectionForm where
    (==) = jrecordEquals

instance JavaObjectClass CommandCurrentSelectionForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CommandCurrentSelectionForm
newRecord_ = do
    base <- ScrollCurrentSelectionForm.newRecord_
    let header_ = base.header_
    selectedAnimationArray <- newIORef javaNull
    unSelectedAnimationArray <- newIORef javaNull
    let this = CommandCurrentSelectionForm header_ base selectedAnimationArray unSelectedAnimationArray
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "initAnimations" (\() -> initAnimations_impl this)
    jregisterMethod header_ "addAll" (\() -> addAll_impl this)
    jregisterMethod header_ "addAt" (\() -> addAt_impl this)
    jregisterMethod header_ "updateAll" (\() -> updateAll_impl this)
    jregisterMethod header_ "updateAt" (\() -> updateAt_impl this)
    jregisterMethod header_ "getSelectedCommand" (\() -> getSelectedCommand_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "deleteAll" (\() -> deleteAll_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "set" (\() -> set_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintItem" (\() -> paintItem_impl this)
    jregisterMethod header_ "paintUnselectedItem" (\() -> paintUnselectedItem_impl this)
    pure this

initFields_ :: CommandCurrentSelectionForm -> IO ()
initFields_ this = do
    jset this.selectedAnimationArray ((jnewArray (16) javaNull))
    jset this.unSelectedAnimationArray ((jnewArray (16) javaNull))
    pure ()

new_6 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> Int -> Bool -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO CommandCurrentSelectionForm
new_6 title items border moveForSmallScreen backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_6 this title items border moveForSmallScreen backgroundBasicColor foregroundBasicColor
    pure this

init_6 :: CommandCurrentSelectionForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> Int -> Bool -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_6 this title items border moveForSmallScreen backgroundBasicColor foregroundBasicColor = do
        ScrollCurrentSelectionForm.init_8 this.base (title) (items) (jio (ItemPaintableFactory.getInstance)) (border) (Prelude.negate 3) (moveForSmallScreen) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (CommandCurrentSelectionForm.initAnimations this)
        Control.Monad.void (CommandCurrentSelectionForm.addAll this items)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1

updateMeasurement_impl :: CommandCurrentSelectionForm -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        Control.Monad.void (CommandCurrentSelectionForm.updateAll this graphics (jio (ScrollCurrentSelectionForm.getAllitems this)))
        Control.Monad.void (ScrollCurrentSelectionForm.updateMeasurement_super this.base graphics)
        pure ()


initAnimations :: (JavaObjectClass this_) => this_ -> IO (())
initAnimations object_ = jmethod object_ "initAnimations" (\() -> (initAnimations_impl (javaCast object_ :: CommandCurrentSelectionForm))) ()

initAnimations_super :: (JavaObjectClass this_) => this_ -> IO (())
initAnimations_super object_ = (initAnimations_impl (javaCast object_ :: CommandCurrentSelectionForm))

initAnimations_impl :: CommandCurrentSelectionForm -> IO (())
initAnimations_impl this = do
        nullAnimation <- (NullAnimationFactory.getInstance ((jio (NullAnimationFactory.getFactoryInstance))) 0)
        index <- newIORef ((jlength (jget (this).selectedAnimationArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jsetIndex ((jget (this).selectedAnimationArray)) ((jget index)) (nullAnimation)
        index <- newIORef ((jlength (jget (this).unSelectedAnimationArray)))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            jsetIndex ((jget (this).unSelectedAnimationArray)) ((jget index)) (nullAnimation)
        pure ()


addAll :: (JavaObjectClass this_) => this_ -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
addAll object_ a1 = jmethod object_ "addAll" (\() -> (addAll_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1

addAll_super :: (JavaObjectClass this_) => this_ -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
addAll_super object_ a1 = (addAll_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1

addAll_impl :: CommandCurrentSelectionForm -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
addAll_impl this items = do
        index <- newIORef ((jlength items))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (CommandCurrentSelectionForm.addAt this (jget index) (jindex items ((jget index))))
        pure ()


addAt :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
addAt object_ a1 a2 = jmethod object_ "addAt" (\() -> (addAt_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2

addAt_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
addAt_super object_ a1 a2 = (addAt_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2

addAt_impl :: CommandCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
addAt_impl this index item = do
        basicColorFactory <- (BasicColorFactory.getInstance)
        let buttonColor = (jget (basicColorFactory).tRANSPARENT_GREY)
        let selectedButtonColor = (jget (basicColorFactory).tRANSPARENT_RED)
        width <- (ABCustomItem.getMinimumWidth item)
        height <- (ABCustomItem.getMinimumHeight item)
        adjustedBorder <- newIORef (3)
        let offset = (Prelude.negate (((jget (this).base.base.halfBorder) + (jget adjustedBorder))))
        let rectWidth = ((width + (jget (this).base.base.border)) - (jget adjustedBorder))
        let rectHeight = ((height + (jget (this).base.base.border)) - (jget adjustedBorder))
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (RectangleAdjustedAnimation.new_5 rectWidth rectHeight offset offset selectedButtonColor))
            jsetIndex ((jget (this).selectedAnimationArray)) (index) (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (RectangleFilledAdjustedAnimation.new_5 rectWidth rectHeight offset offset selectedButtonColor))
            jsetIndex ((jget (this).selectedAnimationArray)) (index) (assignedValue)
        jset adjustedBorder (4)
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (RectangleAdjustedAnimation.new_5 rectWidth rectHeight offset offset buttonColor))
            jsetIndex ((jget (this).unSelectedAnimationArray)) (index) (assignedValue)
        else do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Animation.Animation) (RectangleFilledAdjustedAnimation.new_5 rectWidth rectHeight offset offset buttonColor))
            jsetIndex ((jget (this).unSelectedAnimationArray)) (index) (assignedValue)
        pure ()


updateAll :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
updateAll object_ a1 a2 = jmethod object_ "updateAll" (\() -> (updateAll_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2

updateAll_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
updateAll_super object_ a1 a2 = (updateAll_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2

updateAll_impl :: CommandCurrentSelectionForm -> Graphics.Graphics -> JavaArray (ABCustomItem.ABCustomItem) -> IO (())
updateAll_impl this graphics items = do
        index <- newIORef ((jlength items))
        fix $ \loop -> when ((jpreIncrement index (Prelude.subtract 1)) >= 0) $ javaIteration (do { loop }) $ do
            Control.Monad.void (preMeasurement ((jindex items ((jget index)))) graphics)
            Control.Monad.void (CommandCurrentSelectionForm.updateAt this (jget index) (jindex items ((jget index))))
        pure ()


updateAt :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
updateAt object_ a1 a2 = jmethod object_ "updateAt" (\() -> (updateAt_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2

updateAt_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
updateAt_super object_ a1 a2 = (updateAt_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2

updateAt_impl :: CommandCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
updateAt_impl this index item = do
        basicColorFactory <- (BasicColorFactory.getInstance)
        let buttonColor = (jget (basicColorFactory).tRANSPARENT_GREY)
        let selectedButtonColor = (jget (basicColorFactory).tRANSPARENT_RED)
        width <- (ABCustomItem.getMinimumWidth item)
        height <- (ABCustomItem.getMinimumHeight item)
        adjustedBorder <- newIORef (3)
        let offset = (Prelude.negate (((jget (this).base.base.halfBorder) + (jget adjustedBorder))))
        let rectWidth = ((width + (jget (this).base.base.border)) - (jget adjustedBorder))
        let rectHeight = ((height + (jget (this).base.base.border)) - (jget adjustedBorder))
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            let rectangleAdjustedAnimation = (javaCast (jindex ((jget (this).selectedAnimationArray)) (index)) :: RectangleAdjustedAnimation.RectangleAdjustedAnimation)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setWidth rectangleAdjustedAnimation rectWidth)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setHeight rectangleAdjustedAnimation rectHeight)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetX rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetY rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setBasicColorP rectangleAdjustedAnimation selectedButtonColor)
        else do
            let rectangleAdjustedAnimation = (javaCast (jindex ((jget (this).selectedAnimationArray)) (index)) :: RectangleFilledAdjustedAnimation.RectangleFilledAdjustedAnimation)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setWidth rectangleAdjustedAnimation rectWidth)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setHeight rectangleAdjustedAnimation rectHeight)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetX rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetY rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setBasicColorP rectangleAdjustedAnimation selectedButtonColor)
        jset adjustedBorder (4)
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            let rectangleAdjustedAnimation = (javaCast (jindex ((jget (this).unSelectedAnimationArray)) (index)) :: RectangleAdjustedAnimation.RectangleAdjustedAnimation)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setWidth rectangleAdjustedAnimation rectWidth)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setHeight rectangleAdjustedAnimation rectHeight)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetX rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetY rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setBasicColorP rectangleAdjustedAnimation buttonColor)
        else do
            let rectangleAdjustedAnimation = (javaCast (jindex ((jget (this).unSelectedAnimationArray)) (index)) :: RectangleFilledAdjustedAnimation.RectangleFilledAdjustedAnimation)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setWidth rectangleAdjustedAnimation rectWidth)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setHeight rectangleAdjustedAnimation rectHeight)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetX rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setOffsetY rectangleAdjustedAnimation offset)
            Control.Monad.void (RectangleFilledAdjustedAnimation.setBasicColorP rectangleAdjustedAnimation buttonColor)
        pure ()


getSelectedCommand :: (JavaObjectClass this_) => this_ -> IO (Command.Command)
getSelectedCommand object_ = jmethod object_ "getSelectedCommand" (\() -> (getSelectedCommand_impl (javaCast object_ :: CommandCurrentSelectionForm))) ()

getSelectedCommand_super :: (JavaObjectClass this_) => this_ -> IO (Command.Command)
getSelectedCommand_super object_ = (getSelectedCommand_impl (javaCast object_ :: CommandCurrentSelectionForm))

getSelectedCommand_impl :: CommandCurrentSelectionForm -> IO (Command.Command)
getSelectedCommand_impl this = do
        index <- (ScrollCurrentSelectionForm.getSelectedIndex_super this.base)
        let commandTextItem = (javaCast (jio (ScrollCurrentSelectionForm.get this index)) :: CommandTextItem.CommandTextItem)
        (CommandTextItem.getCommand commandTextItem)


append :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1

append_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append_super object_ a1 = (append_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1

append_impl :: CommandCurrentSelectionForm -> ABCustomItem.ABCustomItem -> IO (Int)
append_impl this item = do
        result <- (ScrollCurrentSelectionForm.append_super this.base item)
        Control.Monad.void (CommandCurrentSelectionForm.addAt this result item)
        pure (result)


delete :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1

delete_impl :: CommandCurrentSelectionForm -> Int -> IO (())
delete_impl this itemNum = do
        Control.Monad.void (ScrollCurrentSelectionForm.delete_super this.base itemNum)
        pure ()


deleteAll :: (JavaObjectClass this_) => this_ -> IO (())
deleteAll object_ = jmethod object_ "deleteAll" (\() -> (deleteAll_impl (javaCast object_ :: CommandCurrentSelectionForm))) ()

deleteAll_super :: (JavaObjectClass this_) => this_ -> IO (())
deleteAll_super object_ = (deleteAll_impl (javaCast object_ :: CommandCurrentSelectionForm))

deleteAll_impl :: CommandCurrentSelectionForm -> IO (())
deleteAll_impl this = do
        Control.Monad.void (CommandCurrentSelectionForm.initAnimations this)
        Control.Monad.void (ScrollCurrentSelectionForm.deleteAll_super this.base)
        pure ()


insert :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2

insert_impl :: CommandCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
insert_impl this itemNum item = do
        Control.Monad.void (ScrollCurrentSelectionForm.insert_super this.base itemNum item)
        pure ()


set :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
set object_ a1 a2 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2

set_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> IO (())
set_super object_ a1 a2 = (set_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2

set_impl :: CommandCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> IO (())
set_impl this itemNum item = do
        Control.Monad.void (ScrollCurrentSelectionForm.set_super this.base itemNum item)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1

paint_impl :: CommandCurrentSelectionForm -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.myFontProcessor)) graphics)
        Control.Monad.void (ScrollCurrentSelectionForm.paint_super this.base graphics)
        pure ()


-- throws Exception
paintItem :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem object_ a1 a2 a3 a4 a5 = jmethod object_ "paintItem" (\() -> (paintItem_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2 a3 a4 a5

paintItem_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem_super object_ a1 a2 a3 a4 a5 = (paintItem_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2 a3 a4 a5

paintItem_impl :: CommandCurrentSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem_impl this graphics index item x y = do
        Control.Monad.void (paintXY ((jindex ((jget (this).selectedAnimationArray)) (index))) graphics x y)
        (ScrollCurrentSelectionForm.paintItem_super this.base graphics index item x y)


-- throws Exception
paintUnselectedItem :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem object_ a1 a2 a3 a4 a5 = jmethod object_ "paintUnselectedItem" (\() -> (paintUnselectedItem_impl (javaCast object_ :: CommandCurrentSelectionForm))) () a1 a2 a3 a4 a5

paintUnselectedItem_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem_super object_ a1 a2 a3 a4 a5 = (paintUnselectedItem_impl (javaCast object_ :: CommandCurrentSelectionForm)) a1 a2 a3 a4 a5

paintUnselectedItem_impl :: CommandCurrentSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem_impl this graphics index item x y = do
        Control.Monad.void (paintXY ((jindex ((jget (this).unSelectedAnimationArray)) (index))) graphics x y)
        (ScrollCurrentSelectionForm.paintUnselectedItem_super this.base graphics index item x y)


