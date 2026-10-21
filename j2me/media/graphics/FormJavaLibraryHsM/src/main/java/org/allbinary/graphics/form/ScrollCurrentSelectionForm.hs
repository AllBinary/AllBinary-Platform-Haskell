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
module ScrollCurrentSelectionForm (module ScrollCurrentSelectionForm, module ScrollSelectionForm) where

import ScrollSelectionForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, processTempHorizontalForm, processTempHorizontalForm_super, processTempHorizontalForm_impl, processHorizontalForm, processHorizontalForm_super, processHorizontalForm_impl, processVerticalForm, processVerticalForm_super, processVerticalForm_impl, getXTempHorizontalForm, getXTempHorizontalForm_super, getXTempHorizontalForm_impl, getXHorizontalForm, getXHorizontalForm_super, getXHorizontalForm_impl, getXVerticalForm, getXVerticalForm_super, getXVerticalForm_impl, getDiffX, getDiffX_super, getDiffX_impl, getDx, getDx_super, getDx_impl, getDy, getDy_super, getDy_impl, paint, paint_super, paint_impl, moveForSmallScreen, updateMyFontProcessor, myFontProcessor, processor, preItemIndexDx, dx, dy, maxWidth)
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
import qualified ItemIndexDx -- same package or java.lang
import qualified ItemPaintableFactory -- same package or java.lang
import qualified FormTypeFactory -- same package or java.lang
import qualified FormType -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CanvasStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified Processor -- org.allbinary.canvas.Processor
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified ScrollSelectionForm

-- implements UpdateMyFontInterface
data ScrollCurrentSelectionForm = ScrollCurrentSelectionForm
    { header_ :: JavaHeader
    , base :: ScrollSelectionForm.ScrollSelectionForm
    , moveForSmallScreen :: IORef (Bool)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , processor :: IORef (Processor.Processor)
    , preItemIndexDx :: IORef (ItemIndexDx.ItemIndexDx)
    , dx :: IORef (Int)
    , dy :: IORef (Int)
    , maxWidth :: IORef (Int)
    }

instance JavaNull ScrollCurrentSelectionForm where
    javaNull = javaNullRecord "ScrollCurrentSelectionForm"

instance JavaEquals ScrollCurrentSelectionForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollCurrentSelectionForm where
    (==) = jrecordEquals

instance JavaObjectClass ScrollCurrentSelectionForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ScrollCurrentSelectionForm
newRecord_ = do
    base <- ScrollSelectionForm.newRecord_
    let header_ = base.header_
    moveForSmallScreen <- newIORef False
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    processor <- newIORef javaNull
    preItemIndexDx <- newIORef javaNull
    dx <- newIORef 0
    dy <- newIORef 0
    maxWidth <- newIORef 0
    let this = ScrollCurrentSelectionForm header_ base moveForSmallScreen updateMyFontProcessor myFontProcessor processor preItemIndexDx dx dy maxWidth
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "processTempHorizontalForm" (\() -> processTempHorizontalForm_impl this)
    jregisterMethod header_ "processHorizontalForm" (\() -> processHorizontalForm_impl this)
    jregisterMethod header_ "processVerticalForm" (\() -> processVerticalForm_impl this)
    jregisterMethod header_ "getXTempHorizontalForm" (\() -> getXTempHorizontalForm_impl this)
    jregisterMethod header_ "getXHorizontalForm" (\() -> getXHorizontalForm_impl this)
    jregisterMethod header_ "getXVerticalForm" (\() -> getXVerticalForm_impl this)
    jregisterMethod header_ "getDiffX" (\() -> getDiffX_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: ScrollCurrentSelectionForm -> IO ()
initFields_ this = do
    jset this.moveForSmallScreen (False)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.processor =<< (Processor.getInstance)
    jset this.preItemIndexDx =<< (ItemIndexDx.getInstance)
    jset this.dx (0)
    jset this.dy (0)
    jset this.maxWidth (0)
    pure ()

new_8 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> Int -> Bool -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ScrollCurrentSelectionForm
new_8 title items formPaintableFactory border adjustedExtraBorder moveForSmallScreen backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_8 this title items formPaintableFactory border adjustedExtraBorder moveForSmallScreen backgroundBasicColor foregroundBasicColor
    pure this

init_8 :: ScrollCurrentSelectionForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> Int -> Bool -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_8 this title items formPaintableFactory border adjustedExtraBorder moveForSmallScreen backgroundBasicColor foregroundBasicColor = do
        ScrollSelectionForm.init_7 this.base (title) (items) (formPaintableFactory) (border) (adjustedExtraBorder) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).moveForSmallScreen (moveForSmallScreen)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1 a2

