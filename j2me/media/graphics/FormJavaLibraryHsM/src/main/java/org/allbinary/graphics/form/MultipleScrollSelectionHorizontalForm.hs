{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
module MultipleScrollSelectionHorizontalForm (module MultipleScrollSelectionHorizontalForm, module ScrollSelectionForm) where

import ScrollSelectionForm hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, createForm, createForm_super, createForm_impl, fillRect, fillRect_super, fillRect_impl, init, init_super, init_impl, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, paintHorizontal, paintHorizontal_super, paintHorizontal_impl, paintVertical, paintVertical_super, paintVertical_impl, getStartIndex, getStartIndex_super, getStartIndex_impl, paint, paint_super, paint_impl, rectPaintable, multipleScrollSelectionHorizontalFormTypeItemIndexPaintable, backgroundColor, myFontProcessor, logged, fontHeight)
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
import qualified FormType -- same package or java.lang
import qualified ItemIndexPaintable -- same package or java.lang
import qualified FormTypeFactory -- same package or java.lang
import qualified ItemPaintable -- same package or java.lang
import qualified CanvasStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ScrollSelectionForm

-- implements UpdateMyFontInterface
data MultipleScrollSelectionHorizontalForm = MultipleScrollSelectionHorizontalForm
    { header_ :: JavaHeader
    , base :: ScrollSelectionForm.ScrollSelectionForm
    , rectPaintable :: IORef (Paintable.Paintable)
    , multipleScrollSelectionHorizontalFormTypeItemIndexPaintable :: IORef (ItemIndexPaintable.ItemIndexPaintable)
    , backgroundColor :: IORef (Int)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , logged :: IORef (Bool)
    , fontHeight :: IORef (Int)
    }

instance JavaNull MultipleScrollSelectionHorizontalForm where
    javaNull = javaNullRecord "MultipleScrollSelectionHorizontalForm"

instance JavaEquals MultipleScrollSelectionHorizontalForm where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultipleScrollSelectionHorizontalForm where
    (==) = jrecordEquals

