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
-- package org.allbinary.graphics
module GPointCircularPool (module GPointCircularPool, module BaseCircularPool) where

import BaseCircularPool hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified CustomGPoint -- same package or java.lang
import qualified BaseCircularPool -- org.allbinary.logic.util.cache.BaseCircularPool
import qualified CircularIndexUtil -- org.allbinary.util.CircularIndexUtil

data GPointCircularPool = GPointCircularPool
    { header_ :: JavaHeader
    , base :: BaseCircularPool.BaseCircularPool
    }

instance JavaNull GPointCircularPool where
    javaNull = javaNullRecord "GPointCircularPool"

instance JavaEquals GPointCircularPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GPointCircularPool where
    (==) = jrecordEquals

instance JavaObjectClass GPointCircularPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO GPointCircularPool
newRecord_ = do
    base <- BaseCircularPool.newRecord_
    let header_ = base.header_
    let this = GPointCircularPool header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: GPointCircularPool -> IO ()
initFields_ this = do
    pure ()

new_1 :: Int -> IO GPointCircularPool
new_1 size = do
    this <- newRecord_
    init_1 this size
    pure this

init_1 :: GPointCircularPool -> Int -> IO ()
init_1 this size = do
        BaseCircularPool.init_ this.base
        initFields_ this
        assignedValue <- (CircularIndexUtil.createInstance size)
        jset (this).base.circularIndexUtil (assignedValue)
        jset (this).base.oBJECT_ARRAY ((jnewArray (size) javaNull))
        forM_ [(size - 1), (size - 1) + (-1) .. 0] $ \index -> javaIteration (pure ()) $ do
            assignedValue <- (fmap jtoObject (CustomGPoint.getInstance3 0 0))
            jsetIndex ((jget (this).base.oBJECT_ARRAY)) (index) (assignedValue)
        pure ()


