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
-- package org.allbinary.game.displayable.canvas
module GameCommandCanvas (module GameCommandCanvas, module MyCanvas) where

import MyCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, onEvent, onEvent_super, onEvent_impl, onDisplayChangeEvent, onDisplayChangeEvent_super, onDisplayChangeEvent_impl, initCommands, initCommands_super, initCommands_impl, initMenu, initMenu_super, initMenu_impl, createForm, createForm_super, createForm_impl, createRectangle, createRectangle_super, createRectangle_impl, open, open_super, open_impl, close, close_super, close_impl, update, update_super, update_impl, getSourceId, getSourceId_super, getSourceId_impl, keyPressed, keyPressed_super, keyPressed_impl, keyReleased, keyReleased_super, keyReleased_impl, keyRepeated, keyRepeated_super, keyRepeated_impl, keyPressedByDevice, keyPressedByDevice_super, keyPressedByDevice_impl, keyReleasedByDevice, keyReleasedByDevice_super, keyReleasedByDevice_impl, keyRepeatedByDevice, keyRepeatedByDevice_super, keyRepeatedByDevice_impl, addGameKeyEvent, addGameKeyEvent_super, addGameKeyEvent_impl, removeGameKeyEvent, removeGameKeyEvent_super, removeGameKeyEvent_impl, paint, paint_super, paint_impl, setMenuInputProcessor, setMenuInputProcessor_super, setMenuInputProcessor_impl, getMenuInputProcessor, getMenuInputProcessor_super, getMenuInputProcessor_impl, repaintProcessor, gameInputStrings, id, foregroundBasicColor, backgroundBasicColor, inputToGameKeyMapping, gameKeyFactory, gameKeyEventFactory, downGameKeyEventHandler, upGameKeyEventHandler, repaintBehavior, updateMyFontProcessor, myFontProcessor, foregroundColor, backgroundColor, menuInputProcessor, menuPaintable, menuForm, isSingleKeyRepeatableProcessing, fontHeight)
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
import qualified NoMenuInputProcessor -- same package or java.lang
import qualified BasicMenuInputProcessor -- same package or java.lang
import qualified ImmediateCommandFormInputProcessor -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified Processor -- org.allbinary.canvas.Processor
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified InputFeatureFactory -- org.allbinary.game.configuration.feature.InputFeatureFactory
import qualified RepaintBehavior -- org.allbinary.game.displayable.RepaintBehavior
import qualified GameInputStrings -- org.allbinary.game.input.GameInputStrings
import qualified GameKey -- org.allbinary.game.input.GameKey
import qualified GameKeyFactory -- org.allbinary.game.input.GameKeyFactory
import qualified PlatformInputMappingFactory -- org.allbinary.game.input.PlatformInputMappingFactory
import qualified DownGameKeyEventHandler -- org.allbinary.game.input.event.DownGameKeyEventHandler
import qualified GameKeyEvent -- org.allbinary.game.input.event.GameKeyEvent
import qualified GameKeyEventFactory -- org.allbinary.game.input.event.GameKeyEventFactory
import qualified GameKeyEventHandler -- org.allbinary.game.input.event.GameKeyEventHandler
import qualified UpGameKeyEventHandler -- org.allbinary.game.input.event.UpGameKeyEventHandler
import qualified InputToGameKeyMapping -- org.allbinary.game.input.mapping.InputToGameKeyMapping
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified Rectangle -- org.allbinary.graphics.Rectangle
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified DisplayChangeEventListener -- org.allbinary.graphics.displayable.event.DisplayChangeEventListener
import qualified ScreenRepaintProcessorFactory -- org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified CommandCurrentSelectionFormFactory -- org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
import qualified FormPaintable -- org.allbinary.graphics.form.FormPaintable
import qualified FormTypeFactory -- org.allbinary.graphics.form.FormTypeFactory
import qualified PaintableForm -- org.allbinary.graphics.form.PaintableForm
import qualified ScrollSelectionForm -- org.allbinary.graphics.form.ScrollSelectionForm
import qualified ScrollSelectionFormNoneFactory -- org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
import qualified CommandTextItemArrayFactory -- org.allbinary.graphics.form.item.CommandTextItemArrayFactory
import qualified ABCustomItem -- org.allbinary.graphics.form.item.ABCustomItem
import qualified AllCommandsVisitor -- org.allbinary.graphics.form.item.validation.AllCommandsVisitor
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified BasicMotionGesturesHandler -- org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified MenuListener

