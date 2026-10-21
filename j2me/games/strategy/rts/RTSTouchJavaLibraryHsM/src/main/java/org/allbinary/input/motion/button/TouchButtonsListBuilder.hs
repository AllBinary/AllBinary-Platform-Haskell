{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
-- package org.allbinary.input.motion.button
module TouchButtonsListBuilder (module TouchButtonsListBuilder, module BaseTouchInput) where

import BaseTouchInput hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, addList, addList_super, addList_impl, add, add_super, add_impl, baseTouchInputList)
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
import qualified BaseTouchInput

data TouchButtonsListBuilder = TouchButtonsListBuilder
    { header_ :: JavaHeader
    , base :: BaseTouchInput.BaseTouchInput
    , baseTouchInputList :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull TouchButtonsListBuilder where
    javaNull = javaNullRecord "TouchButtonsListBuilder"

instance JavaEquals TouchButtonsListBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TouchButtonsListBuilder where
    (==) = jrecordEquals

instance JavaObjectClass TouchButtonsListBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TouchButtonsListBuilder
newRecord_ = do
    base <- BaseTouchInput.newRecord_
    let header_ = base.header_
    baseTouchInputList <- newIORef javaNull
    let this = TouchButtonsListBuilder header_ base baseTouchInputList
    jregisterLevel header_ this
    jregisterMethod header_ "addList" (\() -> addList_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: TouchButtonsListBuilder -> IO ()
initFields_ this = do
    jset this.baseTouchInputList =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO TouchButtonsListBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TouchButtonsListBuilder -> IO ()
init_ this = do
    BaseTouchInput.init_ this.base
    initFields_ this


addList :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addList object_ a1 = jmethod object_ "addList" (\() -> (addList_impl (javaCast object_ :: TouchButtonsListBuilder))) () a1

addList_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
addList_super object_ a1 = (addList_impl (javaCast object_ :: TouchButtonsListBuilder)) a1

addList_impl :: TouchButtonsListBuilder -> BasicArrayList.BasicArrayList -> IO (())
addList_impl this list = do
        size <- (BasicArrayList.size ((jget (this).baseTouchInputList)))
        baseTouchInput <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset baseTouchInput ((javaCast (jio (BasicArrayList.get ((jget (this).baseTouchInputList)) index)) :: BaseTouchInput.BaseTouchInput))
            Control.Monad.void (BasicArrayList.addAllList list (jio (BaseTouchInput.getList ((jget baseTouchInput)))))
        pure ()


add :: (JavaObjectClass this_) => this_ -> BaseTouchInput.BaseTouchInput -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: TouchButtonsListBuilder))) () a1

add_super :: (JavaObjectClass this_) => this_ -> BaseTouchInput.BaseTouchInput -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: TouchButtonsListBuilder)) a1

add_impl :: TouchButtonsListBuilder -> BaseTouchInput.BaseTouchInput -> IO (())
add_impl this baseTouchInput = do
        Control.Monad.void (BasicArrayList.add ((jget (this).baseTouchInputList)) baseTouchInput)
        pure ()


