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
module ScrollSelectionForm (module ScrollSelectionForm, module PaintableForm) where

import PaintableForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createForm, createForm_super, createForm_impl, getNullScrollSelectionForm, getNullScrollSelectionForm_super, getNullScrollSelectionForm_impl, getNullScrollSelectionFormHorizontal, getNullScrollSelectionFormHorizontal_super, getNullScrollSelectionFormHorizontal_impl, init, init_super, init_impl, paintItemHorizontal, paintItemHorizontal_super, paintItemHorizontal_impl, paintItemVertical, paintItemVertical_super, paintItemVertical_impl, paintItemTempHorizontal, paintItemTempHorizontal_super, paintItemTempHorizontal_impl, getSelectedIndexForPointHorizontalDx, getSelectedIndexForPointHorizontalDx_super, getSelectedIndexForPointHorizontalDx_impl, getSelectedIndexForPointVerticalDx, getSelectedIndexForPointVerticalDx_super, getSelectedIndexForPointVerticalDx_impl, getSelectedIndexForPointTempHorizontalDx, getSelectedIndexForPointTempHorizontalDx_super, getSelectedIndexForPointTempHorizontalDx_impl, append, append_super, append_impl, getSelectedItem, getSelectedItem_super, getSelectedItem_impl, getItemIndex, getItemIndex_super, getItemIndex_impl, getStartIndex, getStartIndex_super, getStartIndex_impl, getSelectedIndexForPoint, getSelectedIndexForPoint_super, getSelectedIndexForPoint_impl, processInputKey, processInputKey_super, processInputKey_impl, isInForm, isInForm_super, isInForm_impl, paintItem, paintItem_super, paintItem_impl, paintUnselectedItem, paintUnselectedItem_super, paintUnselectedItem_impl, getDiffX, getDiffX_super, getDiffX_impl, getDx, getDx_super, getDx_impl, getDy, getDy_super, getDy_impl, setButtonBasicColor, setButtonBasicColor_super, setButtonBasicColor_impl, getButtonBasicColor, getButtonBasicColor_super, getButtonBasicColor_impl, nULL_SCROLL_SELECTION_FORM, nULL_SCROLL_SELECTION_HORIZONTAL_FORM, iNSIDE_FORM, iS_IN_FORM, rectangleCollisionUtil, border, halfBorder, buttonBasicColor, scrollSelectionFormFormTypeItemIndexPaintable, formTypeItemIndexDx, paintable, adjustedExtraBorder, gET_SELECTED_INDEX)
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
import qualified Any -- same package or java.lang
import qualified ItemIndexPaintable -- same package or java.lang
import qualified ItemIndexDx -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified FormTypeFactory -- same package or java.lang
import qualified FormType -- same package or java.lang
import qualified Canvas -- javax.microedition.lcdui.Canvas
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified RectangleCollisionUtil -- org.allbinary.math.RectangleCollisionUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified PaintableForm

data ScrollSelectionForm = ScrollSelectionForm
    { header_ :: JavaHeader
    , base :: PaintableForm.PaintableForm
    , rectangleCollisionUtil :: IORef (RectangleCollisionUtil.RectangleCollisionUtil)
    , border :: IORef (Int)
    , halfBorder :: IORef (Int)
    , buttonBasicColor :: IORef (BasicColor.BasicColor)
    , scrollSelectionFormFormTypeItemIndexPaintable :: IORef (ItemIndexPaintable.ItemIndexPaintable)
    , formTypeItemIndexDx :: IORef (ItemIndexDx.ItemIndexDx)
    , paintable :: IORef (ItemPaintable.ItemPaintable)
    , adjustedExtraBorder :: IORef (Int)
    }

instance JavaNull ScrollSelectionForm where
    javaNull = javaNullRecord "ScrollSelectionForm"

instance JavaEquals ScrollSelectionForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ScrollSelectionForm where
    (==) = jrecordEquals

instance JavaObjectClass ScrollSelectionForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_SCROLL_SELECTION_FORM #-}
nULL_SCROLL_SELECTION_FORM = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

