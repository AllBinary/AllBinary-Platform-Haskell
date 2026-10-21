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
-- package org.allbinary.input.automation.module.game.test
module TestInputAutomationCaptureWorker (module TestInputAutomationCaptureWorker, module AbstractInputAutomationWorker) where

import AbstractInputAutomationWorker hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processDataWorkerResults, processDataWorkerResults_super, processDataWorkerResults_impl, process, process_super, process_impl, getGenericProfileActions, getGenericProfileActions_super, getGenericProfileActions_impl, setGenericProfileActions, setGenericProfileActions_super, setGenericProfileActions_impl, logUtil, genericProfileActions, mESSAGE, pROCESS_DATA_WORKER_RESULTS, iMAGE_AVAILABLE_SO_PROCESSING, iMAGE_NOT_AVAILABLE)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified AbstractInputAutomationWorker -- org.allbinary.input.automation.module.AbstractInputAutomationWorker
import qualified InputAutomationActionInterface -- org.allbinary.input.automation.module.InputAutomationActionInterface
import qualified GenericProfileAction -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction
import qualified GenericProfileActions -- org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions
import qualified GenericProfileActionScript -- org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript
import qualified CapturedBufferedImagesCacheSingleton -- org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified J2SECacheInterface -- org.allbinary.logic.util.cache.J2SECacheInterface
import qualified ImageComparatorConstraintsInterface -- org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface
import qualified MotionRectangleConstraintsInterface -- org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface

data TestInputAutomationCaptureWorker = TestInputAutomationCaptureWorker
    { header_ :: JavaHeader
    , base :: AbstractInputAutomationWorker.AbstractInputAutomationWorker
    , logUtil :: IORef (LogUtil.LogUtil)
    , genericProfileActions :: IORef (GenericProfileActions.GenericProfileActions)
    , mESSAGE :: IORef (String)
    , pROCESS_DATA_WORKER_RESULTS :: IORef (String)
    , iMAGE_AVAILABLE_SO_PROCESSING :: IORef (String)
    , iMAGE_NOT_AVAILABLE :: IORef (String)
    }

instance JavaNull TestInputAutomationCaptureWorker where
    javaNull = javaNullRecord "TestInputAutomationCaptureWorker"

instance JavaEquals TestInputAutomationCaptureWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestInputAutomationCaptureWorker where
    (==) = jrecordEquals

instance JavaObjectClass TestInputAutomationCaptureWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TestInputAutomationCaptureWorker
newRecord_ = do
    base <- AbstractInputAutomationWorker.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    genericProfileActions <- newIORef javaNull
    mESSAGE <- newIORef ""
    pROCESS_DATA_WORKER_RESULTS <- newIORef ""
    iMAGE_AVAILABLE_SO_PROCESSING <- newIORef ""
    iMAGE_NOT_AVAILABLE <- newIORef ""
    let this = TestInputAutomationCaptureWorker header_ base logUtil genericProfileActions mESSAGE pROCESS_DATA_WORKER_RESULTS iMAGE_AVAILABLE_SO_PROCESSING iMAGE_NOT_AVAILABLE
    jregisterLevel header_ this
    jregisterMethod header_ "processDataWorkerResults" (\() -> processDataWorkerResults_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    jregisterMethod header_ "getGenericProfileActions" (\() -> getGenericProfileActions_impl this)
    jregisterMethod header_ "setGenericProfileActions" (\() -> setGenericProfileActions_impl this)
    pure this

initFields_ :: TestInputAutomationCaptureWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.genericProfileActions (javaNull)
    jset this.mESSAGE ("GenericInputAutomationCaptureWorker")
    jset this.pROCESS_DATA_WORKER_RESULTS ("processDataWorkerResults")
    jset this.iMAGE_AVAILABLE_SO_PROCESSING ("Image Available so processing")
    jset this.iMAGE_NOT_AVAILABLE ("Image Not Available")
    pure ()

new_4 :: InputAutomationActionInterface.InputAutomationActionInterface -> GenericProfileActions.GenericProfileActions -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO TestInputAutomationCaptureWorker
new_4 inputAutomationActionInterface genericProfileActions imageComparatorConstraintsInterface motionRectangleConstraintsInterface = do
    this <- newRecord_
    init_4 this inputAutomationActionInterface genericProfileActions imageComparatorConstraintsInterface motionRectangleConstraintsInterface
    pure this

init_4 :: TestInputAutomationCaptureWorker -> InputAutomationActionInterface.InputAutomationActionInterface -> GenericProfileActions.GenericProfileActions -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO ()
init_4 this inputAutomationActionInterface genericProfileActions imageComparatorConstraintsInterface motionRectangleConstraintsInterface = do
        AbstractInputAutomationWorker.init_1 this.base (inputAutomationActionInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).mESSAGE) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        Control.Monad.void (TestInputAutomationCaptureWorker.setGenericProfileActions this genericProfileActions)
        pure ()


