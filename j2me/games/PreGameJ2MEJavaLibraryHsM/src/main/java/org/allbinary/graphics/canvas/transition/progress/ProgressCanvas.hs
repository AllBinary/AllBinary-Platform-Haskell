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
-- package org.allbinary.graphics.canvas.transition.progress
module ProgressCanvas (module ProgressCanvas, module RunnableCanvas) where

import RunnableCanvas hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, init, init_super, init_impl, update, update_super, update_impl, initCommands, initCommands_super, initCommands_impl, getMaxValue, getMaxValue_super, getMaxValue_impl, start, start_super, start_impl, startBackground, startBackground_super, startBackground_impl, endActual, endActual_super, endActual_impl, inGame, inGame_super, inGame_impl, end, end_super, end_impl, endFromInitialLazyLoadingComplete, endFromInitialLazyLoadingComplete_super, endFromInitialLazyLoadingComplete_impl, isInGame, isInGame_super, isInGame_impl, endIfPaintedSinceStart, endIfPaintedSinceStart_super, endIfPaintedSinceStart_impl, addEarlyPortion, addEarlyPortion_super, addEarlyPortion_impl, addPortion, addPortion_super, addPortion_impl, addNormalPortion, addNormalPortion_super, addNormalPortion_impl, setValue, setValue_super, setValue_impl, paint, paint_super, paint_impl, paint2, paint2_super, paint2_impl, paintThreed, paintThreed_super, paintThreed_impl, getValue, getValue_super, getValue_impl, setText, setText_super, setText_impl, getText, getText_super, getText_impl, setBackground, setBackground_super, setBackground_impl, isBackground, isBackground_super, isBackground_impl, hasPainted, backgroundBasicColor, gAUGE_PAINTABLE, maxValue, gauge, tEXT, updateMyFontProcessor, myFontProcessor, allbinaryMidlet, value, text, background, paintable, inProgress, iN_GAME_PROCESSOR, inGameProcessor, progressEndListener, backgroundLabel, sTART_BACKGROUND, aDD_PORTION, aDD_EARLY_PORTION)
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
import qualified ProgressEndListener -- same package or java.lang
import qualified LogUtil -- same package or java.lang
import qualified DisplayInfoSingleton -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified NullCommandListener -- javax.microedition.lcdui.NullCommandListener
import qualified Processor -- org.allbinary.canvas.Processor
import qualified RunnableCanvas -- org.allbinary.canvas.RunnableCanvas
import qualified GameCommandsFactory -- org.allbinary.game.commands.GameCommandsFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified ABCustomGaugeItem -- org.allbinary.graphics.form.item.ABCustomGaugeItem
import qualified NullPaintable -- org.allbinary.graphics.paint.NullPaintable
import qualified Paintable -- org.allbinary.graphics.paint.Paintable
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified SmallIntegerSingletonFactory -- org.allbinary.logic.math.SmallIntegerSingletonFactory
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AllBinaryMidlet -- org.allbinary.midlet.AllBinaryMidlet
import qualified PathFindingThreadPool -- org.allbinary.thread.PathFindingThreadPool
import qualified ThreadPool -- org.allbinary.thread.ThreadPool

-- implements PaintableInterface
-- implements UpdateMyFontInterface
data ProgressCanvas = ProgressCanvas
    { header_ :: JavaHeader
    , base :: RunnableCanvas.RunnableCanvas
    , hasPainted :: IORef (Bool)
    , backgroundBasicColor :: IORef (BasicColor.BasicColor)
    , gAUGE_PAINTABLE :: IORef (Paintable.Paintable)
    , maxValue :: IORef (Float)
    , gauge :: IORef (ABCustomGaugeItem.ABCustomGaugeItem)
    , tEXT :: IORef (String)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , allbinaryMidlet :: IORef (AllBinaryMidlet.AllBinaryMidlet)
    , value :: IORef (Float)
    , text :: IORef (String)
    , background :: IORef (Bool)
    , paintable :: IORef (PaintableInterface.PaintableInterface)
    , inProgress :: IORef (Bool)
    , iN_GAME_PROCESSOR :: IORef (Processor.Processor)
    , inGameProcessor :: IORef (Processor.Processor)
    , progressEndListener :: IORef (ProgressEndListener.ProgressEndListener)
    , backgroundLabel :: IORef (String)
    , sTART_BACKGROUND :: IORef (String)
    , aDD_PORTION :: IORef (String)
    , aDD_EARLY_PORTION :: IORef (String)
    }

