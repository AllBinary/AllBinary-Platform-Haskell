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
-- package org.allbinary.input.automation.module.generic
module GenericProfileCaptureWorkerFactory where

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
import qualified SavedCaptureImagesWorker -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified GenericProfile -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile
import qualified GenericProfileDataWorkerType -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType
import qualified SavedCaptureGenericProfileDataWorkerType -- org.allbinary.input.automation.module.generic.configuration.profile.SavedCaptureGenericProfileDataWorkerType
import qualified CaptureWorkerInterface -- org.allbinary.input.media.image.capture.CaptureWorkerInterface
import qualified ScreenCaptureImagesWorker -- org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker

data GenericProfileCaptureWorkerFactory = GenericProfileCaptureWorkerFactory
    { header_ :: JavaHeader
    }

instance JavaNull GenericProfileCaptureWorkerFactory where
    javaNull = javaNullRecord "GenericProfileCaptureWorkerFactory"

instance JavaEquals GenericProfileCaptureWorkerFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericProfileCaptureWorkerFactory where
    (==) = jrecordEquals

instance JavaObjectClass GenericProfileCaptureWorkerFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GenericProfileCaptureWorkerFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = GenericProfileCaptureWorkerFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: GenericProfileCaptureWorkerFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO GenericProfileCaptureWorkerFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GenericProfileCaptureWorkerFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: GenericProfile.GenericProfile -> IO (CaptureWorkerInterface.CaptureWorkerInterface)
getInstance genericProfile = do
    javaCatchReturn $ do
        vector <- (GenericProfile.getGenericProfileDataWorkerTypeVector genericProfile)
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let genericProfileDataWorkerType = (javaCast (jio (BasicArrayList.get vector index)) :: GenericProfileDataWorkerType.GenericProfileDataWorkerType)
            if (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.sCREEN_CAPTURE)) then do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: CaptureWorkerInterface.CaptureWorkerInterface) (ScreenCaptureImagesWorker.new_))
            else when (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.sAVED_CAPTURE)) $ do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: CaptureWorkerInterface.CaptureWorkerInterface) (SavedCaptureImagesWorker.new_1 (javaCast genericProfileDataWorkerType :: SavedCaptureGenericProfileDataWorkerType.SavedCaptureGenericProfileDataWorkerType)))
        javaThrow ((JavaException "Exception" "No CaptureWorkerInterface specified in GenericProfile"))


