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
-- package org.allbinary.media.audio
module AllBinaryMediaManager where

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
import qualified Sounds -- same package or java.lang
import qualified SoundsFactoryInterface -- same package or java.lang
import qualified NoPlayer -- same package or java.lang
import qualified InputStream -- java.io.InputStream
import qualified Player -- javax.microedition.media.Player
import qualified TsUtil -- org.allbinary.TsUtil
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data AllBinaryMediaManager = AllBinaryMediaManager
    { header_ :: JavaHeader
    }

instance JavaNull AllBinaryMediaManager where
    javaNull = javaNullRecord "AllBinaryMediaManager"

instance JavaEquals AllBinaryMediaManager where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryMediaManager where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryMediaManager where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

tHIS = "AllBinaryMediaManagerNoMediaMIDP1"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AllBinaryMediaManager
newRecord_ = do
    header_ <- newJavaHeader
    let this = AllBinaryMediaManager header_
    jregisterLevel header_ this
    pure this

initFields_ :: AllBinaryMediaManager -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryMediaManager
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryMediaManager -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isMuted :: IO (Bool)
isMuted = do
        pure (False)


setMuted :: Bool -> IO (())
setMuted aMuted = do
        pure ()


update :: IO (Bool)
update = do
        pure (True)


-- throws Exception
init :: SoundsFactoryInterface.SoundsFactoryInterface -> IO (())
init soundsFactoryInterface = do
        logUtil <- (LogUtil.getInstance)
        commonString <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).sTART) (AllBinaryMediaManager.tHIS) (jget (commonString).iNIT))
        Control.Monad.void (ProgressCanvas.addNormalPortion ((jio (ProgressCanvasFactory.getInstance))) 50 "Media Manager")
        Control.Monad.void (Sounds.init ((jio (Sounds.new_1 soundsFactoryInterface))))
        pure ()


-- throws Exception
shutdown :: SoundsFactoryInterface.SoundsFactoryInterface -> IO (())
shutdown soundsFactoryInterface = do
        Control.Monad.void (Sounds.stopAll ((jio (Sounds.new_1 soundsFactoryInterface))))
        Control.Monad.void (Sounds.closeAll ((jio (Sounds.new_1 soundsFactoryInterface))))
        Control.Monad.void (TsUtil.gc ((jio (TsUtil.getInstance))))
        pure ()


createPlayerFromInputStream :: InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream stream type_ = do
        logUtil <- (LogUtil.getInstance)
        commonString <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).sTART) (AllBinaryMediaManager.tHIS) "creatPlayer(InputStream)")
        pure ((javaCast NoPlayer.nO_PLAYER :: Player.Player))


createPlayer :: String -> IO (Player.Player)
createPlayer locator = do
        logUtil <- (LogUtil.getInstance)
        commonString <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).sTART) (AllBinaryMediaManager.tHIS) "creatPlayer(locator)")
        pure ((javaCast NoPlayer.nO_PLAYER :: Player.Player))


playTone :: Int -> Int -> Int -> IO (())
playTone frequency time volume = do
        pure ()


getSupportedContentTypes :: String -> IO (JavaArray (String))
getSupportedContentTypes protocol = do
        (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))


getSupportedProtocols :: String -> IO (JavaArray (String))
getSupportedProtocols content_type = do
        (StringUtil.getArrayInstance ((jio (StringUtil.getInstance))))


