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
-- package org.allbinary.graphics.opengles
module CurrentDisplayableFactory where

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
import qualified OpenGLFeatureFactory -- same package or java.lang
import qualified OpenGLFeature -- same package or java.lang
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified J2MEUtil -- org.allbinary.J2MEUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified AllBinaryGameCanvas -- org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
import qualified DemoCanvas -- org.allbinary.game.displayable.canvas.DemoCanvas
import qualified GameInputMappingCanvas -- org.allbinary.game.displayable.canvas.GameInputMappingCanvas
import qualified GameInputMappingInstructionsCanvas -- org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
import qualified GameRunnable -- org.allbinary.game.displayable.canvas.GameRunnable
import qualified NullDisplayable -- org.allbinary.game.displayable.canvas.NullDisplayable
import qualified NullWaitGameRunnable -- org.allbinary.game.displayable.canvas.NullWaitGameRunnable
import qualified SWTUtil -- org.allbinary.game.layer.SWTUtil
import qualified HighScoresCanvas -- org.allbinary.game.score.displayable.HighScoresCanvas
import qualified GraphicsStrings -- org.allbinary.graphics.GraphicsStrings
import qualified CanvasStrings -- org.allbinary.graphics.displayable.CanvasStrings
import qualified MyCanvas -- org.allbinary.graphics.displayable.MyCanvas
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified NullRunnable -- org.allbinary.thread.NullRunnable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data CurrentDisplayableFactory = CurrentDisplayableFactory
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , canvasStrings :: IORef (CanvasStrings.CanvasStrings)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , sET_DISPLAYABLE :: IORef (String)
    , sET_RUNNABLE :: IORef (String)
    , cLEAR_RUNNABLE :: IORef (String)
    , sET_USED_RUNNABLE :: IORef (String)
    , rUNNABLE :: IORef (String)
    , rUNNABLE_WAS_ALREADY_IN_USE :: IORef (String)
    , dEFAULT_CHILD_NAME_LIST :: IORef (BasicArrayList.BasicArrayList)
    , displayable :: IORef (Displayable.Displayable)
    , openGlReadydisplayable :: IORef (Displayable.Displayable)
    , runnable :: IORef (GameRunnable.GameRunnable)
    , usedRunnable :: IORef (GameRunnable.GameRunnable)
    }

instance JavaNull CurrentDisplayableFactory where
    javaNull = javaNullRecord "CurrentDisplayableFactory"

instance JavaEquals CurrentDisplayableFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CurrentDisplayableFactory where
    (==) = jrecordEquals

