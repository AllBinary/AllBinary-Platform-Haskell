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
import qualified Sound -- same package or java.lang
import qualified AndroidMediaPlayerWrapper -- same package or java.lang
import qualified PlayerComposite -- same package or java.lang
import qualified MediaPlayerUtil -- same package or java.lang
import qualified NoPlayer -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified IOException -- java.io.IOException
import qualified InputStream -- java.io.InputStream
import qualified MediaException -- javax.microedition.media.MediaException
import qualified Player -- javax.microedition.media.Player
import qualified TsUtil -- org.allbinary.TsUtil
import qualified Features -- org.allbinary.game.configuration.feature.Features
import qualified GameFeatureFactory -- org.allbinary.game.configuration.feature.GameFeatureFactory
import qualified ProgressCanvasFactory -- org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
import qualified ABSystemWrapper -- org.allbinary.logic.ABSystemWrapper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonLabels -- org.allbinary.string.CommonLabels
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

tHIS = "AllBinaryMediaManagerAndroid"

{-# NOINLINE mostUsedTotal #-}
mostUsedTotal = unsafePerformIO (newIORef (0))

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
        Control.Monad.void (AllBinaryMediaManager.shutdown soundsFactoryInterface)
        Control.Monad.void (ProgressCanvas.addNormalPortion ((jio (ProgressCanvasFactory.getInstance))) 50 "Media Manager")
        Control.Monad.void (TsUtil.gc ((jio (TsUtil.getInstance))))
        Control.Monad.void (Sounds.init ((jio (Sounds.new_1 soundsFactoryInterface))))
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).eND) (AllBinaryMediaManager.tHIS) (jget (commonString).iNIT))
        pure ()


-- throws Exception
shutdown :: SoundsFactoryInterface.SoundsFactoryInterface -> IO (())
shutdown soundsFactoryInterface = do
        logUtil <- (LogUtil.getInstance)
        commonString <- (CommonStrings.getInstance)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).sTART) (AllBinaryMediaManager.tHIS) "shutdown")
        when (jio (SoundsFactoryInterface.isInitialized soundsFactoryInterface)) $ do
            Control.Monad.void (Sounds.stopAll ((jio (Sounds.new_1 soundsFactoryInterface))))
            soundInterfaceArray <- (SoundsFactoryInterface.getSoundInterfaceArray soundsFactoryInterface)
            player <- newIORef (javaNull)
            player2 <- newIORef (javaNull)
            androidMediaPlayerWrapper <- newIORef (javaNull)
            forM_ [0 .. (jlength soundInterfaceArray) - 1] $ \i -> javaIteration (pure ()) $ do
                when ((jindex soundInterfaceArray (i)) /= javaNull) $ do
                    assignedValue <- (getPlayerP ((jindex soundInterfaceArray (i))))
                    jset player (assignedValue)
                    when ((jget player) /= javaNull) $ do
                        assignedValue <- (getPlayerP (((javaCast (jget player) :: PlayerComposite.PlayerComposite))))
                        jset player2 (assignedValue)
                        if (javaInstanceOf (jget player2) "AndroidMediaPlayerWrapper") then do
                            jset androidMediaPlayerWrapper ((javaCast (jget player2) :: AndroidMediaPlayerWrapper.AndroidMediaPlayerWrapper))
                            Control.Monad.void (MediaPlayerUtil.waitForMediaPlayer ((jio (MediaPlayerUtil.getInstance))) (jio (AndroidMediaPlayerWrapper.getMediaPlayer ((jget androidMediaPlayerWrapper)))))
                        else do
                            javaThrow ((JavaException "Exception" ("Unknown Property Player: " ++ (jio (Class.getName ((jio (jobjectGetClass (jget player)))))))))
            Control.Monad.void (Sounds.closeAll ((jio (Sounds.new_1 soundsFactoryInterface))))
            Control.Monad.void (TsUtil.gc ((jio (TsUtil.getInstance))))
            Control.Monad.void (SoundsFactoryInterface.setInitialized soundsFactoryInterface False)
            jset AllBinaryMediaManager.mostUsedTotal (0)
        Control.Monad.void (LogUtil.putF logUtil (jget (commonString).sTART) (AllBinaryMediaManager.tHIS) "shutdown")
        pure ()


-- throws Exception
createPlayer :: String -> IO (Player.Player)
createPlayer resource = do
    javaCatchReturn $ do
        jset AllBinaryMediaManager.mostUsedTotal ((jget AllBinaryMediaManager.mostUsedTotal) + 1)
        logUtil <- (LogUtil.getInstance)
        if (jio (Features.isFeature ((jio (Features.getInstance))) (jget ((jio (GameFeatureFactory.getInstance))).sOUND))) then do
            handle (\(e :: JavaException) -> do
                Control.Monad.void (LogUtil.put logUtil (("Could not create AndroidMediaPlayerWrapper using NoPlayer at " ++ javaToString (jget ((jio (CommonLabels.getInstance))).tOTAL_LABEL)) ++ javaToString (jget AllBinaryMediaManager.mostUsedTotal)) (AllBinaryMediaManager.tHIS) "createPlayer" e)
                javaReturn ((javaCast NoPlayer.nO_PLAYER :: Player.Player))
                ) $ do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: Player.Player) (AndroidMediaPlayerWrapper.new_1 resource))
        else do
            javaReturn ((javaCast NoPlayer.nO_PLAYER :: Player.Player))


-- throws IOException, MediaException
createPlayerFromInputStream :: InputStream.InputStream -> String -> IO (Player.Player)
createPlayerFromInputStream stream type_ = do
        javaThrow ((JavaException "MediaException" "No Input Stream Player"))


-- throws MediaException
playTone :: Int -> Int -> Int -> IO (())
playTone frequency time volume = do
        javaThrow ((JavaException "MediaException" "No Tone Player"))
        pure ()


isInitialized :: IO (Bool)
isInitialized = do
        pure (True)


