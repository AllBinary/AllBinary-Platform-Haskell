{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
module PaintableForm (module PaintableForm, module ABCustomForm) where

import ABCustomForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullPaintableForm, getNullPaintableForm_super, getNullPaintableForm_impl, init, init_super, init_impl, getWidth, getWidth_super, getWidth_impl, nULL_PAINTABLE_FORM, canvasStrings, rectangle, x, y, formType)
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
import qualified Any -- same package or java.lang
import qualified FormTypeFactory -- same package or java.lang
import qualified FormType -- same package or java.lang
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified RectangleFactory -- org.allbinary.graphics.RectangleFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified ABCustomForm

data PaintableForm = PaintableForm
    { header_ :: JavaHeader
    , base :: ABCustomForm.ABCustomForm
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , rectangle :: IORef (Rectangle.Rectangle)
    , x :: IORef (Int)
    , y :: IORef (Int)
    , formType :: IORef (FormType.FormType)
    }

instance JavaNull PaintableForm where
    javaNull = javaNullRecord "PaintableForm"

instance JavaEquals PaintableForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaintableForm where
    (==) = jrecordEquals

instance JavaObjectClass PaintableForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_PAINTABLE_FORM #-}
nULL_PAINTABLE_FORM = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO PaintableForm
newRecord_ = do
    base <- ABCustomForm.newRecord_
    let header_ = base.header_
    canvasStrings <- newIORef javaNull
    rectangle <- newIORef javaNull
    x <- newIORef 0
    y <- newIORef 0
    formType <- newIORef javaNull
    let this = PaintableForm header_ base canvasStrings rectangle x y formType
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "getWidth" (\() -> getWidth_impl this)
    pure this

initFields_ :: PaintableForm -> IO ()
initFields_ this = do
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.rectangle (RectangleFactory.sINGLETON)
    jset this.x (0)
    jset this.y (0)
    jset this.formType ((jget ((jio (FormTypeFactory.getInstance))).nULL_FORM_TYPE))
    pure ()


getNullPaintableForm :: IO (PaintableForm)
getNullPaintableForm = do
        when ((jget PaintableForm.nULL_PAINTABLE_FORM) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_4 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (jnewArray (0) javaNull) (jget ((jio (BasicColorFactory.getInstance))).bLACK) (jget ((jio (BasicColorFactory.getInstance))).wHITE))
            jset PaintableForm.nULL_PAINTABLE_FORM (assignedValue)
        pure ((javaCast (jget PaintableForm.nULL_PAINTABLE_FORM) :: PaintableForm))

new_4 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO PaintableForm
new_4 title items backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this title items backgroundBasicColor foregroundBasicColor
    pure this

init_4 :: PaintableForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this title items backgroundBasicColor foregroundBasicColor = do
        ABCustomForm.init_4 this.base (title) (items) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ABCustomForm.setSelectedIndex this 0)
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: PaintableForm))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: PaintableForm)) a1 a2

init_impl :: PaintableForm -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_impl this rectangle formType = do
        jset (this).rectangle (rectangle)
        point <- (Rectangle.getPoint ((jget (this).rectangle)))
        assignedValue <- (GPoint.getX point)
        jset (this).x (assignedValue)
        assignedValue <- (GPoint.getY point)
        jset (this).y (assignedValue)
        jset (this).formType (formType)
        pure ()


getWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth object_ = jmethod object_ "getWidth" (\() -> (getWidth_impl (javaCast object_ :: PaintableForm))) ()

getWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getWidth_super object_ = (getWidth_impl (javaCast object_ :: PaintableForm))

getWidth_impl :: PaintableForm -> IO (Int)
getWidth_impl this = do
        (Rectangle.getWidth ((jget (this).rectangle)))


