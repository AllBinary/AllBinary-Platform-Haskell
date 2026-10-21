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
-- package org.allbinary.game.ag.layer.hud.basic
module PlayerGameNotificationHud (module PlayerGameNotificationHud, module GameNotificationHud) where

import GameNotificationHud hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, updateMeasurement, updateMeasurement_super, updateMeasurement_impl, getPoint, getPoint_super, getPoint_impl, add, add_super, add_impl, processTick, processTick_super, processTick_impl, setAndRemove, setAndRemove_super, setAndRemove_impl, setAndRemoveProcess, setAndRemoveProcess_super, setAndRemoveProcess_impl, setNextUnremoveable, setNextUnremoveable_super, setNextUnremoveable_impl, setNextUnremoveableProcess, setNextUnremoveableProcess_super, setNextUnremoveableProcess_impl, clear, clear_super, clear_impl, paint, paint_super, paint_impl, gameTickTimeDelayHelper, eMPTY_STRING, displayInfo, timeDelayHelper, circularIndexUtil, gameNotification, permanentGameNotification, setAndRemoveProcessor, nextUnremoveableProcessor, processor, pERMANENT_GAME_NOTIFICATION, lastString, string, point, width)
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
import qualified BasicArrayList -- same package or java.lang
import qualified MyFontProcessor -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified GameAdStateFactory -- org.allbinary.business.advertisement.GameAdStateFactory
import qualified Processor -- org.allbinary.canvas.Processor
import qualified GameAdState -- org.allbinary.game.GameAdState
import qualified GameNotification -- org.allbinary.game.ag.layer.hud.basic.notification.GameNotification
import qualified GameNotificationHud -- org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud
import qualified GameNotificationEventHandler -- org.allbinary.game.layer.hud.event.GameNotificationEventHandler
import qualified CustomGPoint -- org.allbinary.graphics.CustomGPoint
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

-- implements UpdateMyFontInterface
data PlayerGameNotificationHud = PlayerGameNotificationHud
    { header_ :: JavaHeader
    , base :: GameNotificationHud.GameNotificationHud
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    , eMPTY_STRING :: IORef (String)
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , timeDelayHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , circularIndexUtil :: IORef (CircularIndexUtil.CircularIndexUtil)
    , gameNotification :: IORef (GameNotification.GameNotification)
    , permanentGameNotification :: IORef (GameNotification.GameNotification)
    , setAndRemoveProcessor :: IORef (Processor.Processor)
    , nextUnremoveableProcessor :: IORef (Processor.Processor)
    , processor :: IORef (Processor.Processor)
    , pERMANENT_GAME_NOTIFICATION :: IORef (String)
    , lastString :: IORef (String)
    , string :: IORef (String)
    , point :: IORef (CustomGPoint.CustomGPoint)
    , width :: IORef (Int)
    }

instance JavaNull PlayerGameNotificationHud where
    javaNull = javaNullRecord "PlayerGameNotificationHud"

instance JavaEquals PlayerGameNotificationHud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PlayerGameNotificationHud where
    (==) = jrecordEquals