{-# NOINLINE nULL_SCROLL_SELECTION_HORIZONTAL_FORM #-}
nULL_SCROLL_SELECTION_HORIZONTAL_FORM = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

iNSIDE_FORM = " inside form"

iS_IN_FORM = "isInForm"

gET_SELECTED_INDEX = "getSelectedIndexForPoint"

newRecord_ :: IO ScrollSelectionForm
newRecord_ = do
    base <- PaintableForm.newRecord_
    let header_ = base.header_
    rectangleCollisionUtil <- newIORef javaNull
    border <- newIORef 0
    halfBorder <- newIORef 0
    buttonBasicColor <- newIORef javaNull
    scrollSelectionFormFormTypeItemIndexPaintable <- newIORef javaNull
    formTypeItemIndexDx <- newIORef javaNull
    paintable <- newIORef javaNull
    adjustedExtraBorder <- newIORef 0
    let this = ScrollSelectionForm header_ base rectangleCollisionUtil border halfBorder buttonBasicColor scrollSelectionFormFormTypeItemIndexPaintable formTypeItemIndexDx paintable adjustedExtraBorder
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "paintItemHorizontal" (\() -> paintItemHorizontal_impl this)
    jregisterMethod header_ "paintItemVertical" (\() -> paintItemVertical_impl this)
    jregisterMethod header_ "paintItemTempHorizontal" (\() -> paintItemTempHorizontal_impl this)
    jregisterMethod header_ "getSelectedIndexForPointHorizontalDx" (\() -> getSelectedIndexForPointHorizontalDx_impl this)
    jregisterMethod header_ "getSelectedIndexForPointVerticalDx" (\() -> getSelectedIndexForPointVerticalDx_impl this)
    jregisterMethod header_ "getSelectedIndexForPointTempHorizontalDx" (\() -> getSelectedIndexForPointTempHorizontalDx_impl this)
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "getSelectedItem" (\() -> getSelectedItem_impl this)
    jregisterMethod header_ "getItemIndex" (\() -> getItemIndex_impl this)
    jregisterMethod header_ "getStartIndex" (\() -> getStartIndex_impl this)
    jregisterMethod header_ "getSelectedIndexForPoint" (\() -> getSelectedIndexForPoint_impl this)
    jregisterMethod header_ "processInputKey" (\() -> processInputKey_impl this)
    jregisterMethod header_ "isInForm" (\() -> isInForm_impl this)
    jregisterMethod header_ "paintItem" (\() -> paintItem_impl this)
    jregisterMethod header_ "paintUnselectedItem" (\() -> paintUnselectedItem_impl this)
    jregisterMethod header_ "getDiffX" (\() -> getDiffX_impl this)
    jregisterMethod header_ "getDx" (\() -> getDx_impl this)
    jregisterMethod header_ "getDy" (\() -> getDy_impl this)
    jregisterMethod header_ "setButtonBasicColor" (\() -> setButtonBasicColor_impl this)
    jregisterMethod header_ "getButtonBasicColor" (\() -> getButtonBasicColor_impl this)
    pure this

initFields_ :: ScrollSelectionForm -> IO ()
initFields_ this = do
    jset this.rectangleCollisionUtil =<< (RectangleCollisionUtil.getInstance)
    jset this.border (0)
    jset this.halfBorder (0)
    jset this.buttonBasicColor (javaNull)
    jset this.scrollSelectionFormFormTypeItemIndexPaintable =<< (ItemIndexPaintable.getInstance)
    jset this.formTypeItemIndexDx =<< (ItemIndexDx.getInstance)
    jset this.paintable =<< (fmap (\value_ -> javaCast value_ :: ItemPaintable.ItemPaintable) (ItemPaintableFactory.getInstance))
    jset this.adjustedExtraBorder (0)
    pure ()


createForm :: String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (PaintableForm.PaintableForm)
createForm title items formPaintableFactory border backgroundBasicColor foregroundBasicColor = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            logUtil <- (LogUtil.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) logUtil (jget (commonStrings).eXCEPTION) e)
            (PaintableForm.getNullPaintableForm)
            ) $ do
            if (formPaintableFactory == (jio (ItemPaintableFactory.getInstance))) then do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: PaintableForm.PaintableForm) (new_7 title items formPaintableFactory border (Prelude.negate 3) backgroundBasicColor foregroundBasicColor))
            else do
                commonStrings <- (CommonStrings.getInstance)
                logUtil <- (LogUtil.getInstance)
                Control.Monad.void (LogUtil.putF logUtil (jget (commonStrings).eXCEPTION) logUtil (jget (commonStrings).eXCEPTION))
                javaReturn =<< (PaintableForm.getNullPaintableForm)