instance JavaObjectClass MultipleScrollSelectionHorizontalForm where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultipleScrollSelectionHorizontalForm
newRecord_ = do
    base <- ScrollSelectionForm.newRecord_
    let header_ = base.header_
    rectPaintable <- newIORef javaNull
    multipleScrollSelectionHorizontalFormTypeItemIndexPaintable <- newIORef javaNull
    backgroundColor <- newIORef 0
    myFontProcessor <- newIORef javaNull
    logged <- newIORef False
    fontHeight <- newIORef 0
    let this = MultipleScrollSelectionHorizontalForm header_ base rectPaintable multipleScrollSelectionHorizontalFormTypeItemIndexPaintable backgroundColor myFontProcessor logged fontHeight
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "fillRect" (\() -> fillRect_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paintHorizontal" (\() -> paintHorizontal_impl this)
    jregisterMethod header_ "paintVertical" (\() -> paintVertical_impl this)
    jregisterMethod header_ "getStartIndex" (\() -> getStartIndex_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: MultipleScrollSelectionHorizontalForm -> IO ()
initFields_ this = do
    jset this.rectPaintable =<< (NullPaintable.getInstance)
    jset this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable =<< (ItemIndexPaintable.getInstance)
    jset this.backgroundColor =<< (BasicColor.intValue ((jget ((jio (BasicColorFactory.getInstance))).tRANSPARENT_GREY)))
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.logged (False)
    jset this.fontHeight (0)
    pure ()


-- throws Exception
createForm :: String -> JavaArray (ABCustomItem.ABCustomItem) -> Rectangle.Rectangle -> FormType.FormType -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (ScrollSelectionForm.ScrollSelectionForm)
createForm title items rectangle formType border backgroundBasicColor foregroundBasicColor = do
        scrollSelectionForm <- (fmap (\value_ -> javaCast value_ :: ScrollSelectionForm.ScrollSelectionForm) (new_6 title items (jio (ItemPaintableFactory.getInstance)) border backgroundBasicColor foregroundBasicColor))
        Control.Monad.void (ScrollSelectionForm.init scrollSelectionForm rectangle formType)
        pure (scrollSelectionForm)

new_6 :: String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO MultipleScrollSelectionHorizontalForm
new_6 title items formPaintableFactory border backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_6 this title items formPaintableFactory border backgroundBasicColor foregroundBasicColor
    pure this

init_6 :: MultipleScrollSelectionHorizontalForm -> String -> JavaArray (ABCustomItem.ABCustomItem) -> ItemPaintableFactory.ItemPaintableFactory -> Int -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_6 this title items formPaintableFactory border backgroundBasicColor foregroundBasicColor = do
        ScrollSelectionForm.init_7 this.base (title) (items) (formPaintableFactory) (border) (3) (backgroundBasicColor) (foregroundBasicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        if ((jio (J2MEUtil.isJ2ME)) || (jio (J2MEUtil.isHTML))) then do
            pure ()
        else do
            -- Java nested class MPaintable: move it to its own module

            assignedValue <- (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (MPaintable.new_))
            jset (this).rectPaintable (assignedValue)
        pure ()


fillRect :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
fillRect object_ a1 = jmethod object_ "fillRect" (\() -> (fillRect_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1

fillRect_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
fillRect_super object_ a1 = (fillRect_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1

fillRect_impl :: MultipleScrollSelectionHorizontalForm -> Graphics.Graphics -> IO (())
fillRect_impl this graphics = do
        Control.Monad.void (Graphics.setColor graphics (jget (this).backgroundColor))
        Control.Monad.void (Graphics.fillRect graphics (jget (this).base.base.x) (jget (this).base.base.y) (jio (Rectangle.getWidth ((jget (this).base.base.rectangle)))) (jio (Rectangle.getHeight ((jget (this).base.base.rectangle)))))
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init object_ a1 a2 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1 a2

init_super :: (JavaObjectClass this_) => this_ -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_super object_ a1 a2 = (init_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1 a2

init_impl :: MultipleScrollSelectionHorizontalForm -> Rectangle.Rectangle -> FormType.FormType -> IO (())
init_impl this rectangle formType = do
        Control.Monad.void (ScrollSelectionForm.init_super this.base rectangle formType)
        formTypeFactory <- (FormTypeFactory.getInstance)
        if (formType == (jget (formTypeFactory).hORIZONTAL_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexPaintable.ItemIndexPaintable) (MultipleScrollSelectionFormHorizontalPaintable.new_1 this))
            jset (this).multipleScrollSelectionHorizontalFormTypeItemIndexPaintable (assignedValue)
        else if (formType == (jget (formTypeFactory).vERTICAL_CENTER_FORM)) then do
            assignedValue <- (fmap (\value_ -> javaCast value_ :: ItemIndexPaintable.ItemIndexPaintable) (MultipleScrollSelectionFormVerticalPaintable.new_1 this))
            jset (this).multipleScrollSelectionHorizontalFormTypeItemIndexPaintable (assignedValue)
        else if (formType == (jget (formTypeFactory).nULL_FORM_TYPE)) then do
            pure ()
        else do
            javaThrow ((JavaException "Exception" (jget (formTypeFactory).uNK)))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1

updateMeasurement_impl :: MultipleScrollSelectionHorizontalForm -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).fontHeight (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


-- throws Exception
paintHorizontal :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintHorizontal object_ a1 a2 a3 a4 a5 = jmethod object_ "paintHorizontal" (\() -> (paintHorizontal_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1 a2 a3 a4 a5

paintHorizontal_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintHorizontal_super object_ a1 a2 a3 a4 a5 = (paintHorizontal_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1 a2 a3 a4 a5

paintHorizontal_impl :: MultipleScrollSelectionHorizontalForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintHorizontal_impl this graphics index item dx dy = do
        dx <- newIORef dx
        let dx2 = ((jio (ScrollSelectionForm.paintItem this graphics index item (jget dx) dy)) + (jget (this).base.border))
        Control.Monad.void (ItemPaintable.paint ((jget (this).base.paintable)) graphics index (jget dx) dy)
        jset dx (dx2)
        pure ((jget dx))


-- throws Exception
paintVertical :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintVertical object_ a1 a2 a3 a4 a5 = jmethod object_ "paintVertical" (\() -> (paintVertical_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1 a2 a3 a4 a5

paintVertical_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintVertical_super object_ a1 a2 a3 a4 a5 = (paintVertical_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1 a2 a3 a4 a5

paintVertical_impl :: MultipleScrollSelectionHorizontalForm -> Graphics.Graphics -> Int -> ABCustomItem.ABCustomItem -> Int -> Int -> IO (Int)
paintVertical_impl this graphics index item dx dy = do
        Control.Monad.void (ScrollSelectionForm.paintItem this graphics index item dx dy)
        Control.Monad.void (ItemPaintable.paint ((jget (this).base.paintable)) graphics index dx dy)
        pure (dx)


getStartIndex :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartIndex object_ = jmethod object_ "getStartIndex" (\() -> (getStartIndex_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) ()

getStartIndex_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getStartIndex_super object_ = (getStartIndex_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))

getStartIndex_impl :: MultipleScrollSelectionHorizontalForm -> IO (Int)
getStartIndex_impl this = do
        (ScrollSelectionForm.getSelectedIndex this)


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: MultipleScrollSelectionHorizontalForm)) a1

paint_impl :: MultipleScrollSelectionHorizontalForm -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.put (jget ((jget (this).base.base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.canvasStrings)).pAINT))
            ) $ do
            Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
            start <- (MultipleScrollSelectionHorizontalForm.getStartIndex this)
            size <- (ScrollSelectionForm.size this)
            dx <- newIORef ((jget (this).base.base.x))
            let dy = (jget (this).base.base.y)
            Control.Monad.void (Paintable.paint ((jget (this).rectPaintable)) graphics)
            Control.Monad.void (Graphics.drawString graphics (jio (ScrollSelectionForm.getTitle this)) (jget (this).base.base.x) ((jget (this).base.base.y) - (jget (this).fontHeight)) 0)
            item <- newIORef (javaNull)
            forM_ [start .. size - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (ScrollSelectionForm.get this index)
                jset item (assignedValue)
                when ((jget dx) >= (jio (Rectangle.getMaxX ((jget (this).base.base.rectangle))))) $ do
                    if (jget (this).logged) then do
                        pure ()
                    else do
                        jset (this).logged (True)
                        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) "painting beyond maxx: "))) (jio (Rectangle.getMaxX ((jget (this).base.base.rectangle))))))))) this (jget ((jget (this).base.base.canvasStrings)).pAINT))
                assignedValue <- (ItemIndexPaintable.paint ((jget (this).multipleScrollSelectionHorizontalFormTypeItemIndexPaintable)) graphics index (jget item) (jget dx) dy)
                jset dx (assignedValue)
        pure ()

-- Java nested class MultipleScrollSelectionFormHorizontalPaintable: move it to its own module MultipleScrollSelectionFormHorizontalPaintable
-- Java nested class MultipleScrollSelectionFormVerticalPaintable: move it to its own module MultipleScrollSelectionFormVerticalPaintable

