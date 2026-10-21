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
-- package org.allbinary.logic.util.cache
module KeylessBasicArrayListCache (module KeylessBasicArrayListCache, module IndexedBasicArrayListCache) where

import IndexedBasicArrayListCache hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, clear, clear_super, clear_impl, log, log_super, log_impl, logUtil, basicArrayListUtil)
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
import qualified CommonStrings -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified IndexedBasicArrayListCache

data KeylessBasicArrayListCache = KeylessBasicArrayListCache
    { header_ :: JavaHeader
    , base :: IndexedBasicArrayListCache.IndexedBasicArrayListCache
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicArrayListUtil :: IORef (BasicArrayListUtil.BasicArrayListUtil)
    }

instance JavaNull KeylessBasicArrayListCache where
    javaNull = javaNullRecord "KeylessBasicArrayListCache"

instance JavaEquals KeylessBasicArrayListCache where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeylessBasicArrayListCache where
    (==) = jrecordEquals

instance JavaObjectClass KeylessBasicArrayListCache where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO KeylessBasicArrayListCache
newRecord_ = do
    base <- IndexedBasicArrayListCache.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicArrayListUtil <- newIORef javaNull
    let this = KeylessBasicArrayListCache header_ base logUtil basicArrayListUtil
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "clear" (\() -> clear_impl this)
    jregisterMethod header_ "log" (\() -> log_impl this)
    pure this

initFields_ :: KeylessBasicArrayListCache -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicArrayListUtil =<< (BasicArrayListUtil.getInstance)
    pure ()

new_ :: IO KeylessBasicArrayListCache
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeylessBasicArrayListCache -> IO ()
init_ this = do
        IndexedBasicArrayListCache.init_ this.base
        initFields_ this
        pure ()
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: KeylessBasicArrayListCache))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get_super object_ = (get_impl (javaCast object_ :: KeylessBasicArrayListCache))

get_impl :: KeylessBasicArrayListCache -> IO (BasicArrayList.BasicArrayList)
get_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.commonStrings)).gET) e)
            (BasicArrayListUtil.getImmutableInstance ((jget (this).basicArrayListUtil)))
            ) $ do
            when ((jget (this).base.index) >= (jio (BasicArrayList.size ((jget (this).base.base.list))))) $ do
                Control.Monad.void (IndexedBasicArrayListCache.addDefault this)
            let list = (javaCast (jio (IndexedBasicArrayListCache.getAt this (jpostIncrement (this).base.index (+ 1)))) :: BasicArrayList.BasicArrayList)
            pure (list)


clear :: (JavaObjectClass this_) => this_ -> IO (())
clear object_ = jmethod object_ "clear" (\() -> (clear_impl (javaCast object_ :: KeylessBasicArrayListCache))) ()

clear_super :: (JavaObjectClass this_) => this_ -> IO (())
clear_super object_ = (clear_impl (javaCast object_ :: KeylessBasicArrayListCache))

clear_impl :: KeylessBasicArrayListCache -> IO (())
clear_impl this = do
        Control.Monad.void (IndexedBasicArrayListCache.clear_super this.base)
        basicArrayList <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size ((jget (this).base.base.list)))) - 1), ((jio (BasicArrayList.size ((jget (this).base.base.list)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            jset basicArrayList (((javaCast (jindex ((jget ((jget (this).base.base.list)).objectArray)) (index)) :: BasicArrayList.BasicArrayList)))
            Control.Monad.void (BasicArrayList.clear ((jget basicArrayList)))
        pure ()


log :: (JavaObjectClass this_) => this_ -> IO (String)
log object_ = jmethod object_ "log" (\() -> (log_impl (javaCast object_ :: KeylessBasicArrayListCache))) ()

log_super :: (JavaObjectClass this_) => this_ -> IO (String)
log_super object_ = (log_impl (javaCast object_ :: KeylessBasicArrayListCache))

log_impl :: KeylessBasicArrayListCache -> IO (String)
log_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "S: ")
        Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget (this).base.base.list)))))
        let s_LABEL = " s: "
        basicArrayList <- newIORef (javaNull)
        forM_ [((jio (BasicArrayList.size ((jget (this).base.base.list)))) - 1), ((jio (BasicArrayList.size ((jget (this).base.base.list)))) - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            Control.Monad.void (StringMaker.append stringBuffer s_LABEL)
            jset basicArrayList (((javaCast (jindex ((jget ((jget (this).base.base.list)).objectArray)) (index)) :: BasicArrayList.BasicArrayList)))
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget basicArrayList)))))
        (StringMaker.toString stringBuffer)


