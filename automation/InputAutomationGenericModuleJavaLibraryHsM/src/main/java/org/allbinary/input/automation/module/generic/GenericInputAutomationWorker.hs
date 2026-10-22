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
module GenericInputAutomationWorker (module GenericInputAutomationWorker, module AbstractInputAutomationWorker) where

import AbstractInputAutomationWorker hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processDataWorkerResults, processDataWorkerResults_super, processDataWorkerResults_impl, process, process_super, process_impl, getGenericProfile, getGenericProfile_super, getGenericProfile_impl, setGenericProfile, setGenericProfile_super, setGenericProfile_impl, getFrame, getFrame_super, getFrame_impl, setFrame, setFrame_super, setFrame_impl, logUtil, pROCESS_DATA_WORKER_RESULTS, lastFrame, frame, genericProfile)
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
import qualified GenericProfileCaptureWorkerFactory -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CaptureWorkerUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AbstractInputAutomationWorker -- org.allbinary.input.automation.module.AbstractInputAutomationWorker
import qualified InputAutomationActionInterface -- org.allbinary.input.automation.module.InputAutomationActionInterface
import qualified GenericProfile -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile
import qualified GenericProfileDataWorkerType -- org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType
import qualified GenericProfileAction -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction
import qualified GenericProfileActionScript -- org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript
import qualified CapturedBufferedImagesCacheSingleton -- org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified J2SECacheInterface -- org.allbinary.logic.util.cache.J2SECacheInterface
import qualified ImageComparatorConstraintsInterface -- org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface
import qualified ImageComparisonWorker -- org.allbinary.media.image.comparison.ImageComparisonWorker
import qualified MotionRectangleConstraintsInterface -- org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface
import qualified MotionRectanglesWorker -- org.allbinary.media.image.comparison.motion.MotionRectanglesWorker

data GenericInputAutomationWorker = GenericInputAutomationWorker
    { header_ :: JavaHeader
    , base :: AbstractInputAutomationWorker.AbstractInputAutomationWorker
    , logUtil :: IORef (LogUtil.LogUtil)
    , pROCESS_DATA_WORKER_RESULTS :: IORef (String)
    , lastFrame :: IORef (Int64)
    , frame :: IORef (Int64)
    , genericProfile :: IORef (GenericProfile.GenericProfile)
    }

instance JavaNull GenericInputAutomationWorker where
    javaNull = javaNullRecord "GenericInputAutomationWorker"

instance JavaEquals GenericInputAutomationWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GenericInputAutomationWorker where
    (==) = jrecordEquals

