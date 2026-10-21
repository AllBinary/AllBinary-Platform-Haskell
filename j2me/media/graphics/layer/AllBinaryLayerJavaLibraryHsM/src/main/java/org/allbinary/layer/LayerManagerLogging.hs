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
-- package org.allbinary.layer
module LayerManagerLogging (module LayerManagerLogging, module LayerManagerLoggingBase) where

import LayerManagerLoggingBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, append, append_super, append_impl, appendAt, appendAt_super, appendAt_impl, remove, remove_super, remove_impl, removeResult, removeResult_super, removeResult_impl, log, log_super, log_impl, clear, clear_super, clear_impl, logUtil, instance_, stringBuilder, aPPEND, aPPEND_, _AT_, aTTEMPT_REMOVE_, rEMOVE_, rEMOVE, dID_NOT_REMOVE, cLEAR, removeFailed)
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
import qualified AllBinaryLayer -- same package or java.lang
import qualified LayerManager -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified LayerManagerLoggingBase

data LayerManagerLogging = LayerManagerLogging
    { header_ :: JavaHeader
    , base :: LayerManagerLoggingBase.LayerManagerLoggingBase
    , logUtil :: IORef (LogUtil.LogUtil)
    , stringBuilder :: IORef (StringMaker.StringMaker)
    , aPPEND :: IORef (String)
    , aPPEND_ :: IORef (String)
    , _AT_ :: IORef (String)
    , aTTEMPT_REMOVE_ :: IORef (String)
    , rEMOVE_ :: IORef (String)
    , rEMOVE :: IORef (String)
    , dID_NOT_REMOVE :: IORef (String)
    , cLEAR :: IORef (String)
    }

instance JavaNull LayerManagerLogging where
    javaNull = javaNullRecord "LayerManagerLogging"

instance JavaEquals LayerManagerLogging where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq LayerManagerLogging where
    (==) = jrecordEquals

instance JavaObjectClass LayerManagerLogging where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

{-# NOINLINE removeFailed #-}
removeFailed = unsafePerformIO (newIORef (False))

newRecord_ :: IO LayerManagerLogging
newRecord_ = do
    base <- LayerManagerLoggingBase.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    stringBuilder <- newIORef javaNull
    aPPEND <- newIORef ""
    aPPEND_ <- newIORef ""
    _AT_ <- newIORef ""
    aTTEMPT_REMOVE_ <- newIORef ""
    rEMOVE_ <- newIORef ""
    rEMOVE <- newIORef ""
    dID_NOT_REMOVE <- newIORef ""
    cLEAR <- newIORef ""
    let this = LayerManagerLogging header_ base logUtil stringBuilder aPPEND aPPEND_ _AT_ aTTEMPT_REMOVE_ rEMOVE_ rEMOVE dID_NOT_REMOVE cLEAR
    jregisterLevel header_ this
    jregisterMethod header_ "append" (\() -> append_impl this)
    jregisterMethod header_ "appendAt" (\() -> appendAt_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "removeResult" (\() -> removeResult_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    pure this

initFields_ :: LayerManagerLogging -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stringBuilder =<< (StringMaker.new_)
    jset this.aPPEND ("append")
    jset this.aPPEND_ (" append: ")
    jset this._AT_ (" at: ")
    jset this.aTTEMPT_REMOVE_ (" Remove Attempt: ")
    jset this.rEMOVE_ (" Remove: ")
    jset this.rEMOVE ("remove")
    jset this.dID_NOT_REMOVE (" Did not remove: ")
    jset this.cLEAR (" Clear List")
    pure ()

new_ :: IO LayerManagerLogging
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: LayerManagerLogging -> IO ()
init_ this = do
    LayerManagerLoggingBase.init_ this.base
    initFields_ this


getInstance :: IO (LayerManagerLogging)
getInstance = do
        pure (LayerManagerLogging.instance_)


-- throws Exception
append :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append object_ a1 = jmethod object_ "append" (\() -> (append_impl (javaCast object_ :: LayerManagerLogging))) () a1

append_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_super object_ a1 = (append_impl (javaCast object_ :: LayerManagerLogging)) a1

append_impl :: LayerManagerLogging -> AllBinaryLayer.AllBinaryLayer -> IO (())
append_impl this layerInterface = do
        Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).aPPEND_)))) (jio (AllBinaryLayer.getName layerInterface))))))) this (jget (this).aPPEND))
        pure ()