init_impl :: ScrollCurrentSelectionForm -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_impl this rectangle formType = do
        Control.Monad.void (ScrollSelectionForm.init_super this.base rectangle formType)
        formTypeFactory <- (FormTypeFactory.getInstance)
        if (formType == (jget (formTypeFactory).tEMP_HORIZONTAL_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (TempHorizontalFormProcessor.new_1 this))
            jset (this).processor (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (TempHorizontalItemIndexDx.new_1 this))
            jset (this).preItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).hORIZONTAL_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (HorizontalFormProcessor.new_1 this))
            jset (this).processor (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (HorizontalItemIndexDx.new_1 this))
            jset (this).preItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Processor.Processor) (VerticalFormProcessor.new_1 this))
            jset (this).processor (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (VerticalItemIndexDx.new_1 this))
            jset (this).preItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).nULL_FORM_TYPE)) then do
            pure ()
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.base.logUtil)) (jget (formTypeFactory).uNK) this (jget ((jget (this).base.base.base.commonStrings)).iNIT))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1

updateMeasurement_impl :: ScrollCurrentSelectionForm -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


processTempHorizontalForm :: (JavaObjectClass this_) => this_ -> IO (())
processTempHorizontalForm object_ = jmethod object_ "processTempHorizontalForm" (\() -> (processTempHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) ()

processTempHorizontalForm_super :: (JavaObjectClass this_) => this_ -> IO (())
processTempHorizontalForm_super object_ = (processTempHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))

processTempHorizontalForm_impl :: ScrollCurrentSelectionForm -> IO (())
processTempHorizontalForm_impl this = do
        jset (this).dx ((((jget (this).base.base.x) - 30) + (((jio (Rectangle.getWidth ((jget (this).base.base.rectangle)))) `Data.Bits.shiftR` 1))))
        jset (this).dy ((jget (this).base.base.y))
        pure ()


processHorizontalForm :: (JavaObjectClass this_) => this_ -> IO (())
processHorizontalForm object_ = jmethod object_ "processHorizontalForm" (\() -> (processHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) ()

processHorizontalForm_super :: (JavaObjectClass this_) => this_ -> IO (())
processHorizontalForm_super object_ = (processHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))

processHorizontalForm_impl :: ScrollCurrentSelectionForm -> IO (())
processHorizontalForm_impl this = do
        size <- (ScrollSelectionForm.size this)
        totalWidth <- newIORef (0)
        item <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ScrollSelectionForm.get this index)
            jset item (assignedValue)
            jset totalWidth (((jget totalWidth) + ((jio (ABCustomItem.getMinimumWidth ((jget item)))) + (jget (this).base.border))))
        jset (this).dx ((((jget (this).base.base.x) + (((jio (Rectangle.getWidth ((jget (this).base.base.rectangle)))) `Data.Bits.shiftR` 1))) - (((jget totalWidth) `Data.Bits.shiftR` 1))))
        jset (this).dy (((jget (this).base.base.y) + (((jio (Rectangle.getHeight ((jget (this).base.base.rectangle)))) `Data.Bits.shiftR` 1))))
        when (jget (this).moveForSmallScreen) $ do
            let maxTitleHeight = 175
            when ((jget (this).dy) < maxTitleHeight) $ do
                jset (this).dy (maxTitleHeight)
        pure ()


processVerticalForm :: (JavaObjectClass this_) => this_ -> IO (())
processVerticalForm object_ = jmethod object_ "processVerticalForm" (\() -> (processVerticalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) ()

processVerticalForm_super :: (JavaObjectClass this_) => this_ -> IO (())
processVerticalForm_super object_ = (processVerticalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))

processVerticalForm_impl :: ScrollCurrentSelectionForm -> IO (())
processVerticalForm_impl this = do
        totalHeight <- newIORef (0)
        size <- (ScrollSelectionForm.size this)
        item2 <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (ScrollSelectionForm.get this index)
            jset item2 (assignedValue)
            when ((jget (this).maxWidth) < (jio (ABCustomItem.getMinimumWidth ((jget item2))))) $ do
                assignedValue <- (ABCustomItem.getMinimumWidth ((jget item2)))
                jset (this).maxWidth (assignedValue)
            jset totalHeight (((jget totalHeight) + ((jio (ABCustomItem.getMinimumHeight ((jget item2)))) + (jget (this).base.border))))
        jset (this).dx ((((((jio (Rectangle.getWidth ((jget (this).base.base.rectangle)))) - (jget (this).maxWidth))) `quot` 2)))
        if ((jio (ScrollSelectionForm.size this)) > 0) then do
            jset (this).dy (((jget (this).base.base.y) + (((((jio (Rectangle.getHeight ((jget (this).base.base.rectangle)))) - (jget totalHeight))) `quot` 2))))
            when (jget (this).moveForSmallScreen) $ do
                let maxTitleHeight = 175
                when ((jget (this).dy) < maxTitleHeight) $ do
                    jset (this).dy (maxTitleHeight)
        else do
            jset (this).dy ((jget (this).base.base.y))
        pure ()