instance JavaObjectClass CurrentDisplayableFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CurrentDisplayableFactory
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    canvasStrings <- newIORef javaNull
    stringUtil <- newIORef javaNull
    sET_DISPLAYABLE <- newIORef ""
    sET_RUNNABLE <- newIORef ""
    cLEAR_RUNNABLE <- newIORef ""
    sET_USED_RUNNABLE <- newIORef ""
    rUNNABLE <- newIORef ""
    rUNNABLE_WAS_ALREADY_IN_USE <- newIORef ""
    dEFAULT_CHILD_NAME_LIST <- newIORef javaNull
    displayable <- newIORef javaNull
    openGlReadydisplayable <- newIORef javaNull
    runnable <- newIORef javaNull
    usedRunnable <- newIORef javaNull
    let this = CurrentDisplayableFactory header_ commonStrings canvasStrings stringUtil sET_DISPLAYABLE sET_RUNNABLE cLEAR_RUNNABLE sET_USED_RUNNABLE rUNNABLE rUNNABLE_WAS_ALREADY_IN_USE dEFAULT_CHILD_NAME_LIST displayable openGlReadydisplayable runnable usedRunnable
    jregisterLevel header_ this
    jregisterMethod header_ "setMyCanvas" (\() -> setMyCanvas_impl this)
    jregisterMethod header_ "setDisplayable" (\() -> setDisplayable_impl this)
    jregisterMethod header_ "setOpenGlReadydisplayable" (\() -> setOpenGlReadydisplayable_impl this)
    jregisterMethod header_ "getOpenGlReadydisplayable" (\() -> getOpenGlReadydisplayable_impl this)
    jregisterMethod header_ "setRunnable" (\() -> setRunnable_impl this)
    jregisterMethod header_ "clearRunnable" (\() -> clearRunnable_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getDisplayable" (\() -> getDisplayable_impl this)
    jregisterMethod header_ "getUsedRunnable" (\() -> getUsedRunnable_impl this)
    jregisterMethod header_ "setUsedRunnable" (\() -> setUsedRunnable_impl this)
    pure this

initFields_ :: CurrentDisplayableFactory -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.canvasStrings =<< (CanvasStrings.getInstance)
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.sET_DISPLAYABLE ("setDisplayable")
    jset this.sET_RUNNABLE ("setRunnable")
    jset this.cLEAR_RUNNABLE ("clearRunnable")
    jset this.sET_USED_RUNNABLE ("setUsedRunnable")
    jset this.rUNNABLE ("Runnable: ")
    jset this.rUNNABLE_WAS_ALREADY_IN_USE ("Runnable was already in use: ")
    jset this.dEFAULT_CHILD_NAME_LIST =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    jset this.displayable =<< (fmap (\value_ -> javaCast value_ :: Displayable.Displayable) (NullDisplayable.getInstance))
    jset this.openGlReadydisplayable =<< (fmap (\value_ -> javaCast value_ :: Displayable.Displayable) (NullDisplayable.getInstance))
    jset this.runnable =<< (NullWaitGameRunnable.getInstance)
    jset this.usedRunnable =<< (NullWaitGameRunnable.getInstance)
    pure ()


getInstance :: IO (CurrentDisplayableFactory)
getInstance = do
        pure (CurrentDisplayableFactory.instance_)

new_ :: IO CurrentDisplayableFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CurrentDisplayableFactory -> IO ()
init_ this = do
        initFields_ this
        Control.Monad.void (BasicArrayList.add ((jget (this).dEFAULT_CHILD_NAME_LIST)) (jget ((jget (this).canvasStrings)).aBOUT))
        Control.Monad.void (BasicArrayList.add ((jget (this).dEFAULT_CHILD_NAME_LIST)) (jget ((jget (this).canvasStrings)).oPTIONS))
        Control.Monad.void (BasicArrayList.add ((jget (this).dEFAULT_CHILD_NAME_LIST)) (GameInputMappingCanvas.nAME))
        Control.Monad.void (BasicArrayList.add ((jget (this).dEFAULT_CHILD_NAME_LIST)) (GameInputMappingInstructionsCanvas.nAME))
        Control.Monad.void (BasicArrayList.add ((jget (this).dEFAULT_CHILD_NAME_LIST)) (HighScoresCanvas.nAME))
        pure ()


setMyCanvas :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
setMyCanvas object_ a1 = jmethod object_ "setMyCanvas" (\() -> (setMyCanvas_impl (javaCast object_ :: CurrentDisplayableFactory))) () a1

setMyCanvas_super :: (JavaObjectClass this_) => this_ -> MyCanvas.MyCanvas -> IO (())
setMyCanvas_super object_ a1 = (setMyCanvas_impl (javaCast object_ :: CurrentDisplayableFactory)) a1

setMyCanvas_impl :: CurrentDisplayableFactory -> MyCanvas.MyCanvas -> IO (())
setMyCanvas_impl this displayable = do
    javaCatchReturn $ do
        when (javaInstanceOf (jget (this).displayable) "MyCanvas") $ do
            when (jio (MyCanvas.hasChild displayable (javaCast (jget (this).displayable) :: MyCanvas.MyCanvas))) $ do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Child Displayable is already set for: "))) (jio (StringUtil.toString ((jget (this).stringUtil)) displayable))))))) this (jget (this).sET_DISPLAYABLE))
                javaReturn (())
        Control.Monad.void (CurrentDisplayableFactory.setDisplayable this displayable)
    pure ()


setDisplayable :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setDisplayable object_ a1 = jmethod object_ "setDisplayable" (\() -> (setDisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))) () a1