instance JavaObjectClass GenericInputAutomationWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GenericInputAutomationWorker
newRecord_ = do
    base <- AbstractInputAutomationWorker.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    pROCESS_DATA_WORKER_RESULTS <- newIORef ""
    lastFrame <- newIORef javaNull
    frame <- newIORef javaNull
    genericProfile <- newIORef javaNull
    let this = GenericInputAutomationWorker header_ base logUtil pROCESS_DATA_WORKER_RESULTS lastFrame frame genericProfile
    jregisterLevel header_ this
    jregisterMethod header_ "processDataWorkerResults" (\() -> processDataWorkerResults_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getGenericProfile" (\() -> getGenericProfile_impl this)
    jregisterMethod header_ "setGenericProfile" (\() -> setGenericProfile_impl this)
    jregisterMethod header_ "getFrame" (\() -> getFrame_impl this)
    jregisterMethod header_ "setFrame" (\() -> setFrame_impl this)
    pure this

initFields_ :: GenericInputAutomationWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pROCESS_DATA_WORKER_RESULTS ("processDataWorkerResults")
    jset this.lastFrame ((Prelude.fromIntegral ((Prelude.negate 1)) :: Int64))
    jset this.frame (javaNull)
    jset this.genericProfile (javaNull)
    pure ()

new_4 :: InputAutomationActionInterface.InputAutomationActionInterface -> GenericProfile.GenericProfile -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO GenericInputAutomationWorker
new_4 inputAutomationActionInterface genericProfile motionRectangleConstraintsInterface imageComparatorConstraintsInterface = do
    this <- newRecord_
    init_4 this inputAutomationActionInterface genericProfile motionRectangleConstraintsInterface imageComparatorConstraintsInterface
    pure this

init_4 :: GenericInputAutomationWorker -> InputAutomationActionInterface.InputAutomationActionInterface -> GenericProfile.GenericProfile -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> IO ()
init_4 this inputAutomationActionInterface genericProfile motionRectangleConstraintsInterface imageComparatorConstraintsInterface = do
        AbstractInputAutomationWorker.init_1 this.base (inputAutomationActionInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (AbstractInputAutomationWorker.setCaptureWorker this (jio (GenericProfileCaptureWorkerFactory.getInstance genericProfile)))
        Control.Monad.void (AbstractInputAutomationWorker.setInputAutomationActionInterface this inputAutomationActionInterface)
        Control.Monad.void (AbstractInputAutomationWorker.setImageComparisonWorker this (jio (ImageComparisonWorker.new_1 imageComparatorConstraintsInterface)))
        Control.Monad.void (AbstractInputAutomationWorker.setMotionRectanglesWorker this (jio (MotionRectanglesWorker.new_1 motionRectangleConstraintsInterface)))
        Control.Monad.void (GenericInputAutomationWorker.setGenericProfile this genericProfile)
        vector <- (GenericProfile.getGenericProfileDataWorkerTypeVector ((jio (GenericInputAutomationWorker.getGenericProfile this))))
        size <- (BasicArrayList.size vector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let genericProfileDataWorkerType = (javaCast (jio (BasicArrayList.get vector index)) :: GenericProfileDataWorkerType.GenericProfileDataWorkerType)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Adding Listener: " ++ javaToString genericProfileDataWorkerType) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
            if (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.cOMPARISON)) then do
                Control.Monad.void (CaptureWorkerInterface.addListenerInterface ((jio (AbstractInputAutomationWorker.getCaptureWorker this))) (jio (AbstractInputAutomationWorker.getImageComparisonWorker this)))
            else when (genericProfileDataWorkerType == (jget GenericProfileDataWorkerType.mOTION)) $ do
                Control.Monad.void (ImageComparisonWorker.addListenerInterface ((jio (AbstractInputAutomationWorker.getImageComparisonWorker this))) (javaCast (jio (AbstractInputAutomationWorker.getMotionRectanglesWorker this))))
        pure ()


-- throws Exception
processDataWorkerResults :: (JavaObjectClass this_) => this_ -> IO (())
processDataWorkerResults object_ = jmethod object_ "processDataWorkerResults" (\() -> (processDataWorkerResults_impl (javaCast object_ :: GenericInputAutomationWorker))) ()

processDataWorkerResults_super :: (JavaObjectClass this_) => this_ -> IO (())
processDataWorkerResults_super object_ = (processDataWorkerResults_impl (javaCast object_ :: GenericInputAutomationWorker))

processDataWorkerResults_impl :: GenericInputAutomationWorker -> IO (())
processDataWorkerResults_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget (this).pROCESS_DATA_WORKER_RESULTS))
        Control.Monad.void (AbstractInputAutomationWorker.waitForDataWorkers this)
        let cacheInterface = (javaCast (jio (CapturedBufferedImagesCacheSingleton.getInstance)) :: J2SECacheInterface.J2SECacheInterface)
        keyArray <- (J2SECacheInterface.toArray ((jio (J2SECacheInterface.keySet cacheInterface))))
        if ((jlength keyArray) > 0) then do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Image Available" this (jget (this).pROCESS_DATA_WORKER_RESULTS))
            Control.Monad.void (GenericInputAutomationWorker.setFrame this (javaCast (jindex keyArray (((jlength keyArray) - 1))) :: Int64))
            when ((jio (GenericInputAutomationWorker.getFrame this)) > (jget (this).lastFrame)) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Processing new frame: " ++ javaToString (jio (GenericInputAutomationWorker.getFrame this))) this (jget (this).pROCESS_DATA_WORKER_RESULTS))
                hashMap <- (GenericProfileActions.getHashMap ((jio (GenericProfile.getGenericProfileActions ((jio (GenericInputAutomationWorker.getGenericProfile this)))))))
                set <- (HashMap.keySet hashMap)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Processing " ++ javaToString (jio (Set.size set))) ++ "Actions") this (jget (this).pROCESS_DATA_WORKER_RESULTS))
                actionNameArray <- (Set.toArray set)
                let size = (jlength actionNameArray)
                forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                    let actionNameString = (javaCast (jindex actionNameArray (index)) :: String)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Processing Action: " ++ actionNameString) this (jget (this).pROCESS_DATA_WORKER_RESULTS))
                    let genericProfileAction = (javaCast (jio (HashMap.get hashMap actionNameString)) :: GenericProfileAction.GenericProfileAction)
                    genericProfileActionScript <- (GenericProfileAction.getGenericProfileActionScript genericProfileAction)
                    vector <- (GenericProfileActionScript.getProfileActionConditionInterfaceVector genericProfileActionScript)
                    Control.Monad.void (CaptureWorkerUtil.processProfileActionConditions vector (jio (GenericInputAutomationWorker.getFrame this)))
                assignedValue <- (GenericInputAutomationWorker.getFrame this)
                jset (this).lastFrame (assignedValue)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Image Not Available" this (jget (this).pROCESS_DATA_WORKER_RESULTS))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: GenericInputAutomationWorker))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: GenericInputAutomationWorker))

