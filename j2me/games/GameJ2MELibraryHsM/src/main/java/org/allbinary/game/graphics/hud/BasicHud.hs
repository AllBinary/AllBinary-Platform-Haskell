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
-- package org.allbinary.game.graphics.hud
module BasicHud where

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
import qualified HudGraphicsPosition -- same package or java.lang
import qualified BasicHudFactory -- same package or java.lang
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Anchor -- org.allbinary.graphics.Anchor
import qualified GPoint -- org.allbinary.graphics.GPoint
import qualified PointFactory -- org.allbinary.graphics.PointFactory
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified BasicColorSetUtil -- org.allbinary.graphics.color.BasicColorSetUtil
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonStrings -- org.allbinary.string.CommonStrings

-- implements UpdateMyFontInterface
data BasicHud = BasicHud
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , basicSetColorUtil :: IORef (BasicColorSetUtil.BasicColorSetUtil)
    , displayInfo :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , updateMyFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , location :: IORef (Int)
    , direction :: IORef (Int)
    , bufferZone :: IORef (Int)
    , bufferZoneY :: IORef (Int)
    , hudGraphicsPosition :: IORef (HudGraphicsPosition.HudGraphicsPosition)
    , x :: IORef (Int)
    , y :: IORef (Int)
    , basicColor :: IORef (BasicColor.BasicColor)
    , color :: IORef (Int)
    , updateMaxWidth :: IORef (Int)
    , updateMaxHeight :: IORef (Int)
    , offsetY :: IORef (Int)
    }

instance JavaNull BasicHud where
    javaNull = javaNullRecord "BasicHud"

instance JavaEquals BasicHud where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicHud where
    (==) = jrecordEquals

instance JavaObjectClass BasicHud where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicHud
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    canvasStrings <- newIORef javaNull
    basicSetColorUtil <- newIORef javaNull
    displayInfo <- newIORef javaNull
    updateMyFontProcessor <- newIORef javaNull
    myFontProcessor <- newIORef javaNull
    location <- newIORef 0
    direction <- newIORef 0
    bufferZone <- newIORef 0
    bufferZoneY <- newIORef 0
    hudGraphicsPosition <- newIORef javaNull
    x <- newIORef 0
    y <- newIORef 0
    basicColor <- newIORef javaNull
    color <- newIORef 0
    updateMaxWidth <- newIORef 0
    updateMaxHeight <- newIORef 0
    offsetY <- newIORef 0
    let this = BasicHud header_ logUtil commonStrings canvasStrings basicSetColorUtil displayInfo updateMyFontProcessor myFontProcessor location direction bufferZone bufferZoneY hudGraphicsPosition x y basicColor color updateMaxWidth updateMaxHeight offsetY
    jregisterLevel header_ this
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "getLocation" (\() -> getLocation_impl this)
    jregisterMethod header_ "getDirection" (\() -> getDirection_impl this)
    jregisterMethod header_ "getHudGraphicsPositionWH" (\() -> getHudGraphicsPositionWH_impl this)
    jregisterMethod header_ "onEvent" (\() -> onEvent_impl this)
    jregisterMethod header_ "onDisplayChangeEvent" (\() -> onDisplayChangeEvent_impl this)
    jregisterMethod header_ "getPoint" (\() -> getPoint_impl this)
    jregisterMethod header_ "getBufferZone" (\() -> getBufferZone_impl this)
    jregisterMethod header_ "setBufferZone" (\() -> setBufferZone_impl this)
    jregisterMethod header_ "setLocation" (\() -> setLocation_impl this)
    jregisterMethod header_ "setDirection" (\() -> setDirection_impl this)
    jregisterMethod header_ "getHudGraphicsPosition" (\() -> getHudGraphicsPosition_impl this)
    jregisterMethod header_ "getColor" (\() -> getColor_impl this)
    jregisterMethod header_ "getX" (\() -> getX_impl this)
    jregisterMethod header_ "setX" (\() -> setX_impl this)
    jregisterMethod header_ "setBasicColorP" (\() -> setBasicColorP_impl this)
    jregisterMethod header_ "getBasicColorP" (\() -> getBasicColorP_impl this)
    jregisterMethod header_ "setY" (\() -> setY_impl this)
    jregisterMethod header_ "getY" (\() -> getY_impl this)
    jregisterMethod header_ "paintSSO" (\() -> paintSSO_impl this)
    jregisterMethod header_ "paintSSOO" (\() -> paintSSOO_impl this)
    jregisterMethod header_ "paintDXY" (\() -> paintDXY_impl this)
    jregisterMethod header_ "paintDX" (\() -> paintDX_impl this)
    jregisterMethod header_ "paintOffsetAndLength" (\() -> paintOffsetAndLength_impl this)
    jregisterMethod header_ "paintString" (\() -> paintString_impl this)
    pure this