getNullScrollSelectionForm :: IO (ScrollSelectionForm)
getNullScrollSelectionForm = do
        when ((jget ScrollSelectionForm.nULL_SCROLL_SELECTION_FORM) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (ScrollSelectionForm.createForm (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jnewArray (0) javaNull) (jio (ItemPaintableFactory.getInstance)) 0 (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset ScrollSelectionForm.nULL_SCROLL_SELECTION_FORM (assignedValue)
        pure ((javaCast (jget ScrollSelectionForm.nULL_SCROLL_SELECTION_FORM) :: ScrollSelectionForm))


getNullScrollSelectionFormHorizontal :: IO (ScrollSelectionForm)
getNullScrollSelectionFormHorizontal = do
        when ((jget ScrollSelectionForm.nULL_SCROLL_SELECTION_HORIZONTAL_FORM) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (ScrollSelectionForm.createForm (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jnewArray (0) javaNull) (jio (ItemPaintableFactory.getInstance)) 0 (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset ScrollSelectionForm.nULL_SCROLL_SELECTION_HORIZONTAL_FORM (assignedValue)
        pure ((javaCast (jget ScrollSelectionForm.nULL_SCROLL_SELECTION_HORIZONTAL_FORM) :: ScrollSelectionForm))

new_7 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ScrollSelectionForm
new_7 title items formPaintableFactory border adjustedExtraBorder backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_7 this title items formPaintableFactory border adjustedExtraBorder backgroundBasicColor foregroundBasicColor
    pure this

init_7 :: ScrollSelectionForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_7 this title items formPaintableFactory border adjustedExtraBorder backgroundBasicColor foregroundBasicColor = do
        PaintableForm.init_4 this.base (title) (items) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).adjustedExtraBorder (adjustedExtraBorder)
        jset (this).buttonBasicColor (foregroundBasicColor)
        jset (this).border (border)
        jset (this).halfBorder (((border `Data.Bits.shiftR` 1)))
        assignedValue <- (ItemPaintableFactory.getInstanceItemPaintable formPaintableFactory (javaCast this))
        jset (this).paintable (assignedValue)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2

init_impl :: ScrollSelectionForm -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_impl this rectangle formType = do
        Control.Monad.void (PaintableForm.init_super this.base rectangle formType)
        formTypeFactory <- (FormTypeFactory.getInstance)
        if (formType == (jget (formTypeFactory).hORIZONTAL_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexPaintable.ItemIndexPaintable) (ScrollSelectionFormHorizontalPaintable.new_1 this))
            jset (this).scrollSelectionFormFormTypeItemIndexPaintable (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (ScrollSelectionFormHorizontalDx.new_1 this))
            jset (this).formTypeItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexPaintable.ItemIndexPaintable) (ScrollSelectionFormVerticalPaintable.new_1 this))
            jset (this).scrollSelectionFormFormTypeItemIndexPaintable (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (ScrollSelectionFormVericalDx.new_1 this))
            jset (this).formTypeItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).tEMP_HORIZONTAL_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexPaintable.ItemIndexPaintable) (ScrollSelectionFormTempHorizontalPaintable.new_1 this))
            jset (this).scrollSelectionFormFormTypeItemIndexPaintable (assignedValue)
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexDx.ItemIndexDx) (ScrollSelectionFormTempHorizontalDx.new_1 this))
            jset (this).formTypeItemIndexDx (assignedValue)
        else if (formType == (jget (formTypeFactory).nULL_FORM_TYPE)) then do
            pure ()
        else do
            javaThrow ((JavaException "Exception" (jget (formTypeFactory).uNK)))
        pure ()


