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
-- package org.allbinary.graphics.displayable
module DisplayInfoSingleton where

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
import qualified BaseScalable -- same package or java.lang
import qualified ScalableListener -- same package or java.lang
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified AndroidUtil -- org.allbinary.AndroidUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified DisplayChangeEvent -- org.allbinary.graphics.displayable.event.DisplayChangeEvent
import qualified DisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
import qualified LastDisplayChangeEventHandler -- org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler
import qualified OpenGLFeatureFactory -- org.allbinary.graphics.opengles.OpenGLFeatureFactory
import qualified SWTJOGLProcessor -- org.allbinary.graphics.threed.SWTJOGLProcessor
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified GenericOperatingSystem -- org.allbinary.logic.system.os.GenericOperatingSystem
import qualified OperatingSystemFactory -- org.allbinary.logic.system.os.OperatingSystemFactory
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data DisplayInfoSingleton = DisplayInfoSingleton
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonLabels :: IORef (CommonLabels.CommonLabels)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , oRIENTATION :: IORef (String)
    , aDJUSTING_FOR_SCALING_IN_PORTRAIT :: IORef (String)
    , aDJUSTING_FOR_SCALING_IN_LANDSCAPE :: IORef (String)
    , last :: IORef (JavaArray (Int))
    , lastHalf :: IORef (JavaArray (Int))
    , full :: IORef (JavaArray (Int))
    , top :: IORef (Int)
    , left :: IORef (Int)
    , xOffset :: IORef (Int)
    , yOffset :: IORef (Int)
    , scaleLargestTo :: IORef (Float)
    , wIDTH :: IORef (Int)
    , hEIGHT :: IORef (Int)
    , cUSTOM_WIDTH :: IORef (Int)
    , cUSTOM_HEIGHT :: IORef (Int)
    , scalableListener :: IORef (BaseScalable.BaseScalable)
    , displayRatio :: IORef (Float)
    , ratio :: IORef (Float)
    , sET_LAST_SIZE_METHOD_NAME :: IORef (String)
    , fULL_WIDTH :: IORef (String)
    , fULL_HEIGHT :: IORef (String)
    , lAST_WIDTH :: IORef (String)
    , lAST_HEIGHT :: IORef (String)
    , pORTRAIT :: IORef (String)
    , lANDSCAPE :: IORef (String)
    , displayChangeEvent :: IORef (DisplayChangeEvent.DisplayChangeEvent)
    , fIRE_METHOD_NAME :: IORef (String)
    , rEASON :: IORef (String)
    , uPDATE_FROM_ORIENTATION_CHANGE :: IORef (String)
    , list :: IORef (BasicArrayList.BasicArrayList)
    , dISPLAY_INFO :: IORef (String)
    , fULL :: IORef (String)
    , lAST :: IORef (String)
    , lAST_HALF :: IORef (String)
    }

instance JavaNull DisplayInfoSingleton where
    javaNull = javaNullRecord "DisplayInfoSingleton"

instance JavaEquals DisplayInfoSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DisplayInfoSingleton where
    (==) = jrecordEquals

instance JavaObjectClass DisplayInfoSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE sINGLETON #-}
sINGLETON = unsafePerformIO ((new_))

