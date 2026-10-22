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
import qualified PCClipWavPlayer -- same package or java.lang
import qualified AudioContentTypeData -- same package or java.lang
import qualified BufferedInputStream -- java.io.BufferedInputStream
import qualified ByteArrayInputStream -- java.io.ByteArrayInputStream
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified Manager -- javax.microedition.media.Manager
import qualified MediaException -- javax.microedition.media.MediaException
import qualified Player -- javax.microedition.media.Player
import qualified TsUtil -- org.allbinary.TsUtil
import qualified AudioContentTypeDataFactory -- org.allbinary.audio.AudioContentTypeDataFactory
import qualified ResourceUtil -- org.allbinary.data.resource.ResourceUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
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

tHIS = "AllBinaryMediaManagerPC"

cREATE_PLAYER = "createPlayer"

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


-- throws Exception
createPlayer :: String -> IO (Player.Player)
createPlayer resource = do
    javaCatchReturn $ do
        if (Data.List.isPrefixOf (Manager.tONE_DEVICE_LOCATOR) resource) then do
            javaReturn =<< (AllBinaryMediaManager.createPlayerFromInputStream (javaCast (jio (ByteArrayInputStream.new_1 (jget ((jio (NullUtil.getInstance))).nULL_BYTE_ARRAY)))) (jio (AudioContentTypeData.getName ((jget ((jio (AudioContentTypeDataFactory.getInstance))).mIME_AUDIO_TONE)))))
        else if (jio (Features.isFeature ((jio (Features.getInstance))) (javaCast (jget ((jio (GameFeatureFactory.getInstance))).sOUND)))) then do
            handle (\(e :: JavaException) -> do
                logUtil <- (LogUtil.getInstance)
                commonString <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put logUtil (jget (commonString).eXCEPTION) (AllBinaryMediaManager.tHIS) cREATE_PLAYER e)
                javaReturn ((javaCast NoPlayer.nO_PLAYER :: Player.Player))
                ) $ do
                inputStream <- (ResourceUtil.getResourceAsStream ((jio (ResourceUtil.getInstance))) resource)
                bufferedInputStream <- (BufferedInputStream.new_1 inputStream)
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: Player.Player) (PCClipWavPlayer.new_1 bufferedInputStream))
        else do
            javaReturn ((javaCast NoPlayer.nO_PLAYER :: Player.Player))


-- throws IOException, MediaException
createPlayerFromInputStream :: InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream stream type_ = do
        javaThrow ((JavaException "MediaException" "No Impl"))


-- throws MediaException
playTone :: Int -> Int -> Int -> IO (())
playTone frequency time volume = do
        javaThrow ((JavaException "MediaException" "No Impl"))
        pure ()


isInitialized :: IO (Bool)
isInitialized = do
        pure (True)