-- implements MenuListener
-- implements DisplayChangeEventListener
-- implements UpdateMyFontInterface
data GameCommandCanvas = GameCommandCanvas
    { header_ :: JavaHeader
    , base :: MyCanvas.MyCanvas
    , repaintProcessor :: IORef (Processor.Processor)
    , gameInputStrings :: IORef (GameInputStrings.GameInputStrings)
    , foregroundBasicColor :: IORef (BasicColor.BasicColor)
    , backgroundBasicColor :: IORef (BasicColor.BasicColor)
    , inputToGameKeyMapping :: IORef (InputToGameKeyMapping.InputToGameKeyMapping)
    , gameKeyFactory :: IORef (GameKeyFactory.GameKeyFactory)
    , gameKeyEventFactory :: IORef (GameKeyEventFactory.GameKeyEventFactory)
    , downGameKeyEventHandler :: IORef (DownGameKeyEventHandler.DownGameKeyEventHandler)
    , upGameKeyEventHandler :: IORef (UpGameKeyEventHandler.UpGameKeyEventHandler)
    , repaintBehavior :: IORef (RepaintBehavior.RepaintBehavior)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , foregroundColor :: IORef (Int)
    , backgroundColor :: IORef (Int)
    , menuInputProcessor :: IORef (BasicMenuInputProcessor.BasicMenuInputProcessor)
    , menuPaintable :: IORef (Paintable.Paintable)
    , menuForm :: IORef (PaintableForm.PaintableForm)
    , isSingleKeyRepeatableProcessing :: IORef (Bool)
    , fontHeight :: IORef (Int)
    }

instance JavaNull GameCommandCanvas where
    javaNull = javaNullRecord "GameCommandCanvas"

instance JavaEquals GameCommandCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameCommandCanvas where
    (==) = jrecordEquals

instance JavaObjectClass GameCommandCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

id = 0