instance JavaNull ProgressCanvas where
    javaNull = javaNullRecord "ProgressCanvas"

instance JavaEquals ProgressCanvas where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProgressCanvas where
    (==) = jrecordEquals

instance JavaObjectClass ProgressCanvas where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ProgressCanvas
newRecord_ = do
    base <- RunnableCanvas.newRecord_
    let header_ = base.header_
    hasPainted <- newIORef False
    backgroundBasicColor <- newIORef javaNull
    gAUGE_PAINTABLE <- newIORef javaNull
    maxValue <- newIORef 0.0
    gauge <- newIORef javaNull
    tEXT <- newIORef ""
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    allbinaryMidlet <- newIORef javaNull
    value <- newIORef 0.0
    text <- newIORef ""
    background <- newIORef False
    paintable <- newIORef javaNull
    inProgress <- newIORef False
    iN_GAME_PROCESSOR <- newIORef javaNull
    inGameProcessor <- newIORef javaNull
    progressEndListener <- newIORef javaNull
    backgroundLabel <- newIORef ""
    sTART_BACKGROUND <- newIORef ""
    aDD_PORTION <- newIORef ""
    aDD_EARLY_PORTION <- newIORef ""
    let this = ProgressCanvas header_ base hasPainted backgroundBasicColor gAUGE_PAINTABLE maxValue gauge tEXT updateMyFontProcessor myFontProcessor allbinaryMidlet value text background paintable inProgress iN_GAME_PROCESSOR inGameProcessor progressEndListener backgroundLabel sTART_BACKGROUND aDD_PORTION aDD_EARLY_PORTION
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "initCommands" (\() -> initCommands_impl this)
    jregisterMethod header_ "getMaxValue" (\() -> getMaxValue_impl this)
    jregisterMethod header_ "start" (\() -> start_impl this)
    jregisterMethod header_ "startBackground" (\() -> startBackground_impl this)
    jregisterMethod header_ "endActual" (\() -> endActual_impl this)
    jregisterMethod header_ "inGame" (\() -> inGame_impl this)
    jregisterMethod header_ "end" (\() -> end_impl this)
    jregisterMethod header_ "endFromInitialLazyLoadingComplete" (\() -> endFromInitialLazyLoadingComplete_impl this)
    jregisterMethod header_ "isInGame" (\() -> isInGame_impl this)
    jregisterMethod header_ "endIfPaintedSinceStart" (\() -> endIfPaintedSinceStart_impl this)
    jregisterMethod header_ "addEarlyPortion" (\() -> addEarlyPortion_impl this)
    jregisterMethod header_ "addPortion" (\() -> addPortion_impl this)
    jregisterMethod header_ "addNormalPortion" (\() -> addNormalPortion_impl this)
    jregisterMethod header_ "setValue" (\() -> setValue_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paint2" (\() -> paint2_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "setText" (\() -> setText_impl this)
    jregisterMethod header_ "getText" (\() -> getText_impl this)
    jregisterMethod header_ "setBackground" (\() -> setBackground_impl this)
    jregisterMethod header_ "isBackground" (\() -> isBackground_impl this)
    pure this

initFields_ :: ProgressCanvas -> IO ()
initFields_ this = do
    jset this.hasPainted (False)
    jset this.backgroundBasicColor (javaNull)
    jset this.gAUGE_PAINTABLE =<< (fmap (\value_ -> javaCast value_ :: Paintable.Paintable) (ProgressPaintable.new_1 this))
    jset this.maxValue (100.0)
    jset this.gauge (javaNull)
    jset this.tEXT ((jget ((jget (this).base.base.commonStrings)).lOADING))
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.allbinaryMidlet =<< (AllBinaryMidlet.getNullInstance)
    jset this.value (0.0)
    jset this.text ((jget (this).tEXT))
    jset this.background (True)
    jset this.paintable ((javaCast (jget (this).gAUGE_PAINTABLE) :: PaintableInterface.PaintableInterface))
    jset this.inProgress (False)
    jset this.iN_GAME_PROCESSOR =<< (Processor.new_ {- Java anonymous class body: implement it as a record of functions
        jset this.pathFindingThreadPool =<< (PathFindingThreadPool.getInstance)
        -- process
-})
    jset this.inGameProcessor =<< (Processor.getInstance)
    jset this.progressEndListener (ProgressEndListener.instance_)
    jset this.backgroundLabel ("Background AI Game Loading...")
    jset this.sTART_BACKGROUND ("startBackground")
    jset this.aDD_PORTION ("addPortion")
    jset this.aDD_EARLY_PORTION ("addEarlyPortion")
    pure ()

new_3 :: String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ProgressCanvas
new_3 title backgroundBasicColor foregroundBasicColor = do
    this <- newRecord_
    init_3 this title backgroundBasicColor foregroundBasicColor
    pure this

init_3 :: ProgressCanvas -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO ()
init_3 this title backgroundBasicColor foregroundBasicColor = do
        RunnableCanvas.init_3 this.base (NullCommandListener.nULL_COMMAND_LISTENER) (jget ((jio (CanvasStrings.getInstance))).eMPTY_CHILD_NAME_LIST) (False)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).backgroundBasicColor (backgroundBasicColor)
        assignedValue <- (ABCustomGaugeItem.new_5 (jget ((jio (StringUtil.getInstance))).eMPTY_STRING) (Prelude.truncate (jget (this).maxValue)) 0 backgroundBasicColor foregroundBasicColor)
        jset (this).gauge (assignedValue)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: ProgressCanvas))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: ProgressCanvas)) a1

