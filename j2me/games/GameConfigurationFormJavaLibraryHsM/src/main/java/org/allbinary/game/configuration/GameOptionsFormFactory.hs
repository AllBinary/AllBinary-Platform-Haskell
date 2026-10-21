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
-- package org.allbinary.game.configuration
module GameOptionsFormFactory where

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
import qualified GameOptionsForm -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data GameOptionsFormFactory = GameOptionsFormFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull GameOptionsFormFactory where
    javaNull = javaNullRecord "GameOptionsFormFactory"

instance JavaEquals GameOptionsFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GameOptionsFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass GameOptionsFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GameOptionsFormFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = GameOptionsFormFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    pure this

initFields_ :: GameOptionsFormFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO GameOptionsFormFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GameOptionsFormFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (GameOptionsFormFactory)
getInstance = do
        pure (GameOptionsFormFactory.instance_)


init :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (CommandForm.CommandForm)
init object_ a1 a2 a3 a4 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GameOptionsFormFactory))) () a1 a2 a3 a4

init_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (CommandForm.CommandForm)
init_super object_ a1 a2 a3 a4 = (init_impl (javaCast object_ :: GameOptionsFormFactory)) a1 a2 a3 a4

init_impl :: GameOptionsFormFactory -> CommandListener.CommandListener -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (CommandForm.CommandForm)
init_impl this commandListener title backgrounBasicColor foregroundBasicColor = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
            (CommandForm.getNullCommandForm)
            ) $ do
            (fmap (\value_ -> javaCast value_ :: CommandForm.CommandForm) (GameOptionsForm.new_4 commandListener title backgrounBasicColor foregroundBasicColor))