setDisplayable_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setDisplayable_super object_ a1 = (setDisplayable_impl (javaCast object_ :: CurrentDisplayableFactory)) a1

setDisplayable_impl :: CurrentDisplayableFactory -> Displayable.Displayable -> IO (())
setDisplayable_impl this displayable = do
        jset (this).displayable (displayable)
        Control.Monad.void (CurrentDisplayableFactory.setOpenGlReadydisplayable this displayable)
        pure ()


setOpenGlReadydisplayable :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setOpenGlReadydisplayable object_ a1 = jmethod object_ "setOpenGlReadydisplayable" (\() -> (setOpenGlReadydisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))) () a1

setOpenGlReadydisplayable_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setOpenGlReadydisplayable_super object_ a1 = (setOpenGlReadydisplayable_impl (javaCast object_ :: CurrentDisplayableFactory)) a1

setOpenGlReadydisplayable_impl :: CurrentDisplayableFactory -> Displayable.Displayable -> IO (())
setOpenGlReadydisplayable_impl this openGlReadydisplayable = do
        jset (this).openGlReadydisplayable (openGlReadydisplayable)
        Control.Monad.void (CurrentDisplayableFactory.update this)
        pure ()


getOpenGlReadydisplayable :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getOpenGlReadydisplayable object_ = jmethod object_ "getOpenGlReadydisplayable" (\() -> (getOpenGlReadydisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))) ()

getOpenGlReadydisplayable_super :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getOpenGlReadydisplayable_super object_ = (getOpenGlReadydisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))

getOpenGlReadydisplayable_impl :: CurrentDisplayableFactory -> IO (Displayable.Displayable)
getOpenGlReadydisplayable_impl this = do
        pure ((jget (this).openGlReadydisplayable))


setRunnable :: (JavaObjectClass this_) => this_ -> GameRunnable.GameRunnable -> IO (())
setRunnable object_ a1 = jmethod object_ "setRunnable" (\() -> (setRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))) () a1

setRunnable_super :: (JavaObjectClass this_) => this_ -> GameRunnable.GameRunnable -> IO (())
setRunnable_super object_ a1 = (setRunnable_impl (javaCast object_ :: CurrentDisplayableFactory)) a1

setRunnable_impl :: CurrentDisplayableFactory -> GameRunnable.GameRunnable -> IO (())
setRunnable_impl this runnable = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) runnable))))))) this (jget (this).sET_RUNNABLE))
        jset (this).runnable (runnable)
        if ((jget (this).usedRunnable) /= (jget (this).runnable)) then do
            Control.Monad.void (CurrentDisplayableFactory.update this)
        else do
            Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).rUNNABLE_WAS_ALREADY_IN_USE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) runnable))))))) this (jget (this).sET_RUNNABLE))
        pure ()


clearRunnable :: (JavaObjectClass this_) => this_ -> IO (())
clearRunnable object_ = jmethod object_ "clearRunnable" (\() -> (clearRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))) ()

clearRunnable_super :: (JavaObjectClass this_) => this_ -> IO (())
clearRunnable_super object_ = (clearRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))

clearRunnable_impl :: CurrentDisplayableFactory -> IO (())
clearRunnable_impl this = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (NullRunnable.getInstance))))))))) this (jget (this).cLEAR_RUNNABLE))
        Control.Monad.void (CurrentDisplayableFactory.setUsedRunnable this (jio (NullWaitGameRunnable.getInstance)))
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CurrentDisplayableFactory))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: CurrentDisplayableFactory))

