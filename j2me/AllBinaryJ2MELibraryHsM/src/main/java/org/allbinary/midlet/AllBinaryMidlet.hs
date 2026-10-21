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
-- package org.allbinary.midlet
module AllBinaryMidlet (module AllBinaryMidlet, module MIDlet) where

import MIDlet hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getNullInstance, getNullInstance_super, getNullInstance_impl, setDisplay, setDisplay_super, setDisplay_impl, getDisplay, getDisplay_super, getDisplay_impl, getCurrentDisplayable, getCurrentDisplayable_super, getCurrentDisplayable_impl, setDestroyed, setDestroyed_super, setDestroyed_impl, isDestroyed, isDestroyed_super, isDestroyed_impl, startApp, startApp_super, startApp_impl, pauseApp, pauseApp_super, pauseApp_impl, destroyAppInRunnable, destroyAppInRunnable_super, destroyAppInRunnable_impl, destroyApp, destroyApp_super, destroyApp_impl, setStartStateHashtable, setStartStateHashtable_super, setStartStateHashtable_impl, getStartStateHashtable, getStartStateHashtable_super, getStartStateHashtable_impl, getCurrentStateHashtable, getCurrentStateHashtable_super, getCurrentStateHashtable_impl, commandAction, commandAction_super, commandAction_impl, nULL_ALLBINARY_MIDLET, logUtil, commonStrings, sET_DISPLAY, sETTING_, _DISPLAY_, sETTING_NO_TITLE, hashtable, midletDestroyed)
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
import qualified Command -- javax.microedition.lcdui.Command
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified Display -- javax.microedition.lcdui.Display
import qualified Displayable -- javax.microedition.lcdui.Displayable
import qualified NullCanvas -- javax.microedition.lcdui.NullCanvas
import qualified MIDlet -- javax.microedition.midlet.MIDlet
import qualified MIDletStateChangeException -- javax.microedition.midlet.MIDletStateChangeException
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ForcedLogUtil -- org.allbinary.logic.communication.log.ForcedLogUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified EventStrings -- org.allbinary.logic.util.event.EventStrings
import qualified CommonLabels -- org.allbinary.string.CommonLabels
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Memory -- org.allbinary.system.Memory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified ABHashtable -- org.allbinary.util.ABHashtable

-- implements CommandListener
data AllBinaryMidlet = AllBinaryMidlet
    { header_ :: JavaHeader
    , base :: MIDlet.MIDlet
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , sET_DISPLAY :: IORef (String)
    , sETTING_ :: IORef (String)
    , _DISPLAY_ :: IORef (String)
    , sETTING_NO_TITLE :: IORef (String)
    , hashtable :: IORef (ABHashtable.ABHashtable)
    , midletDestroyed :: IORef (Bool)
    }

instance JavaNull AllBinaryMidlet where
    javaNull = javaNullRecord "AllBinaryMidlet"

instance JavaEquals AllBinaryMidlet where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryMidlet where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryMidlet where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE nULL_ALLBINARY_MIDLET #-}
nULL_ALLBINARY_MIDLET = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO AllBinaryMidlet
newRecord_ = do
    base <- MIDlet.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    sET_DISPLAY <- newIORef ""
    sETTING_ <- newIORef ""
    _DISPLAY_ <- newIORef ""
    sETTING_NO_TITLE <- newIORef ""
    hashtable <- newIORef javaNull
    midletDestroyed <- newIORef False
    let this = AllBinaryMidlet header_ base logUtil commonStrings sET_DISPLAY sETTING_ _DISPLAY_ sETTING_NO_TITLE hashtable midletDestroyed
    jregisterLevel header_ this
    CommandListener.registerInterface_ header_
    jregisterMethod header_ "setDisplay" (\() -> setDisplay_impl this)
    jregisterMethod header_ "getDisplay" (\() -> getDisplay_impl this)
    jregisterMethod header_ "getCurrentDisplayable" (\() -> getCurrentDisplayable_impl this)
    jregisterMethod header_ "setDestroyed" (\() -> setDestroyed_impl this)
    jregisterMethod header_ "isDestroyed" (\() -> isDestroyed_impl this)
    jregisterMethod header_ "startApp" (\() -> startApp_impl this)
    jregisterMethod header_ "pauseApp" (\() -> pauseApp_impl this)
    jregisterMethod header_ "destroyAppInRunnable" (\() -> destroyAppInRunnable_impl this)
    jregisterMethod header_ "destroyApp" (\() -> destroyApp_impl this)
    jregisterMethod header_ "setStartStateHashtable" (\() -> setStartStateHashtable_impl this)
    jregisterMethod header_ "getStartStateHashtable" (\() -> getStartStateHashtable_impl this)
    jregisterMethod header_ "getCurrentStateHashtable" (\() -> getCurrentStateHashtable_impl this)
    jregisterMethod header_ "commandAction" (\() -> commandAction_impl this)
    pure this

