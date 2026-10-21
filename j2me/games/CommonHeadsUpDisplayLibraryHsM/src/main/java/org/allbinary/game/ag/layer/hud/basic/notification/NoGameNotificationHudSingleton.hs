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
-- package org.allbinary.game.ag.layer.hud.basic.notification
module NoGameNotificationHudSingleton where

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
import qualified GameNotificationHud -- same package or java.lang
import qualified BasicHudFactory -- org.allbinary.game.graphics.hud.BasicHudFactory
import qualified BasicColorFactory -- org.allbinary.graphics.color.BasicColorFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data NoGameNotificationHudSingleton = NoGameNotificationHudSingleton
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , gameNotificationHud :: IORef (GameNotificationHud.GameNotificationHud)
    }

instance JavaNull NoGameNotificationHudSingleton where
    javaNull = javaNullRecord "NoGameNotificationHudSingleton"

instance JavaEquals NoGameNotificationHudSingleton where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoGameNotificationHudSingleton where
    (==) = jrecordEquals

instance JavaObjectClass NoGameNotificationHudSingleton where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NoGameNotificationHudSingleton
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    gameNotificationHud <- newIORef javaNull
    let this = NoGameNotificationHudSingleton header_ logUtil gameNotificationHud
    jregisterLevel header_ this
    jregisterMethod header_ "getGameNotificationHud" (\() -> getGameNotificationHud_impl this)
    pure this

initFields_ :: NoGameNotificationHudSingleton -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.gameNotificationHud (GameNotificationHud.nULL_GAME_NOTIFICATION)
    pure ()


getInstance :: IO (NoGameNotificationHudSingleton)
getInstance = do
        pure (NoGameNotificationHudSingleton.instance_)

new_ :: IO NoGameNotificationHudSingleton
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NoGameNotificationHudSingleton -> IO ()
init_ this = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).cONSTRUCTOR) e)
            ) $ do
            basicHudFactory <- (BasicHudFactory.getInstance)
            -- Java nested class NoGameGameNotificationHud: move it to its own module

            assignedValue <- (fmap (\value_ -> javaCast value_ :: GameNotificationHud.GameNotificationHud) (NoGameGameNotificationHud.new_))
            jset (this).gameNotificationHud (assignedValue)
        pure ()


getGameNotificationHud :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud object_ = jmethod object_ "getGameNotificationHud" (\() -> (getGameNotificationHud_impl (javaCast object_ :: NoGameNotificationHudSingleton))) ()

getGameNotificationHud_super :: (JavaObjectClass this_) => this_ -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_super object_ = (getGameNotificationHud_impl (javaCast object_ :: NoGameNotificationHudSingleton))

getGameNotificationHud_impl :: NoGameNotificationHudSingleton -> IO (GameNotificationHud.GameNotificationHud)
getGameNotificationHud_impl this = do
        pure ((jget (this).gameNotificationHud))