instance JavaObjectClass PlayerGameNotificationHud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PlayerGameNotificationHud
newRecord_ = do
    base <- GameNotificationHud.newRecord_
    let header_ = base.header_
    gameTickTimeDelayHelper <- newIORef javaNull
    eMPTY_STRING <- newIORef ""
    displayInfo <- newIORef javaNull
    timeDelayHelper <- newIORef javaNull
    circularIndexUtil <- newIORef javaNull
    gameNotification <- newIORef javaNull
    permanentGameNotification <- newIORef javaNull
    setAndRemoveProcessor <- newIORef javaNull
    nextUnremoveableProcessor <- newIORef javaNull
    processor <- newIORef javaNull
    pERMANENT_GAME_NOTIFICATION <- newIORef ""
    lastString <- newIORef ""
    string <- newIORef ""
    point <- newIORef javaNull
    width <- newIORef 0
    let this = PlayerGameNotificationHud header_ base gameTickTimeDelayHelper eMPTY_STRING displayInfo timeDelayHelper circularIndexUtil gameNotification permanentGameNotification setAndRemoveProcessor nextUnremoveableProcessor processor pERMANENT_GAME_NOTIFICATION lastString string point width
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "processTick" (\() -> processTick_impl this)
    jregisterMethod header_ "setAndRemove" (\() -> setAndRemove_impl this)
    jregisterMethod header_ "setAndRemoveProcess" (\() -> setAndRemoveProcess_impl this)
    jregisterMethod header_ "setNextUnremoveable" (\() -> setNextUnremoveable_impl this)
    jregisterMethod header_ "setNextUnremoveableProcess" (\() -> setNextUnremoveableProcess_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    pure this

initFields_ :: PlayerGameNotificationHud -> IO ()
initFields_ this = do
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    jset this.eMPTY_STRING ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.timeDelayHelper =<< (TimeDelayHelper.new_1 0)
    jset this.circularIndexUtil (javaNull)
    jset this.gameNotification =<< (GameNotification.new_)
    jset this.permanentGameNotification =<< (GameNotification.new_)
    jset this.setAndRemoveProcessor =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (SetAndRemoveProcessor.new_1 this))
    jset this.nextUnremoveableProcessor =<< (fmap (\value_ -> javaCast value_ :: Processor.Processor) (NextUnremoveableProcessor.new_1 this))
    jset this.processor =<< (Processor.getInstance)
    jset this.pERMANENT_GAME_NOTIFICATION ("Permanent Game Notification: ")
    jset this.lastString ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
    jset this.string ((jget (this).eMPTY_STRING))
    jset this.point (CustomGPoint.nULL_CUSTOM_POINT)
    jset this.width (0)
    pure ()

new_4 :: Int -> Int -> Int -> BasicColor.BasicColor -> IO PlayerGameNotificationHud
new_4 location direction bufferZone basicColor = do
    this <- newRecord_
    init_4 this location direction bufferZone basicColor
    pure this

init_4 :: PlayerGameNotificationHud -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_4 this location direction bufferZone basicColor = do
        GameNotificationHud.init_4 this.base (location) (direction) (bufferZone) (basicColor)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (CircularIndexUtil.createInstance 0)
        jset (this).circularIndexUtil (assignedValue)
        gameNotificationEventHandler <- (GameNotificationEventHandler.getInstance)
        Control.Monad.void (GameNotificationEventHandler.removeAllListeners gameNotificationEventHandler)
        Control.Monad.void (GameNotificationEventHandler.addListenerInterface gameNotificationEventHandler this)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: PlayerGameNotificationHud))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: PlayerGameNotificationHud)) a1

updateMeasurement_impl :: PlayerGameNotificationHud -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        handle (\(e :: JavaException) -> do
            logUtil <- (LogUtil.getInstance)
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) this (jget (commonStrings).uPDATE) e)
            ) $ do
            Control.Monad.void (GameNotificationHud.updateMeasurement_super this.base graphics)
            font <- (Graphics.getFont graphics)
            assignedValue <- (Font.stringWidth font (jget (this).string))
            jset (this).width (assignedValue)
            Control.Monad.void (Processor.process ((jget (this).processor)))
            assignedValue <- (Processor.getInstance)
            jset (this).processor (assignedValue)
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
getPoint object_ a1 a2 = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: PlayerGameNotificationHud))) () a1 a2

getPoint_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
getPoint_super object_ a1 a2 = (getPoint_impl (javaCast object_ :: PlayerGameNotificationHud)) a1 a2

getPoint_impl :: PlayerGameNotificationHud -> Int -> Int -> IO (GPoint.GPoint)
getPoint_impl this x y = do
        assignedValue <- (CustomGPoint.getInstance3 0 0)
        jset (this).point (assignedValue)
        Control.Monad.void (CustomGPoint.setX ((jget (this).point)) x)
        Control.Monad.void (CustomGPoint.setY ((jget (this).point)) y)
        pure ((javaCast (jget (this).point) :: GPoint.GPoint))


