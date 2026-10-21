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
module EndLevelNoBuildingSelectedTouchButtonsBuilder (module EndLevelNoBuildingSelectedTouchButtonsBuilder, module TouchButtonsListBuilder) where

import TouchButtonsListBuilder hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getList, getList_super, getList_impl, logUtil)
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
import qualified BasicTouchButtonsBuilder -- same package or java.lang
import qualified BuildingScrollTouchButtonsBuilder -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicArrayListUtil -- org.allbinary.util.BasicArrayListUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TouchButtonsListBuilder

data EndLevelNoBuildingSelectedTouchButtonsBuilder = EndLevelNoBuildingSelectedTouchButtonsBuilder
    { header_ :: JavaHeader
    , base :: TouchButtonsListBuilder.TouchButtonsListBuilder
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull EndLevelNoBuildingSelectedTouchButtonsBuilder where
    javaNull = javaNullRecord "EndLevelNoBuildingSelectedTouchButtonsBuilder"

instance JavaEquals EndLevelNoBuildingSelectedTouchButtonsBuilder where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq EndLevelNoBuildingSelectedTouchButtonsBuilder where
    (==) = jrecordEquals

instance JavaObjectClass EndLevelNoBuildingSelectedTouchButtonsBuilder where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO EndLevelNoBuildingSelectedTouchButtonsBuilder
newRecord_ = do
    base <- TouchButtonsListBuilder.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = EndLevelNoBuildingSelectedTouchButtonsBuilder header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getList" (\() -> getList_impl this)
    pure this

initFields_ :: EndLevelNoBuildingSelectedTouchButtonsBuilder -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO EndLevelNoBuildingSelectedTouchButtonsBuilder
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: EndLevelNoBuildingSelectedTouchButtonsBuilder -> IO ()
init_ this = do
    TouchButtonsListBuilder.init_ this.base
    initFields_ this


getList :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList object_ = jmethod object_ "getList" (\() -> (getList_impl (javaCast object_ :: EndLevelNoBuildingSelectedTouchButtonsBuilder))) ()

getList_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getList_super object_ = (getList_impl (javaCast object_ :: EndLevelNoBuildingSelectedTouchButtonsBuilder))

getList_impl :: EndLevelNoBuildingSelectedTouchButtonsBuilder -> IO (BasicArrayList.BasicArrayList)
getList_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR) e)
            (BasicArrayListUtil.getImmutableInstance ((jio (BasicArrayListUtil.getInstance))))
            ) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).sTART) this (jget ((jget (this).base.base.commonStrings)).cONSTRUCTOR))
            list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.addAllList list (jio (BasicTouchButtonsBuilder.getList ((jio (BasicTouchButtonsBuilder.new_))))))
            Control.Monad.void (BasicArrayList.addAllList list (jio (BuildingScrollTouchButtonsBuilder.getList ((jio (BuildingScrollTouchButtonsBuilder.new_))))))
            Control.Monad.void (TouchButtonsListBuilder.addList this list)
            pure (list)


