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
-- package org.allbinary.game.input
module GameInputProcessorComposite (module GameInputProcessorComposite, module PlayerGameInput) where

import PlayerGameInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, update, update_super, update_impl, toString, toString_super, toString_impl, name, gameInputProcessorInterface, nAME_LABEL)
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
import qualified GameInputProcessorInterface -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified PlayerGameInput

data GameInputProcessorComposite = GameInputProcessorComposite
    { header_ :: JavaHeader
    , base :: PlayerGameInput.PlayerGameInput
    , name :: IORef (String)
    , gameInputProcessorInterface :: IORef (GameInputProcessorInterface.GameInputProcessorInterface)
    , nAME_LABEL :: IORef (String)
    }

instance JavaNull GameInputProcessorComposite where
    javaNull = javaNullRecord "GameInputProcessorComposite"

instance JavaEquals GameInputProcessorComposite where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameInputProcessorComposite where
    (==) = jrecordEquals

instance JavaObjectClass GameInputProcessorComposite where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GameInputProcessorComposite
newRecord_ = do
    base <- PlayerGameInput.newRecord_
    let header_ = base.header_
    name <- newIORef ""
    gameInputProcessorInterface <- newIORef javaNull
    nAME_LABEL <- newIORef ""
    let this = GameInputProcessorComposite header_ base name gameInputProcessorInterface nAME_LABEL
    jregisterLevel header_ this
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: GameInputProcessorComposite -> IO ()
initFields_ this = do
    jset this.name (javaNull)
    jset this.gameInputProcessorInterface (javaNull)
    jset this.nAME_LABEL (" GameInputProcessorInterface: ")
    pure ()

new_2 :: String -> GameInputProcessorInterface.GameInputProcessorInterface -> IO GameInputProcessorComposite
new_2 name gameInputProcessorInterface = do
    this <- newRecord_
    init_2 this name gameInputProcessorInterface
    pure this

init_2 :: GameInputProcessorComposite -> String -> GameInputProcessorInterface.GameInputProcessorInterface -> IO ()
init_2 this name gameInputProcessorInterface = do
        PlayerGameInput.init_3 this.base (jio (BasicArrayListD.new_)) (jio (BasicArrayListD.new_)) (Prelude.negate 1)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).name (name)
        jset (this).gameInputProcessorInterface (gameInputProcessorInterface)
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: GameInputProcessorComposite))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: GameInputProcessorComposite))

update_impl :: GameInputProcessorComposite -> IO (())
update_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).base.base.logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).uPDATE) e)
            ) $ do
            list <- (PlayerGameInput.getGameKeyEventList this)
            Control.Monad.void (GameInputProcessorInterface.onInput ((jget (this).gameInputProcessorInterface)) list)
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: GameInputProcessorComposite))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: GameInputProcessorComposite))

toString_impl :: GameInputProcessorComposite -> IO (String)
toString_impl this = do
        (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jio (PlayerGameInput.toString_super this.base))))) (jget (this).nAME_LABEL)))) (jget (this).name)))))