getXTempHorizontalForm :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXTempHorizontalForm object_ a1 a2 a3 a4 = jmethod object_ "getXTempHorizontalForm" (\() -> (getXTempHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1 a2 a3 a4

getXTempHorizontalForm_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXTempHorizontalForm_super object_ a1 a2 a3 a4 = (getXTempHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1 a2 a3 a4

getXTempHorizontalForm_impl :: ScrollCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXTempHorizontalForm_impl this index item dx dy = do
        (ScrollCurrentSelectionForm.getDiffX this item)


getXHorizontalForm :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXHorizontalForm object_ a1 a2 a3 a4 = jmethod object_ "getXHorizontalForm" (\() -> (getXHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1 a2 a3 a4

getXHorizontalForm_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXHorizontalForm_super object_ a1 a2 a3 a4 = (getXHorizontalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1 a2 a3 a4

getXHorizontalForm_impl :: ScrollCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXHorizontalForm_impl this index item dx dy = do
        pure (0)


getXVerticalForm :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXVerticalForm object_ a1 a2 a3 a4 = jmethod object_ "getXVerticalForm" (\() -> (getXVerticalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1 a2 a3 a4

getXVerticalForm_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXVerticalForm_super object_ a1 a2 a3 a4 = (getXVerticalForm_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1 a2 a3 a4

getXVerticalForm_impl :: ScrollCurrentSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getXVerticalForm_impl this index item dx dy = do
        pure (((jio (ScrollCurrentSelectionForm.getDiffX this item)) + (jget (this).base.halfBorder)))


getDiffX :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX object_ a1 = jmethod object_ "getDiffX" (\() -> (getDiffX_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1

getDiffX_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX_super object_ a1 = (getDiffX_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1

getDiffX_impl :: ScrollCurrentSelectionForm -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX_impl this item = do
        pure ((((((jget (this).maxWidth) - (jio (ABCustomItem.getMinimumWidth item)))) `Data.Bits.shiftR` 1)))


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ScrollCurrentSelectionForm))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: ScrollCurrentSelectionForm))

getDx_impl :: ScrollCurrentSelectionForm -> IO (Int)
getDx_impl this = do
        pure ((jget (this).dx))


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: ScrollCurrentSelectionForm))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: ScrollCurrentSelectionForm))

getDy_impl :: ScrollCurrentSelectionForm -> IO (Int)
getDy_impl this = do
        pure ((jget (this).dy))


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ScrollCurrentSelectionForm))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ScrollCurrentSelectionForm)) a1

paint_impl :: ScrollCurrentSelectionForm -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.base.logUtil)) (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.canvasStrings)).pAINT) e)
            ) $ do
            Control.Monad.void (Processor.process ((jget (this).processor)))
            delta <- newIORef (0)
            deltaX <- newIORef =<< (ScrollCurrentSelectionForm.getDx this)
            deltaY <- newIORef =<< (ScrollCurrentSelectionForm.getDy this)
            size <- (ScrollSelectionForm.size this)
            formTypeFactory <- (FormTypeFactory.getInstance)
            item <- newIORef (javaNull)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (ScrollSelectionForm.get this index)
                jset item (assignedValue)
                diffX <- (ItemIndexDx.getDx ((jget (this).preItemIndexDx)) index (jget item) (jget (this).dx) (jget (this).dy))
                if (index == (jio (ScrollSelectionForm.getSelectedIndex this))) then do
                    assignedValue <- (ScrollSelectionForm.paintItem this graphics index (jget item) ((jget deltaX) + diffX) (jget deltaY))
                    jset delta (assignedValue)
                    Control.Monad.void (ItemPaintable.paint ((jget (this).base.paintable)) graphics index ((jget deltaX) + diffX) (jget deltaY))
                else do
                    assignedValue <- (ScrollSelectionForm.paintUnselectedItem this graphics index (jget item) ((jget deltaX) + diffX) (jget deltaY))
                    jset delta (assignedValue)
                    Control.Monad.void (ItemPaintable.paint ((jget (this).base.paintable)) graphics index ((jget deltaX) + diffX) (jget deltaY))
                if ((jget (this).base.base.formType) == (jget (formTypeFactory).tEMP_HORIZONTAL_FORM)) then do
                    pure ()
                else if ((jget (this).base.base.formType) == (jget (formTypeFactory).hORIZONTAL_FORM)) then do
                    jset deltaX ((jget delta))
                else if ((jget (this).base.base.formType) == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
                    jset deltaY ((jget delta))
                else do
                    javaThrow ((JavaException "Exception" (jget (formTypeFactory).uNK)))
        pure ()

-- Java nested class TempHorizontalFormProcessor: move it to its own module TempHorizontalFormProcessor
-- Java nested class HorizontalFormProcessor: move it to its own module HorizontalFormProcessor
-- Java nested class VerticalFormProcessor: move it to its own module VerticalFormProcessor
-- Java nested class TempHorizontalItemIndexDx: move it to its own module TempHorizontalItemIndexDx
-- Java nested class HorizontalItemIndexDx: move it to its own module HorizontalItemIndexDx
-- Java nested class VerticalItemIndexDx: move it to its own module VerticalItemIndexDx

