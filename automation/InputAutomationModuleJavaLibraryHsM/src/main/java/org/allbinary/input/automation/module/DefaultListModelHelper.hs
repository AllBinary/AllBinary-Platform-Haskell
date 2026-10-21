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
-- package org.allbinary.input.automation.module
module DefaultListModelHelper where

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
import qualified DefaultListModel -- same package or java.lang
import qualified ListModel -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
-- import javax.swing.*

data DefaultListModelHelper = DefaultListModelHelper
    { header_ :: JavaHeader
    , defaultListModel :: IORef (DefaultListModel.DefaultListModel)
    , vector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull DefaultListModelHelper where
    javaNull = javaNullRecord "DefaultListModelHelper"

instance JavaEquals DefaultListModelHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq DefaultListModelHelper where
    (==) = jrecordEquals

instance JavaObjectClass DefaultListModelHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO DefaultListModelHelper
newRecord_ = do
    header_ <- newJavaHeader
    defaultListModel <- newIORef javaNull
    vector <- newIORef javaNull
    let this = DefaultListModelHelper header_ defaultListModel vector
    jregisterLevel header_ this
    jregisterMethod header_ "initDefaultModelList" (\() -> initDefaultModelList_impl this)
    jregisterMethod header_ "getListModel" (\() -> getListModel_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    pure this

initFields_ :: DefaultListModelHelper -> IO ()
initFields_ this = do
    jset this.defaultListModel (javaNull)
    jset this.vector (javaNull)
    pure ()

new_ :: IO DefaultListModelHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: DefaultListModelHelper -> IO ()
init_ this = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).vector (assignedValue)
        assignedValue <- (DefaultListModel.new_)
        jset (this).defaultListModel (assignedValue)
        pure ()


initDefaultModelList :: (JavaObjectClass this_) => this_ -> IO (())
initDefaultModelList object_ = jmethod object_ "initDefaultModelList" (\() -> (initDefaultModelList_impl (javaCast object_ :: DefaultListModelHelper))) ()

initDefaultModelList_super :: (JavaObjectClass this_) => this_ -> IO (())
initDefaultModelList_super object_ = (initDefaultModelList_impl (javaCast object_ :: DefaultListModelHelper))

initDefaultModelList_impl :: DefaultListModelHelper -> IO (())
initDefaultModelList_impl this = do
        assignedValue <- (DefaultListModel.new_)
        jset (this).defaultListModel (assignedValue)
        size <- (BasicArrayList.size ((jget (this).vector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let moduleName = (javaCast (jio (BasicArrayList.get ((jget (this).vector)) index)) :: String)
            Control.Monad.void (DefaultListModel.addElement ((jget (this).defaultListModel)) moduleName)
        pure ()


getListModel :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel object_ = jmethod object_ "getListModel" (\() -> (getListModel_impl (javaCast object_ :: DefaultListModelHelper))) ()

getListModel_super :: (JavaObjectClass this_) => this_ -> IO (ListModel.ListModel)
getListModel_super object_ = (getListModel_impl (javaCast object_ :: DefaultListModelHelper))

getListModel_impl :: DefaultListModelHelper -> IO (ListModel.ListModel)
getListModel_impl this = do
        pure ((javaCast (jget (this).defaultListModel) :: ListModel.ListModel))


add :: (JavaObjectClass this_) => this_ -> String -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: DefaultListModelHelper))) () a1

add_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: DefaultListModelHelper)) a1

add_impl :: DefaultListModelHelper -> String -> IO (())
add_impl this string = do
        Control.Monad.void (BasicArrayList.add ((jget (this).vector)) string)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: DefaultListModelHelper))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: DefaultListModelHelper)) a1

remove_impl :: DefaultListModelHelper -> String -> IO (())
remove_impl this string = do
        Control.Monad.void (BasicArrayList.remove ((jget (this).vector)) string)
        pure ()