initFields_ :: BasicHud -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.basicSetColorUtil =<< (BasicColorSetUtil.getInstance)
    jset this.displayInfo =<< (DisplayInfoSingleton.getInstance)
    jset this.updateMyFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.myFontProcessor ((jget (this).updateMyFontProcessor))
    jset this.location (0)
    jset this.direction (0)
    jset this.bufferZone (0)
    jset this.bufferZoneY (0)
    jset this.hudGraphicsPosition (HudGraphicsPosition.nULL_HUD_GRAPHICS_POSITION)
    jset this.x (0)
    jset this.y (0)
    jset this.basicColor ((jget ((jio (BasicColorFactory.getInstance))).bLACK))
    jset this.color (0)
    jset this.updateMaxWidth (0)
    jset this.updateMaxHeight (0)
    jset this.offsetY (0)
    pure ()

new_4 :: Int -> Int -> Int -> BasicColor.BasicColor -> IO BasicHud
new_4 location direction bufferZone basicColor = do
    this <- newRecord_
    init_4 this location direction bufferZone basicColor
    pure this

init_4 :: BasicHud -> Int -> Int -> Int -> BasicColor.BasicColor -> IO ()
init_4 this location direction bufferZone basicColor = do
        initFields_ this
        Control.Monad.void (BasicHud.setLocation this location)
        Control.Monad.void (BasicHud.setDirection this direction)
        Control.Monad.void (BasicHud.setBufferZone this bufferZone)
        Control.Monad.void (BasicHud.onDisplayChangeEvent this (jget ((jio (DisplayInfoSingleton.getInstance))).displayChangeEvent))
        Control.Monad.void (BasicHud.setBasicColorP this basicColor)
        assignedValue <- (BasicColor.intValue basicColor)
        jset (this).color (assignedValue)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: BasicHud))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: BasicHud)) a1

updateMeasurement_impl :: BasicHud -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget ((jget (this).canvasStrings)).oN_DISPLAY_CHANGE_EVENT) e)
            ) $ do
            assignedValue <- (BasicHud.getHudGraphicsPositionWH this (jio (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfo)))) (jio (DisplayInfoSingleton.getLastHeight ((jget (this).displayInfo)))) (jget (this).updateMaxWidth) (jget (this).updateMaxHeight))
            jset (this).hudGraphicsPosition (assignedValue)
            assignedValue <- (GPoint.getX ((jio (HudGraphicsPosition.getPoint ((jget (this).hudGraphicsPosition))))))
            jset (this).x (assignedValue)
            Control.Monad.void (BasicHud.setY this (jio (GPoint.getY ((jio (HudGraphicsPosition.getPoint ((jget (this).hudGraphicsPosition))))))))
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


getLocation :: (JavaObjectClass this_) => this_ -> IO (Int)
getLocation object_ = jmethod object_ "getLocation" (\() -> (getLocation_impl (javaCast object_ :: BasicHud))) ()

getLocation_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLocation_super object_ = (getLocation_impl (javaCast object_ :: BasicHud))