newRecord_ :: IO DisplayInfoSingleton
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonLabels <- newIORef javaNull
    commonSeps <- newIORef javaNull
    commonStrings <- newIORef javaNull
    oRIENTATION <- newIORef ""
    aDJUSTING_FOR_SCALING_IN_PORTRAIT <- newIORef ""
    aDJUSTING_FOR_SCALING_IN_LANDSCAPE <- newIORef ""
    last <- newIORef javaNull
    lastHalf <- newIORef javaNull
    full <- newIORef javaNull
    top <- newIORef 0
    left <- newIORef 0
    xOffset <- newIORef 0
    yOffset <- newIORef 0
    scaleLargestTo <- newIORef 0.0
    wIDTH <- newIORef 0
    hEIGHT <- newIORef 0
    cUSTOM_WIDTH <- newIORef 0
    cUSTOM_HEIGHT <- newIORef 0
    scalableListener <- newIORef javaNull
    displayRatio <- newIORef 0.0
    ratio <- newIORef 0.0
    sET_LAST_SIZE_METHOD_NAME <- newIORef ""
    fULL_WIDTH <- newIORef ""
    fULL_HEIGHT <- newIORef ""
    lAST_WIDTH <- newIORef ""
    lAST_HEIGHT <- newIORef ""
    pORTRAIT <- newIORef ""
    lANDSCAPE <- newIORef ""
    displayChangeEvent <- newIORef javaNull
    fIRE_METHOD_NAME <- newIORef ""
    rEASON <- newIORef ""
    uPDATE_FROM_ORIENTATION_CHANGE <- newIORef ""
    list <- newIORef javaNull
    dISPLAY_INFO <- newIORef ""
    fULL <- newIORef ""
    lAST <- newIORef ""
    lAST_HALF <- newIORef ""
    let this = DisplayInfoSingleton header_ logUtil commonLabels commonSeps commonStrings oRIENTATION aDJUSTING_FOR_SCALING_IN_PORTRAIT aDJUSTING_FOR_SCALING_IN_LANDSCAPE last lastHalf full top left xOffset yOffset scaleLargestTo wIDTH hEIGHT cUSTOM_WIDTH cUSTOM_HEIGHT scalableListener displayRatio ratio sET_LAST_SIZE_METHOD_NAME fULL_WIDTH fULL_HEIGHT lAST_WIDTH lAST_HEIGHT pORTRAIT lANDSCAPE displayChangeEvent fIRE_METHOD_NAME rEASON uPDATE_FROM_ORIENTATION_CHANGE list dISPLAY_INFO fULL lAST lAST_HALF
    jregisterLevel header_ this
    jregisterMethod header_ "getLastHalf" (\() -> getLastHalf_impl this)
    jregisterMethod header_ "getLast" (\() -> getLast_impl this)
    jregisterMethod header_ "getFull" (\() -> getFull_impl this)
    jregisterMethod header_ "getScaleLargestTo" (\() -> getScaleLargestTo_impl this)
    jregisterMethod header_ "setScaleLargestTo" (\() -> setScaleLargestTo_impl this)
    jregisterMethod header_ "setLastSize" (\() -> setLastSize_impl this)
    jregisterMethod header_ "setLastSizeForce" (\() -> setLastSizeForce_impl this)
    jregisterMethod header_ "isPortraitWH" (\() -> isPortraitWH_impl this)
    jregisterMethod header_ "isPortrait" (\() -> isPortrait_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "processForced" (\() -> processForced_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "toStringAppend" (\() -> toStringAppend_impl this)
    jregisterMethod header_ "getTop" (\() -> getTop_impl this)
    jregisterMethod header_ "getLeft" (\() -> getLeft_impl this)
    jregisterMethod header_ "getLastWidth" (\() -> getLastWidth_impl this)
    jregisterMethod header_ "getLastHeight" (\() -> getLastHeight_impl this)
    jregisterMethod header_ "getLastHalfWidth" (\() -> getLastHalfWidth_impl this)
    jregisterMethod header_ "getLastHalfHeight" (\() -> getLastHalfHeight_impl this)
    jregisterMethod header_ "getCustomLastWidth" (\() -> getCustomLastWidth_impl this)
    jregisterMethod header_ "getCustomLastHeight" (\() -> getCustomLastHeight_impl this)
    jregisterMethod header_ "getRawLastWidth" (\() -> getRawLastWidth_impl this)
    jregisterMethod header_ "getRawLastHeight" (\() -> getRawLastHeight_impl this)
    jregisterMethod header_ "setCustom" (\() -> setCustom_impl this)
    jregisterMethod header_ "setScalableListener" (\() -> setScalableListener_impl this)
    jregisterMethod header_ "getScalableListener" (\() -> getScalableListener_impl this)
    jregisterMethod header_ "getRatio" (\() -> getRatio_impl this)
    jregisterMethod header_ "getDisplayRatio" (\() -> getDisplayRatio_impl this)
    jregisterMethod header_ "setOffset" (\() -> setOffset_impl this)
    jregisterMethod header_ "getxOffset" (\() -> getxOffset_impl this)
    jregisterMethod header_ "getyOffset" (\() -> getyOffset_impl this)
    pure this

initFields_ :: DisplayInfoSingleton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonLabels =<< (CommonLabels.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.oRIENTATION ("ORIENTATION")
    jset this.aDJUSTING_FOR_SCALING_IN_PORTRAIT ("Adjusting for Scaling in portrait display ratio: ")
    jset this.aDJUSTING_FOR_SCALING_IN_LANDSCAPE ("Adjusting for Scaling in landscape display ratio: ")
    jset this.last ((jnewArray (4) 0))
    jset this.lastHalf ((jnewArray (4) 0))
    jset this.full ((jnewArray (4) 0))
    jset this.top (0)
    jset this.left (0)
    jset this.xOffset (0)
    jset this.yOffset (0)
    jset this.scaleLargestTo (0.0)
    jset this.wIDTH (0)
    jset this.hEIGHT (1)
    jset this.cUSTOM_WIDTH (2)
    jset this.cUSTOM_HEIGHT (3)
    jset this.scalableListener =<< (BaseScalable.new_)
    jset this.displayRatio (0.0)
    jset this.ratio (1.0)
    jset this.sET_LAST_SIZE_METHOD_NAME ("setLastSize")
    jset this.fULL_WIDTH (" FullWidth: ")
    jset this.fULL_HEIGHT (" FullHeight: ")
    jset this.lAST_WIDTH ("LastWidth: ")
    jset this.lAST_HEIGHT (" LastHeight: ")
    jset this.pORTRAIT ("Portrait")
    jset this.lANDSCAPE ("Landscape")
    jset this.displayChangeEvent =<< (DisplayChangeEvent.new_1 this)
    jset this.fIRE_METHOD_NAME ("fire")
    jset this.rEASON ("reason: ")
    jset this.uPDATE_FROM_ORIENTATION_CHANGE ("Updating from Orientation Change ")
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.dISPLAY_INFO ("Display Info: ")
    jset this.fULL ("full")
    jset this.lAST ("last")
    jset this.lAST_HALF ("lastHalf")
    pure ()


getInstance :: IO (DisplayInfoSingleton)
getInstance = do
        pure (DisplayInfoSingleton.sINGLETON)

new_ :: IO DisplayInfoSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DisplayInfoSingleton -> IO ()
init_ this = do
        initFields_ this
        let size = (jlength (jget (this).last))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).last)) (index) (0)
            jsetIndex ((jget (this).lastHalf)) (index) (0)
            jsetIndex ((jget (this).full)) (index) (0)
        if (jio (AndroidUtil.isAndroid)) then do
            jset (this).scaleLargestTo (640.0)
        else do
            jset (this).scaleLargestTo (1080.0)
        pure ()