newRecord_ :: IO GameCommandCanvas
newRecord_ = do
    base <- MyCanvas.newRecord_
    let header_ = base.header_
    repaintProcessor <- newIORef javaNull
    gameInputStrings <- newIORef javaNull
    foregroundBasicColor <- newIORef javaNull
    backgroundBasicColor <- newIORef javaNull
    inputToGameKeyMapping <- newIORef javaNull
    gameKeyFactory <- newIORef javaNull
    gameKeyEventFactory <- newIORef javaNull
    downGameKeyEventHandler <- newIORef javaNull
    upGameKeyEventHandler <- newIORef javaNull
    repaintBehavior <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    foregroundColor <- newIORef 0
    backgroundColor <- newIORef 0
    menuInputProcessor <- newIORef javaNull
    menuPaintable <- newIORef javaNull
    menuForm <- newIORef javaNull
    isSingleKeyRepeatableProcessing <- newIORef False
    fontHeight <- newIORef 0
    let this = GameCommandCanvas header_ base repaintProcessor gameInputStrings foregroundBasicColor backgroundBasicColor inputToGameKeyMapping gameKeyFactory gameKeyEventFactory downGameKeyEventHandler upGameKeyEventHandler repaintBehavior updateMyFontProcessor myFontProcessor foregroundColor backgroundColor menuInputProcessor menuPaintable menuForm isSingleKeyRepeatableProcessing fontHeight
    jregisterLevel header_ this
    MenuListener.registerInterface_ header_
    DisplayChangeEventListener.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "initMenu" (\() -> initMenu_impl this)
    jregisterMethod header_ "createForm" (\() -> createForm_impl this)
    jregisterMethod header_ "createRectangle" (\() -> createRectangle_impl this)
    jregisterMethod header_ "open" (\() -> open_impl this)
    jregisterMethod header_ "close" (\() -> close_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getSourceId" (\() -> getSourceId_impl this)
    jregisterMethod header_ "keyPressed" (\() -> keyPressed_impl this)
    jregisterMethod header_ "keyReleased" (\() -> keyReleased_impl this)
    jregisterMethod header_ "keyRepeated" (\() -> keyRepeated_impl this)
    jregisterMethod header_ "keyPressedByDevice" (\() -> keyPressedByDevice_impl this)
    jregisterMethod header_ "keyReleasedByDevice" (\() -> keyReleasedByDevice_impl this)
    jregisterMethod header_ "keyRepeatedByDevice" (\() -> keyRepeatedByDevice_impl this)
    jregisterMethod header_ "addGameKeyEvent" (\() -> addGameKeyEvent_impl this)
    jregisterMethod header_ "removeGameKeyEvent" (\() -> removeGameKeyEvent_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "setMenuInputProcessor" (\() -> setMenuInputProcessor_impl this)
    jregisterMethod header_ "getMenuInputProcessor" (\() -> getMenuInputProcessor_impl this)
    pure this

initFields_ :: GameCommandCanvas -> IO ()
initFields_ this = do
    jset this.repaintProcessor =<< (ScreenRepaintProcessorFactory.create ((jio (ScreenRepaintProcessorFactory.getInstance))) (javaCast this))
    jset this.gameInputStrings =<< (GameInputStrings.getInstance)
    jset this.foregroundBasicColor (javaNull)
    jset this.backgroundBasicColor (javaNull)
    jset this.inputToGameKeyMapping =<< (PlatformInputMappingFactory.getInputMapping ((jio (PlatformInputMappingFactory.getPersistentInputMappingInstance ((jio (PlatformInputMappingFactory.getInstance)))))))
    jset this.gameKeyFactory =<< (GameKeyFactory.getInstance)
    jset this.gameKeyEventFactory =<< (GameKeyEventFactory.getInstance)
    jset this.downGameKeyEventHandler =<< (DownGameKeyEventHandler.getInstance)
    jset this.upGameKeyEventHandler =<< (UpGameKeyEventHandler.getInstance)
    jset this.repaintBehavior (javaNull)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.foregroundColor (0)
    jset this.backgroundColor (0)
    jset this.menuInputProcessor =<< (fmap (\value_ -> javaCast value_ :: BasicMenuInputProcessor.BasicMenuInputProcessor) (NoMenuInputProcessor.getInstance))
    jset this.menuPaintable =<< (NullPaintable.getInstance)
    jset this.menuForm =<< (PaintableForm.getNullPaintableForm)
    jset this.isSingleKeyRepeatableProcessing =<< (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (InputFeatureFactory.getInstance))).sINGLE_KEY_REPEAT_PRESS)))
    jset this.fontHeight (0)
    pure ()

new_4 :: CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO GameCommandCanvas
new_4 cmdListener name backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_4 this cmdListener name backgroundBasicColor foregroundBasicColor
    pure this

init_4 :: GameCommandCanvas -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_4 this cmdListener name backgroundBasicColor foregroundBasicColor = do
        MyCanvas.init_2 this.base (name) (jget ((jio (CanvasStrings.getInstance))).eMPTY_CHILD_NAME_LIST)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (RepaintBehavior.getInstance)
        jset (this).repaintBehavior (assignedValue)
        jset (this).foregroundBasicColor (foregroundBasicColor)
        jset (this).backgroundBasicColor (backgroundBasicColor)
        assignedValue <- (BasicColor.intValue ((jget (this).foregroundBasicColor)))
        jset (this).foregroundColor (assignedValue)
        assignedValue <- (BasicColor.intValue ((jget (this).backgroundBasicColor)))
        jset (this).backgroundColor (assignedValue)
        Control.Monad.void (GameCommandCanvas.initCommands this cmdListener)
        when ((jtoObject cmdListener) /= (jtoObject NullCommandListener.nULL_COMMAND_LISTENER)) $ do
            handle (\(e :: JavaException) -> do
                javaThrow ((JavaException "RuntimeException" ""))
                ) $ do
                Control.Monad.void (GameCommandCanvas.initMenu this)
                Control.Monad.void (Processor.process ((jget (this).repaintProcessor)))
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: GameCommandCanvas))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: GameCommandCanvas)) a1

