{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
-- package org.allbinary.game.layer
module SteeringVisitor (module SteeringVisitor, module Visitor) where

import Visitor hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getList, getList_super, getList_impl, list)
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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Visitor -- org.allbinary.logic.util.visitor.Visitor

data SteeringVisitor = SteeringVisitor
    { header_ :: JavaHeader
    , base :: Visitor.Visitor
    , list :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull SteeringVisitor where
    javaNull = javaNullRecord "SteeringVisitor"

instance JavaEquals SteeringVisitor where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SteeringVisitor where
    (==) = jrecordEquals

instance JavaObjectClass SteeringVisitor where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SteeringVisitor
newRecord_ = do
    base <- Visitor.newRecord_
    let header_ = base.header_
    list <- newIORef javaNull
    let this = SteeringVisitor header_ base list
    jregisterLevel header_ this
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: SteeringVisitor -> IO ()
initFields_ this = do
    jset this.list =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO SteeringVisitor
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SteeringVisitor -> IO ()
init_ this = do
    Visitor.init_ this.base
    initFields_ this


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: SteeringVisitor))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: SteeringVisitor))

getList_impl :: SteeringVisitor -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        pure ((jget (this).list))


