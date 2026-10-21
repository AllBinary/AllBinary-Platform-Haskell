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
-- package org.allbinary.logic.io
module SmallDelete where

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
import qualified DataOutputStream -- java.io.DataOutputStream
import qualified FileOutputStream -- java.io.FileOutputStream
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbFileSystem -- org.allbinary.logic.io.file.AbFileSystem
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data SmallDelete = SmallDelete
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , fileName :: IORef (String)
    , string :: IORef (String)
    }

instance JavaNull SmallDelete where
    javaNull = javaNullRecord "SmallDelete"

instance JavaEquals SmallDelete where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SmallDelete where
    (==) = jrecordEquals

instance JavaObjectClass SmallDelete where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SmallDelete
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    fileName <- newIORef ""
    string <- newIORef ""
    let this = SmallDelete header_ logUtil commonStrings fileName string
    jregisterLevel header_ this
    jregisterMethod header_ "deleteAtStart" (\() -> deleteAtStart_impl this)
    jregisterMethod header_ "deleteBetween" (\() -> deleteBetween_impl this)
    pure this

initFields_ :: SmallDelete -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.fileName (javaNull)
    jset this.string (javaNull)
    pure ()

new_1 :: String -> IO SmallDelete
new_1 fileName = do
    this <- newRecord_
    init_1 this fileName
    pure this

init_1 :: SmallDelete -> String -> IO ()
init_1 this fileName = do
        initFields_ this
        jset (this).fileName (fileName)
        assignedValue <- (AbFileSystem.readAsString ((jio (AbFileSystem.getInstance))) fileName)
        jset (this).string (assignedValue)
        pure ()


deleteAtStart :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
deleteAtStart object_ a1 a2 = jmethod object_ "deleteAtStart" (\() -> (deleteAtStart_impl (javaCast object_ :: SmallDelete))) () a1 a2

deleteAtStart_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
deleteAtStart_super object_ a1 a2 = (deleteAtStart_impl (javaCast object_ :: SmallDelete)) a1 a2

deleteAtStart_impl :: SmallDelete -> String -> String -> IO (Bool)
deleteAtStart_impl this start end = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "deleteAtStart" e)
            pure (False)
            ) $ do
            beginIndex <- newIORef (0)
            endIndex <- newIORef (0)
            jset beginIndex ((jstringIndexOf (jget (this).string) start 0))
            jset endIndex ((jstringIndexOf (jget (this).string) end 0))
            when ((((((jget endIndex) > (jget beginIndex)) && ((jget beginIndex) >= 0)) && ((jget endIndex) >= 0)) && ((jget beginIndex) < 10)) && ((jget endIndex) < 525)) $ do
                let text = (Prelude.take (((Prelude.length (jget (this).string))) - ((jget endIndex))) (Prelude.drop ((jget endIndex)) (jget (this).string)))
                idFile <- (FileOutputStream.new_1 (jget (this).fileName))
                idOutData <- (DataOutputStream.new_1 idFile)
                Control.Monad.void (DataOutputStream.writeBytes idOutData text)
                javaReturn (True)
            pure (False)


deleteBetween :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Bool)
deleteBetween object_ a1 a2 a3 = jmethod object_ "deleteBetween" (\() -> (deleteBetween_impl (javaCast object_ :: SmallDelete))) () a1 a2 a3

deleteBetween_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (Bool)
deleteBetween_super object_ a1 a2 a3 = (deleteBetween_impl (javaCast object_ :: SmallDelete)) a1 a2 a3

deleteBetween_impl :: SmallDelete -> String -> String -> String -> IO (Bool)
deleteBetween_impl this start end newText = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "deleteAtStart" e)
            pure (False)
            ) $ do
            beginIndex <- newIORef (0)
            endIndex <- newIORef (0)
            jset beginIndex ((jstringIndexOf (jget (this).string) start 0))
            jset endIndex ((jstringIndexOf (jget (this).string) end 0))
            when ((((((jget endIndex) > (jget beginIndex)) && ((jget beginIndex) >= 0)) && ((jget endIndex) >= 0)) && ((jget beginIndex) < 50)) && ((jget endIndex) < 425)) $ do
                let newStart = (Prelude.take (((jget beginIndex)) - (0)) (Prelude.drop (0) (jget (this).string)))
                let text = (Prelude.take (((Prelude.length (jget (this).string))) - (((jget endIndex) + (Prelude.length end)))) (Prelude.drop (((jget endIndex) + (Prelude.length end))) (jget (this).string)))
                idFile <- (FileOutputStream.new_1 (jget (this).fileName))
                idOutData <- (DataOutputStream.new_1 idFile)
                Control.Monad.void (DataOutputStream.writeBytes idOutData ((newStart ++ newText) ++ text))
                javaReturn (True)
            pure (False)


