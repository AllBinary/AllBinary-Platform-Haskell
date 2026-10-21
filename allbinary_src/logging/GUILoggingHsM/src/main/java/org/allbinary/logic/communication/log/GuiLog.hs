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
-- package org.allbinary.logic.communication.log
module GuiLog where

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
import qualified LogFormatUtil -- same package or java.lang
import qualified JDialog -- same package or java.lang
import qualified GridLayout -- same package or java.lang
import qualified JScrollPane -- same package or java.lang
import qualified JLabel -- same package or java.lang
import qualified JTextArea -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified PreLogUtil -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified CommonStrings -- org.allbinary.string.CommonStrings
-- import java.awt.*
-- import javax.swing.*

data GuiLog = GuiLog
    { header_ :: JavaHeader
    , logFormatUtil :: IORef (LogFormatUtil.LogFormatUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull GuiLog where
    javaNull = javaNullRecord "GuiLog"

instance JavaEquals GuiLog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq GuiLog where
    (==) = jrecordEquals

instance JavaObjectClass GuiLog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO GuiLog
newRecord_ = do
    header_ <- newJavaHeader
    logFormatUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = GuiLog header_ logFormatUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "showDialog" (\() -> showDialog_impl this)
    jregisterMethod header_ "put_overload1" (\() -> put_overload1_impl this)
    jregisterMethod header_ "put_overload1" (\() -> put_overload1_impl this)
    jregisterMethod header_ "put_overload2" (\() -> put_overload2_impl this)
    jregisterMethod header_ "put_overload2" (\() -> put_overload2_impl this)
    pure this

initFields_ :: GuiLog -> IO ()
initFields_ this = do
    jset this.logFormatUtil =<< (LogFormatUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()


getInstance :: IO (GuiLog)
getInstance = do
        pure (GuiLog.instance_)

new_ :: IO GuiLog
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: GuiLog -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


showDialog :: (JavaObjectClass this_) => this_ -> String -> IO (())
showDialog object_ a1 = jmethod object_ "showDialog" (\() -> (showDialog_impl (javaCast object_ :: GuiLog))) () a1

showDialog_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
showDialog_super object_ a1 = (showDialog_impl (javaCast object_ :: GuiLog)) a1

showDialog_impl :: GuiLog -> String -> IO (())
showDialog_impl this msg = do
        error <- (JDialog.new_)
        let size = ((Prelude.length msg) * 9)
        x <- newIORef (size)
        when ((jget x) > 550) $ do
            jset x (550)
        Control.Monad.void (JDialog.setLayout ((jio (JDialog.getContentPane error))) (jio (GridLayout.new_2 1 1)))
        if (size > 255) then do
            let y = 550
            Control.Monad.void (JDialog.setSize error (jget x) y)
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane error))) (jio (JScrollPane.new_1 (jio (JTextArea.new_1 msg)))))
        else when (size > 0) $ do
            let y = 50
            Control.Monad.void (JDialog.setSize error (jget x) y)
            Control.Monad.void (JDialog.add ((jio (JDialog.getContentPane error))) (jio (JScrollPane.new_1 (jio (JLabel.new_1 msg)))))
        Control.Monad.void (JDialog.show error)
        pure ()


-- Java overloads of put: calls the overload for the types of the arguments
put :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (String)
put this a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) = put_overload2 this a1 (javaCast a2 :: String) a3
    | otherwise = put_overload1 this a1 a2 a3

put_overload1 :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (String)
put_overload1 object_ a1 a2 a3 = jmethod object_ "put_overload1" (\() -> (put_overload1_impl (javaCast object_ :: GuiLog))) () a1 (jtoObject a2) a3

put_overload1_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> IO (String)
put_overload1_super object_ a1 a2 a3 = (put_overload1_impl (javaCast object_ :: GuiLog)) a1 (jtoObject a2) a3

put_overload1_impl :: GuiLog -> String -> JavaObject -> String -> IO (String)
put_overload1_impl this specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        (GuiLog.put this specialMessage anyType functionName javaNull)


-- Java overloads of put: calls the overload for the types of the arguments
put :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> JavaException -> IO (String)
put this a1 a2 a3 a4
    | jisInstanceOf a2 (javaNull :: String) = put_overload2 this a1 (javaCast a2 :: String) a3 a4
    | otherwise = put_overload1 this a1 a2 a3 a4

-- Java overload of put with a different parameter count: give it a different name
put_overload1 :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> JavaException -> IO (String)
put_overload1 object_ a1 a2 a3 a4 = jmethod object_ "put_overload1" (\() -> (put_overload1_impl (javaCast object_ :: GuiLog))) () a1 (jtoObject a2) a3 a4

put_overload1_super :: (JavaObjectClass this_, JavaObjectClass o2) => this_ -> String -> o2 -> String -> JavaException -> IO (String)
put_overload1_super object_ a1 a2 a3 a4 = (put_overload1_impl (javaCast object_ :: GuiLog)) a1 (jtoObject a2) a3 a4

put_overload1_impl :: GuiLog -> String -> JavaObject -> String -> JavaException -> IO (String)
put_overload1_impl this specialMessage anyTypeObject_ functionName exception = do
        let anyType = jtoObject anyTypeObject_
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this "put" e)
            pure ("Logging Error")
            ) $ do
            data_ <- (LogFormatUtil.get ((jget (this).logFormatUtil)) specialMessage (jio (Class.getName ((jio (jobjectGetClass anyType))))) functionName exception)
            Control.Monad.void (GuiLog.showDialog this data_)
            Control.Monad.void (putStrLn (javaToString data_))
            pure (data_)


-- Java overload of put with a different parameter count: give it a different name
put_overload2 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
put_overload2 object_ a1 a2 a3 = jmethod object_ "put_overload2" (\() -> (put_overload2_impl (javaCast object_ :: GuiLog))) () a1 a2 a3

put_overload2_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
put_overload2_super object_ a1 a2 a3 = (put_overload2_impl (javaCast object_ :: GuiLog)) a1 a2 a3

put_overload2_impl :: GuiLog -> String -> String -> String -> IO (String)
put_overload2_impl this specialMessage className functionName = do
        (GuiLog.put this specialMessage className functionName javaNull)


-- Java overload of put with a different parameter count: give it a different name
put_overload2 :: (JavaObjectClass this_) => this_ -> String -> String -> String -> JavaException -> IO (String)
put_overload2 object_ a1 a2 a3 a4 = jmethod object_ "put_overload2" (\() -> (put_overload2_impl (javaCast object_ :: GuiLog))) () a1 a2 a3 a4

put_overload2_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> JavaException -> IO (String)
put_overload2_super object_ a1 a2 a3 a4 = (put_overload2_impl (javaCast object_ :: GuiLog)) a1 a2 a3 a4

put_overload2_impl :: GuiLog -> String -> String -> String -> JavaException -> IO (String)
put_overload2_impl this specialMessage className functionName exception = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).commonStrings)).eXCEPTION) this "put" e)
            pure ("Logging Error")
            ) $ do
            data_ <- (LogFormatUtil.get ((jget (this).logFormatUtil)) specialMessage className functionName exception)
            Control.Monad.void (GuiLog.showDialog this data_)
            Control.Monad.void (putStrLn (javaToString data_))
            pure (data_)