add :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add object_ a1 a2 a3 a4 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PlayerGameNotificationHud))) () a1 a2 a3 a4

add_super :: (JavaObjectClass this_) => this_ -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add_super object_ a1 a2 a3 a4 = (add_impl (javaCast object_ :: PlayerGameNotificationHud)) a1 a2 a3 a4

add_impl :: PlayerGameNotificationHud -> String -> Int -> BasicColor.BasicColor -> Bool -> IO (())
add_impl this string seconds basicColor permanent = do
        if permanent then do
            when ((jget (this).lastString) /= string) $ do
                jset (this).lastString (string)
                Control.Monad.void (LogUtil.putF ((jget (this).base.base.logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).pERMANENT_GAME_NOTIFICATION)))) string))))) this (jget ((jget (this).base.base.commonStrings)).aDD))
            Control.Monad.void (GameNotification.add ((jget (this).permanentGameNotification)) string seconds basicColor)
            Control.Monad.void (CircularIndexUtil.setSize ((jget (this).circularIndexUtil)) (jio (GameNotification.getSize ((jget (this).permanentGameNotification)))))
        else do
            Control.Monad.void (GameNotification.add ((jget (this).gameNotification)) string seconds basicColor)
        pure ()


-- throws Exception
processTick :: (JavaObjectClass this_) => this_ -> IO (())
processTick object_ = jmethod object_ "processTick" (\() -> (processTick_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

processTick_super :: (JavaObjectClass this_) => this_ -> IO (())
processTick_super object_ = (processTick_impl (javaCast object_ :: PlayerGameNotificationHud))

processTick_impl :: PlayerGameNotificationHud -> IO (())
processTick_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).timeDelayHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            gameAdState <- (GameAdStateFactory.getCurrentInstance ((jio (GameAdStateFactory.getInstance))))
            if (jio (GameAdState.isShowingAtLocation gameAdState (jio (GameNotificationHud.getLocation this)))) then do
                jset (this).base.base.offsetY ((Prelude.negate 54))
            else do
                jset (this).base.base.offsetY (0)
            if ((jio (GameNotification.getSize ((jget (this).gameNotification)))) > 0) then do
                Control.Monad.void (PlayerGameNotificationHud.setAndRemove this)
            else if ((jio (GameNotification.getSize ((jget (this).permanentGameNotification)))) > 0) then do
                Control.Monad.void (PlayerGameNotificationHud.setNextUnremoveable this)
            else do
                jset (this).string ((jget (this).eMPTY_STRING))
        pure ()


-- throws Exception
setAndRemove :: (JavaObjectClass this_) => this_ -> IO (())
setAndRemove object_ = jmethod object_ "setAndRemove" (\() -> (setAndRemove_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

setAndRemove_super :: (JavaObjectClass this_) => this_ -> IO (())
setAndRemove_super object_ = (setAndRemove_impl (javaCast object_ :: PlayerGameNotificationHud))

setAndRemove_impl :: PlayerGameNotificationHud -> IO (())
setAndRemove_impl this = do
        jset (this).string ((javaCast (jio (BasicArrayList.removeAt ((jget ((jget (this).gameNotification)).stringList)) 0)) :: String))
        jset (this).processor ((jget (this).setAndRemoveProcessor))
        pure ()


-- throws Exception
setAndRemoveProcess :: (JavaObjectClass this_) => this_ -> IO (())
setAndRemoveProcess object_ = jmethod object_ "setAndRemoveProcess" (\() -> (setAndRemoveProcess_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

setAndRemoveProcess_super :: (JavaObjectClass this_) => this_ -> IO (())
setAndRemoveProcess_super object_ = (setAndRemoveProcess_impl (javaCast object_ :: PlayerGameNotificationHud))

setAndRemoveProcess_impl :: PlayerGameNotificationHud -> IO (())
setAndRemoveProcess_impl this = do
        Control.Monad.void (GameNotificationHud.setX this ((((jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfo)))) - (jget (this).width))) `Data.Bits.shiftR` 1))
        Control.Monad.void (CustomGPoint.setX ((jget (this).point)) (jio (GameNotificationHud.getX this)))
        Control.Monad.void (CustomGPoint.setY ((jget (this).point)) (jio (GameNotificationHud.getY this)))
        let time = (javaCast (jio (BasicArrayList.removeAt ((jget ((jget (this).gameNotification)).timeList)) 0)) :: Int)
        iTime <- newIORef ((time * 1000))
        when ((jget iTime) == 0) $ do
            jset iTime (500)
        jset ((jget (this).timeDelayHelper)).delay ((jget iTime))
        Control.Monad.void (GameNotificationHud.setBasicColorP this (javaCast (jio (BasicArrayList.removeAt ((jget ((jget (this).gameNotification)).colorList)) 0)) :: BasicColor.BasicColor))
        pure ()


-- throws Exception
setNextUnremoveable :: (JavaObjectClass this_) => this_ -> IO (())
setNextUnremoveable object_ = jmethod object_ "setNextUnremoveable" (\() -> (setNextUnremoveable_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

setNextUnremoveable_super :: (JavaObjectClass this_) => this_ -> IO (())
setNextUnremoveable_super object_ = (setNextUnremoveable_impl (javaCast object_ :: PlayerGameNotificationHud))

setNextUnremoveable_impl :: PlayerGameNotificationHud -> IO (())
setNextUnremoveable_impl this = do
        index <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        jset (this).string ((javaCast (jindex ((jget ((jget ((jget (this).permanentGameNotification)).stringList)).objectArray)) (index)) :: String))
        jset (this).processor ((jget (this).nextUnremoveableProcessor))
        pure ()


-- throws Exception
setNextUnremoveableProcess :: (JavaObjectClass this_) => this_ -> IO (())
setNextUnremoveableProcess object_ = jmethod object_ "setNextUnremoveableProcess" (\() -> (setNextUnremoveableProcess_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

setNextUnremoveableProcess_super :: (JavaObjectClass this_) => this_ -> IO (())
setNextUnremoveableProcess_super object_ = (setNextUnremoveableProcess_impl (javaCast object_ :: PlayerGameNotificationHud))

setNextUnremoveableProcess_impl :: PlayerGameNotificationHud -> IO (())
setNextUnremoveableProcess_impl this = do
        index <- (CircularIndexUtil.getIndex ((jget (this).circularIndexUtil)))
        Control.Monad.void (GameNotificationHud.setX this ((((jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfo)))) - (jget (this).width))) `Data.Bits.shiftR` 1))
        Control.Monad.void (CustomGPoint.setX ((jget (this).point)) (jio (GameNotificationHud.getX this)))
        Control.Monad.void (CustomGPoint.setY ((jget (this).point)) (jio (GameNotificationHud.getY this)))
        let time = (javaCast (jindex ((jget ((jget ((jget (this).permanentGameNotification)).timeList)).objectArray)) (index)) :: Int)
        jset ((jget (this).timeDelayHelper)).delay ((time * 1000))
        Control.Monad.void (GameNotificationHud.setBasicColorP this (javaCast (jindex ((jget ((jget ((jget (this).permanentGameNotification)).colorList)).objectArray)) (index)) :: BasicColor.BasicColor))
        Control.Monad.void (CircularIndexUtil.next ((jget (this).circularIndexUtil)))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: PlayerGameNotificationHud))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: PlayerGameNotificationHud))

clear_impl :: PlayerGameNotificationHud -> IO (())
clear_impl this = do
        Control.Monad.void (GameNotification.clear ((jget (this).gameNotification)))
        Control.Monad.void (GameNotification.clear ((jget (this).permanentGameNotification)))
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: PlayerGameNotificationHud))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: PlayerGameNotificationHud)) a1

paint_impl :: PlayerGameNotificationHud -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).base.base.myFontProcessor)) graphics)
        Control.Monad.void (GameNotificationHud.paintString_super this.base graphics (jget (this).string))
        pure ()

-- Java nested class SetAndRemoveProcessor: move it to its own module SetAndRemoveProcessor
-- Java nested class NextUnremoveableProcessor: move it to its own module NextUnremoveableProcessor

