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
module KeyPressesAI (module KeyPressesAI, module BasicAI) where

import BasicAI hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processAI, processAI_super, processAI_impl, toggle, toggle_super, toggle_impl, disable, disable_super, disable_impl, enable, enable_super, enable_impl, setOn, setOn_super, setOn_impl, isOn, isOn_super, isOn_impl, on, keys)
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
import qualified GameInput -- org.allbinary.game.input.GameInput
import qualified AllBinaryLayer -- org.allbinary.layer.AllBinaryLayer
import qualified AllBinaryLayerManager -- org.allbinary.layer.AllBinaryLayerManager
import qualified HashtableUtil -- org.allbinary.util.HashtableUtil
import qualified BasicAI -- org.allbinary.game.ai.BasicAI
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data KeyPressesAI = KeyPressesAI
    { header_ :: JavaHeader
    , base :: BasicAI.BasicAI
    , on :: IORef (Bool)
    , keys :: IORef (JavaArray (Int))
    }

instance JavaNull KeyPressesAI where
    javaNull = javaNullRecord "KeyPressesAI"

instance JavaEquals KeyPressesAI where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeyPressesAI where
    (==) = jrecordEquals

instance JavaObjectClass KeyPressesAI where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO KeyPressesAI
newRecord_ = do
    base <- BasicAI.newRecord_
    let header_ = base.header_
    on <- newIORef False
    keys <- newIORef javaNull
    let this = KeyPressesAI header_ base on keys
    jregisterLevel header_ this
    jregisterMethod header_ "processAI" (\() -> processAI_impl this)
    jregisterMethod header_ "toggle" (\() -> toggle_impl this)
    jregisterMethod header_ "disable" (\() -> disable_impl this)
    jregisterMethod header_ "enable" (\() -> enable_impl this)
    jregisterMethod header_ "setOn" (\() -> setOn_impl this)
    jregisterMethod header_ "isOn" (\() -> isOn_impl this)
    pure this

initFields_ :: KeyPressesAI -> IO ()
initFields_ this = do
    jset this.on (True)
    jset this.keys (javaNull)
    pure ()

new_3 :: ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO KeyPressesAI
new_3 hashtable ownerLayerInterface gameInput = do
    this <- newRecord_
    init_3 this hashtable ownerLayerInterface gameInput
    pure this

init_3 :: KeyPressesAI -> ABHashtable.ABHashtable -> AllBinaryLayer.AllBinaryLayer -> GameInput.GameInput -> IO ()
init_3 this hashtable ownerLayerInterface gameInput = do
        BasicAI.init_2 this.base (ownerLayerInterface) (gameInput)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).keys ((jnewArray ((jio (ABHashtable.size hashtable))) javaNull))
        objectArray <- (HashtableUtil.getKeysAsArray ((jio (HashtableUtil.getInstance))) hashtable)
        let size = (jlength objectArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jsetIndex ((jget (this).keys)) (index) ((javaCast (jio (ABHashtable.get hashtable (javaCast (jindex objectArray (index)) :: Any.Any))) :: Int))
        pure ()


-- throws Exception
processAI :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI object_ a1 = jmethod object_ "processAI" (\() -> (processAI_impl (javaCast object_ :: KeyPressesAI))) () a1

processAI_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_super object_ a1 = (processAI_impl (javaCast object_ :: KeyPressesAI)) a1

processAI_impl :: KeyPressesAI -> AllBinaryLayerManager.AllBinaryLayerManager -> IO (())
processAI_impl this allBinaryLayerManager = do
        when (jget (this).on) $ do
            forM_ [0 .. (jlength (jget (this).keys)) - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicAI.processKeyAI_super this.base (jio (intValue ((jindex ((jget (this).keys)) (index))))))
        pure ()


-- throws Exception
toggle :: (JavaObjectClass this_) => this_ -> IO (())
toggle object_ = jmethod object_ "toggle" (\() -> (toggle_impl (javaCast object_ :: KeyPressesAI))) ()

toggle_super :: (JavaObjectClass this_) => this_ -> IO (())
toggle_super object_ = (toggle_impl (javaCast object_ :: KeyPressesAI))

toggle_impl :: KeyPressesAI -> IO (())
toggle_impl this = do
        if (jio (KeyPressesAI.isOn this)) then do
            Control.Monad.void (KeyPressesAI.setOn this False)
        else do
            Control.Monad.void (KeyPressesAI.setOn this True)
        pure ()


-- throws Exception
disable :: (JavaObjectClass this_) => this_ -> IO (())
disable object_ = jmethod object_ "disable" (\() -> (disable_impl (javaCast object_ :: KeyPressesAI))) ()

disable_super :: (JavaObjectClass this_) => this_ -> IO (())
disable_super object_ = (disable_impl (javaCast object_ :: KeyPressesAI))

disable_impl :: KeyPressesAI -> IO (())
disable_impl this = do
        Control.Monad.void (KeyPressesAI.setOn this False)
        pure ()


-- throws Exception
enable :: (JavaObjectClass this_) => this_ -> IO (())
enable object_ = jmethod object_ "enable" (\() -> (enable_impl (javaCast object_ :: KeyPressesAI))) ()

enable_super :: (JavaObjectClass this_) => this_ -> IO (())
enable_super object_ = (enable_impl (javaCast object_ :: KeyPressesAI))

enable_impl :: KeyPressesAI -> IO (())
enable_impl this = do
        Control.Monad.void (KeyPressesAI.setOn this True)
        pure ()


setOn :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOn object_ a1 = jmethod object_ "setOn" (\() -> (setOn_impl (javaCast object_ :: KeyPressesAI))) () a1

setOn_super :: (JavaObjectClass this_) => this_ -> Bool -> IO (())
setOn_super object_ a1 = (setOn_impl (javaCast object_ :: KeyPressesAI)) a1

setOn_impl :: KeyPressesAI -> Bool -> IO (())
setOn_impl this on = do
        jset (this).on (on)
        pure ()


isOn :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOn object_ = jmethod object_ "isOn" (\() -> (isOn_impl (javaCast object_ :: KeyPressesAI))) ()

isOn_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isOn_super object_ = (isOn_impl (javaCast object_ :: KeyPressesAI))

isOn_impl :: KeyPressesAI -> IO (Bool)
isOn_impl this = do
        pure ((jget (this).on))