initFields_ :: AllBinaryMidlet -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.sET_DISPLAY ("setDisplay")
    jset this.sETTING_ ("Setting: ")
    jset this._DISPLAY_ (" Display: ")
    jset this.sETTING_NO_TITLE ("Setting: No Title, Display: ")
    jset this.hashtable =<< (StdUtil.createHashtable ((jio (StdUtil.getInstance))))
    jset this.midletDestroyed (False)
    pure ()


getNullInstance :: IO (AllBinaryMidlet)
getNullInstance = do
        when ((jget AllBinaryMidlet.nULL_ALLBINARY_MIDLET) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset AllBinaryMidlet.nULL_ALLBINARY_MIDLET (assignedValue)
        pure ((javaCast (jget AllBinaryMidlet.nULL_ALLBINARY_MIDLET) :: AllBinaryMidlet))

new_ :: IO AllBinaryMidlet
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryMidlet -> IO ()
init_ this = do
        MIDlet.init_ this.base
        initFields_ this
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).cONSTRUCTOR) this "AllBinaryMidlet::AllBinaryMidlet")
        pure ()


setDisplay :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setDisplay object_ a1 = jmethod object_ "setDisplay" (\() -> (setDisplay_impl (javaCast object_ :: AllBinaryMidlet))) () a1

setDisplay_super :: (JavaObjectClass this_) => this_ -> Displayable.Displayable -> IO (())
setDisplay_super object_ a1 = (setDisplay_impl (javaCast object_ :: AllBinaryMidlet)) a1

setDisplay_impl :: AllBinaryMidlet -> Displayable.Displayable -> IO (())
setDisplay_impl this newDisplay = do
        title <- newIORef ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        when ((jtoObject newDisplay) /= (jtoObject NullCanvas.nULL_CANVAS)) $ do
            assignedValue <- (Displayable.getTitle newDisplay)
            jset title (assignedValue)
            if ((jget title) /= javaNull) then do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).sETTING_)))) (jget title)))) (jget (this)._DISPLAY_)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) newDisplay))))))) this (jget (this).sET_DISPLAY))
            else do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).sETTING_NO_TITLE)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) newDisplay))))))) this (jget (this).sET_DISPLAY))
        display <- (AllBinaryMidlet.getDisplay this)
        Control.Monad.void (Display.setCurrent display newDisplay)
        pure ()


getDisplay :: (JavaObjectClass this_) => this_ -> IO (Display.Display)
getDisplay object_ = jmethod object_ "getDisplay" (\() -> (getDisplay_impl (javaCast object_ :: AllBinaryMidlet))) ()

getDisplay_super :: (JavaObjectClass this_) => this_ -> IO (Display.Display)
getDisplay_super object_ = (getDisplay_impl (javaCast object_ :: AllBinaryMidlet))

getDisplay_impl :: AllBinaryMidlet -> IO (Display.Display)
getDisplay_impl this = do
        (Display.getDisplay this)


getCurrentDisplayable :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getCurrentDisplayable object_ = jmethod object_ "getCurrentDisplayable" (\() -> (getCurrentDisplayable_impl (javaCast object_ :: AllBinaryMidlet))) ()

getCurrentDisplayable_super :: (JavaObjectClass this_) => this_ -> IO (Displayable.Displayable)
getCurrentDisplayable_super object_ = (getCurrentDisplayable_impl (javaCast object_ :: AllBinaryMidlet))

getCurrentDisplayable_impl :: AllBinaryMidlet -> IO (Displayable.Displayable)
getCurrentDisplayable_impl this = do
        (Display.getCurrent ((jio (Display.getDisplay this))))


setDestroyed :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed object_ a1 = jmethod object_ "setDestroyed" (\() -> (setDestroyed_impl (javaCast object_ :: AllBinaryMidlet))) () a1

setDestroyed_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setDestroyed_super object_ a1 = (setDestroyed_impl (javaCast object_ :: AllBinaryMidlet)) a1

setDestroyed_impl :: AllBinaryMidlet -> Bool -> IO (())
setDestroyed_impl this destroyed = do
        jset (this).midletDestroyed (destroyed)
        pure ()


isDestroyed :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed object_ = jmethod object_ "isDestroyed" (\() -> (isDestroyed_impl (javaCast object_ :: AllBinaryMidlet))) ()

isDestroyed_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isDestroyed_super object_ = (isDestroyed_impl (javaCast object_ :: AllBinaryMidlet))

isDestroyed_impl :: AllBinaryMidlet -> IO (Bool)
isDestroyed_impl this = do
        pure ((jget (this).midletDestroyed))


-- throws MIDletStateChangeException
startApp :: (JavaObjectClass this_) => this_ -> IO (())
startApp object_ = jmethod object_ "startApp" (\() -> (startApp_impl (javaCast object_ :: AllBinaryMidlet))) ()

startApp_super :: (JavaObjectClass this_) => this_ -> IO (())
startApp_super object_ = (startApp_impl (javaCast object_ :: AllBinaryMidlet))