getLastHalf :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getLastHalf object_ = jmethod object_ "getLastHalf" (\() -> (getLastHalf_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLastHalf_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getLastHalf_super object_ = (getLastHalf_impl (javaCast object_ :: DisplayInfoSingleton))

getLastHalf_impl :: DisplayInfoSingleton -> IO (JavaArray (Int))
getLastHalf_impl this = do
        pure ((jget (this).lastHalf))


getLast :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getLast object_ = jmethod object_ "getLast" (\() -> (getLast_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLast_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getLast_super object_ = (getLast_impl (javaCast object_ :: DisplayInfoSingleton))

getLast_impl :: DisplayInfoSingleton -> IO (JavaArray (Int))
getLast_impl this = do
        pure ((jget (this).last))


getFull :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getFull object_ = jmethod object_ "getFull" (\() -> (getFull_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getFull_super :: (JavaObjectClass this_) => this_ -> IO (JavaArray (Int))
getFull_super object_ = (getFull_impl (javaCast object_ :: DisplayInfoSingleton))

getFull_impl :: DisplayInfoSingleton -> IO (JavaArray (Int))
getFull_impl this = do
        pure ((jget (this).full))


getScaleLargestTo :: (JavaObjectClass this_) => this_ -> IO (Float)
getScaleLargestTo object_ = jmethod object_ "getScaleLargestTo" (\() -> (getScaleLargestTo_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getScaleLargestTo_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getScaleLargestTo_super object_ = (getScaleLargestTo_impl (javaCast object_ :: DisplayInfoSingleton))

getScaleLargestTo_impl :: DisplayInfoSingleton -> IO (Float)
getScaleLargestTo_impl this = do
        pure ((jget (this).scaleLargestTo))


setScaleLargestTo :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setScaleLargestTo object_ a1 = jmethod object_ "setScaleLargestTo" (\() -> (setScaleLargestTo_impl (javaCast object_ :: DisplayInfoSingleton))) () a1

setScaleLargestTo_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setScaleLargestTo_super object_ a1 = (setScaleLargestTo_impl (javaCast object_ :: DisplayInfoSingleton)) a1

setScaleLargestTo_impl :: DisplayInfoSingleton -> Int -> IO (())
setScaleLargestTo_impl this scaleLargestTo = do
        jset (this).scaleLargestTo ((Prelude.fromIntegral scaleLargestTo))
        pure ()


setLastSize :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (())
setLastSize object_ a1 a2 a3 = jmethod object_ "setLastSize" (\() -> (setLastSize_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2 a3

setLastSize_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (())
setLastSize_super object_ a1 a2 a3 = (setLastSize_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2 a3

setLastSize_impl :: DisplayInfoSingleton -> Int -> Int -> String -> IO (())
setLastSize_impl this aLastWidth aLastHeight reason = do
        when (((jindex ((jget (this).full)) ((jget (this).wIDTH))) /= aLastWidth) || ((jindex ((jget (this).full)) ((jget (this).hEIGHT))) /= aLastHeight)) $ do
            Control.Monad.void (DisplayInfoSingleton.setLastSizeForce this aLastWidth aLastHeight reason)
        pure ()


setLastSizeForce :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (())
setLastSizeForce object_ a1 a2 a3 = jmethod object_ "setLastSizeForce" (\() -> (setLastSizeForce_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2 a3

setLastSizeForce_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> String -> IO (())
setLastSizeForce_super object_ a1 a2 a3 = (setLastSizeForce_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2 a3

setLastSizeForce_impl :: DisplayInfoSingleton -> Int -> Int -> String -> IO (())
setLastSizeForce_impl this aLastWidth aLastHeight reason = do
        aLastWidth <- newIORef aLastWidth
        aLastHeight <- newIORef aLastHeight
        stringMaker <- (StringMaker.new_)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) reason))))) this (jget (this).sET_LAST_SIZE_METHOD_NAME))
        let aFullWidth = (jget aLastWidth)
        let aFullHeight = (jget aLastHeight)
        Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append stringMaker (jget (this).fULL_WIDTH)))) aFullWidth))) (jget (this).fULL_HEIGHT)))) aFullHeight))) (jio (DisplayInfoSingleton.toString this))))))) this (jget (this).sET_LAST_SIZE_METHOD_NAME))
        operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
        when (jio (GenericOperatingSystem.isOverScan operatingSystemInterface)) $ do
            jset aLastWidth ((((jget aLastWidth) * (jio (GenericOperatingSystem.getOverScanXPercent operatingSystemInterface))) `quot` 100))
            jset aLastHeight ((((jget aLastHeight) * (jio (GenericOperatingSystem.getOverScanYPercent operatingSystemInterface))) `quot` 100))
        when (jio (GenericOperatingSystem.isScalable operatingSystemInterface)) $ do
            if (jio (DisplayInfoSingleton.isPortraitWH this (jget aLastWidth) (jget aLastHeight))) then do
                if ((Prelude.fromIntegral (jget aLastHeight)) > (jget (this).scaleLargestTo)) then do
                    jset (this).displayRatio (((jget (this).scaleLargestTo) / (Prelude.fromIntegral (jget aLastHeight))))
                    jset (this).ratio (((Prelude.fromIntegral (jget aLastHeight)) / (jget (this).scaleLargestTo)))
                    Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append stringMaker (jget (this).aDJUSTING_FOR_SCALING_IN_PORTRAIT)))) (jget (this).displayRatio)))))) this (jget (this).sET_LAST_SIZE_METHOD_NAME))
                    jset aLastWidth ((Prelude.truncate (((Prelude.fromIntegral (jget aLastWidth)) * (jget (this).displayRatio)))))
                    jset aLastHeight ((Prelude.truncate (((Prelude.fromIntegral (jget aLastHeight)) * (jget (this).displayRatio)))))
                    Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                else do
                    jset (this).ratio (1.0)
                    Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
            else do
                if ((Prelude.fromIntegral (jget aLastWidth)) > (jget (this).scaleLargestTo)) then do
                    jset (this).displayRatio (((jget (this).scaleLargestTo) / (Prelude.fromIntegral (jget aLastWidth))))
                    jset (this).ratio (((Prelude.fromIntegral (jget aLastWidth)) / (jget (this).scaleLargestTo)))
                    Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append stringMaker (jget (this).aDJUSTING_FOR_SCALING_IN_LANDSCAPE)))) (jget (this).displayRatio)))))) this (jget (this).sET_LAST_SIZE_METHOD_NAME))
                    jset aLastWidth ((Prelude.truncate (((Prelude.fromIntegral (jget aLastWidth)) * (jget (this).displayRatio)))))
                    jset aLastHeight ((Prelude.truncate (((Prelude.fromIntegral (jget aLastHeight)) * (jget (this).displayRatio)))))
                    Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                else do
                    jset (this).ratio (1.0)
                    Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
        Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append stringMaker (jget (this).lAST_WIDTH)))) (jget aLastWidth)))) (jget (this).lAST_HEIGHT)))) (jget aLastHeight)))))) this (jget (this).sET_LAST_SIZE_METHOD_NAME))
        jset (this).xOffset ((aFullWidth - (jget aLastWidth)))
        jset (this).yOffset ((aFullHeight - (jget aLastHeight)))
        assignedValue <- (BaseScalable.getLeft ((jget (this).scalableListener)) (jget (this).xOffset))
        jset (this).left (assignedValue)
        assignedValue <- (BaseScalable.getTop ((jget (this).scalableListener)) (jget (this).yOffset))
        jset (this).top (assignedValue)
        jsetIndex ((jget (this).full)) ((jget (this).wIDTH)) (aFullWidth)
        jsetIndex ((jget (this).full)) ((jget (this).hEIGHT)) (aFullHeight)
        jsetIndex ((jget (this).last)) ((jget (this).wIDTH)) ((jget aLastWidth))
        jsetIndex ((jget (this).lastHalf)) ((jget (this).wIDTH)) ((((jindex ((jget (this).last)) ((jget (this).wIDTH))) `Data.Bits.shiftR` 1)))
        jsetIndex ((jget (this).last)) ((jget (this).hEIGHT)) ((jget aLastHeight))
        jsetIndex ((jget (this).lastHalf)) ((jget (this).hEIGHT)) ((((jindex ((jget (this).last)) ((jget (this).hEIGHT))) `Data.Bits.shiftR` 1)))
        Control.Monad.void (SWTJOGLProcessor.setCustom ((jio (SWTJOGLProcessor.getInstance))) (jget aLastWidth) (jget aLastHeight) (jget (this).ratio))
        Control.Monad.void (DisplayInfoSingleton.add this (jget (this).sET_LAST_SIZE_METHOD_NAME))
        pure ()