process_impl :: GenericInputAutomationWorker -> IO (())
process_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).pROCESS))
        Control.Monad.void (AbstractInputAutomationWorker.startDataWorkers this)
        Control.Monad.void (GenericInputAutomationWorker.processDataWorkerResults this)
        pure ()


getGenericProfile :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getGenericProfile object_ = jmethod object_ "getGenericProfile" (\() -> (getGenericProfile_impl (javaCast object_ :: GenericInputAutomationWorker))) ()

getGenericProfile_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfile.GenericProfile)
getGenericProfile_super object_ = (getGenericProfile_impl (javaCast object_ :: GenericInputAutomationWorker))

getGenericProfile_impl :: GenericInputAutomationWorker -> IO (GenericProfile.GenericProfile)
getGenericProfile_impl this = do
        pure ((jget (this).genericProfile))


setGenericProfile :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setGenericProfile object_ a1 = jmethod object_ "setGenericProfile" (\() -> (setGenericProfile_impl (javaCast object_ :: GenericInputAutomationWorker))) () a1

setGenericProfile_super :: (JavaObjectClass this_) => this_ -> GenericProfile.GenericProfile -> IO (())
setGenericProfile_super object_ a1 = (setGenericProfile_impl (javaCast object_ :: GenericInputAutomationWorker)) a1

setGenericProfile_impl :: GenericInputAutomationWorker -> GenericProfile.GenericProfile -> IO (())
setGenericProfile_impl this genericProfile = do
        jset (this).genericProfile (genericProfile)
        pure ()


getFrame :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame object_ = jmethod object_ "getFrame" (\() -> (getFrame_impl (javaCast object_ :: GenericInputAutomationWorker))) ()

getFrame_super :: (JavaObjectClass this_) => this_ -> IO (Int64)
getFrame_super object_ = (getFrame_impl (javaCast object_ :: GenericInputAutomationWorker))

getFrame_impl :: GenericInputAutomationWorker -> IO (Int64)
getFrame_impl this = do
        pure ((jget (this).frame))


setFrame :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame object_ a1 = jmethod object_ "setFrame" (\() -> (setFrame_impl (javaCast object_ :: GenericInputAutomationWorker))) () a1

setFrame_super :: (JavaObjectClass this_) => this_ -> Int64 -> IO (())
setFrame_super object_ a1 = (setFrame_impl (javaCast object_ :: GenericInputAutomationWorker)) a1

setFrame_impl :: GenericInputAutomationWorker -> Int64 -> IO (())
setFrame_impl this frame = do
        jset (this).frame (frame)
        pure ()


