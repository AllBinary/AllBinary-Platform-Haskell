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
-- package org.allbinary.gui.swing.workers
module JListSwingWorker (module JListSwingWorker, module SwingWorker) where

import SwingWorker hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, doInBackground, doInBackground_super, doInBackground_impl, done, done_super, done_impl, getJList, getJList_super, getJList_impl, setJList, setJList_super, setJList_impl, getListModel, getListModel_super, getListModel_impl, setListModel, setListModel_super, setListModel_impl, jList, listModel)
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
import qualified JList -- same package or java.lang
import qualified ListModel -- same package or java.lang
import qualified Any -- same package or java.lang
-- import javax.swing.*
import qualified SwingWorker

data JListSwingWorker = JListSwingWorker
    { header_ :: JavaHeader
    , base :: SwingWorker.SwingWorker
    , jList :: IORef (JList.JList)
    , listModel :: IORef (ListModel.ListModel)
    }

instance JavaNull JListSwingWorker where
    javaNull = javaNullRecord "JListSwingWorker"

instance JavaEquals JListSwingWorker where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JListSwingWorker where
    (==) = jrecordEquals

instance JavaObjectClass JListSwingWorker where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO JListSwingWorker
newRecord_ = do
    base <- SwingWorker.newRecord_
    let header_ = base.header_
    jList <- newIORef javaNull
    listModel <- newIORef javaNull
    let this = JListSwingWorker header_ base jList listModel
    jregisterLevel header_ this
    jregisterMethod header_ "doInBackground" (\() -> doInBackground_impl this)
    jregisterMethod header_ "done" (\() -> done_impl this)
    jregisterMethod header_ "getJList" (\() -> getJList_impl this)
    jregisterMethod header_ "setJList" (\() -> setJList_impl this)
    jregisterMethod header_ "getListModel" (\() -> getListModel_impl this)
    jregisterMethod header_ "setListModel" (\() -> setListModel_impl this)
    pure this

initFields_ :: JListSwingWorker -> IO ()
initFields_ this = do
    jset this.jList (javaNull)
    jset this.listModel (javaNull)
    pure ()

new_2 :: JList.JList -> ListModel.ListModel -> IO JListSwingWorker
new_2 jList listModel = do
    this <- newRecord_
    init_2 this jList listModel
    pure this

init_2 :: JListSwingWorker -> JList.JList -> ListModel.ListModel -> IO ()
init_2 this jList listModel = do
        SwingWorker.init_ this.base
        initFields_ this
        Control.Monad.void (JListSwingWorker.setJList this jList)
        Control.Monad.void (JListSwingWorker.setListModel this listModel)
        pure ()


doInBackground :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
doInBackground object_ = jmethod object_ "doInBackground" (\() -> (doInBackground_impl (javaCast object_ :: JListSwingWorker))) ()

doInBackground_super :: (JavaObjectClass this_) => this_ -> IO (Any.Any)
doInBackground_super object_ = (doInBackground_impl (javaCast object_ :: JListSwingWorker))

doInBackground_impl :: JListSwingWorker -> IO (Any.Any)
doInBackground_impl this = do
        pure (javaNull)


done :: (JavaObjectClass this_) => this_ -> IO (())
done object_ = jmethod object_ "done" (\() -> (done_impl (javaCast object_ :: JListSwingWorker))) ()

done_super :: (JavaObjectClass this_) => this_ -> IO (())
done_super object_ = (done_impl (javaCast object_ :: JListSwingWorker))

done_impl :: JListSwingWorker -> IO (())
done_impl this = do
        Control.Monad.void (JList.setModel ((jio (JListSwingWorker.getJList this))) (jio (JListSwingWorker.getListModel this)))
        pure ()


getJList :: (JavaObjectClass this_) => this_ -> IO (JList.JList)
getJList object_ = jmethod object_ "getJList" (\() -> (getJList_impl (javaCast object_ :: JListSwingWorker))) ()

getJList_super :: (JavaObjectClass this_) => this_ -> IO (JList.JList)
getJList_super object_ = (getJList_impl (javaCast object_ :: JListSwingWorker))

getJList_impl :: JListSwingWorker -> IO (JList.JList)
getJList_impl this = do
        pure ((jget (this).jList))


setJList :: (JavaObjectClass this_) => this_ -> JList.JList -> IO (())
setJList object_ a1 = jmethod object_ "setJList" (\() -> (setJList_impl (javaCast object_ :: JListSwingWorker))) () a1

setJList_super :: (JavaObjectClass this_) => this_ -> JList.JList -> IO (())
setJList_super object_ a1 = (setJList_impl (javaCast object_ :: JListSwingWorker)) a1

setJList_impl :: JListSwingWorker -> JList.JList -> IO (())
setJList_impl this jList = do
        jset (this).jList (jList)
        pure ()


getListModel :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel object_ = jmethod object_ "getListModel" (\() -> (getListModel_impl (javaCast object_ :: JListSwingWorker))) ()

getListModel_super :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel_super object_ = (getListModel_impl (javaCast object_ :: JListSwingWorker))

getListModel_impl :: JListSwingWorker -> IO (ListModel.ListModel)
getListModel_impl this = do
        pure ((jget (this).listModel))


setListModel :: (JavaObjectClass this_) => this_ -> ListModel.ListModel -> IO (())
setListModel object_ a1 = jmethod object_ "setListModel" (\() -> (setListModel_impl (javaCast object_ :: JListSwingWorker))) () a1

setListModel_super :: (JavaObjectClass this_) => this_ -> ListModel.ListModel -> IO (())
setListModel_super object_ a1 = (setListModel_impl (javaCast object_ :: JListSwingWorker)) a1

setListModel_impl :: JListSwingWorker -> ListModel.ListModel -> IO (())
setListModel_impl this listModel = do
        jset (this).listModel (listModel)
        pure ()