isPortraitWH :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Bool)
isPortraitWH object_ a1 a2 = jmethod object_ "isPortraitWH" (\() -> (isPortraitWH_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2

isPortraitWH_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (Bool)
isPortraitWH_super object_ a1 a2 = (isPortraitWH_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2

isPortraitWH_impl :: DisplayInfoSingleton -> Int -> Int -> IO (Bool)
isPortraitWH_impl this lastWidth lastHeight = do
    javaCatchReturn $ do
        if (lastHeight > lastWidth) then do
            javaReturn (True)
        else do
            javaReturn (False)


isPortrait :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPortrait object_ = jmethod object_ "isPortrait" (\() -> (isPortrait_impl (javaCast object_ :: DisplayInfoSingleton))) ()

isPortrait_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isPortrait_super object_ = (isPortrait_impl (javaCast object_ :: DisplayInfoSingleton))

isPortrait_impl :: DisplayInfoSingleton -> IO (Bool)
isPortrait_impl this = do
        (DisplayInfoSingleton.isPortraitWH this (jindex ((jget (this).last)) ((jget (this).wIDTH))) (jindex ((jget (this).last)) ((jget (this).hEIGHT))))


add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: DisplayInfoSingleton))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: DisplayInfoSingleton)) a1

add_impl :: DisplayInfoSingleton -> String -> IO (())
add_impl this reason = do
        stringMaker <- (StringMaker.new_)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (this).rEASON)))) reason))))) this (jget (this).fIRE_METHOD_NAME))
        Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (DisplayInfoSingleton.toStringAppend this stringMaker)) this (jget (this).fIRE_METHOD_NAME))
        Control.Monad.void (BasicArrayList.add ((jget (this).list)) reason)
        pure ()


