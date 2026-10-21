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
-- package org.allbinary.input.automation.module
module TestInputAutomationActionWorker (module TestInputAutomationActionWorker, module AbstractInputAutomationWorker) where

import AbstractInputAutomationWorker hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, processBetweenWorkers, processBetweenWorkers_super, processBetweenWorkers_impl, process, process_super, process_impl, logUtil, sleep)
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
import qualified InputAutomationActionInterface -- same package or java.lang
import qualified Thread -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Set -- java.util.Set
import qualified InputRobotFactory -- org.allbinary.input.automation.robot.InputRobotFactory
import qualified InputRobotInterface -- org.allbinary.input.automation.robot.InputRobotInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ImageComparatorConstraintsInterface -- org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface
import qualified MotionRectangleConstraintsInterface -- org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified AbstractInputAutomationWorker

data TestInputAutomationActionWorker = TestInputAutomationActionWorker
    { header_ :: JavaHeader
    , base :: AbstractInputAutomationWorker.AbstractInputAutomationWorker
    , logUtil :: IORef (LogUtil.LogUtil)
    , sleep :: IORef (Int)
    }

instance JavaNull TestInputAutomationActionWorker where
    javaNull = javaNullRecord "TestInputAutomationActionWorker"

instance JavaEquals TestInputAutomationActionWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TestInputAutomationActionWorker where
    (==) = jrecordEquals

instance JavaObjectClass TestInputAutomationActionWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TestInputAutomationActionWorker
newRecord_ = do
    base <- AbstractInputAutomationWorker.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    sleep <- newIORef 0
    let this = TestInputAutomationActionWorker header_ base logUtil sleep
    jregisterLevel header_ this
    jregisterMethod header_ "processBetweenWorkers" (\() -> processBetweenWorkers_impl this)
    jregisterMethod header_ "process" (\() -> process_impl this)
    pure this

initFields_ :: TestInputAutomationActionWorker -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.sleep (0)
    pure ()

new_4 :: Int -> InputAutomationActionInterface.InputAutomationActionInterface -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO TestInputAutomationActionWorker
new_4 sleep inputAutomationActionInterface imageComparatorConstraintsInterface motionRectangleConstraintsInterface = do
    this <- newRecord_
    init_4 this sleep inputAutomationActionInterface imageComparatorConstraintsInterface motionRectangleConstraintsInterface
    pure this

init_4 :: TestInputAutomationActionWorker -> Int -> InputAutomationActionInterface.InputAutomationActionInterface -> ImageComparatorConstraintsInterface.ImageComparatorConstraintsInterface -> MotionRectangleConstraintsInterface.MotionRectangleConstraintsInterface -> IO ()
init_4 this sleep inputAutomationActionInterface imageComparatorConstraintsInterface motionRectangleConstraintsInterface = do
        AbstractInputAutomationWorker.init_1 this.base (inputAutomationActionInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "BasicTestAttackWorder" this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        jset (this).sleep (sleep)
        pure ()


-- throws Exception
processBetweenWorkers :: (JavaObjectClass this_) => this_ -> IO (())
processBetweenWorkers object_ = jmethod object_ "processBetweenWorkers" (\() -> (processBetweenWorkers_impl (javaCast object_ :: TestInputAutomationActionWorker))) ()

processBetweenWorkers_super :: (JavaObjectClass this_) => this_ -> IO (())
processBetweenWorkers_super object_ = (processBetweenWorkers_impl (javaCast object_ :: TestInputAutomationActionWorker))

processBetweenWorkers_impl :: TestInputAutomationActionWorker -> IO (())
processBetweenWorkers_impl this = do
        Control.Monad.void (threadDelay (Prelude.fromIntegral 2000 * 1000))
        pure ()


-- throws Exception
process :: (JavaObjectClass this_) => this_ -> IO (())
process object_ = jmethod object_ "process" (\() -> (process_impl (javaCast object_ :: TestInputAutomationActionWorker))) ()

process_super :: (JavaObjectClass this_) => this_ -> IO (())
process_super object_ = (process_impl (javaCast object_ :: TestInputAutomationActionWorker))

process_impl :: TestInputAutomationActionWorker -> IO (())
process_impl this = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).sTART) this (jget ((jget (this).base.commonStrings)).pROCESS))
        hashtable <- (InputRobotFactory.get ((jio (InputRobotFactory.getInstance))))
        set <- (ABHashtable.keySet hashtable)
        inputTypeNameArray <- (Set.toArray set)
        let size = (jlength inputTypeNameArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let inputTypeNameString = (javaCast (jindex inputTypeNameArray (index)) :: String)
            let robot = (javaCast (jio (ABHashtable.get hashtable inputTypeNameString)) :: InputRobotInterface.InputRobotInterface)
            when ((jget (this).sleep) > 0) $ do
                Control.Monad.void (threadDelay (Prelude.fromIntegral (jget (this).sleep) * 1000))
        pure ()


