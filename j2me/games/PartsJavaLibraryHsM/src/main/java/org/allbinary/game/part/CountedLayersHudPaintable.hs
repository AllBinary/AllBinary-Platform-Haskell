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
-- package org.allbinary.game.part
module CountedLayersHudPaintable where

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
import qualified PartInterface -- same package or java.lang
import qualified CountedLayerInterfaceFactoryPart -- same package or java.lang
import qualified Font -- javax.microedition.lcdui.Font
import qualified Graphics -- javax.microedition.lcdui.Graphics
import qualified PickedUpLayerInterfaceFactoryInterface -- org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
import qualified DisplayInfoSingleton -- org.allbinary.graphics.displayable.DisplayInfoSingleton
import qualified MyFontProcessor -- org.allbinary.graphics.font.MyFontProcessor
import qualified UpdateMyFontInterface -- org.allbinary.graphics.font.UpdateMyFontInterface
import qualified UpdateMyFontProcessor -- org.allbinary.graphics.font.UpdateMyFontProcessor
import qualified PaintableInterface -- org.allbinary.graphics.paint.PaintableInterface
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer

-- implements PaintableInterface
-- implements UpdateMyFontInterface
data CountedLayersHudPaintable = CountedLayersHudPaintable
    { header_ :: JavaHeader
    , displayInfoSingleton :: IORef (DisplayInfoSingleton.DisplayInfoSingleton)
    , partInterfaceArray :: IORef (JavaArray (PartInterface.PartInterface))
    , countedTotalStringColor :: IORef (Int)
    , countedPartsBorder :: IORef (Int)
    , startIndex :: IORef (Int)
    , dropSize :: IORef (Int)
    , myFontProcessor :: IORef (MyFontProcessor.MyFontProcessor)
    , height :: IORef (Int)
    }

instance JavaNull CountedLayersHudPaintable where
    javaNull = javaNullRecord "CountedLayersHudPaintable"

instance JavaEquals CountedLayersHudPaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CountedLayersHudPaintable where
    (==) = jrecordEquals