updateMeasurement_impl :: ProgressCanvas -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        Control.Monad.void (ABCustomGaugeItem.setHeight ((jget (this).gauge)) ((jio (Font.getHeight font)) + 2))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


init :: (JavaObjectClass this_) => this_ -> AllBinaryMidlet.AllBinaryMidlet -> IO (())
init object_ a1 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: ProgressCanvas))) () a1

init_super :: (JavaObjectClass this_) => this_ -> AllBinaryMidlet.AllBinaryMidlet -> IO (())
init_super object_ a1 = (init_impl (javaCast object_ :: ProgressCanvas)) a1

init_impl :: ProgressCanvas -> AllBinaryMidlet.AllBinaryMidlet -> IO (())
init_impl this gameMidlet = do
        jset (this).allbinaryMidlet (gameMidlet)
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ProgressCanvas))) () a1

update_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: ProgressCanvas)) a1

update_impl :: ProgressCanvas -> Graphics.Graphics -> IO (())
update_impl this graphics = do
        pure ()


initCommands :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands object_ a1 = jmethod object_ "initCommands" (\() -> (initCommands_impl (javaCast object_ :: ProgressCanvas))) () a1

initCommands_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> IO (())
initCommands_super object_ a1 = (initCommands_impl (javaCast object_ :: ProgressCanvas)) a1

initCommands_impl :: ProgressCanvas -> CommandListener.CommandListener -> IO (())
initCommands_impl this cmdListener = do
        pure ()


getMaxValue :: (JavaObjectClass this_) => this_ -> IO (Float)
getMaxValue object_ = jmethod object_ "getMaxValue" (\() -> (getMaxValue_impl (javaCast object_ :: ProgressCanvas))) ()

getMaxValue_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getMaxValue_super object_ = (getMaxValue_impl (javaCast object_ :: ProgressCanvas))

getMaxValue_impl :: ProgressCanvas -> IO (Float)
getMaxValue_impl this = do
        pure ((jget (this).maxValue))


start :: (JavaObjectClass this_) => this_ -> IO (())
start object_ = jmethod object_ "start" (\() -> (start_impl (javaCast object_ :: ProgressCanvas))) ()

start_super :: (JavaObjectClass this_) => this_ -> IO (())
start_super object_ = (start_impl (javaCast object_ :: ProgressCanvas))

