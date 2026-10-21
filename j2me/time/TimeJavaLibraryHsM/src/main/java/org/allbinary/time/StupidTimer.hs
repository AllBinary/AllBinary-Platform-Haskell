{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.time
module StupidTimer where

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
import qualified TimeDelayHelper -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ThreadObjectUtil -- org.allbinary.thread.ThreadObjectUtil

data StupidTimer = StupidTimer
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , nullUtil :: IORef (NullUtil.NullUtil)
    , threadObjectUtil :: IORef (ThreadObjectUtil.ThreadObjectUtil)
    }

instance JavaNull StupidTimer where
    javaNull = javaNullRecord "StupidTimer"

instance JavaEquals StupidTimer where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StupidTimer where
    (==) = jrecordEquals

instance JavaObjectClass StupidTimer where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StupidTimer
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    nullUtil <- newIORef javaNull
    threadObjectUtil <- newIORef javaNull
    let this = StupidTimer header_ logUtil commonStrings nullUtil threadObjectUtil
    jregisterLevel header_ this
    jregisterMethod header_ "visitBool" (\() -> visitBool_impl this)
    jregisterMethod header_ "visit" (\() -> visit_impl this)
    jregisterMethod header_ "stopWaiting" (\() -> stopWaiting_impl this)
    pure this

initFields_ :: StupidTimer -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.nullUtil =<< (NullUtil.getInstance)
    jset this.threadObjectUtil =<< (ThreadObjectUtil.getInstance)
    pure ()

new_ :: IO StupidTimer
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StupidTimer -> IO ()
init_ this = do
    initFields_ this


visitBool :: (JavaObjectClass this_) => this_ -> Visitor.Visitor -> IO (Bool)
visitBool object_ a1 = jmethod object_ "visitBool" (\() -> (visitBool_impl (javaCast object_ :: StupidTimer))) () a1

visitBool_super :: (JavaObjectClass this_) => this_ -> Visitor.Visitor -> IO (Bool)
visitBool_super object_ a1 = (visitBool_impl (javaCast object_ :: StupidTimer)) a1

visitBool_impl :: StupidTimer -> Visitor.Visitor -> IO (Bool)
visitBool_impl this visitorInterface = do
        let result = (javaCast (jio (Visitor.visit visitorInterface (jget ((jget (this).nullUtil)).nULL_OBJECT))) :: Bool)
        let result2 = result
        pure (result2)


-- throws Exception
visit :: (JavaObjectClass this_) => this_ -> Visitor.Visitor -> TimeDelayHelper.TimeDelayHelper -> IO (())
visit object_ a1 a2 = jmethod object_ "visit" (\() -> (visit_impl (javaCast object_ :: StupidTimer))) () a1 a2

visit_super :: (JavaObjectClass this_) => this_ -> Visitor.Visitor -> TimeDelayHelper.TimeDelayHelper -> IO (())
visit_super object_ a1 a2 = (visit_impl (javaCast object_ :: StupidTimer)) a1 a2

visit_impl :: StupidTimer -> Visitor.Visitor -> TimeDelayHelper.TimeDelayHelper -> IO (())
visit_impl this visitorInterface timeDelayHelper = do
        tookTooLong <- newIORef (False)
        let wAITING_FOR = "Waiting for: "
        Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) wAITING_FOR))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) visitorInterface))))))) this (jget ((jget (this).commonStrings)).vISIT))
        index <- newIORef (0)
        fix $ \loop -> when (jio (StupidTimer.visitBool this visitorInterface)) $ javaIteration (loop) $ do
            when (((jget index) `rem` 10) == 0) $ do
                Control.Monad.void (PreLogUtil.put (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.new_))) wAITING_FOR))) (jget index)))))) this (jget ((jget (this).commonStrings)).vISIT))
            jset index ((jget index) + 1)
            do -- synchronized
                Control.Monad.void (ThreadObjectUtil.waitObjectFor ((jget (this).threadObjectUtil)) this 1800)
            when (jio (TimeDelayHelper.isTimeTNT timeDelayHelper)) $ do
                jset tookTooLong (True)
                throwIO JavaBreak
        if (jget tookTooLong) then do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget ((jget (this).commonStrings)).vISIT) (JavaException "Exception" (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "Took Too Long: "))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) visitorInterface)))))))))
        else do
            Control.Monad.void (PreLogUtil.put (jio (TimeDelayHelper.toString timeDelayHelper)) this (jget ((jget (this).commonStrings)).vISIT))
        pure ()


-- throws Exception
stopWaiting :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting object_ = jmethod object_ "stopWaiting" (\() -> (stopWaiting_impl (javaCast object_ :: StupidTimer))) ()

stopWaiting_super :: (JavaObjectClass this_) => this_ -> IO (())
stopWaiting_super object_ = (stopWaiting_impl (javaCast object_ :: StupidTimer))

stopWaiting_impl :: StupidTimer -> IO (())
stopWaiting_impl this = do
        do -- synchronized
            Control.Monad.void (ThreadObjectUtil.notifyObject ((jget (this).threadObjectUtil)) this)
        pure ()