process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: DisplayInfoSingleton))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: DisplayInfoSingleton))

process_impl :: DisplayInfoSingleton -> IO (())
process_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this (jget (this).fIRE_METHOD_NAME) e)
            ) $ do
            when ((jio (BasicArrayList.size ((jget (this).list)))) > 0) $ do
                Control.Monad.void (DisplayInfoSingleton.processForced this)
            Control.Monad.void (BasicArrayList.clear ((jget (this).list)))
        pure ()


processForced :: (JavaObjectClass this_) => this_ -> IO (())
processForced object_ = jmethod object_ "processForced" (\() -> (processForced_impl (javaCast object_ :: DisplayInfoSingleton))) ()

processForced_super :: (JavaObjectClass this_) => this_ -> IO (())
processForced_super object_ = (processForced_impl (javaCast object_ :: DisplayInfoSingleton))

processForced_impl :: DisplayInfoSingleton -> IO (())
processForced_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this (jget (this).fIRE_METHOD_NAME) e)
            ) $ do
            swtJOGLProcessor <- (SWTJOGLProcessor.getInstance)
            Control.Monad.void (SWTJOGLProcessor.clear swtJOGLProcessor)
            Control.Monad.void (DisplayChangeEventHandler.fireEvent ((jio (DisplayChangeEventHandler.getInstance))) (jget (this).displayChangeEvent))
            Control.Monad.void (LastDisplayChangeEventHandler.fireEvent ((jio (LastDisplayChangeEventHandler.getInstance))) (jget (this).displayChangeEvent))
            Control.Monad.void (SWTJOGLProcessor.onSurfaceChanged swtJOGLProcessor)
        pure ()


update :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> String -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> String -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2

