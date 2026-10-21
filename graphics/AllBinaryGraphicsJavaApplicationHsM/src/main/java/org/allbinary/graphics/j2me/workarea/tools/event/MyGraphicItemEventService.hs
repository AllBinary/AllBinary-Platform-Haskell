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
-- package org.allbinary.graphics.j2me.workarea.tools.event
module MyGraphicItemEventService where

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
import qualified EventListenerList -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified EventListener -- same package or java.lang
import qualified MyGraphicItemEventListener -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified MyGraphicItemEvent -- same package or java.lang

data MyGraphicItemEventService = MyGraphicItemEventService
    { header_ :: JavaHeader
    }

instance JavaNull MyGraphicItemEventService where
    javaNull = javaNullRecord "MyGraphicItemEventService"

instance JavaEquals MyGraphicItemEventService where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MyGraphicItemEventService where
    (==) = jrecordEquals

instance JavaObjectClass MyGraphicItemEventService where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE listenerList #-}
listenerList = unsafePerformIO ((EventListenerList.new_) >>= newIORef)

{-# NOINLINE dELETE #-}
dELETE = unsafePerformIO (newIORef ("delete"))

{-# NOINLINE dESELECT #-}
dESELECT = unsafePerformIO (newIORef ("deselect"))

{-# NOINLINE sELECT #-}
sELECT = unsafePerformIO (newIORef ("select"))

{-# NOINLINE dUPLICATE #-}
dUPLICATE = unsafePerformIO (newIORef ("duplicate"))

{-# NOINLINE rOTATE #-}
rOTATE = unsafePerformIO (newIORef ("rotate"))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO MyGraphicItemEventService
newRecord_ = do
    header_ <- newJavaHeader
    let this = MyGraphicItemEventService header_
    jregisterLevel header_ this
    pure this

initFields_ :: MyGraphicItemEventService -> IO ()
initFields_ this = do
    pure ()

new_ :: IO MyGraphicItemEventService
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: MyGraphicItemEventService -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addListener :: MyGraphicItemEventListener.MyGraphicItemEventListener -> IO (())
addListener listener = do
        Control.Monad.void (add ((jget MyGraphicItemEventService.listenerList)) (javaCast (jio (jobjectGetClass listener)) :: Class.Class) (javaCast listener :: EventListener.EventListener))
        pure ()


removeListener :: MyGraphicItemEventListener.MyGraphicItemEventListener -> IO (())
removeListener listener = do
        Control.Monad.void (remove ((jget MyGraphicItemEventService.listenerList)) (javaCast (jio (jobjectGetClass listener)) :: Class.Class) (javaCast listener :: EventListener.EventListener))
        pure ()


-- throws Exception
fire :: MyGraphicItemEvent.MyGraphicItemEvent -> IO (())
fire evt = do
        listeners <- (EventListenerList.getListenerList ((jget listenerList)))
        forM_ [0, 0 + (2) .. (jlength listeners) - 1] $ \i -> javaIteration (pure ()) $ do
            when ((jindex listeners (i)) == (jio (jobjectGetClass (jindex listeners ((i + 1)))))) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (MyGraphicItemEvent.getCommand evt)) (jget MyGraphicItemEventService.sELECT)) - 1) == 0) then do
                    Control.Monad.void (highlight (((javaCast (jindex listeners ((i + 1))) :: MyGraphicItemEventListener.MyGraphicItemEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyGraphicItemEvent.getCommand evt)) (jget MyGraphicItemEventService.dESELECT)) - 1) == 0) then do
                    Control.Monad.void (deselect (((javaCast (jindex listeners ((i + 1))) :: MyGraphicItemEventListener.MyGraphicItemEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyGraphicItemEvent.getCommand evt)) (jget MyGraphicItemEventService.dELETE)) - 1) == 0) then do
                    Control.Monad.void (delete (((javaCast (jindex listeners ((i + 1))) :: MyGraphicItemEventListener.MyGraphicItemEventListener))) evt)
                else if ((Prelude.fromEnum (Prelude.compare (jio (MyGraphicItemEvent.getCommand evt)) (jget MyGraphicItemEventService.dUPLICATE)) - 1) == 0) then do
                    Control.Monad.void (duplicate (((javaCast (jindex listeners ((i + 1))) :: MyGraphicItemEventListener.MyGraphicItemEventListener))) evt)
                else when ((Prelude.fromEnum (Prelude.compare (jio (MyGraphicItemEvent.getCommand evt)) (jget MyGraphicItemEventService.rOTATE)) - 1) == 0) $ do
                    Control.Monad.void (rotate (((javaCast (jindex listeners ((i + 1))) :: MyGraphicItemEventListener.MyGraphicItemEventListener))) evt)
        pure ()