updateMeasurement_impl :: GameCommandCanvas -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT) e)
            ) $ do
            font <- (Graphics.getFont graphics)
            Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.commonStrings)).sTART)))) (jget ((jget (this).base.canvasStrings)).fD_WIDTH)))) (jio (MyFontProcessor.defaultCharWidth font))))) (jget ((jget (this).base.canvasStrings)).fD_HEIGHT)))) (Prelude.fromInteger (jnumericInteger (jio (Font.getHeight font))))))))) this (jget ((jget (this).base.canvasStrings)).uPDATE_MEASUREMENT))
            assignedValue <- (Font.getHeight font)
            jset (this).fontHeight (assignedValue)
            rectangle <- (GameCommandCanvas.createRectangle this (jio (PaintableForm.size ((jget (this).menuForm)))))
            Control.Monad.void (PaintableForm.init ((jget (this).menuForm)) rectangle (jget ((jio (FormTypeFactory.getInstance))).vERTICAL_CENTER_FORM))
            Control.Monad.void (GameCommandCanvas.update this)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: GameCommandCanvas))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: GameCommandCanvas)) a1

onEvent_impl :: GameCommandCanvas -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: GameCommandCanvas))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: GameCommandCanvas)) a1

onDisplayChangeEvent_impl :: GameCommandCanvas -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).base.commonStrings)).sTART)))) (jio (DisplayInfoSingleton.toString ((jio (DisplayInfoSingleton.getInstance)))))))))) this (jget ((jget (this).base.canvasStrings)).oN_DISPLAY_CHANGE_EVENT))
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: GameCommandCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: GameCommandCanvas)) a1

initCommands_impl :: GameCommandCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        Control.Monad.void (MyCanvas.removeAllCommands this)
        Control.Monad.void (MyCanvas.addCommand this (jget ((jio (GameCommandsFactory.getInstance))).cLOSE_AND_SHOW_GAME_CANVAS))
        Control.Monad.void (MyCanvas.setCommandListener this cmdListener)
        pure ()


-- throws Exception
initMenu :: (JavaObjectClass this_) => this_ -> IO (())
initMenu object_ = jmethod object_ "initMenu" (\() -> (initMenu_impl (javaCast object_ :: GameCommandCanvas))) ()

initMenu_super :: (JavaObjectClass this_) => this_ -> IO (())
initMenu_super object_ = (initMenu_impl (javaCast object_ :: GameCommandCanvas))

initMenu_impl :: GameCommandCanvas -> IO (())
initMenu_impl this = do
        form <- (GameCommandCanvas.createForm this)
        jset (this).menuForm (form)
        when (form /= (jio (ScrollSelectionFormNoneFactory.getInstance))) $ do
            Control.Monad.void (GameCommandCanvas.setMenuInputProcessor this (javaCast (jio (ImmediateCommandFormInputProcessor.new_4 (jio (BasicArrayListD.new_)) (Prelude.negate 1) this form))))
            assignedValue <- (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (FormPaintable.new_1 form))
            jset (this).menuPaintable (assignedValue)
        Control.Monad.void (RepaintBehavior.onChangeRepaint ((jget (this).repaintBehavior)) (javaCast this))
        pure ()


-- throws Exception
createForm :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
createForm object_ = jmethod object_ "createForm" (\() -> (createForm_impl (javaCast object_ :: GameCommandCanvas))) ()

createForm_super :: (JavaObjectClass this_) => this_ -> IO (ScrollSelectionForm.ScrollSelectionForm)
createForm_super object_ = (createForm_impl (javaCast object_ :: GameCommandCanvas))

createForm_impl :: GameCommandCanvas -> IO (ScrollSelectionForm.ScrollSelectionForm)
createForm_impl this = do
        items <- (CommandTextItemArrayFactory.getInstance ((jio (CommandTextItemArrayFactory.new_1 (jio (AllCommandsVisitor.new_))))) (jio (MyCanvas.getCommandStack this)) (jget (this).backgroundBasicColor) (jget (this).foregroundBasicColor))
        rectangle <- (GameCommandCanvas.createRectangle this (jlength items))
        (CommandCurrentSelectionFormFactory.getInstance (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) items rectangle (jget ((jio (FormTypeFactory.getInstance))).vERTICAL_CENTER_FORM) 15 False (jget (this).backgroundBasicColor) (jget (this).foregroundBasicColor))