start_impl :: ProgressCanvas -> IO (())
start_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).sTART_METHOD_NAME))
        Control.Monad.void (ProgressCanvas.setBackground this True)
        Control.Monad.void (ABCustomGaugeItem.setHeight ((jget (this).gauge)) 30)
        Control.Monad.void (ABCustomGaugeItem.setLabel ((jget (this).gauge)) (jget ((jget (this).base.base.commonStrings)).pLEASE_WAIT))
        Control.Monad.void (ProgressCanvas.setText this (jget (this).tEXT))
        Control.Monad.void (ProgressCanvas.setValue this 0)
        assignedValue <- (Processor.getInstance)
        jset (this).inGameProcessor (assignedValue)
        jset (this).paintable ((jget (this).gAUGE_PAINTABLE))
        jset (this).inProgress (True)
        pure ()


startBackground :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
startBackground object_ a1 = jmethod object_ "startBackground" (\() -> (startBackground_impl (javaCast object_ :: ProgressCanvas))) () a1

startBackground_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
startBackground_super object_ a1 = (startBackground_impl (javaCast object_ :: ProgressCanvas)) a1

startBackground_impl :: ProgressCanvas -> Bool -> IO (())
startBackground_impl this background = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget (this).sTART_BACKGROUND))
        Control.Monad.void (ProgressCanvas.setBackground this background)
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        Control.Monad.void (ABCustomGaugeItem.setLabel ((jget (this).gauge)) (jget (this).backgroundLabel))
        Control.Monad.void (ProgressCanvas.setText this (jget (this).tEXT))
        Control.Monad.void (ProgressCanvas.setValue this 0)
        assignedValue <- (Processor.getInstance)
        jset (this).inGameProcessor (assignedValue)
        jset (this).paintable ((jget (this).gAUGE_PAINTABLE))
        pure ()


endActual :: (JavaObjectClass this_) => this_ -> IO (())
endActual object_ = jmethod object_ "endActual" (\() -> (endActual_impl (javaCast object_ :: ProgressCanvas))) ()

endActual_super :: (JavaObjectClass this_) => this_ -> IO (())
endActual_super object_ = (endActual_impl (javaCast object_ :: ProgressCanvas))

endActual_impl :: ProgressCanvas -> IO (())
endActual_impl this = do
        Control.Monad.void (AllBinaryMidlet.commandAction ((jget (this).allbinaryMidlet)) (jget ((jio (GameCommandsFactory.getInstance))).sHOW_GAME_CANVAS) (javaCast NullCanvas.nULL_CANVAS))
        jset (this).inProgress (False)
        Control.Monad.void (ProgressCanvas.inGame this)
        pure ()


inGame :: (JavaObjectClass this_) => this_ -> IO (())
inGame object_ = jmethod object_ "inGame" (\() -> (inGame_impl (javaCast object_ :: ProgressCanvas))) ()

inGame_super :: (JavaObjectClass this_) => this_ -> IO (())
inGame_super object_ = (inGame_impl (javaCast object_ :: ProgressCanvas))

inGame_impl :: ProgressCanvas -> IO (())
inGame_impl this = do
        Control.Monad.void (ProgressEndListener.onEndEvent ((jget (this).progressEndListener)))
        jset (this).inGameProcessor ((jget (this).iN_GAME_PROCESSOR))
        pure ()


end :: (JavaObjectClass this_) => this_ -> IO (())
end object_ = jmethod object_ "end" (\() -> (end_impl (javaCast object_ :: ProgressCanvas))) ()

end_super :: (JavaObjectClass this_) => this_ -> IO (())
end_super object_ = (end_impl (javaCast object_ :: ProgressCanvas))

end_impl :: ProgressCanvas -> IO (())
end_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).eND_METHOD_NAME))
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) (jio (ProgressCanvas.getMaxValue this)))
        Control.Monad.void (ProgressCanvas.endActual this)
        assignedValue <- (NullPaintable.getInstance)
        jset (this).paintable (assignedValue)
        pure ()


endFromInitialLazyLoadingComplete :: (JavaObjectClass this_) => this_ -> IO (())
endFromInitialLazyLoadingComplete object_ = jmethod object_ "endFromInitialLazyLoadingComplete" (\() -> (endFromInitialLazyLoadingComplete_impl (javaCast object_ :: ProgressCanvas))) ()

endFromInitialLazyLoadingComplete_super :: (JavaObjectClass this_) => this_ -> IO (())
endFromInitialLazyLoadingComplete_super object_ = (endFromInitialLazyLoadingComplete_impl (javaCast object_ :: ProgressCanvas))

