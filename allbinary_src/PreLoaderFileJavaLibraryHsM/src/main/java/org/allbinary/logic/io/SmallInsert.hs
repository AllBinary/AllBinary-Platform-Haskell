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
module SmallInsert where

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

data SmallInsert = SmallInsert
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , fileName :: IORef (String)
    , string :: IORef (String)
    }

instance JavaNull SmallInsert where
    javaNull = javaNullRecord "SmallInsert"

instance JavaEquals SmallInsert where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SmallInsert where
    (==) = jrecordEquals

instance JavaObjectClass SmallInsert where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SmallInsert
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    fileName <- newIORef ""
    string <- newIORef ""
    let this = SmallInsert header_ logUtil commonStrings fileName string
    jregisterLevel header_ this
    jregisterMethod header_ "atBeginning" (\() -> atBeginning_impl this)
    jregisterMethod header_ "after" (\() -> after_impl this)
    jregisterMethod header_ "atEnd" (\() -> atEnd_impl this)
    pure this

initFields_ :: SmallInsert -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.fileName (javaNull)
    jset this.string (javaNull)
    pure ()

new_1 :: String -> IO SmallInsert
new_1 fileName = do
    this <- newRecord_
    init_1 this fileName
    pure this

init_1 :: SmallInsert -> String -> IO ()
init_1 this fileName = do
        initFields_ this
        jset (this).fileName (fileName)
        assignedValue <- (AbFileSystem.readAsString ((jio (AbFileSystem.getInstance))) fileName)
        jset (this).string (assignedValue)
        pure ()


atBeginning :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
atBeginning object_ a1 = jmethod object_ "atBeginning" (\() -> (atBeginning_impl (javaCast object_ :: SmallInsert))) () a1

atBeginning_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
atBeginning_super object_ a1 = (atBeginning_impl (javaCast object_ :: SmallInsert)) a1

atBeginning_impl :: SmallInsert -> String -> IO (Bool)
atBeginning_impl this text = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "insertAtBeginning" e)
            pure (False)
            ) $ do
            idFile <- (FileOutputStream.new_1 (jget (this).fileName))
            idOutData <- (DataOutputStream.new_1 idFile)
            Control.Monad.void (DataOutputStream.writeBytes idOutData (text ++ (jget (this).string)))
            pure (True)


after :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
after object_ a1 a2 = jmethod object_ "after" (\() -> (after_impl (javaCast object_ :: SmallInsert))) () a1 a2

after_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (Bool)
after_super object_ a1 a2 = (after_impl (javaCast object_ :: SmallInsert)) a1 a2

after_impl :: SmallInsert -> String -> String -> IO (Bool)
after_impl this text after = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "after" e)
            pure (False)
            ) $ do
            index <- newIORef ((jstringIndexOf (jget (this).string) after 0))
            when ((jget index) < 0) $ do
                Control.Monad.void (putStrLn (javaToString ((("No such start: " ++ after) ++ " in: ") ++ (jget (this).string))))
                javaReturn (False)
            jset index (((jget index) + (Prelude.length after)))
            let start = (Prelude.take (((jget index)) - (0)) (Prelude.drop (0) (jget (this).string)))
            let end = (Prelude.take (((Prelude.length (jget (this).string))) - (((jget index) + 1))) (Prelude.drop (((jget index) + 1)) (jget (this).string)))
            idFile <- (FileOutputStream.new_1 (jget (this).fileName))
            idOutData <- (DataOutputStream.new_1 idFile)
            Control.Monad.void (DataOutputStream.writeBytes idOutData ((start ++ text) ++ end))
            Control.Monad.void (DataOutputStream.close idOutData)
            Control.Monad.void (FileOutputStream.close idFile)
            pure (True)


atEnd :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
atEnd object_ a1 = jmethod object_ "atEnd" (\() -> (atEnd_impl (javaCast object_ :: SmallInsert))) () a1

atEnd_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
atEnd_super object_ a1 = (atEnd_impl (javaCast object_ :: SmallInsert)) a1

atEnd_impl :: SmallInsert -> String -> IO (Bool)
atEnd_impl this text = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).iDLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "insertAtEnd" e)
            pure (False)
            ) $ do
            idFile <- (FileOutputStream.new_1 (jget (this).fileName))
            idOutData <- (DataOutputStream.new_1 idFile)
            Control.Monad.void (DataOutputStream.writeBytes idOutData ((jget (this).string) ++ text))
            pure (True)


