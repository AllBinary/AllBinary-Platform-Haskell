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
-- package org.allbinary.logic.util.event
module AllBinaryEventCircularPool (module AllBinaryEventCircularPool, module BaseCircularPool) where

import BaseCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, initAllBinaryEventCircularPool, initAllBinaryEventCircularPool_super, initAllBinaryEventCircularPool_impl)
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
import qualified AllBinaryEventObjectFactoryInterface -- same package or java.lang
import qualified BaseCircularPool -- org.allbinary.logic.util.cache.BaseCircularPool
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data AllBinaryEventCircularPool = AllBinaryEventCircularPool
    { header_ :: JavaHeader
    , base :: BaseCircularPool.BaseCircularPool
    }

instance JavaNull AllBinaryEventCircularPool where
    javaNull = javaNullRecord "AllBinaryEventCircularPool"

instance JavaEquals AllBinaryEventCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AllBinaryEventCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass AllBinaryEventCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AllBinaryEventCircularPool
newRecord_ = do
    base <- BaseCircularPool.newRecord_
    let header_ = base.header_
    let this = AllBinaryEventCircularPool header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "initAllBinaryEventCircularPool" (\() -> initAllBinaryEventCircularPool_impl this)
    pure this

initFields_ :: AllBinaryEventCircularPool -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO AllBinaryEventCircularPool
new_1 max = do
    this <- newRecord_
    init_1 this max
    pure this

init_1 :: AllBinaryEventCircularPool -> Int -> IO ()
init_1 this max = do
        BaseCircularPool.init_ this.base
        initFields_ this
        jset (this).base.oBJECT_ARRAY ((jnewArray (max) javaNull))
        assignedValue <- (CircularIndexUtil.createInstance max)
        jset (this).base.circularIndexUtil (assignedValue)
        pure ()


initAllBinaryEventCircularPool :: (JavaObjectClass this_) => this_ -> AllBinaryEventObjectFactoryInterface.AllBinaryEventObjectFactoryInterface -> IO (())
initAllBinaryEventCircularPool object_ a1 = jmethod object_ "initAllBinaryEventCircularPool" (\() -> (initAllBinaryEventCircularPool_impl (javaCast object_ :: AllBinaryEventCircularPool))) () a1

initAllBinaryEventCircularPool_super :: (JavaObjectClass this_) => this_ -> AllBinaryEventObjectFactoryInterface.AllBinaryEventObjectFactoryInterface -> IO (())
initAllBinaryEventCircularPool_super object_ a1 = (initAllBinaryEventCircularPool_impl (javaCast object_ :: AllBinaryEventCircularPool)) a1

initAllBinaryEventCircularPool_impl :: AllBinaryEventCircularPool -> AllBinaryEventObjectFactoryInterface.AllBinaryEventObjectFactoryInterface -> IO (())
initAllBinaryEventCircularPool_impl this allBinaryEventObjectFactoryInterface = do
        Control.Monad.void (CircularIndexUtil.setIndex ((jget (this).base.circularIndexUtil)) 0)
        size <- (CircularIndexUtil.getSize ((jget (this).base.circularIndexUtil)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap jtoObject (AllBinaryEventObjectFactoryInterface.getInstance allBinaryEventObjectFactoryInterface))
            jsetIndex ((jget (this).base.oBJECT_ARRAY)) (index) (assignedValue)
        pure ()