update_impl :: DisplayInfoSingleton -> Displayable.Displayable -> String -> IO (())
update_impl this displayable reason = do
        aLastWidth <- newIORef =<< (Displayable.getWidth displayable)
        aLastHeight <- newIORef =<< (Displayable.getHeight displayable)
        let aFullWidth = (jget aLastWidth)
        let aFullHeight = (jget aLastHeight)
        stringMaker <- (StringMaker.new_)
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) reason))) (jget (this).lAST_WIDTH)))) (jget aLastWidth)))) (jget (this).lAST_HEIGHT)))) (jget aLastHeight)))) (jget ((jget (this).commonSeps)).sPACE)))) (jio (DisplayInfoSingleton.toString this))))))) this (jget ((jget (this).commonStrings)).uPDATE))
        when (((jget aLastWidth) > 0) && ((jget aLastHeight) > 0)) $ do
            features <- (Features.getInstance)
            openGLFeatureFactory <- (OpenGLFeatureFactory.getInstance)
            when (((Prelude.not (jio (Features.isDefault features (jget (openGLFeatureFactory).oPENGL)))) || ((jindex ((jget (this).last)) ((jget (this).wIDTH))) /= (jget aLastWidth))) || ((jindex ((jget (this).last)) ((jget (this).hEIGHT))) /= (jget aLastHeight))) $ do
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append stringMaker (jget (this).uPDATE_FROM_ORIENTATION_CHANGE)))))) this (jget ((jget (this).commonStrings)).uPDATE))
                operatingSystemInterface <- (OperatingSystemFactory.getOperatingSystemInstance ((jio (OperatingSystemFactory.getInstance))))
                when (jio (GenericOperatingSystem.isOverScan operatingSystemInterface)) $ do
                    jset aLastWidth ((((jget aLastWidth) * (jio (GenericOperatingSystem.getOverScanXPercent operatingSystemInterface))) `quot` 100))
                    jset aLastHeight ((((jget aLastHeight) * (jio (GenericOperatingSystem.getOverScanYPercent operatingSystemInterface))) `quot` 100))
                when (jio (GenericOperatingSystem.isScalable operatingSystemInterface)) $ do
                    if (jio (DisplayInfoSingleton.isPortraitWH this (jget aLastWidth) (jget aLastHeight))) then do
                        if ((Prelude.fromIntegral (jget aLastHeight)) > (jget (this).scaleLargestTo)) then do
                            jset (this).displayRatio (((jget (this).scaleLargestTo) / (Prelude.fromIntegral (jget aLastHeight))))
                            jset (this).ratio (((Prelude.fromIntegral (jget aLastHeight)) / (jget (this).scaleLargestTo)))
                            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append stringMaker (jget (this).aDJUSTING_FOR_SCALING_IN_PORTRAIT)))) (jget (this).displayRatio)))))) this (jget ((jget (this).commonStrings)).uPDATE))
                            jset aLastWidth ((Prelude.truncate (((Prelude.fromIntegral (jget aLastWidth)) * (jget (this).displayRatio)))))
                            jset aLastHeight ((Prelude.truncate (((Prelude.fromIntegral (jget aLastHeight)) * (jget (this).displayRatio)))))
                            Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                        else do
                            jset (this).ratio (1.0)
                            Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                    else do
                        if ((Prelude.fromIntegral (jget aLastWidth)) > (jget (this).scaleLargestTo)) then do
                            jset (this).displayRatio (((jget (this).scaleLargestTo) / (Prelude.fromIntegral (jget aLastWidth))))
                            jset (this).ratio (((Prelude.fromIntegral (jget aLastWidth)) / (jget (this).scaleLargestTo)))
                            Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendfloat ((jio (StringMaker.append stringMaker (jget (this).aDJUSTING_FOR_SCALING_IN_LANDSCAPE)))) (jget (this).displayRatio)))))) this (jget ((jget (this).commonStrings)).uPDATE))
                            jset aLastWidth ((Prelude.truncate (((Prelude.fromIntegral (jget aLastWidth)) * (jget (this).displayRatio)))))
                            jset aLastHeight ((Prelude.truncate (((Prelude.fromIntegral (jget aLastHeight)) * (jget (this).displayRatio)))))
                            Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                        else do
                            jset (this).ratio (1.0)
                            Control.Monad.void (BaseScalable.scale ((jget (this).scalableListener)) (jget (this).ratio))
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (this).uPDATE_FROM_ORIENTATION_CHANGE)))) (jget (this).lAST_WIDTH)))) (jget aLastWidth)))) (jget (this).lAST_HEIGHT)))) (jget aLastHeight)))))) this (jget ((jget (this).commonStrings)).uPDATE))
                jset (this).xOffset ((aFullWidth - (jget aLastWidth)))
                jset (this).yOffset ((aFullHeight - (jget aLastHeight)))
                assignedValue <- (BaseScalable.getLeft ((jget (this).scalableListener)) (jget (this).xOffset))
                jset (this).left (assignedValue)
                assignedValue <- (BaseScalable.getTop ((jget (this).scalableListener)) (jget (this).yOffset))
                jset (this).top (assignedValue)
                jsetIndex ((jget (this).full)) ((jget (this).wIDTH)) (aFullWidth)
                jsetIndex ((jget (this).full)) ((jget (this).hEIGHT)) (aFullHeight)
                jsetIndex ((jget (this).last)) ((jget (this).wIDTH)) ((jget aLastWidth))
                jsetIndex ((jget (this).lastHalf)) ((jget (this).wIDTH)) ((((jindex ((jget (this).last)) ((jget (this).wIDTH))) `Data.Bits.shiftR` 1)))
                jsetIndex ((jget (this).last)) ((jget (this).hEIGHT)) ((jget aLastHeight))
                jsetIndex ((jget (this).lastHalf)) ((jget (this).hEIGHT)) ((((jindex ((jget (this).last)) ((jget (this).hEIGHT))) `Data.Bits.shiftR` 1)))
                Control.Monad.void (SWTJOGLProcessor.setCustom ((jio (SWTJOGLProcessor.getInstance))) (jget aLastWidth) (jget aLastHeight) (jget (this).ratio))
                Control.Monad.void (DisplayInfoSingleton.add this (jget ((jget (this).commonStrings)).uPDATE))
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: DisplayInfoSingleton))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: DisplayInfoSingleton))

toString_impl :: DisplayInfoSingleton -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        (DisplayInfoSingleton.toStringAppend this stringBuffer)


toStringAppend :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (String)
toStringAppend object_ a1 = jmethod object_ "toStringAppend" (\() -> (toStringAppend_impl (javaCast object_ :: DisplayInfoSingleton))) () a1