endFromInitialLazyLoadingComplete_impl :: ProgressCanvas -> IO (())
endFromInitialLazyLoadingComplete_impl this = do
        Control.Monad.void (ProgressEndListener.onEndEvent ((jget (this).progressEndListener)))
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) (jio (ProgressCanvas.getMaxValue this)))
        jset (this).inGameProcessor ((jget (this).iN_GAME_PROCESSOR))
        pure ()


isInGame :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInGame object_ = jmethod object_ "isInGame" (\() -> (isInGame_impl (javaCast object_ :: ProgressCanvas))) ()

isInGame_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isInGame_super object_ = (isInGame_impl (javaCast object_ :: ProgressCanvas))

isInGame_impl :: ProgressCanvas -> IO (Bool)
isInGame_impl this = do
    javaCatchReturn $ do
        when ((jget (this).inGameProcessor) == (jget (this).iN_GAME_PROCESSOR)) $ do
            javaReturn (True)
        pure (False)


endIfPaintedSinceStart :: (JavaObjectClass this_) => this_ -> IO (())
endIfPaintedSinceStart object_ = jmethod object_ "endIfPaintedSinceStart" (\() -> (endIfPaintedSinceStart_impl (javaCast object_ :: ProgressCanvas))) ()

endIfPaintedSinceStart_super :: (JavaObjectClass this_) => this_ -> IO (())
endIfPaintedSinceStart_super object_ = (endIfPaintedSinceStart_impl (javaCast object_ :: ProgressCanvas))

endIfPaintedSinceStart_impl :: ProgressCanvas -> IO (())
endIfPaintedSinceStart_impl this = do
        pure ()


addEarlyPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addEarlyPortion object_ a1 a2 a3 = jmethod object_ "addEarlyPortion" (\() -> (addEarlyPortion_impl (javaCast object_ :: ProgressCanvas))) () a1 a2 a3

addEarlyPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addEarlyPortion_super object_ a1 a2 a3 = (addEarlyPortion_impl (javaCast object_ :: ProgressCanvas)) a1 a2 a3

addEarlyPortion_impl :: ProgressCanvas -> Int -> String -> Int -> IO (())
addEarlyPortion_impl this value text index = do
        Control.Monad.void (ProgressCanvas.setText this (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) text))) (javaToString (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) index)))))))))
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) ((jio (ABCustomGaugeItem.getValue ((jget (this).gauge)))) + ((jio (ProgressCanvas.getMaxValue this)) / (Prelude.fromIntegral value))))
        pure ()


addPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion object_ a1 a2 a3 = jmethod object_ "addPortion" (\() -> (addPortion_impl (javaCast object_ :: ProgressCanvas))) () a1 a2 a3

addPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> Int -> IO (())
addPortion_super object_ a1 a2 a3 = (addPortion_impl (javaCast object_ :: ProgressCanvas)) a1 a2 a3

addPortion_impl :: ProgressCanvas -> Int -> String -> Int -> IO (())
addPortion_impl this value text index = do
        Control.Monad.void (ProgressCanvas.setText this (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) text))) (javaToString (jio (SmallIntegerSingletonFactory.getAt ((jio (SmallIntegerSingletonFactory.getInstance))) index)))))))))
        Control.Monad.void (PreLogUtil.put (jget (this).text) this (jget (this).aDD_PORTION))
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) ((jio (ABCustomGaugeItem.getValue ((jget (this).gauge)))) + ((jio (ProgressCanvas.getMaxValue this)) / (Prelude.fromIntegral value))))
        pure ()


addNormalPortion :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion object_ a1 a2 = jmethod object_ "addNormalPortion" (\() -> (addNormalPortion_impl (javaCast object_ :: ProgressCanvas))) () a1 a2

addNormalPortion_super :: (JavaObjectClass this_) => this_ -> Int -> String -> IO (())
addNormalPortion_super object_ a1 a2 = (addNormalPortion_impl (javaCast object_ :: ProgressCanvas)) a1 a2