startApp_impl :: AllBinaryMidlet -> IO (())
startApp_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


pauseApp :: (JavaObjectClass this_) => this_ -> IO (())
pauseApp object_ = jmethod object_ "pauseApp" (\() -> (pauseApp_impl (javaCast object_ :: AllBinaryMidlet))) ()

pauseApp_super :: (JavaObjectClass this_) => this_ -> IO (())
pauseApp_super object_ = (pauseApp_impl (javaCast object_ :: AllBinaryMidlet))

pauseApp_impl :: AllBinaryMidlet -> IO (())
pauseApp_impl this = do
        Control.Monad.void (ForcedLogUtil.log (jget ((jio (EventStrings.getInstance))).pERFORMANCE_MESSAGE) this)
        pure ()


destroyAppInRunnable :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (())
destroyAppInRunnable object_ a1 a2 = jmethod object_ "destroyAppInRunnable" (\() -> (destroyAppInRunnable_impl (javaCast object_ :: AllBinaryMidlet))) () a1 a2

destroyAppInRunnable_super :: (JavaObjectClass this_) => this_ -> Bool -> Bool -> IO (())
destroyAppInRunnable_super object_ a1 a2 = (destroyAppInRunnable_impl (javaCast object_ :: AllBinaryMidlet)) a1 a2

destroyAppInRunnable_impl :: AllBinaryMidlet -> Bool -> Bool -> IO (())
destroyAppInRunnable_impl this unconditional isProgress = do
        pure ()


destroyApp :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
destroyApp object_ a1 = jmethod object_ "destroyApp" (\() -> (destroyApp_impl (javaCast object_ :: AllBinaryMidlet))) () a1

destroyApp_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
destroyApp_super object_ a1 = (destroyApp_impl (javaCast object_ :: AllBinaryMidlet)) a1

destroyApp_impl :: AllBinaryMidlet -> Bool -> IO (())
destroyApp_impl this unconditional = do
        let mETHOD_NAME = "AllBinaryMidlet::destroyApp"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this mETHOD_NAME e)
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this mETHOD_NAME)
            Control.Monad.void (PreLogUtil.put (jio (Memory.getInfo)) this mETHOD_NAME)
            Control.Monad.void (AllBinaryMidlet.setDestroyed this True)
        pure ()


-- throws Exception
setStartStateHashtable :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setStartStateHashtable object_ a1 = jmethod object_ "setStartStateHashtable" (\() -> (setStartStateHashtable_impl (javaCast object_ :: AllBinaryMidlet))) () a1

setStartStateHashtable_super :: (JavaObjectClass this_) => this_ -> ABHashtable.ABHashtable -> IO (())
setStartStateHashtable_super object_ a1 = (setStartStateHashtable_impl (javaCast object_ :: AllBinaryMidlet)) a1

setStartStateHashtable_impl :: AllBinaryMidlet -> ABHashtable.ABHashtable -> IO (())
setStartStateHashtable_impl this hashtable = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) hashtable))))))) this "setStartStateHashtable")
        jset (this).hashtable (hashtable)
        pure ()


-- throws Exception
getStartStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getStartStateHashtable object_ = jmethod object_ "getStartStateHashtable" (\() -> (getStartStateHashtable_impl (javaCast object_ :: AllBinaryMidlet))) ()

getStartStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getStartStateHashtable_super object_ = (getStartStateHashtable_impl (javaCast object_ :: AllBinaryMidlet))

getStartStateHashtable_impl :: AllBinaryMidlet -> IO (ABHashtable.ABHashtable)
getStartStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget ((jio (CommonLabels.getInstance))).sTART_LABEL)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) (jget (this).hashtable)))))))) this "getStartStateHashtable")
        pure ((jget (this).hashtable))


-- throws Exception
getCurrentStateHashtable :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable object_ = jmethod object_ "getCurrentStateHashtable" (\() -> (getCurrentStateHashtable_impl (javaCast object_ :: AllBinaryMidlet))) ()

getCurrentStateHashtable_super :: (JavaObjectClass this_) => this_ -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_super object_ = (getCurrentStateHashtable_impl (javaCast object_ :: AllBinaryMidlet))

getCurrentStateHashtable_impl :: AllBinaryMidlet -> IO (ABHashtable.ABHashtable)
getCurrentStateHashtable_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getStateHashtable")
        pure ((jget ((jio (StdUtil.getInstance))).nULL_TABLE))


commandAction :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction object_ a1 a2 = jmethod object_ "commandAction" (\() -> (commandAction_impl (javaCast object_ :: AllBinaryMidlet))) () a1 a2

commandAction_super :: (JavaObjectClass this_) => this_ -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_super object_ a1 a2 = (commandAction_impl (javaCast object_ :: AllBinaryMidlet)) a1 a2

commandAction_impl :: AllBinaryMidlet -> Command.Command -> Displayable.Displayable -> IO (())
commandAction_impl this command displayable = do
        pure ()