createRectangle :: (JavaObjectClass this_) => this_ -> Int -> IO (Rectangle.Rectangle)
createRectangle object_ a1 = jmethod object_ "createRectangle" (\() -> (createRectangle_impl (javaCast object_ :: GameCommandCanvas))) () a1

createRectangle_super :: (JavaObjectClass this_) => this_ -> Int -> IO (Rectangle.Rectangle)
createRectangle_super object_ a1 = (createRectangle_impl (javaCast object_ :: GameCommandCanvas)) a1

createRectangle_impl :: GameCommandCanvas -> Int -> IO (Rectangle.Rectangle)
createRectangle_impl this size = do
        let height = (size * (jget (this).fontHeight))
        let startY = (((((jio (DisplayInfoSingleton.getLastHeight ((jget (this).base.displayInfo)))) * 2) `quot` 3)) - height)
        pointFactory <- (PointFactory.getInstance)
        rectangle <- (Rectangle.new_3 (jio (PointFactory.createXY pointFactory 30 startY)) ((jio (DisplayInfoSingleton.getLastWidth ((jget (this).base.displayInfo)))) - 30) startY)
        pure (rectangle)


open :: (JavaObjectClass this_) => this_ -> IO (())
open object_ = jmethod object_ "open" (\() -> (open_impl (javaCast object_ :: GameCommandCanvas))) ()

open_super :: (JavaObjectClass this_) => this_ -> IO (())
open_super object_ = (open_impl (javaCast object_ :: GameCommandCanvas))

open_impl :: GameCommandCanvas -> IO (())
open_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this "open")
        Control.Monad.void (BasicMotionGesturesHandler.addListenerInterface ((jio (BasicMotionGesturesHandler.getInstance))) (jio (GameCommandCanvas.getMenuInputProcessor this)))
        Control.Monad.void (GameKeyEventHandler.addListener ((jio (GameKeyEventHandler.getInstance))) (javaCast (jio (GameCommandCanvas.getMenuInputProcessor this))))
        Control.Monad.void (DisplayChangeEventHandler.addListenerInterface ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        pure ()


-- throws Exception
close :: (JavaObjectClass this_) => this_ -> IO (())
close object_ = jmethod object_ "close" (\() -> (close_impl (javaCast object_ :: GameCommandCanvas))) ()

close_super :: (JavaObjectClass this_) => this_ -> IO (())
close_super object_ = (close_impl (javaCast object_ :: GameCommandCanvas))

close_impl :: GameCommandCanvas -> IO (())
close_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cLOSE))
        Control.Monad.void (BasicMotionGesturesHandler.removeListener ((jio (BasicMotionGesturesHandler.getInstance))) (jio (GameCommandCanvas.getMenuInputProcessor this)))
        Control.Monad.void (GameKeyEventHandler.removeListener ((jio (GameKeyEventHandler.getInstance))) (javaCast (jio (GameCommandCanvas.getMenuInputProcessor this))))
        Control.Monad.void (DisplayChangeEventHandler.removeListener ((jio (DisplayChangeEventHandler.getInstance))) (javaCast this))
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameCommandCanvas))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameCommandCanvas))

update_impl :: GameCommandCanvas -> IO (())
update_impl this = do
        Control.Monad.void (Processor.process ((jget (this).repaintProcessor)))
        pure ()


getSourceId :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId object_ = jmethod object_ "getSourceId" (\() -> (getSourceId_impl (javaCast object_ :: GameCommandCanvas))) ()

getSourceId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getSourceId_super object_ = (getSourceId_impl (javaCast object_ :: GameCommandCanvas))

getSourceId_impl :: GameCommandCanvas -> IO (Int)
getSourceId_impl this = do
        pure (GameCommandCanvas.id)


