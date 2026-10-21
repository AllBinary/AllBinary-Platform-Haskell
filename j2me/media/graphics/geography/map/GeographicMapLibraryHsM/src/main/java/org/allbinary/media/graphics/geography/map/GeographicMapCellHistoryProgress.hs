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
-- package org.allbinary.media.graphics.geography.map
module GeographicMapCellHistoryProgress (module GeographicMapCellHistoryProgress, module GeographicMapCellHistoryProgressBase) where

import GeographicMapCellHistoryProgressBase hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, isAnyProgress, isAnyProgress_super, isAnyProgress_impl, totalVisitedArray, geographicMapCellHistoryArray)
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
import qualified GeographicMapCellHistory -- same package or java.lang
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified GeographicMapCellHistoryProgressBase

data GeographicMapCellHistoryProgress = GeographicMapCellHistoryProgress
    { header_ :: JavaHeader
    , base :: GeographicMapCellHistoryProgressBase.GeographicMapCellHistoryProgressBase
    , totalVisitedArray :: IORef (JavaArray (Int))
    , geographicMapCellHistoryArray :: IORef (JavaArray (GeographicMapCellHistory.GeographicMapCellHistory))
    }

instance JavaNull GeographicMapCellHistoryProgress where
    javaNull = javaNullRecord "GeographicMapCellHistoryProgress"

instance JavaEquals GeographicMapCellHistoryProgress where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GeographicMapCellHistoryProgress where
    (==) = jrecordEquals

instance JavaObjectClass GeographicMapCellHistoryProgress where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GeographicMapCellHistoryProgress
newRecord_ = do
    base <- GeographicMapCellHistoryProgressBase.newRecord_
    let header_ = base.header_
    totalVisitedArray <- newIORef javaNull
    geographicMapCellHistoryArray <- newIORef javaNull
    let this = GeographicMapCellHistoryProgress header_ base totalVisitedArray geographicMapCellHistoryArray
    jregisterLevel header_ this
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "isAnyProgress" (\() -> isAnyProgress_impl this)
    pure this

initFields_ :: GeographicMapCellHistoryProgress -> IO ()
initFields_ this = do
    jset this.totalVisitedArray ((jget ((jio (NullUtil.getInstance))).nULL_INT_ARRAY))
    jset this.geographicMapCellHistoryArray (GeographicMapCellHistory.nULL_GEOGRPAHIC_MAP_HISTORY_ARRAY)
    pure ()

new_1 :: JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO GeographicMapCellHistoryProgress
new_1 geographicMapCellHistoryArray = do
    this <- newRecord_
    init_1 this geographicMapCellHistoryArray
    pure this

init_1 :: GeographicMapCellHistoryProgress -> JavaArray (GeographicMapCellHistory.GeographicMapCellHistory) -> IO ()
init_1 this geographicMapCellHistoryArray = do
        GeographicMapCellHistoryProgressBase.init_ this.base
        initFields_ this
        jset (this).geographicMapCellHistoryArray (geographicMapCellHistoryArray)
        Control.Monad.void (GeographicMapCellHistoryProgress.init this)
        pure ()


init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: GeographicMapCellHistoryProgress))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: GeographicMapCellHistoryProgress))

init_impl :: GeographicMapCellHistoryProgress -> IO (())
init_impl this = do
        jset (this).totalVisitedArray ((jnewArray ((jlength (jget (this).geographicMapCellHistoryArray))) 0))
        pure ()


isAnyProgress :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyProgress object_ = jmethod object_ "isAnyProgress" (\() -> (isAnyProgress_impl (javaCast object_ :: GeographicMapCellHistoryProgress))) ()

isAnyProgress_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isAnyProgress_super object_ = (isAnyProgress_impl (javaCast object_ :: GeographicMapCellHistoryProgress))

isAnyProgress_impl :: GeographicMapCellHistoryProgress -> IO (Bool)
isAnyProgress_impl this = do
        isProgressing <- newIORef (False)
        let size = (jlength (jget (this).geographicMapCellHistoryArray))
        currentTotalVisited <- newIORef (0)
        totalVisited <- newIORef (0)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (getTotalVisited ((jindex ((jget (this).geographicMapCellHistoryArray)) (index))))
            jset totalVisited (assignedValue)
            jset currentTotalVisited ((jindex ((jget (this).totalVisitedArray)) (index)))
            when ((jget currentTotalVisited) < (jget totalVisited)) $ do
                jset isProgressing (True)
                jsetIndex ((jget (this).totalVisitedArray)) (index) ((jget totalVisited))
        pure ((jget isProgressing))


