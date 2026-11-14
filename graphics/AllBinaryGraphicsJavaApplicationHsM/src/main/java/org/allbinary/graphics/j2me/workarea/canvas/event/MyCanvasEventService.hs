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
-- package org.allbinary.graphics.j2me.workarea.canvas.event
module MyCanvasEventService where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified EventListenerList -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified EventListener -- same package or java.lang
import qualified MyCanvasEventListener -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified MyCanvasEvent -- same package or java.lang

data MyCanvasEventService = MyCanvasEventService
    { header_ :: JavaHeader
    }

instance JavaNull MyCanvasEventService where
    javaNull = javaNullRecord "MyCanvasEventService"

instance JavaEquals MyCanvasEventService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyCanvasEventService where
    (==) = jrecordEquals

instance JavaObjectClass MyCanvasEventService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

listenerList :: IORef (EventListenerList.EventListenerList)
{-# NOINLINE listenerList #-}
listenerList = unsafePerformIO ((EventListenerList.new_) >>= newIORef)

dELETE :: IORef (String)
{-# NOINLINE dELETE #-}
dELETE = unsafePerformIO (newIORef ("delete"))

dUPLICATE :: IORef (String)
{-# NOINLINE dUPLICATE #-}
dUPLICATE = unsafePerformIO (newIORef ("duplicate"))

sELECT :: IORef (String)
{-# NOINLINE sELECT #-}
sELECT = unsafePerformIO (newIORef ("select"))

rOTATE :: IORef (String)
{-# NOINLINE rOTATE #-}
rOTATE = unsafePerformIO (newIORef ("rotate"))

eXPLODE :: IORef (String)
{-# NOINLINE eXPLODE #-}
eXPLODE = unsafePerformIO (newIORef ("explode"))

aUTOEXPLODE :: IORef (String)
{-# NOINLINE aUTOEXPLODE #-}
aUTOEXPLODE = unsafePerformIO (newIORef ("autoExplode"))

cENTER :: IORef (String)
{-# NOINLINE cENTER #-}
cENTER = unsafePerformIO (newIORef ("center"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO MyCanvasEventService
newRecord_ = do
    header_ <- newJavaHeader
    let this = MyCanvasEventService header_
    jregisterLevel header_ this
    pure this

initFields_ :: MyCanvasEventService -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MyCanvasEventService
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyCanvasEventService -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addListener :: MyCanvasEventListener.MyCanvasEventListener -> IO (())
addListener listener = do
        Control.Monad.void (EventListenerList.add ((jget MyCanvasEventService.listenerList)) (javaCast (jio (jobjectGetClass listener)) :: Class.Class) (javaCast listener :: EventListener.EventListener))
        pure ()


removeListener :: MyCanvasEventListener.MyCanvasEventListener -> IO (())
removeListener listener = do
        Control.Monad.void (EventListenerList.remove ((jget MyCanvasEventService.listenerList)) (javaCast (jio (jobjectGetClass listener)) :: Class.Class) (javaCast listener :: EventListener.EventListener))
        pure ()


-- throws Exception
fire :: MyCanvasEvent.MyCanvasEvent -> IO (())
fire evt = do
        listeners <- (EventListenerList.getListenerList ((jget listenerList)))
        forM_ [0, 0 + (2) .. (jlength listeners) - 1] $ \i -> javaIteration (pure ()) $ do
            when ((jindex listeners (i)) == (jio (jobjectGetClass (jindex listeners ((i + 1)))))) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.dELETE)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.delete (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.dUPLICATE)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.duplicate (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.sELECT)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.select (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.rOTATE)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.rotate (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.eXPLODE)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.explode (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.aUTOEXPLODE)) - 1) == 0) then do
                    Control.Monad.void (MyCanvasEventListener.autoExplode (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
                else when ((Prelude.fromEnum (Prelude.compare (jio (MyCanvasEvent.getCommand evt)) (jget MyCanvasEventService.cENTER)) - 1) == 0) $ do
                    Control.Monad.void (MyCanvasEventListener.center (((javaCast (jindex listeners ((i + 1))) :: MyCanvasEventListener.MyCanvasEventListener))) evt)
        pure ()