keyPressed :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed object_ a1 = jmethod object_ "keyPressed" (\() -> (keyPressed_impl (javaCast object_ :: GameCommandCanvas))) () a1

keyPressed_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyPressed_super object_ a1 = (keyPressed_impl (javaCast object_ :: GameCommandCanvas)) a1

keyPressed_impl :: GameCommandCanvas -> Int -> IO (())
keyPressed_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyPressedByDevice this keyCode 0)
        pure ()


keyReleased :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased object_ a1 = jmethod object_ "keyReleased" (\() -> (keyReleased_impl (javaCast object_ :: GameCommandCanvas))) () a1

keyReleased_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyReleased_super object_ a1 = (keyReleased_impl (javaCast object_ :: GameCommandCanvas)) a1

keyReleased_impl :: GameCommandCanvas -> Int -> IO (())
keyReleased_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyReleasedByDevice this keyCode 0)
        pure ()


keyRepeated :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated object_ a1 = jmethod object_ "keyRepeated" (\() -> (keyRepeated_impl (javaCast object_ :: GameCommandCanvas))) () a1

keyRepeated_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
keyRepeated_super object_ a1 = (keyRepeated_impl (javaCast object_ :: GameCommandCanvas)) a1

keyRepeated_impl :: GameCommandCanvas -> Int -> IO (())
keyRepeated_impl this keyCode = do
        Control.Monad.void (GameCommandCanvas.keyRepeatedByDevice this keyCode 0)
        pure ()


keyPressedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice object_ a1 a2 = jmethod object_ "keyPressedByDevice" (\() -> (keyPressedByDevice_impl (javaCast object_ :: GameCommandCanvas))) () a1 a2

keyPressedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyPressedByDevice_super object_ a1 a2 = (keyPressedByDevice_impl (javaCast object_ :: GameCommandCanvas)) a1 a2

keyPressedByDevice_impl :: GameCommandCanvas -> Int -> Int -> IO (())
keyPressedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) keyCode))))) this (jget ((jget (this).gameInputStrings)).kEY_PRESSED))
        Control.Monad.void (GameCommandCanvas.addGameKeyEvent this keyCode 0 False)
        pure ()


keyReleasedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice object_ a1 a2 = jmethod object_ "keyReleasedByDevice" (\() -> (keyReleasedByDevice_impl (javaCast object_ :: GameCommandCanvas))) () a1 a2

keyReleasedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyReleasedByDevice_super object_ a1 a2 = (keyReleasedByDevice_impl (javaCast object_ :: GameCommandCanvas)) a1 a2

keyReleasedByDevice_impl :: GameCommandCanvas -> Int -> Int -> IO (())
keyReleasedByDevice_impl this keyCode deviceId = do
        Control.Monad.void (GameCommandCanvas.removeGameKeyEvent this keyCode deviceId False)
        pure ()


keyRepeatedByDevice :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice object_ a1 a2 = jmethod object_ "keyRepeatedByDevice" (\() -> (keyRepeatedByDevice_impl (javaCast object_ :: GameCommandCanvas))) () a1 a2

keyRepeatedByDevice_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
keyRepeatedByDevice_super object_ a1 a2 = (keyRepeatedByDevice_impl (javaCast object_ :: GameCommandCanvas)) a1 a2

keyRepeatedByDevice_impl :: GameCommandCanvas -> Int -> Int -> IO (())
keyRepeatedByDevice_impl this keyCode deviceId = do
        when (jget (this).isSingleKeyRepeatableProcessing) $ do
            Control.Monad.void (GameCommandCanvas.addGameKeyEvent this keyCode deviceId True)
        pure ()


addGameKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
addGameKeyEvent object_ a1 a2 a3 = jmethod object_ "addGameKeyEvent" (\() -> (addGameKeyEvent_impl (javaCast object_ :: GameCommandCanvas))) () a1 a2 a3

addGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
addGameKeyEvent_super object_ a1 a2 a3 = (addGameKeyEvent_impl (javaCast object_ :: GameCommandCanvas)) a1 a2 a3