getLocation_impl :: BasicHud -> IO (Int)
getLocation_impl this = do
        pure ((jget (this).location))


getDirection :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection object_ = jmethod object_ "getDirection" (\() -> (getDirection_impl (javaCast object_ :: BasicHud))) ()

getDirection_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getDirection_super object_ = (getDirection_impl (javaCast object_ :: BasicHud))

getDirection_impl :: BasicHud -> IO (Int)
getDirection_impl this = do
        pure ((jget (this).direction))


-- throws Exception
getHudGraphicsPositionWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPositionWH object_ a1 a2 a3 a4 = jmethod object_ "getHudGraphicsPositionWH" (\() -> (getHudGraphicsPositionWH_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4

getHudGraphicsPositionWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> Int -> Int -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPositionWH_super object_ a1 a2 a3 a4 = (getHudGraphicsPositionWH_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4

getHudGraphicsPositionWH_impl :: BasicHud -> Int -> Int -> Int -> Int -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPositionWH_impl this width height maxWidth maxHeight = do
        x <- newIORef (0)
        y <- newIORef (0)
        anchor <- newIORef (0)
        basicHudFactory <- (BasicHudFactory.getInstance)
        if ((jget (basicHudFactory).bOTTOMLEFT) == (jio (BasicHud.getLocation this))) then do
            jset x (((jget (this).bufferZone) + 2))
            jset y (((height - maxHeight) - (jget (this).bufferZone)))
            jset anchor ((Graphics.bOTTOM Data.Bits..&. Graphics.lEFT))
        else if ((jget (basicHudFactory).bOTTOMRIGHT) == (jio (BasicHud.getLocation this))) then do
            jset x ((width - maxWidth))
            jset y (((height - maxHeight) - (jget (this).bufferZone)))
            jset anchor ((Graphics.bOTTOM Data.Bits..&. Graphics.rIGHT))
        else if ((jget (basicHudFactory).tOPLEFT) == (jio (BasicHud.getLocation this))) then do
            jset x (((jget (this).bufferZone) + 2))
            jset y ((jget (this).bufferZoneY))
            jset anchor ((jget Anchor.tOP_LEFT))
        else if ((jget (basicHudFactory).tOPRIGHT) == (jio (BasicHud.getLocation this))) then do
            jset x ((width - maxWidth))
            jset y ((jget (this).bufferZoneY))
            jset anchor ((Graphics.tOP Data.Bits..&. Graphics.rIGHT))
        else if ((jget (basicHudFactory).tOPCENTER) == (jio (BasicHud.getLocation this))) then do
            jset x (((((width - maxWidth)) `quot` 2)))
            jset y ((jget (this).bufferZoneY))
            jset anchor ((Graphics.tOP Data.Bits..&. Graphics.hCENTER))
        else if ((jget (basicHudFactory).bOTTOMCENTER) == (jio (BasicHud.getLocation this))) then do
            jset x (((((width - maxWidth)) `quot` 2)))
            jset y (((height - maxHeight) - (jget (this).bufferZone)))
            jset anchor ((Graphics.bOTTOM Data.Bits..&. Graphics.hCENTER))
        else when ((jget (basicHudFactory).aBSOLUTE) == (jio (BasicHud.getLocation this))) $ do
            jset x (maxHeight)
            jset y (maxWidth)
            jset anchor (0)
        (HudGraphicsPosition.new_2 (jio (BasicHud.getPoint this (jget x) (jget y))) (jget anchor))


onEvent :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent object_ a1 = jmethod object_ "onEvent" (\() -> (onEvent_impl (javaCast object_ :: BasicHud))) () a1

onEvent_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_super object_ a1 = (onEvent_impl (javaCast object_ :: BasicHud)) a1

onEvent_impl :: BasicHud -> AllBinaryEventObject.AllBinaryEventObject -> IO (())
onEvent_impl this eventObject = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


onDisplayChangeEvent :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent object_ a1 = jmethod object_ "onDisplayChangeEvent" (\() -> (onDisplayChangeEvent_impl (javaCast object_ :: BasicHud))) () a1

onDisplayChangeEvent_super :: (JavaObjectClass this_) => this_ -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_super object_ a1 = (onDisplayChangeEvent_impl (javaCast object_ :: BasicHud)) a1

onDisplayChangeEvent_impl :: BasicHud -> DisplayChangeEvent.DisplayChangeEvent -> IO (())
onDisplayChangeEvent_impl this displayChangeEvent = do
        jset (this).myFontProcessor ((jget (this).updateMyFontProcessor))
        pure ()


getPoint :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
getPoint object_ a1 a2 = jmethod object_ "getPoint" (\() -> (getPoint_impl (javaCast object_ :: BasicHud))) () a1 a2

getPoint_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (GPoint.GPoint)
getPoint_super object_ a1 a2 = (getPoint_impl (javaCast object_ :: BasicHud)) a1 a2

getPoint_impl :: BasicHud -> Int -> Int -> IO (GPoint.GPoint)
getPoint_impl this x y = do
        (PointFactory.createXY ((jio (PointFactory.getInstance))) x y)


getBufferZone :: (JavaObjectClass this_) => this_ -> IO (Int)
getBufferZone object_ = jmethod object_ "getBufferZone" (\() -> (getBufferZone_impl (javaCast object_ :: BasicHud))) ()

getBufferZone_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getBufferZone_super object_ = (getBufferZone_impl (javaCast object_ :: BasicHud))

getBufferZone_impl :: BasicHud -> IO (Int)
getBufferZone_impl this = do
        pure ((jget (this).bufferZone))


setBufferZone :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setBufferZone object_ a1 = jmethod object_ "setBufferZone" (\() -> (setBufferZone_impl (javaCast object_ :: BasicHud))) () a1

setBufferZone_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setBufferZone_super object_ a1 = (setBufferZone_impl (javaCast object_ :: BasicHud)) a1

setBufferZone_impl :: BasicHud -> Int -> IO (())
setBufferZone_impl this bufferZone = do
        jset (this).bufferZone (bufferZone)
        if (jio (J2MEUtil.isHTML)) then do
            jset (this).bufferZoneY ((jget (this).bufferZone))
        else do
            jset (this).bufferZoneY (((jget (this).bufferZone) + 5))
        pure ()


setLocation :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLocation object_ a1 = jmethod object_ "setLocation" (\() -> (setLocation_impl (javaCast object_ :: BasicHud))) () a1

setLocation_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setLocation_super object_ a1 = (setLocation_impl (javaCast object_ :: BasicHud)) a1

setLocation_impl :: BasicHud -> Int -> IO (())
setLocation_impl this location = do
        jset (this).location (location)
        pure ()


setDirection :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDirection object_ a1 = jmethod object_ "setDirection" (\() -> (setDirection_impl (javaCast object_ :: BasicHud))) () a1

setDirection_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setDirection_super object_ a1 = (setDirection_impl (javaCast object_ :: BasicHud)) a1

setDirection_impl :: BasicHud -> Int -> IO (())
setDirection_impl this direction = do
        jset (this).direction (direction)
        pure ()


getHudGraphicsPosition :: (JavaObjectClass this_) => this_ -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPosition object_ = jmethod object_ "getHudGraphicsPosition" (\() -> (getHudGraphicsPosition_impl (javaCast object_ :: BasicHud))) ()

getHudGraphicsPosition_super :: (JavaObjectClass this_) => this_ -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPosition_super object_ = (getHudGraphicsPosition_impl (javaCast object_ :: BasicHud))

getHudGraphicsPosition_impl :: BasicHud -> IO (HudGraphicsPosition.HudGraphicsPosition)
getHudGraphicsPosition_impl this = do
        pure ((jget (this).hudGraphicsPosition))


getColor :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor object_ = jmethod object_ "getColor" (\() -> (getColor_impl (javaCast object_ :: BasicHud))) ()

getColor_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getColor_super object_ = (getColor_impl (javaCast object_ :: BasicHud))

getColor_impl :: BasicHud -> IO (Int)
getColor_impl this = do
        pure ((jget (this).color))


getX :: (JavaObjectClass this_) => this_ -> IO (Int)
getX object_ = jmethod object_ "getX" (\() -> (getX_impl (javaCast object_ :: BasicHud))) ()

getX_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getX_super object_ = (getX_impl (javaCast object_ :: BasicHud))

getX_impl :: BasicHud -> IO (Int)
getX_impl this = do
        pure ((jget (this).x))


setX :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX object_ a1 = jmethod object_ "setX" (\() -> (setX_impl (javaCast object_ :: BasicHud))) () a1

setX_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setX_super object_ a1 = (setX_impl (javaCast object_ :: BasicHud)) a1

setX_impl :: BasicHud -> Int -> IO (())
setX_impl this x = do
        jset (this).x (x)
        pure ()


setBasicColorP :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP object_ a1 = jmethod object_ "setBasicColorP" (\() -> (setBasicColorP_impl (javaCast object_ :: BasicHud))) () a1

setBasicColorP_super :: (JavaObjectClass this_) => this_ -> BasicColor.BasicColor -> IO (())
setBasicColorP_super object_ a1 = (setBasicColorP_impl (javaCast object_ :: BasicHud)) a1

setBasicColorP_impl :: BasicHud -> BasicColor.BasicColor -> IO (())
setBasicColorP_impl this basicColor = do
        jset (this).basicColor (basicColor)
        pure ()


getBasicColorP :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP object_ = jmethod object_ "getBasicColorP" (\() -> (getBasicColorP_impl (javaCast object_ :: BasicHud))) ()

getBasicColorP_super :: (JavaObjectClass this_) => this_ -> IO (BasicColor.BasicColor)
getBasicColorP_super object_ = (getBasicColorP_impl (javaCast object_ :: BasicHud))

getBasicColorP_impl :: BasicHud -> IO (BasicColor.BasicColor)
getBasicColorP_impl this = do
        pure ((jget (this).basicColor))


setY :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY object_ a1 = jmethod object_ "setY" (\() -> (setY_impl (javaCast object_ :: BasicHud))) () a1

setY_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setY_super object_ a1 = (setY_impl (javaCast object_ :: BasicHud)) a1

setY_impl :: BasicHud -> Int -> IO (())
setY_impl this y = do
        jset (this).y (y)
        pure ()


getY :: (JavaObjectClass this_) => this_ -> IO (Int)
getY object_ = jmethod object_ "getY" (\() -> (getY_impl (javaCast object_ :: BasicHud))) ()

getY_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getY_super object_ = (getY_impl (javaCast object_ :: BasicHud))

getY_impl :: BasicHud -> IO (Int)
getY_impl this = do
        pure ((jget (this).y))


paintSSO :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> String -> Int -> IO (())
paintSSO object_ a1 a2 a3 a4 = jmethod object_ "paintSSO" (\() -> (paintSSO_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4

paintSSO_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> String -> Int -> IO (())
paintSSO_super object_ a1 a2 a3 a4 = (paintSSO_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4

paintSSO_impl :: BasicHud -> Graphics.Graphics -> String -> String -> Int -> IO (())
paintSSO_impl this graphics string string2 offset = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        Control.Monad.void (Graphics.drawString graphics string (jget (this).x) (jio (BasicHud.getY this)) (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        Control.Monad.void (Graphics.drawString graphics string2 ((jget (this).x) + offset) (jio (BasicHud.getY this)) (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


paintSSOO :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> String -> Int -> Int -> IO (())
paintSSOO object_ a1 a2 a3 a4 a5 = jmethod object_ "paintSSOO" (\() -> (paintSSOO_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4 a5

paintSSOO_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> String -> Int -> Int -> IO (())
paintSSOO_super object_ a1 a2 a3 a4 a5 = (paintSSOO_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4 a5

paintSSOO_impl :: BasicHud -> Graphics.Graphics -> String -> String -> Int -> Int -> IO (())
paintSSOO_impl this graphics string string2 offset offset2 = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (Graphics.setColor graphics (jio (BasicHud.getColor this)))
        Control.Monad.void (Graphics.drawString graphics string ((jget (this).x) + offset) (jio (BasicHud.getY this)) (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        Control.Monad.void (Graphics.drawString graphics string2 ((jget (this).x) + offset2) (jio (BasicHud.getY this)) (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


paintDXY :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> Int -> IO (())
paintDXY object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = jmethod object_ "paintDXY" (\() -> (paintDXY_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4 a5 a6 a7 a8 a9

paintDXY_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> Int -> IO (())
paintDXY_super object_ a1 a2 a3 a4 a5 a6 a7 a8 a9 = (paintDXY_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4 a5 a6 a7 a8 a9

paintDXY_impl :: BasicHud -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> Int -> IO (())
paintDXY_impl this graphics charArray offset len charArray2 offset2 len2 xOffset xOffset2 = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        y <- (BasicHud.getY this)
        Control.Monad.void (Graphics.drawChars graphics charArray offset len ((jget (this).x) + xOffset) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        Control.Monad.void (Graphics.drawChars graphics charArray2 offset2 len2 ((jget (this).x) + xOffset2) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


paintDX :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> IO (())
paintDX object_ a1 a2 a3 a4 a5 a6 a7 a8 = jmethod object_ "paintDX" (\() -> (paintDX_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4 a5 a6 a7 a8

paintDX_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> IO (())
paintDX_super object_ a1 a2 a3 a4 a5 a6 a7 a8 = (paintDX_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4 a5 a6 a7 a8

paintDX_impl :: BasicHud -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> JavaArray (Char) -> Int -> Int -> Int -> IO (())
paintDX_impl this graphics charArray offset len charArray2 offset2 len2 xOffset = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        y <- (BasicHud.getY this)
        Control.Monad.void (Graphics.drawChars graphics charArray offset len (jget (this).x) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        Control.Monad.void (Graphics.drawChars graphics charArray2 offset2 len2 ((jget (this).x) + xOffset) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


paintOffsetAndLength :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> IO (())
paintOffsetAndLength object_ a1 a2 a3 a4 = jmethod object_ "paintOffsetAndLength" (\() -> (paintOffsetAndLength_impl (javaCast object_ :: BasicHud))) () a1 a2 a3 a4

paintOffsetAndLength_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> IO (())
paintOffsetAndLength_super object_ a1 a2 a3 a4 = (paintOffsetAndLength_impl (javaCast object_ :: BasicHud)) a1 a2 a3 a4

paintOffsetAndLength_impl :: BasicHud -> Graphics.Graphics -> JavaArray (Char) -> Int -> Int -> IO (())
paintOffsetAndLength_impl this graphics charArray offset len = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        y <- (BasicHud.getY this)
        Control.Monad.void (Graphics.drawChars graphics charArray offset len (jget (this).x) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


paintString :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> IO (())
paintString object_ a1 a2 = jmethod object_ "paintString" (\() -> (paintString_impl (javaCast object_ :: BasicHud))) () a1 a2

paintString_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> String -> IO (())
paintString_super object_ a1 a2 = (paintString_impl (javaCast object_ :: BasicHud)) a1 a2

paintString_impl :: BasicHud -> Graphics.Graphics -> String -> IO (())
paintString_impl this graphics string = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        Control.Monad.void (BasicColorSetUtil.setBasicColorP ((jget (this).basicSetColorUtil)) graphics (jio (BasicHud.getBasicColorP this)))
        let y = ((jio (BasicHud.getY this)) + (jget (this).offsetY))
        Control.Monad.void (Graphics.drawString graphics string (jget (this).x) y (jio (HudGraphicsPosition.getAnchor ((jget (this).hudGraphicsPosition)))))
        pure ()