paintItemHorizontal :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemHorizontal object_ a1 a2 a3 a4 a5 = jmethod object_ "paintItemHorizontal" (\() -> (paintItemHorizontal_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4 a5

paintItemHorizontal_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemHorizontal_super object_ a1 a2 a3 a4 a5 = (paintItemHorizontal_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4 a5

paintItemHorizontal_impl :: ScrollSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemHorizontal_impl this graphics index item x y = do
        width <- (ABCustomItem.getMinimumWidth item)
        pure (((x + width) + (jget (this).border)))


paintItemVertical :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemVertical object_ a1 a2 a3 a4 a5 = jmethod object_ "paintItemVertical" (\() -> (paintItemVertical_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4 a5

paintItemVertical_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemVertical_super object_ a1 a2 a3 a4 a5 = (paintItemVertical_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4 a5

paintItemVertical_impl :: ScrollSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemVertical_impl this graphics index item x y = do
        height <- (ABCustomItem.getMinimumHeight item)
        pure (((y + height) + (jget (this).border)))


paintItemTempHorizontal :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemTempHorizontal object_ a1 a2 a3 a4 a5 = jmethod object_ "paintItemTempHorizontal" (\() -> (paintItemTempHorizontal_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4 a5

paintItemTempHorizontal_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemTempHorizontal_super object_ a1 a2 a3 a4 a5 = (paintItemTempHorizontal_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4 a5

paintItemTempHorizontal_impl :: ScrollSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItemTempHorizontal_impl this graphics index item x y = do
        pure (0)


getSelectedIndexForPointHorizontalDx :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointHorizontalDx object_ a1 a2 a3 a4 = jmethod object_ "getSelectedIndexForPointHorizontalDx" (\() -> (getSelectedIndexForPointHorizontalDx_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4

getSelectedIndexForPointHorizontalDx_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointHorizontalDx_super object_ a1 a2 a3 a4 = (getSelectedIndexForPointHorizontalDx_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4

getSelectedIndexForPointHorizontalDx_impl :: ScrollSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointHorizontalDx_impl this index item dx dy = do
        pure ((dx - (jget (this).halfBorder)))


getSelectedIndexForPointVerticalDx :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointVerticalDx object_ a1 a2 a3 a4 = jmethod object_ "getSelectedIndexForPointVerticalDx" (\() -> (getSelectedIndexForPointVerticalDx_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4

getSelectedIndexForPointVerticalDx_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointVerticalDx_super object_ a1 a2 a3 a4 = (getSelectedIndexForPointVerticalDx_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4

getSelectedIndexForPointVerticalDx_impl :: ScrollSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointVerticalDx_impl this index item dx dy = do
        pure ((dx + (jio (ScrollSelectionForm.getDiffX this item))))


getSelectedIndexForPointTempHorizontalDx :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointTempHorizontalDx object_ a1 a2 a3 a4 = jmethod object_ "getSelectedIndexForPointTempHorizontalDx" (\() -> (getSelectedIndexForPointTempHorizontalDx_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4

getSelectedIndexForPointTempHorizontalDx_super :: (JavaObjectClass this_) => this_ -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointTempHorizontalDx_super object_ a1 a2 a3 a4 = (getSelectedIndexForPointTempHorizontalDx_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4

getSelectedIndexForPointTempHorizontalDx_impl :: ScrollSelectionForm -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
getSelectedIndexForPointTempHorizontalDx_impl this index item dx dy = do
        pure ((dx + (jio (ScrollSelectionForm.getDiffX this item))))


append :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: ScrollSelectionForm))) () a1

append_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
append_super object_ a1 = (append_impl (javaCast object_ :: ScrollSelectionForm)) a1

append_impl :: ScrollSelectionForm -> ABCustomItem.ABCustomItem -> IO (Int)
append_impl this item = do
        (PaintableForm.append_super this.base item)


-- throws Exception
getSelectedItem :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getSelectedItem object_ a1 = jmethod object_ "getSelectedItem" (\() -> (getSelectedItem_impl (javaCast object_ :: ScrollSelectionForm))) () a1

getSelectedItem_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getSelectedItem_super object_ a1 = (getSelectedItem_impl (javaCast object_ :: ScrollSelectionForm)) a1

getSelectedItem_impl :: ScrollSelectionForm -> GPoint.GPoint -> IO (ABCustomItem.ABCustomItem)
getSelectedItem_impl this point = do
    javaCatchReturn $ do
        index <- (ScrollSelectionForm.getSelectedIndexForPoint this point)
        if (index /= (Prelude.negate 1)) then do
            javaReturn =<< (PaintableForm.get this index)
        else do
            javaReturn =<< (ABCustomItem.getNullInstance)


-- throws Exception
getItemIndex :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getItemIndex object_ a1 = jmethod object_ "getItemIndex" (\() -> (getItemIndex_impl (javaCast object_ :: ScrollSelectionForm))) () a1

getItemIndex_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getItemIndex_super object_ a1 = (getItemIndex_impl (javaCast object_ :: ScrollSelectionForm)) a1

getItemIndex_impl :: ScrollSelectionForm -> ABCustomItem.ABCustomItem -> IO (Int)
getItemIndex_impl this item = do
    javaCatchReturn $ do
        nextItem <- newIORef (javaNull)
        size <- (PaintableForm.size this)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset nextItem ((javaCast (jio (PaintableForm.get this index)) :: ABCustomItem.ABCustomItem))
            when ((jget nextItem) == item) $ do
                javaReturn (index)
        pure ((Prelude.negate 1))


getStartIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartIndex object_ = jmethod object_ "getStartIndex" (\() -> (getStartIndex_impl (javaCast object_ :: ScrollSelectionForm))) ()

getStartIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartIndex_super object_ = (getStartIndex_impl (javaCast object_ :: ScrollSelectionForm))

getStartIndex_impl :: ScrollSelectionForm -> IO (Int)
getStartIndex_impl this = do
        pure (0)


-- throws Exception
getSelectedIndexForPoint :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Int)
getSelectedIndexForPoint object_ a1 = jmethod object_ "getSelectedIndexForPoint" (\() -> (getSelectedIndexForPoint_impl (javaCast object_ :: ScrollSelectionForm))) () a1

getSelectedIndexForPoint_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Int)
getSelectedIndexForPoint_super object_ a1 = (getSelectedIndexForPoint_impl (javaCast object_ :: ScrollSelectionForm)) a1

getSelectedIndexForPoint_impl :: ScrollSelectionForm -> GPoint.GPoint -> IO (Int)
getSelectedIndexForPoint_impl this point = do
    javaCatchReturn $ do
        start <- (ScrollSelectionForm.getStartIndex this)
        size <- (PaintableForm.size this)
        dx <- newIORef =<< (ScrollSelectionForm.getDx this)
        dy <- newIORef =<< (ScrollSelectionForm.getDy this)
        formTypeFactory <- (FormTypeFactory.getInstance)
        commonLabels <- (CommonLabels.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).sTART_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer start)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).tOTAL_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer size)
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (ScrollSelectionForm.gET_SELECTED_INDEX))
        item <- newIORef (javaNull)
        width <- newIORef (0)
        height <- newIORef (0)
        diffX <- newIORef (0)
        forM_ [start .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (PaintableForm.get this index)
            jset item (assignedValue)
            assignedValue <- (ABCustomItem.getMinimumWidth ((jget item)))
            jset width (assignedValue)
            assignedValue <- (ABCustomItem.getMinimumHeight ((jget item)))
            jset height (assignedValue)
            assignedValue <- (ItemIndexDx.getDx ((jget (this).formTypeItemIndexDx)) index (jget item) (jget dx) (jget dy))
            jset diffX (assignedValue)
            when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jget diffX) ((jget dy) - (jget (this).halfBorder)) (((jget diffX) + (jget width)) + (jget (this).border)) ((((jget dy) + (jget height)) + (jget (this).halfBorder)) + 1) (jio (GPoint.getX point)) (jio (GPoint.getY point)))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).iTEM_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer (jio (ABCustomItem.getLabel ((jget item)))))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (CommonSeps.getInstance))).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer (jget (commonLabels).iNDEX_LABEL))
                Control.Monad.void (StringMaker.appendint stringBuffer index)
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString stringBuffer)) this (ScrollSelectionForm.gET_SELECTED_INDEX))
                javaReturn (index)
            if ((jget (this).base.formType) == (jget (formTypeFactory).hORIZONTAL_FORM)) then do
                jset dx ((((jget dx) + (jget width)) + (jget (this).border)))
                when ((jget dx) > (jio (Rectangle.getMaxX ((jget (this).base.rectangle))))) $ do
                    throwIO JavaBreak
            else if ((jget (this).base.formType) == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
                jset dy ((((jget dy) + (jget height)) + (jget (this).border)))
                when ((jget dy) > (jio (Rectangle.getMaxY ((jget (this).base.rectangle))))) $ do
                    throwIO JavaBreak
            else if ((jget (this).base.formType) == (jget (formTypeFactory).nULL_FORM_TYPE)) then do
                pure ()
            else do
                javaThrow ((JavaException "Exception" (jget (formTypeFactory).uNK)))
        pure ((Prelude.negate 1))


-- throws Exception
processInputKey :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInputKey object_ a1 = jmethod object_ "processInputKey" (\() -> (processInputKey_impl (javaCast object_ :: ScrollSelectionForm))) () a1

processInputKey_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Int)
processInputKey_super object_ a1 = (processInputKey_impl (javaCast object_ :: ScrollSelectionForm)) a1