addGameKeyEvent_impl :: GameCommandCanvas -> Int -> Int -> Bool -> IO (())
addGameKeyEvent_impl this keyCode deviceId repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) "Key Event Error" this (jget ((jget (this).gameInputStrings)).aDD_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) (javaCast this) keyCode)
            if (gameKey /= (jget ((jget (this).gameKeyFactory)).nONE)) then do
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (javaCast this) (javaCast gameKey))
                Control.Monad.void (DownGameKeyEventHandler.fireEvent ((jget (this).downGameKeyEventHandler)) (javaCast gameKeyEvent))
                Control.Monad.void (DownGameKeyEventHandlerBase.fireEvent ((jio (DownGameKeyEventHandler.getInstanceForDevice ((jget (this).downGameKeyEventHandler)) deviceId))) (javaCast gameKeyEvent))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).gameInputStrings)).aDD_KEY_EVENT))
        pure ()


removeGameKeyEvent :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent object_ a1 a2 a3 = jmethod object_ "removeGameKeyEvent" (\() -> (removeGameKeyEvent_impl (javaCast object_ :: GameCommandCanvas))) () a1 a2 a3

removeGameKeyEvent_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent_super object_ a1 a2 a3 = (removeGameKeyEvent_impl (javaCast object_ :: GameCommandCanvas)) a1 a2 a3

removeGameKeyEvent_impl :: GameCommandCanvas -> Int -> Int -> Bool -> IO (())
removeGameKeyEvent_impl this keyCode deviceId repeated = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.logUtil)) "Key Event Error" this (jget ((jget (this).gameInputStrings)).rEMOVE_KEY_EVENT) e)
            ) $ do
            gameKey <- (InputToGameKeyMapping.getInstanceForCanvas ((jget (this).inputToGameKeyMapping)) (javaCast this) keyCode)
            if (gameKey /= (jget ((jget (this).gameKeyFactory)).nONE)) then do
                gameKeyEvent <- (GameKeyEventFactory.getInstanceForInput ((jget (this).gameKeyEventFactory)) (javaCast this) (javaCast gameKey))
                Control.Monad.void (UpGameKeyEventHandler.fireEvent ((jget (this).upGameKeyEventHandler)) (javaCast gameKeyEvent))
                Control.Monad.void (UpGameKeyEventHandlerBase.fireEvent ((jio (UpGameKeyEventHandler.getInstanceForDevice ((jget (this).upGameKeyEventHandler)) deviceId))) (javaCast gameKeyEvent))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jget (this).gameInputStrings)).nO_KEY)))) keyCode))))) this (jget ((jget (this).gameInputStrings)).rEMOVE_KEY_EVENT))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: GameCommandCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: GameCommandCanvas)) a1

paint_impl :: GameCommandCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Paintable.paint ((jget (this).menuPaintable)) graphics)
        Control.Monad.void (RepaintBehavior.repaint ((jget (this).repaintBehavior)) (javaCast this))
        pure ()


setMenuInputProcessor :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor object_ a1 = jmethod object_ "setMenuInputProcessor" (\() -> (setMenuInputProcessor_impl (javaCast object_ :: GameCommandCanvas))) () a1

setMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_super object_ a1 = (setMenuInputProcessor_impl (javaCast object_ :: GameCommandCanvas)) a1

setMenuInputProcessor_impl :: GameCommandCanvas -> BasicMenuInputProcessor.BasicMenuInputProcessor -> IO (())
setMenuInputProcessor_impl this menuInputProcessor = do
        jset (this).menuInputProcessor (menuInputProcessor)
        pure ()


getMenuInputProcessor :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor object_ = jmethod object_ "getMenuInputProcessor" (\() -> (getMenuInputProcessor_impl (javaCast object_ :: GameCommandCanvas))) ()

getMenuInputProcessor_super :: (JavaObjectClass this_) => this_ -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_super object_ = (getMenuInputProcessor_impl (javaCast object_ :: GameCommandCanvas))

getMenuInputProcessor_impl :: GameCommandCanvas -> IO (BasicMenuInputProcessor.BasicMenuInputProcessor)
getMenuInputProcessor_impl this = do
        pure ((jget (this).menuInputProcessor))


