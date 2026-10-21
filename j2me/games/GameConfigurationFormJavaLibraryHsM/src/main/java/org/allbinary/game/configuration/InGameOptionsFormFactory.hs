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
module InGameOptionsFormFactory where

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
import qualified InGameOptionsForm -- same package or java.lang
import qualified CommandListener -- javax.microedition.lcdui.CommandListener
import qualified BasicColor -- org.allbinary.graphics.color.BasicColor
import qualified CommandForm -- org.allbinary.graphics.displayable.screen.CommandForm
import qualified Init -- org.allbinary.init.Init
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data InGameOptionsFormFactory = InGameOptionsFormFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , sINGLETON :: IORef (CommandForm.CommandForm)
    }

instance JavaNull InGameOptionsFormFactory where
    javaNull = javaNullRecord "InGameOptionsFormFactory"

instance JavaEquals InGameOptionsFormFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InGameOptionsFormFactory where
    (==) = jrecordEquals

instance JavaObjectClass InGameOptionsFormFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InGameOptionsFormFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    sINGLETON <- newIORef javaNull
    let this = InGameOptionsFormFactory header_ logUtil sINGLETON
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    pure this

initFields_ :: InGameOptionsFormFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sINGLETON =<< (CommandForm.getNullCommandForm)
    pure ()

new_ :: IO InGameOptionsFormFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InGameOptionsFormFactory -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InGameOptionsFormFactory)
getInstance = do
        when ((jget InGameOptionsFormFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset InGameOptionsFormFactory.instance_ (assignedValue)
        pure ((javaCast (jget InGameOptionsFormFactory.instance_) :: InGameOptionsFormFactory))


init :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Init.Init -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (())
init object_ a1 a2 a3 a4 a5 = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InGameOptionsFormFactory))) () a1 a2 a3 a4 a5

init_super :: (JavaObjectClass this_) => this_ -> CommandListener.CommandListener -> Init.Init -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (())
init_super object_ a1 a2 a3 a4 a5 = (init_impl (javaCast object_ :: InGameOptionsFormFactory)) a1 a2 a3 a4 a5

init_impl :: InGameOptionsFormFactory -> CommandListener.CommandListener -> Init.Init -> String -> BasicColor.BasicColor -> BasicColor.BasicColor -> IO (())
init_impl this commandListener initInterface title backgrounBasicColor foregroundBasicColor = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).iNIT) e)
            ) $ do
            when ((jget (this).sINGLETON) == (jio (CommandForm.getNullCommandForm))) $ do
                Control.Monad.void (Init.init initInterface)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: CommandForm.CommandForm) (InGameOptionsForm.new_4 commandListener title backgrounBasicColor foregroundBasicColor))
                jset (this).sINGLETON (assignedValue)
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InGameOptionsFormFactory))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (CommandForm.CommandForm)
get_super object_ = (get_impl (javaCast object_ :: InGameOptionsFormFactory))

get_impl :: InGameOptionsFormFactory -> IO (CommandForm.CommandForm)
get_impl this = do
        pure ((jget (this).sINGLETON))