toStringAppend_super :: (JavaObjectClass this_) => this_ -> StringMaker.StringMaker -> IO (String)
toStringAppend_super object_ a1 = (toStringAppend_impl (javaCast object_ :: DisplayInfoSingleton)) a1

toStringAppend_impl :: DisplayInfoSingleton -> StringMaker.StringMaker -> IO (String)
toStringAppend_impl this stringBuffer = do
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).dISPLAY_INFO))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).fULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).full)) ((jget (this).wIDTH))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).fULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).full)) ((jget (this).hEIGHT))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lAST))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).last)) ((jget (this).wIDTH))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lAST))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).last)) ((jget (this).hEIGHT))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lAST_HALF))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).wIDTH_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).lastHalf)) ((jget (this).wIDTH))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lAST_HALF))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonLabels)).hEIGHT_LABEL))
        Control.Monad.void (StringMaker.appendint stringBuffer (jindex ((jget (this).lastHalf)) ((jget (this).hEIGHT))))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
        Control.Monad.void (StringMaker.append stringBuffer (if (jio (DisplayInfoSingleton.isPortrait this)) then (jget (this).pORTRAIT) else (jget (this).lANDSCAPE)))
        (StringMaker.toString stringBuffer)


getTop :: (JavaObjectClass this_) => this_ -> IO (Int)
getTop object_ = jmethod object_ "getTop" (\() -> (getTop_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getTop_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTop_super object_ = (getTop_impl (javaCast object_ :: DisplayInfoSingleton))

getTop_impl :: DisplayInfoSingleton -> IO (Int)
getTop_impl this = do
        pure ((jget (this).top))


getLeft :: (JavaObjectClass this_) => this_ -> IO (Int)
getLeft object_ = jmethod object_ "getLeft" (\() -> (getLeft_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLeft_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLeft_super object_ = (getLeft_impl (javaCast object_ :: DisplayInfoSingleton))

getLeft_impl :: DisplayInfoSingleton -> IO (Int)
getLeft_impl this = do
        pure ((jget (this).left))


getLastWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastWidth object_ = jmethod object_ "getLastWidth" (\() -> (getLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLastWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastWidth_super object_ = (getLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))

getLastWidth_impl :: DisplayInfoSingleton -> IO (Int)
getLastWidth_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).wIDTH))))


getLastHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHeight object_ = jmethod object_ "getLastHeight" (\() -> (getLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLastHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHeight_super object_ = (getLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))

getLastHeight_impl :: DisplayInfoSingleton -> IO (Int)
getLastHeight_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).hEIGHT))))


getLastHalfWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfWidth object_ = jmethod object_ "getLastHalfWidth" (\() -> (getLastHalfWidth_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLastHalfWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfWidth_super object_ = (getLastHalfWidth_impl (javaCast object_ :: DisplayInfoSingleton))

getLastHalfWidth_impl :: DisplayInfoSingleton -> IO (Int)
getLastHalfWidth_impl this = do
        pure ((jindex ((jget (this).lastHalf)) ((jget (this).wIDTH))))


getLastHalfHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfHeight object_ = jmethod object_ "getLastHalfHeight" (\() -> (getLastHalfHeight_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getLastHalfHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getLastHalfHeight_super object_ = (getLastHalfHeight_impl (javaCast object_ :: DisplayInfoSingleton))

getLastHalfHeight_impl :: DisplayInfoSingleton -> IO (Int)
getLastHalfHeight_impl this = do
        pure ((jindex ((jget (this).lastHalf)) ((jget (this).hEIGHT))))


getCustomLastWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getCustomLastWidth object_ = jmethod object_ "getCustomLastWidth" (\() -> (getCustomLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getCustomLastWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCustomLastWidth_super object_ = (getCustomLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))

getCustomLastWidth_impl :: DisplayInfoSingleton -> IO (Int)
getCustomLastWidth_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).cUSTOM_WIDTH))))


getCustomLastHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getCustomLastHeight object_ = jmethod object_ "getCustomLastHeight" (\() -> (getCustomLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getCustomLastHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getCustomLastHeight_super object_ = (getCustomLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))

getCustomLastHeight_impl :: DisplayInfoSingleton -> IO (Int)
getCustomLastHeight_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).cUSTOM_HEIGHT))))


getRawLastWidth :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawLastWidth object_ = jmethod object_ "getRawLastWidth" (\() -> (getRawLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getRawLastWidth_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawLastWidth_super object_ = (getRawLastWidth_impl (javaCast object_ :: DisplayInfoSingleton))

getRawLastWidth_impl :: DisplayInfoSingleton -> IO (Int)
getRawLastWidth_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).wIDTH))))