processInputKey_impl :: ScrollSelectionForm -> Int -> IO (Int)
processInputKey_impl this gameKeyCode = do
    javaCatchReturn $ do
        formTypeFactory <- (FormTypeFactory.getInstance)
        when ((jio (PaintableForm.size this)) == 0) $ do
            javaReturn ((Prelude.negate 1))
        index <- newIORef =<< (PaintableForm.getSelectedIndex this)
        if (((jget (this).base.formType) == (jget (formTypeFactory).hORIZONTAL_FORM)) || ((jget (this).base.formType) == (jget (formTypeFactory).tEMP_HORIZONTAL_FORM))) then do
            if (gameKeyCode == Canvas.rIGHT) then do
                jset index ((jget index) + 1)
            else when (gameKeyCode == Canvas.lEFT) $ do
                jset index ((jget index) - 1)
        else if ((jget (this).base.formType) == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
            if (gameKeyCode == Canvas.dOWN) then do
                jset index ((jget index) + 1)
            else when (gameKeyCode == Canvas.uP) $ do
                jset index ((jget index) - 1)
        else if ((jget (this).base.formType) == (jget (formTypeFactory).nULL_FORM_TYPE)) then do
            pure ()
        else do
            javaThrow ((JavaException "Exception" (jget (formTypeFactory).uNK)))
        let max = ((jio (PaintableForm.size this)) - 1)
        if ((jget index) < 0) then do
            Control.Monad.void (PaintableForm.setSelectedIndex this 0)
        else if ((jget index) > max) then do
            Control.Monad.void (PaintableForm.setSelectedIndex this max)
        else do
            Control.Monad.void (PaintableForm.setSelectedIndex this (jget index))
        pure ((Prelude.negate 1))


isInForm :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isInForm object_ a1 = jmethod object_ "isInForm" (\() -> (isInForm_impl (javaCast object_ :: ScrollSelectionForm))) () a1

isInForm_super :: (JavaObjectClass this_) => this_ -> GPoint.GPoint -> IO (Bool)
isInForm_super object_ a1 = (isInForm_impl (javaCast object_ :: ScrollSelectionForm)) a1

isInForm_impl :: ScrollSelectionForm -> GPoint.GPoint -> IO (Bool)
isInForm_impl this point = do
    javaCatchReturn $ do
        when (jio (RectangleCollisionUtil.isInside ((jget (this).rectangleCollisionUtil)) (jget (this).base.x) ((jget (this).base.y) - (jget (this).halfBorder)) ((jio (Rectangle.getMaxX ((jget (this).base.rectangle)))) + (jget (this).border)) ((jio (Rectangle.getMaxY ((jget (this).base.rectangle)))) + (jget (this).border)) (jio (GPoint.getX point)) (jio (GPoint.getY point)))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) point))))) (ScrollSelectionForm.iNSIDE_FORM)))))) this (ScrollSelectionForm.iS_IN_FORM))
            javaReturn (True)
        pure (False)