appendAt :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt object_ a1 a2 = jmethod object_ "appendAt" (\() -> (appendAt_impl (javaCast object_ :: LayerManagerLogging))) () a1 a2

appendAt_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_super object_ a1 a2 = (appendAt_impl (javaCast object_ :: LayerManagerLogging)) a1 a2

appendAt_impl :: LayerManagerLogging -> AllBinaryLayer.AllBinaryLayer -> Int -> IO (())
appendAt_impl this layerInterface index = do
        Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).aPPEND_)))) (jio (AllBinaryLayer.getName layerInterface))))) (jget (this)._AT_)))) index))))) this (jget (this).aPPEND))
        pure ()


remove :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: LayerManagerLogging))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: LayerManagerLogging)) a1

remove_impl :: LayerManagerLogging -> AllBinaryLayer.AllBinaryLayer -> IO (())
remove_impl this layerInterface = do
        if (layerInterface == javaNull) then do
            Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).aTTEMPT_REMOVE_)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) layerInterface))))))) this (jget (this).rEMOVE))
        else do
            Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).aTTEMPT_REMOVE_)))) (jio (AllBinaryLayer.getName layerInterface))))))) this (jget (this).rEMOVE))
        pure ()


removeResult :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult object_ a1 a2 a3 = jmethod object_ "removeResult" (\() -> (removeResult_impl (javaCast object_ :: LayerManagerLogging))) () a1 a2 a3

removeResult_super :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult_super object_ a1 a2 a3 = (removeResult_impl (javaCast object_ :: LayerManagerLogging)) a1 a2 a3

removeResult_impl :: LayerManagerLogging -> LayerManager.LayerManager -> AllBinaryLayer.AllBinaryLayer -> Bool -> IO (())
removeResult_impl this layerManager layerInterface result = do
        if (layerInterface == javaNull) then do
            Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).rEMOVE_)))) (jio (StringUtil.toString ((jio (StringUtil.getInstance))) layerInterface))))))) this (jget (this).rEMOVE))
        else if result then do
            when (jget LayerManagerLogging.removeFailed) $ do
                Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).rEMOVE_)))) (jio (AllBinaryLayer.getName layerInterface))))))) this (jget (this).rEMOVE))
        else do
            Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).dID_NOT_REMOVE)))) (jio (AllBinaryLayer.getName layerInterface))))))) this (jget (this).rEMOVE))
            jset LayerManagerLogging.removeFailed (True)
        pure ()


log :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> IO (())
log object_ a1 = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: LayerManagerLogging))) () a1

log_super :: (JavaObjectClass this_) => this_ -> LayerManager.LayerManager -> IO (())
log_super object_ a1 = (log_impl (javaCast object_ :: LayerManagerLogging)) a1

log_impl :: LayerManagerLogging -> LayerManager.LayerManager -> IO (())
log_impl this layerManager = do
        Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
        size <- (LayerManager.getSize layerManager)
        commonSeps <- (CommonSeps.getInstance)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jget (this).stringBuilder)) (Numeric.showHex (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) layerManager)) "")))) (jget (commonSeps).cOLON_SEP))
        Control.Monad.void (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) size))) (jget (commonSeps).cOLON_SEP))
        allBinaryLayer <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset allBinaryLayer (((javaCast (jio (LayerManager.getLayerAt layerManager index)) :: AllBinaryLayer.AllBinaryLayer)))
            Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jget (this).stringBuilder)) (jio (AllBinaryLayer.getName ((jget allBinaryLayer))))))) (jget (commonSeps).cOMMA))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jget (this).stringBuilder)))) this (jget (this).rEMOVE))
        pure ()


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: LayerManagerLogging))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: LayerManagerLogging))

clear_impl :: LayerManagerLogging -> IO (())
clear_impl this = do
        Control.Monad.void (StringMaker.delete ((jget (this).stringBuilder)) 0 (jio (StringMaker.length ((jget (this).stringBuilder)))))
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.appendint ((jget (this).stringBuilder)) (jio (TsUtil.hashCode ((jio (TsUtil.getInstance))) this))))) (jget (this).cLEAR)))))) this (jget (this).cLEAR))
        pure ()