update_impl :: CurrentDisplayableFactory -> IO (())
update_impl this = do
        do -- synchronized
            commonSeps <- (CommonSeps.getInstance)
            features <- (Features.getInstance)
            stringMaker <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringMaker (jio (StringUtil.toString ((jget (this).stringUtil)) (jget (this).openGlReadydisplayable))))
            if ((jget SWTUtil.isSWT) && (Prelude.not (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))))) then do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (commonSeps).sPACE)))) (jget SWTUtil.sWT)))) (jget (commonSeps).sPACE)))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (NullRunnable.getInstance))))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                Control.Monad.void (CurrentDisplayableFactory.setUsedRunnable this (jio (NullWaitGameRunnable.getInstance)))
            else if (jio (J2MEUtil.isHTML)) then do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (commonSeps).sPACE)))) (jget ((jio (GraphicsStrings.getInstance))).hTML)))) (jget (commonSeps).sPACE)))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jget (this).runnable)))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                Control.Monad.void (CurrentDisplayableFactory.setUsedRunnable this (jget (this).runnable))
            else if (((javaInstanceOf (jget (this).openGlReadydisplayable) "DemoCanvas") || (javaInstanceOf (jget (this).openGlReadydisplayable) "AllBinaryGameCanvas")) || (jio (Features.isDefault features (jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL)))) then do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (commonSeps).sPACE)))) (jio (OpenGLFeature.toString ((jget ((jio (OpenGLFeatureFactory.getInstance))).oPENGL))))))) (jget (commonSeps).sPACE)))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jget (this).runnable)))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                Control.Monad.void (CurrentDisplayableFactory.setUsedRunnable this (jget (this).runnable))
            else do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append stringMaker (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jio (NullRunnable.getInstance))))))))) this (jget ((jget (this).commonStrings)).uPDATE))
                Control.Monad.void (CurrentDisplayableFactory.setUsedRunnable this (jio (NullWaitGameRunnable.getInstance)))
        pure ()


getDisplayable :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getDisplayable object_ = jmethod object_ "getDisplayable" (\() -> (getDisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))) ()

getDisplayable_super :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getDisplayable_super object_ = (getDisplayable_impl (javaCast object_ :: CurrentDisplayableFactory))

getDisplayable_impl :: CurrentDisplayableFactory -> IO (Displayable.Displayable)
getDisplayable_impl this = do
        pure ((jget (this).displayable))


getUsedRunnable :: (JavaObjectClass this_) => this_ -> IO (GameRunnable.GameRunnable)
getUsedRunnable object_ = jmethod object_ "getUsedRunnable" (\() -> (getUsedRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))) ()

getUsedRunnable_super :: (JavaObjectClass this_) => this_ -> IO (GameRunnable.GameRunnable)
getUsedRunnable_super object_ = (getUsedRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))

getUsedRunnable_impl :: CurrentDisplayableFactory -> IO (GameRunnable.GameRunnable)
getUsedRunnable_impl this = do
        pure ((jget (this).usedRunnable))


setUsedRunnable :: (JavaObjectClass this_) => this_ -> GameRunnable.GameRunnable -> IO (())
setUsedRunnable object_ a1 = jmethod object_ "setUsedRunnable" (\() -> (setUsedRunnable_impl (javaCast object_ :: CurrentDisplayableFactory))) () a1

setUsedRunnable_super :: (JavaObjectClass this_) => this_ -> GameRunnable.GameRunnable -> IO (())
setUsedRunnable_super object_ a1 = (setUsedRunnable_impl (javaCast object_ :: CurrentDisplayableFactory)) a1

setUsedRunnable_impl :: CurrentDisplayableFactory -> GameRunnable.GameRunnable -> IO (())
setUsedRunnable_impl this usedRunnable = do
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).rUNNABLE)))) (jio (StringUtil.toString ((jget (this).stringUtil)) (jget (this).runnable)))))) (jget ((jio (CommonSeps.getInstance))).cOLON_SEP)))) (jio (StringUtil.toString ((jget (this).stringUtil)) usedRunnable))))))) this (jget (this).sET_USED_RUNNABLE))
        jset (this).usedRunnable (usedRunnable)
        pure ()


