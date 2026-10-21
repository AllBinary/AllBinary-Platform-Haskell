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
-- package org.allbinary.logic.java.help
module JavaHelpUtil where

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
import qualified Point -- same package or java.lang
import qualified Dimension -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified DisplayHelpFromSource -- same package or java.lang
import qualified ActionEvent -- java.awt.event.ActionEvent
import qualified File -- java.io.File
import qualified URI -- java.net.URI
import qualified URL -- java.net.URL
import qualified CSH -- javax.help.CSH
import qualified HelpBroker -- javax.help.HelpBroker
import qualified HelpSet -- javax.help.HelpSet
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
-- import javax.swing.*

data JavaHelpUtil = JavaHelpUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , point :: IORef (Point.Point)
    , dimension :: IORef (Dimension.Dimension)
    , contextSensitiveHelpActionEvent :: IORef (ActionEvent.ActionEvent)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull JavaHelpUtil where
    javaNull = javaNullRecord "JavaHelpUtil"

instance JavaEquals JavaHelpUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JavaHelpUtil where
    (==) = jrecordEquals

instance JavaObjectClass JavaHelpUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO JavaHelpUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    point <- newIORef javaNull
    dimension <- newIORef javaNull
    contextSensitiveHelpActionEvent <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = JavaHelpUtil header_ logUtil point dimension contextSensitiveHelpActionEvent commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getHelpSet_overload1" (\() -> getHelpSet_overload1_impl this)
    jregisterMethod header_ "getHelpSet_overload2" (\() -> getHelpSet_overload2_impl this)
    jregisterMethod header_ "show" (\() -> show_impl this)
    pure this

initFields_ :: JavaHelpUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.point =<< (Point.new_2 0 0)
    jset this.dimension =<< (Dimension.new_2 640 480)
    jset this.contextSensitiveHelpActionEvent =<< (ActionEvent.new_3 (jio (JLabel.new_)) (ActionEvent.aCTION_FIRST) javaNull)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (JavaHelpUtil)
getInstance = do
        pure (JavaHelpUtil.instance_)

new_ :: IO JavaHelpUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JavaHelpUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getHelpSet: calls the overload for the types of the arguments
getHelpSet :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (HelpSet.HelpSet)
getHelpSet this a1
    | jisInstanceOf a1 (javaNull :: String) = getHelpSet_overload1 this (javaCast a1 :: String)
    | jisInstanceOf a1 (javaNull :: URL.URL) = getHelpSet_overload2 this (javaCast a1 :: URL.URL)
    | otherwise = getHelpSet_overload2 this (javaCast a1 :: URL.URL)

getHelpSet_overload1 :: (JavaObjectClass this_) => this_ -> String -> IO (HelpSet.HelpSet)
getHelpSet_overload1 object_ a1 = jmethod object_ "getHelpSet_overload1" (\() -> (getHelpSet_overload1_impl (javaCast object_ :: JavaHelpUtil))) () a1

getHelpSet_overload1_super :: (JavaObjectClass this_) => this_ -> String -> IO (HelpSet.HelpSet)
getHelpSet_overload1_super object_ a1 = (getHelpSet_overload1_impl (javaCast object_ :: JavaHelpUtil)) a1

getHelpSet_overload1_impl :: JavaHelpUtil -> String -> IO (HelpSet.HelpSet)
getHelpSet_overload1_impl this filePath = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) (jio (JavaHelpUtil.getInstance)) "set" e)
            pure (javaNull)
            ) $ do
            helpSetURI <- (File.toURI ((jio (File.new_1 filePath))))
            helpSetURL <- (URI.toURL helpSetURI)
            (JavaHelpUtil.getHelpSet this helpSetURL)


getHelpSet_overload2 :: (JavaObjectClass this_) => this_ -> URL.URL -> IO (HelpSet.HelpSet)
getHelpSet_overload2 object_ a1 = jmethod object_ "getHelpSet_overload2" (\() -> (getHelpSet_overload2_impl (javaCast object_ :: JavaHelpUtil))) () a1

getHelpSet_overload2_super :: (JavaObjectClass this_) => this_ -> URL.URL -> IO (HelpSet.HelpSet)
getHelpSet_overload2_super object_ a1 = (getHelpSet_overload2_impl (javaCast object_ :: JavaHelpUtil)) a1

getHelpSet_overload2_impl :: JavaHelpUtil -> URL.URL -> IO (HelpSet.HelpSet)
getHelpSet_overload2_impl this url = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) (jio (JavaHelpUtil.getInstance)) "set" e)
            pure (javaNull)
            ) $ do
            (HelpSet.new_2 javaNull url)


show :: (JavaObjectClass this_) => this_ -> HelpSet.HelpSet -> IO (())
show object_ a1 = jmethod object_ "show" (\() -> (show_impl (javaCast object_ :: JavaHelpUtil))) () a1

show_super :: (JavaObjectClass this_) => this_ -> HelpSet.HelpSet -> IO (())
show_super object_ a1 = (show_impl (javaCast object_ :: JavaHelpUtil)) a1

show_impl :: JavaHelpUtil -> HelpSet.HelpSet -> IO (())
show_impl this helpSet = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) (jio (JavaHelpUtil.getInstance)) "show" e)
            ) $ do
            helpBroker <- (HelpSet.createHelpBroker helpSet)
            Control.Monad.void (HelpBroker.setLocation helpBroker (jget (this).point))
            Control.Monad.void (HelpBroker.setSize helpBroker (jget (this).dimension))
            Control.Monad.void (DisplayHelpFromSource.actionPerformed ((jio (DisplayHelpFromSource.new_1 helpBroker))) (jget (this).contextSensitiveHelpActionEvent))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "CSH Action" (jio (JavaHelpUtil.getInstance)) "show")
        pure ()


main :: JavaArray (String) -> IO (())
main args = do
        handle (\(e :: JavaException) -> do
            pure ()
            ) $ do
            javaHelpUtil <- (JavaHelpUtil.getInstance)
            Control.Monad.void (JavaHelpUtil.show javaHelpUtil (jio (JavaHelpUtil.getHelpSet javaHelpUtil "G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs")))
        pure ()