-- throws Exception
paintItem :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem object_ a1 a2 a3 a4 a5 = jmethod object_ "paintItem" (\() -> (paintItem_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4 a5

paintItem_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem_super object_ a1 a2 a3 a4 a5 = (paintItem_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4 a5

paintItem_impl :: ScrollSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintItem_impl this graphics index item x y = do
        Control.Monad.void (ABCustomItem.paintXY item graphics x y)
        width <- (ABCustomItem.getMinimumWidth item)
        height <- (ABCustomItem.getMinimumHeight item)
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jio (ScrollSelectionForm.getButtonBasicColor this))))))
        let adjustedBorder = 3
        Control.Monad.void (Graphics.drawRect graphics ((x - (jget (this).halfBorder)) - adjustedBorder) ((y - (jget (this).halfBorder)) - adjustedBorder) ((width + (jget (this).border)) + (jget (this).adjustedExtraBorder)) ((height + (jget (this).border)) + (jget (this).adjustedExtraBorder)))
        (ItemIndexPaintable.paint ((jget (this).scrollSelectionFormFormTypeItemIndexPaintable)) graphics index item x y)


-- throws Exception
paintUnselectedItem :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem object_ a1 a2 a3 a4 a5 = jmethod object_ "paintUnselectedItem" (\() -> (paintUnselectedItem_impl (javaCast object_ :: ScrollSelectionForm))) () a1 a2 a3 a4 a5

