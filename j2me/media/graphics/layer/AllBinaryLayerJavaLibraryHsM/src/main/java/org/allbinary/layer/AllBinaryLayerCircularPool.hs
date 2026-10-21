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
module AllBinaryLayerCircularPool (module AllBinaryLayerCircularPool, module BaseCircularPool) where

import BaseCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initAllBinaryLayerCircularPool, initAllBinaryLayerCircularPool_super, initAllBinaryLayerCircularPool_impl)
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
import qualified AllBinaryLayerFactoryInterface -- same package or java.lang
import qualified BaseCircularPool -- org.allbinary.logic.util.cache.BaseCircularPool
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data AllBinaryLayerCircularPool = AllBinaryLayerCircularPool
    { header_ :: JavaHeader
    , base :: BaseCircularPool.BaseCircularPool
    }

instance JavaNull AllBinaryLayerCircularPool where
    javaNull = javaNullRecord "AllBinaryLayerCircularPool"

instance JavaEquals AllBinaryLayerCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryLayerCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryLayerCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryLayerCircularPool
newRecord_ = do
    base <- BaseCircularPool.newRecord_
    let header_ = base.header_
    let this = AllBinaryLayerCircularPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "initAllBinaryLayerCircularPool" (\() -> initAllBinaryLayerCircularPool_impl this)
    pure this

initFields_ :: AllBinaryLayerCircularPool -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AllBinaryLayerCircularPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AllBinaryLayerCircularPool -> IO ()
init_ this = do
        BaseCircularPool.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
initAllBinaryLayerCircularPool :: (JavaObjectClass this_) => this_ -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> Int -> IO (())
initAllBinaryLayerCircularPool object_ a1 a2 = jmethod object_ "initAllBinaryLayerCircularPool" (\() -> (initAllBinaryLayerCircularPool_impl (javaCast object_ :: AllBinaryLayerCircularPool))) () a1 a2

initAllBinaryLayerCircularPool_super :: (JavaObjectClass this_) => this_ -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> Int -> IO (())
initAllBinaryLayerCircularPool_super object_ a1 a2 = (initAllBinaryLayerCircularPool_impl (javaCast object_ :: AllBinaryLayerCircularPool)) a1 a2

initAllBinaryLayerCircularPool_impl :: AllBinaryLayerCircularPool -> AllBinaryLayerFactoryInterface.AllBinaryLayerFactoryInterface -> Int -> IO (())
initAllBinaryLayerCircularPool_impl this allbinaryLayerFactoryInterface total = do
        assignedValue <- (CircularIndexUtil.createInstance total)
        jset (this).base.circularIndexUtil (assignedValue)
        jset (this).base.oBJECT_ARRAY ((jnewArray (total) javaNull))
        forM_ [0 .. total - 1] $ \localIndex -> javaIteration (pure ()) $ do
            assignedValue <- (fmap jtoObject (AllBinaryLayerFactoryInterface.getInstance allbinaryLayerFactoryInterface))
            jsetIndex ((jget (this).base.oBJECT_ARRAY)) (localIndex) (assignedValue)
        pure ()


