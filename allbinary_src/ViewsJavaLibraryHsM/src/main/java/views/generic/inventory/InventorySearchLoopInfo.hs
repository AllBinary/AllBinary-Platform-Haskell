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
-- package views.generic.inventory
module InventorySearchLoopInfo where

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
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data InventorySearchLoopInfo = InventorySearchLoopInfo
    { header_ :: JavaHeader
    , lastPage :: IORef (Int)
    , currentPage :: IORef (Int)
    , numberOfResultsOnCurrentPage :: IORef (Int)
    , numberOfResults :: IORef (Int)
    , cURRENT :: IORef (String)
    , nUM :: IORef (String)
    , lAST :: IORef (String)
    }

instance JavaNull InventorySearchLoopInfo where
    javaNull = javaNullRecord "InventorySearchLoopInfo"

instance JavaEquals InventorySearchLoopInfo where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventorySearchLoopInfo where
    (==) = jrecordEquals

instance JavaObjectClass InventorySearchLoopInfo where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventorySearchLoopInfo
newRecord_ = do
    header_ <- newJavaHeader
    lastPage <- newIORef 0
    currentPage <- newIORef 0
    numberOfResultsOnCurrentPage <- newIORef 0
    numberOfResults <- newIORef 0
    cURRENT <- newIORef ""
    nUM <- newIORef ""
    lAST <- newIORef ""
    let this = InventorySearchLoopInfo header_ lastPage currentPage numberOfResultsOnCurrentPage numberOfResults cURRENT nUM lAST
    jregisterLevel header_ this
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: InventorySearchLoopInfo -> IO ()
initFields_ this = do
    jset this.lastPage ((Prelude.negate 1))
    jset this.currentPage ((Prelude.negate 1))
    jset this.numberOfResultsOnCurrentPage (0)
    jset this.numberOfResults (0)
    jset this.cURRENT ("current: ")
    jset this.nUM (" num: ")
    jset this.lAST (" last: ")
    pure ()

new_ :: IO InventorySearchLoopInfo
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventorySearchLoopInfo -> IO ()
init_ this = do
    initFields_ this


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: InventorySearchLoopInfo))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: InventorySearchLoopInfo))

toString_impl :: InventorySearchLoopInfo -> IO (String)
toString_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).cURRENT))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).currentPage))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).nUM))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).numberOfResults))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).lAST))
        Control.Monad.void (StringMaker.appendint stringBuffer (jget (this).lastPage))
        (StringMaker.toString stringBuffer)