paintUnselectedItem_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem_super object_ a1 a2 a3 a4 a5 = (paintUnselectedItem_impl (javaCast object_ :: ScrollSelectionForm)) a1 a2 a3 a4 a5

paintUnselectedItem_impl :: ScrollSelectionForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintUnselectedItem_impl this graphics index item x y = do
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jio (ScrollSelectionForm.getButtonBasicColor this))))))
        Control.Monad.void (ABCustomItem.paintUnselected item graphics x y)
        (ItemIndexPaintable.paint ((jget (this).scrollSelectionFormFormTypeItemIndexPaintable)) graphics index item x y)


getDiffX :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX object_ a1 = jmethod object_ "getDiffX" (\() -> (getDiffX_impl (javaCast object_ :: ScrollSelectionForm))) () a1

getDiffX_super :: (JavaObjectClass this_) => this_ -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX_super object_ a1 = (getDiffX_impl (javaCast object_ :: ScrollSelectionForm)) a1

getDiffX_impl :: ScrollSelectionForm -> ABCustomItem.ABCustomItem -> IO (Int)
getDiffX_impl this item = do
        pure (0)


getDx :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx object_ = jmethod object_ "getDx" (\() -> (getDx_impl (javaCast object_ :: ScrollSelectionForm))) ()

getDx_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDx_super object_ = (getDx_impl (javaCast object_ :: ScrollSelectionForm))

getDx_impl :: ScrollSelectionForm -> IO (Int)
getDx_impl this = do
        pure ((jget (this).base.x))


getDy :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy object_ = jmethod object_ "getDy" (\() -> (getDy_impl (javaCast object_ :: ScrollSelectionForm))) ()

getDy_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDy_super object_ = (getDy_impl (javaCast object_ :: ScrollSelectionForm))

getDy_impl :: ScrollSelectionForm -> IO (Int)
getDy_impl this = do
        pure ((jget (this).base.y))


setButtonBasicColor :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setButtonBasicColor object_ a1 = jmethod object_ "setButtonBasicColor" (\() -> (setButtonBasicColor_impl (javaCast object_ :: ScrollSelectionForm))) () a1

setButtonBasicColor_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setButtonBasicColor_super object_ a1 = (setButtonBasicColor_impl (javaCast object_ :: ScrollSelectionForm)) a1

setButtonBasicColor_impl :: ScrollSelectionForm -> BasicColor.BasicColor -> IO (())
setButtonBasicColor_impl this buttonBasicColor = do
        jset (this).buttonBasicColor (buttonBasicColor)
        pure ()


getButtonBasicColor :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getButtonBasicColor object_ = jmethod object_ "getButtonBasicColor" (\() -> (getButtonBasicColor_impl (javaCast object_ :: ScrollSelectionForm))) ()

getButtonBasicColor_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getButtonBasicColor_super object_ = (getButtonBasicColor_impl (javaCast object_ :: ScrollSelectionForm))

getButtonBasicColor_impl :: ScrollSelectionForm -> IO (BasicColor.BasicColor)
getButtonBasicColor_impl this = do
        pure ((jget (this).buttonBasicColor))

-- Java nested class ScrollSelectionFormHorizontalPaintable: move it to its own module ScrollSelectionFormHorizontalPaintable
-- Java nested class ScrollSelectionFormVerticalPaintable: move it to its own module ScrollSelectionFormVerticalPaintable
-- Java nested class ScrollSelectionFormTempHorizontalPaintable: move it to its own module ScrollSelectionFormTempHorizontalPaintable
-- Java nested class ScrollSelectionFormHorizontalDx: move it to its own module ScrollSelectionFormHorizontalDx
-- Java nested class ScrollSelectionFormVericalDx: move it to its own module ScrollSelectionFormVericalDx
-- Java nested class ScrollSelectionFormTempHorizontalDx: move it to its own module ScrollSelectionFormTempHorizontalDx