instance JavaObjectClass CountedLayersHudPaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE xXStringWidth #-}
xXStringWidth = unsafePerformIO (newIORef (0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CountedLayersHudPaintable
newRecord_ = do
    header_ <- newJavaHeader
    displayInfoSingleton <- newIORef javaNull
    partInterfaceArray <- newIORef javaNull
    countedTotalStringColor <- newIORef 0
    countedPartsBorder <- newIORef 0
    startIndex <- newIORef 0
    dropSize <- newIORef 0
    myFontProcessor <- newIORef javaNull
    height <- newIORef 0
    let this = CountedLayersHudPaintable header_ displayInfoSingleton partInterfaceArray countedTotalStringColor countedPartsBorder startIndex dropSize myFontProcessor height
    jregisterLevel header_ this
    PaintableInterface.registerInterface_ header_
    UpdateMyFontInterface.registerInterface_ header_
    jregisterMethod header_ "updateMeasurement" (\() -> updateMeasurement_impl this)
    jregisterMethod header_ "paint" (\() -> paint_impl this)
    jregisterMethod header_ "paintThreed" (\() -> paintThreed_impl this)
    pure this

initFields_ :: CountedLayersHudPaintable -> IO ()
initFields_ this = do
    jset this.displayInfoSingleton =<< (DisplayInfoSingleton.getInstance)
    jset this.partInterfaceArray (javaNull)
    jset this.countedTotalStringColor (0)
    jset this.countedPartsBorder (0)
    jset this.startIndex (0)
    jset this.dropSize (0)
    jset this.myFontProcessor =<< (fmap (\value_ -> javaCast value_ :: MyFontProcessor.MyFontProcessor) (UpdateMyFontProcessor.new_1 this))
    jset this.height (0)
    pure ()

new_5 :: JavaArray (PartInterface.PartInterface) -> Int -> Int -> Int -> Int -> IO CountedLayersHudPaintable
new_5 partInterfaceArray dropSize startIndex countedTotalStringColor countedPartsBorder = do
    this <- newRecord_
    init_5 this partInterfaceArray dropSize startIndex countedTotalStringColor countedPartsBorder
    pure this

init_5 :: CountedLayersHudPaintable -> JavaArray (PartInterface.PartInterface) -> Int -> Int -> Int -> Int -> IO ()
init_5 this partInterfaceArray dropSize startIndex countedTotalStringColor countedPartsBorder = do
        initFields_ this
        jset (this).partInterfaceArray (partInterfaceArray)
        jset (this).startIndex (startIndex)
        jset (this).countedTotalStringColor (countedTotalStringColor)
        jset (this).countedPartsBorder (countedPartsBorder)
        jset (this).dropSize (dropSize)
        pure ()


updateMeasurement :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement object_ a1 = jmethod object_ "updateMeasurement" (\() -> (updateMeasurement_impl (javaCast object_ :: CountedLayersHudPaintable))) () a1

updateMeasurement_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
updateMeasurement_super object_ a1 = (updateMeasurement_impl (javaCast object_ :: CountedLayersHudPaintable)) a1

updateMeasurement_impl :: CountedLayersHudPaintable -> Graphics.Graphics -> IO (())
updateMeasurement_impl this graphics = do
        font <- (Graphics.getFont graphics)
        assignedValue <- (Font.getHeight font)
        jset (this).height (assignedValue)
        when ((jget (this).dropSize) > (jio (Font.getHeight font))) $ do
            jset (this).height ((jget (this).dropSize))
        when ((jget CountedLayersHudPaintable.xXStringWidth) == 0) $ do
            let xXString = "XX"
            assignedValue <- (Font.stringWidth font xXString)
            jset CountedLayersHudPaintable.xXStringWidth (assignedValue)
        assignedValue <- (MyFontProcessor.getInstance)
        jset (this).myFontProcessor (assignedValue)
        pure ()


paint :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint object_ a1 = jmethod object_ "paint" (\() -> (paint_impl (javaCast object_ :: CountedLayersHudPaintable))) () a1

paint_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paint_super object_ a1 = (paint_impl (javaCast object_ :: CountedLayersHudPaintable)) a1

paint_impl :: CountedLayersHudPaintable -> Graphics.Graphics -> IO (())
paint_impl this graphics = do
        Control.Monad.void (MyFontProcessor.process ((jget (this).myFontProcessor)) graphics)
        lastWidth <- (DisplayInfoSingleton.getLastWidth ((jget (this).displayInfoSingleton)))
        let widthEdge = (lastWidth - (jget (this).dropSize))
        let size = (jlength (jget (this).partInterfaceArray))
        count <- newIORef (0)
        y <- newIORef (0)
        countedLayerInterfaceFactory <- newIORef (javaNull)
        pickedUpLayerInterfaceFactoryInterface <- newIORef (javaNull)
        layerInterface <- newIORef (javaNull)
        charArray <- newIORef (javaNull)
        forM_ [(jget (this).startIndex) .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset countedLayerInterfaceFactory ((javaCast (jindex ((jget (this).partInterfaceArray)) (index)) :: CountedLayerInterfaceFactoryPart.CountedLayerInterfaceFactoryPart))
            when ((jio (CountedLayerInterfaceFactoryPart.getTotal ((jget countedLayerInterfaceFactory)))) > 0) $ do
                assignedValue <- (CountedLayerInterfaceFactoryPart.getCountedPickedUpLayerInterfaceFactory ((jget countedLayerInterfaceFactory)))
                jset pickedUpLayerInterfaceFactoryInterface (assignedValue)
                assignedValue <- (PickedUpLayerInterfaceFactoryInterface.getIconLayer ((jget pickedUpLayerInterfaceFactoryInterface)))
                jset layerInterface (assignedValue)
                jset y ((40 + (((jget count) * (jget (this).height)))))
                Control.Monad.void (AllBinaryLayer.setPosition ((jget layerInterface)) widthEdge (jget y) (jio (AllBinaryLayer.getZP ((jget layerInterface)))))
                Control.Monad.void (AllBinaryLayer.paint ((jget layerInterface)) graphics)
                Control.Monad.void (Graphics.setColor graphics (jget (this).countedTotalStringColor))
                Control.Monad.void (CountedLayerInterfaceFactoryPart.paint ((jget countedLayerInterfaceFactory)) graphics)
                assignedValue <- (CountedLayerInterfaceFactoryPart.getTotalString ((jget countedLayerInterfaceFactory)))
                jset charArray (assignedValue)
                Control.Monad.void (Graphics.drawChars graphics (jget charArray) 0 (jlength (jget charArray)) (widthEdge - (jio (CountedLayerInterfaceFactoryPart.getXOffset ((jget countedLayerInterfaceFactory))))) (jget y) 0)
                jset count ((jget count) + 1)
        when ((jget count) > 0) $ do
            Control.Monad.void (Graphics.setColor graphics (jget (this).countedPartsBorder))
            Control.Monad.void (Graphics.drawRect graphics (lastWidth - (((jget CountedLayersHudPaintable.xXStringWidth) + (jget (this).dropSize)))) 40 ((jget CountedLayersHudPaintable.xXStringWidth) + (jget (this).dropSize)) ((((jget count) * (jget (this).height))) + 3))
        pure ()


paintThreed :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed object_ a1 = jmethod object_ "paintThreed" (\() -> (paintThreed_impl (javaCast object_ :: CountedLayersHudPaintable))) () a1

paintThreed_super :: (JavaObjectClass this_) => this_ -> Graphics.Graphics -> IO (())
paintThreed_super object_ a1 = (paintThreed_impl (javaCast object_ :: CountedLayersHudPaintable)) a1

paintThreed_impl :: CountedLayersHudPaintable -> Graphics.Graphics -> IO (())
paintThreed_impl this graphics = do
        pure ()


