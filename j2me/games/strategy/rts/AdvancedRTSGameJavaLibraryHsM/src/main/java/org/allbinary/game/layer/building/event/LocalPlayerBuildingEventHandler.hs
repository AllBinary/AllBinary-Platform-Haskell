{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.building.event
module LocalPlayerBuildingEventHandler (module LocalPlayerBuildingEventHandler, module BasicEventHandler) where

import BasicEventHandler hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, process, process_super, process_impl, eventHandler)
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
import qualified BuildingEventListenerInterface -- same package or java.lang
import qualified RTSLayerEvent -- org.allbinary.game.layer.RTSLayerEvent
import qualified AllBinaryEventObject -- org.allbinary.logic.util.event.AllBinaryEventObject
import qualified EventListenerInterface -- org.allbinary.logic.util.event.EventListenerInterface
import qualified BasicEventHandler -- org.allbinary.logic.util.event.handler.BasicEventHandler

data LocalPlayerBuildingEventHandler = LocalPlayerBuildingEventHandler
    { header_ :: JavaHeader
    , base :: BasicEventHandler.BasicEventHandler
    }

instance JavaNull LocalPlayerBuildingEventHandler where
    javaNull = javaNullRecord "LocalPlayerBuildingEventHandler"

instance JavaEquals LocalPlayerBuildingEventHandler where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LocalPlayerBuildingEventHandler where
    (==) = jrecordEquals

instance JavaObjectClass LocalPlayerBuildingEventHandler where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE eventHandler #-}
eventHandler = unsafePerformIO ((new_) >>= newIORef)

newRecord_ :: IO LocalPlayerBuildingEventHandler
newRecord_ = do
    base <- BasicEventHandler.newRecord_
    let header_ = base.header_
    let this = LocalPlayerBuildingEventHandler header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: LocalPlayerBuildingEventHandler -> IO ()
initFields_ this = do
    pure ()

new_ :: IO LocalPlayerBuildingEventHandler
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LocalPlayerBuildingEventHandler -> IO ()
init_ this = do
        BasicEventHandler.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (LocalPlayerBuildingEventHandler)
getInstance = do
        pure ((jget LocalPlayerBuildingEventHandler.eventHandler))


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process object_ a1 a2 = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: LocalPlayerBuildingEventHandler))) () a1 a2

process_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_super object_ a1 a2 = (process_impl (javaCast object_ :: LocalPlayerBuildingEventHandler)) a1 a2

process_impl :: LocalPlayerBuildingEventHandler -> AllBinaryEventObject.AllBinaryEventObject -> EventListenerInterface.EventListenerInterface -> IO (())
process_impl this eventObject eventListenerInterface = do
        let buildingEventListenerInterface = ((javaCast eventListenerInterface :: BuildingEventListenerInterface.BuildingEventListenerInterface))
        Control.Monad.void (BuildingEventListenerInterface.onBuildingEvent buildingEventListenerInterface (javaCast eventObject :: RTSLayerEvent.RTSLayerEvent))
        pure ()