-- throws Exception
processDataWorkerResults :: (JavaObjectClass this_) => this_ -> IO (())
processDataWorkerResults object_ = jmethod object_ "processDataWorkerResults" (\() -> (processDataWorkerResults_impl (javaCast object_ :: TestInputAutomationCaptureWorker))) ()

processDataWorkerResults_super :: (JavaObjectClass this_) => this_ -> IO (())
processDataWorkerResults_super object_ = (processDataWorkerResults_impl (javaCast object_ :: TestInputAutomationCaptureWorker))

processDataWorkerResults_impl :: TestInputAutomationCaptureWorker -> IO (())
processDataWorkerResults_impl this = do
        let cacheInterface = (javaCast (jio (CapturedBufferedImagesCacheSingleton.getInstance)) :: J2SECacheInterface.J2SECacheInterface)
        if ((jio (J2SECacheInterface.size ((jio (J2SECacheInterface.keySet cacheInterface))))) > 0) then do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).iMAGE_AVAILABLE_SO_PROCESSING) this (jget (this).pROCESS_DATA_WORKER_RESULTS))
            let anyType = (jindex ((jio (J2SECacheInterface.toArray ((jio (J2SECacheInterface.keySet cacheInterface)))))) (0))
            hashMap <- (GenericProfileActions.getHashMap ((jio (TestInputAutomationCaptureWorker.getGenericProfileActions this))))
            set <- (HashMap.keySet hashMap)
            actionNameArray <- (Set.toArray set)
            let size = (jlength actionNameArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let actionNameString = (javaCast (jindex actionNameArray (index)) :: String)
                let genericProfileAction = (javaCast (jio (HashMap.get hashMap actionNameString)) :: GenericProfileAction.GenericProfileAction)
                genericProfileActionScript <- (GenericProfileAction.getGenericProfileActionScript genericProfileAction)
                vector <- (GenericProfileActionScript.getProfileActionConditionInterfaceVector genericProfileActionScript)
            Control.Monad.void (J2SECacheInterface.get cacheInterface anyType)
        else do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).iMAGE_NOT_AVAILABLE) this (jget (this).pROCESS_DATA_WORKER_RESULTS))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TestInputAutomationCaptureWorker))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: TestInputAutomationCaptureWorker))

process_impl :: TestInputAutomationCaptureWorker -> IO (())
process_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).pROCESS))
        Control.Monad.void (AbstractInputAutomationWorker.startDataWorkers this)
        Control.Monad.void (TestInputAutomationCaptureWorker.processDataWorkerResults this)
        pure ()


getGenericProfileActions :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions object_ = jmethod object_ "getGenericProfileActions" (\() -> (getGenericProfileActions_impl (javaCast object_ :: TestInputAutomationCaptureWorker))) ()

getGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_super object_ = (getGenericProfileActions_impl (javaCast object_ :: TestInputAutomationCaptureWorker))

getGenericProfileActions_impl :: TestInputAutomationCaptureWorker -> IO (GenericProfileActions.GenericProfileActions)
getGenericProfileActions_impl this = do
        pure ((jget (this).genericProfileActions))


setGenericProfileActions :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions object_ a1 = jmethod object_ "setGenericProfileActions" (\() -> (setGenericProfileActions_impl (javaCast object_ :: TestInputAutomationCaptureWorker))) () a1

setGenericProfileActions_super :: (JavaObjectClass this_) => this_ -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_super object_ a1 = (setGenericProfileActions_impl (javaCast object_ :: TestInputAutomationCaptureWorker)) a1

setGenericProfileActions_impl :: TestInputAutomationCaptureWorker -> GenericProfileActions.GenericProfileActions -> IO (())
setGenericProfileActions_impl this genericProfileActions = do
        jset (this).genericProfileActions (genericProfileActions)
        pure ()


