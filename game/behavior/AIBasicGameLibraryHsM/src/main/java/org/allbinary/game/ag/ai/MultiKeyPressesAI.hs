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
-- package org.allbinary.game.ag.ai
module MultiKeyPressesAI (module MultiKeyPressesAI, module KeyPressesAI) where

import KeyPressesAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, update, update_super, update_impl, toggle, toggle_super, toggle_impl, disable, disable_super, disable_impl, enable, enable_super, enable_impl, toggleTimeHelper, gameTickTimeDelayHelper)
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
import qualified GameKeyEventFactory -- same package or java.lang
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified GameTickTimeDelayHelper -- org.allbinary.time.GameTickTimeDelayHelper
import qualified GameTickTimeDelayHelperFactory -- org.allbinary.time.GameTickTimeDelayHelperFactory
import qualified TimeDelayHelper -- org.allbinary.time.TimeDelayHelper
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified KeyPressesAI

data MultiKeyPressesAI = MultiKeyPressesAI
    { header_ :: JavaHeader
    , base :: KeyPressesAI.KeyPressesAI
    , toggleTimeHelper :: IORef (TimeDelayHelper.TimeDelayHelper)
    , gameTickTimeDelayHelper :: IORef (GameTickTimeDelayHelper.GameTickTimeDelayHelper)
    }

instance JavaNull MultiKeyPressesAI where
    javaNull = javaNullRecord "MultiKeyPressesAI"

instance JavaEquals MultiKeyPressesAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq MultiKeyPressesAI where
    (==) = jrecordEquals

instance JavaObjectClass MultiKeyPressesAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO MultiKeyPressesAI
newRecord_ = do
    base <- KeyPressesAI.newRecord_
    let header_ = base.header_
    toggleTimeHelper <- newIORef javaNull
    gameTickTimeDelayHelper <- newIORef javaNull
    let this = MultiKeyPressesAI header_ base toggleTimeHelper gameTickTimeDelayHelper
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "toggle" (\() -> toggle_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "enable" (\() -> enable_impl this)
    pure this

initFields_ :: MultiKeyPressesAI -> IO ()
initFields_ this = do
    jset this.toggleTimeHelper =<< (TimeDelayHelper.new_1 600)
    jset this.gameTickTimeDelayHelper =<< (GameTickTimeDelayHelperFactory.getInstance)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO MultiKeyPressesAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: MultiKeyPressesAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        KeyPressesAI.init_3 this.base (hashtable) (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (MultiKeyPressesAI.update this)
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: MultiKeyPressesAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: MultiKeyPressesAI)) a1

processAI_impl :: MultiKeyPressesAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        pure ()


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: MultiKeyPressesAI))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: MultiKeyPressesAI))

update_impl :: MultiKeyPressesAI -> IO (())
update_impl this = do
        gameInput <- (KeyPressesAI.getGameInput this)
        let keys = (jget (this).base.keys)
        let size = (jlength keys)
        if (jio (KeyPressesAI.isOn this)) then do
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                key <- (intValue ((jindex keys (index))))
                when (key /= (Prelude.negate 1)) $ do
                    Control.Monad.void (GameInput.add gameInput (jio (GameKeyEventFactory.getInstanceForKey ((jget (this).base.base.gameKeyEventFactory)) this key)))
        else do
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                key <- (intValue ((jindex keys (index))))
                when (key /= (Prelude.negate 1)) $ do
                    Control.Monad.void (GameInput.addForRemoval gameInput (jio (GameKeyEventFactory.getInstanceForKey ((jget (this).base.base.gameKeyEventFactory)) this key)))
        pure ()


-- throws Exception
toggle :: (JavaObjectClass this_) => this_ -> IO (())
toggle object_ = jmethod object_ "toggle" (\() -> (toggle_impl (javaCast object_ :: MultiKeyPressesAI))) ()

toggle_super :: (JavaObjectClass this_) => this_ -> IO (())
toggle_super object_ = (toggle_impl (javaCast object_ :: MultiKeyPressesAI))

toggle_impl :: MultiKeyPressesAI -> IO (())
toggle_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).toggleTimeHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            Control.Monad.void (KeyPressesAI.toggle_super this.base)
            Control.Monad.void (MultiKeyPressesAI.update this)
        pure ()


-- throws Exception
disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: MultiKeyPressesAI))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: MultiKeyPressesAI))

disable_impl :: MultiKeyPressesAI -> IO (())
disable_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).toggleTimeHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            Control.Monad.void (KeyPressesAI.disable_super this.base)
            Control.Monad.void (MultiKeyPressesAI.update this)
        pure ()


-- throws Exception
enable :: (JavaObjectClass this_) => this_ -> IO (())
enable object_ = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: MultiKeyPressesAI))) ()

enable_super :: (JavaObjectClass this_) => this_ -> IO (())
enable_super object_ = (enable_impl (javaCast object_ :: MultiKeyPressesAI))

enable_impl :: MultiKeyPressesAI -> IO (())
enable_impl this = do
        when (jio (TimeDelayHelper.isTime ((jget (this).toggleTimeHelper)) (jget ((jget (this).gameTickTimeDelayHelper)).startTime))) $ do
            Control.Monad.void (KeyPressesAI.enable_super this.base)
            Control.Monad.void (MultiKeyPressesAI.update this)
        pure ()