getRawLastHeight :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawLastHeight object_ = jmethod object_ "getRawLastHeight" (\() -> (getRawLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getRawLastHeight_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRawLastHeight_super object_ = (getRawLastHeight_impl (javaCast object_ :: DisplayInfoSingleton))

getRawLastHeight_impl :: DisplayInfoSingleton -> IO (Int)
getRawLastHeight_impl this = do
        pure ((jindex ((jget (this).last)) ((jget (this).hEIGHT))))


setCustom :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setCustom object_ a1 a2 = jmethod object_ "setCustom" (\() -> (setCustom_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2

setCustom_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setCustom_super object_ a1 a2 = (setCustom_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2

setCustom_impl :: DisplayInfoSingleton -> Int -> Int -> IO (())
setCustom_impl this width height = do
        jsetIndex ((jget (this).last)) ((jget (this).cUSTOM_WIDTH)) (width)
        jsetIndex ((jget (this).lastHalf)) ((jget (this).cUSTOM_WIDTH)) ((((jindex ((jget (this).last)) ((jget (this).cUSTOM_WIDTH))) `Data.Bits.shiftR` 1)))
        jsetIndex ((jget (this).last)) ((jget (this).cUSTOM_HEIGHT)) (height)
        jsetIndex ((jget (this).lastHalf)) ((jget (this).cUSTOM_HEIGHT)) ((((jindex ((jget (this).last)) ((jget (this).cUSTOM_HEIGHT))) `Data.Bits.shiftR` 1)))
        pure ()


setScalableListener :: (JavaObjectClass this_) => this_ -> BaseScalable.BaseScalable -> IO (())
setScalableListener object_ a1 = jmethod object_ "setScalableListener" (\() -> (setScalableListener_impl (javaCast object_ :: DisplayInfoSingleton))) () a1

setScalableListener_super :: (JavaObjectClass this_) => this_ -> BaseScalable.BaseScalable -> IO (())
setScalableListener_super object_ a1 = (setScalableListener_impl (javaCast object_ :: DisplayInfoSingleton)) a1

setScalableListener_impl :: DisplayInfoSingleton -> BaseScalable.BaseScalable -> IO (())
setScalableListener_impl this scalableListener = do
        jset (this).scalableListener (scalableListener)
        pure ()


getScalableListener :: (JavaObjectClass this_) => this_ -> IO (ScalableListener.ScalableListener)
getScalableListener object_ = jmethod object_ "getScalableListener" (\() -> (getScalableListener_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getScalableListener_super :: (JavaObjectClass this_) => this_ -> IO (ScalableListener.ScalableListener)
getScalableListener_super object_ = (getScalableListener_impl (javaCast object_ :: DisplayInfoSingleton))

getScalableListener_impl :: DisplayInfoSingleton -> IO (ScalableListener.ScalableListener)
getScalableListener_impl this = do
        pure ((javaCast (jget (this).scalableListener) :: ScalableListener.ScalableListener))


getRatio :: (JavaObjectClass this_) => this_ -> IO (Float)
getRatio object_ = jmethod object_ "getRatio" (\() -> (getRatio_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getRatio_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getRatio_super object_ = (getRatio_impl (javaCast object_ :: DisplayInfoSingleton))

getRatio_impl :: DisplayInfoSingleton -> IO (Float)
getRatio_impl this = do
        pure ((jget (this).ratio))


getDisplayRatio :: (JavaObjectClass this_) => this_ -> IO (Float)
getDisplayRatio object_ = jmethod object_ "getDisplayRatio" (\() -> (getDisplayRatio_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getDisplayRatio_super :: (JavaObjectClass this_) => this_ -> IO (Float)
getDisplayRatio_super object_ = (getDisplayRatio_impl (javaCast object_ :: DisplayInfoSingleton))

getDisplayRatio_impl :: DisplayInfoSingleton -> IO (Float)
getDisplayRatio_impl this = do
        pure ((jget (this).displayRatio))


setOffset :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setOffset object_ a1 a2 = jmethod object_ "setOffset" (\() -> (setOffset_impl (javaCast object_ :: DisplayInfoSingleton))) () a1 a2

setOffset_super :: (JavaObjectClass this_) => this_ -> Int -> Int -> IO (())
setOffset_super object_ a1 a2 = (setOffset_impl (javaCast object_ :: DisplayInfoSingleton)) a1 a2

setOffset_impl :: DisplayInfoSingleton -> Int -> Int -> IO (())
setOffset_impl this left top = do
        jset (this).left (left)
        pure ()


getxOffset :: (JavaObjectClass this_) => this_ -> IO (Int)
getxOffset object_ = jmethod object_ "getxOffset" (\() -> (getxOffset_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getxOffset_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getxOffset_super object_ = (getxOffset_impl (javaCast object_ :: DisplayInfoSingleton))

getxOffset_impl :: DisplayInfoSingleton -> IO (Int)
getxOffset_impl this = do
        pure ((jget (this).xOffset))


getyOffset :: (JavaObjectClass this_) => this_ -> IO (Int)
getyOffset object_ = jmethod object_ "getyOffset" (\() -> (getyOffset_impl (javaCast object_ :: DisplayInfoSingleton))) ()

getyOffset_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getyOffset_super object_ = (getyOffset_impl (javaCast object_ :: DisplayInfoSingleton))

getyOffset_impl :: DisplayInfoSingleton -> IO (Int)
getyOffset_impl this = do
        pure ((jget (this).yOffset))