addNormalPortion_impl :: ProgressCanvas -> Int -> String -> IO (())
addNormalPortion_impl this value text = do
        when ((jget (this).text) /= text) $ do
            Control.Monad.void (PreLogUtil.put text this (jget (this).aDD_PORTION))
        Control.Monad.void (ProgressCanvas.setText this text)
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) ((jio (ABCustomGaugeItem.getValue ((jget (this).gauge)))) + ((jio (ProgressCanvas.getMaxValue this)) / (Prelude.fromIntegral value))))
        pure ()


setValue :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue object_ a1 = jmethod object_ "setValue" (\() -> (setValue_impl (javaCast object_ :: ProgressCanvas))) () a1

setValue_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setValue_super object_ a1 = (setValue_impl (javaCast object_ :: ProgressCanvas)) a1

setValue_impl :: ProgressCanvas -> Int -> IO (())
setValue_impl this value = do
        jset (this).value ((Prelude.fromIntegral value))
        Control.Monad.void (ABCustomGaugeItem.setValue ((jget (this).gauge)) (Prelude.fromIntegral value))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: ProgressCanvas))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: ProgressCanvas)) a1

paint_impl :: ProgressCanvas -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (PaintableInterface.paint ((jget (this).paintable)) graphics)
        pure ()


paint2 :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint2 object_ a1 = jmethod object_ "paint2" (\() -> (paint2_impl (javaCast object_ :: ProgressCanvas))) () a1

paint2_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint2_super object_ a1 = (paint2_impl (javaCast object_ :: ProgressCanvas)) a1

paint2_impl :: ProgressCanvas -> Graphics.Graphics -> IO (())
paint2_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jio (BasicColor.intValue ((jget (this).backgroundBasicColor)))))
        Control.Monad.void (Graphics.fillRect graphics 0 0 (jio (DisplayInfoSingleton.getLastWidth ((jget (this).base.base.displayInfo)))) (jio (DisplayInfoSingleton.getLastHeight ((jget (this).base.base.displayInfo)))))
        Control.Monad.void (ABCustomGaugeItem.paintXY ((jget (this).gauge)) graphics 0 0)
        jset (this).hasPainted (True)
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: ProgressCanvas))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: ProgressCanvas)) a1

paintThreed_impl :: ProgressCanvas -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


getValue :: (JavaObjectClass this_) => this_ -> IO (Float)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: ProgressCanvas))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getValue_super object_ = (getValue_impl (javaCast object_ :: ProgressCanvas))

getValue_impl :: ProgressCanvas -> IO (Float)
getValue_impl this = do
        pure ((jget (this).value))


setText :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText object_ a1 = jmethod object_ "setText" (\() -> (setText_impl (javaCast object_ :: ProgressCanvas))) () a1

setText_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setText_super object_ a1 = (setText_impl (javaCast object_ :: ProgressCanvas)) a1

setText_impl :: ProgressCanvas -> String -> IO (())
setText_impl this text = do
        jset (this).text (text)
        pure ()


getText :: (JavaObjectClass this_) => this_ -> IO (String)
getText object_ = jmethod object_ "getText" (\() -> (getText_impl (javaCast object_ :: ProgressCanvas))) ()

getText_super :: (JavaObjectClass this_) => this_ -> IO (String)
getText_super object_ = (getText_impl (javaCast object_ :: ProgressCanvas))

getText_impl :: ProgressCanvas -> IO (String)
getText_impl this = do
        pure ((jget (this).text))


setBackground :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setBackground object_ a1 = jmethod object_ "setBackground" (\() -> (setBackground_impl (javaCast object_ :: ProgressCanvas))) () a1

setBackground_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setBackground_super object_ a1 = (setBackground_impl (javaCast object_ :: ProgressCanvas)) a1

setBackground_impl :: ProgressCanvas -> Bool -> IO (())
setBackground_impl this background = do
        jset (this).background (background)
        pure ()


isBackground :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBackground object_ = jmethod object_ "isBackground" (\() -> (isBackground_impl (javaCast object_ :: ProgressCanvas))) ()

isBackground_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBackground_super object_ = (isBackground_impl (javaCast object_ :: ProgressCanvas))

isBackground_impl :: ProgressCanvas -> IO (Bool)
isBackground_impl this = do
        pure ((jget (this).background))

-- Java nested class ProgressPaintable: move it to its own module ProgressPaintable

