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
-- package org.allbinary.log
module FileLog where

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
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified BufferedReader -- java.io.BufferedReader
import qualified BufferedWriter -- java.io.BufferedWriter
import qualified File -- java.io.File
import qualified FileReader -- java.io.FileReader
import qualified FileWriter -- java.io.FileWriter
import qualified RandomAccessFile -- java.io.RandomAccessFile
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified LogFormatUtil -- org.allbinary.logic.communication.log.LogFormatUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data FileLog = FileLog
    { header_ :: JavaHeader
    }

instance JavaNull FileLog where
    javaNull = javaNullRecord "FileLog"

instance JavaEquals FileLog where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq FileLog where
    (==) = jrecordEquals

instance JavaObjectClass FileLog where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE stringUtil #-}
stringUtil = unsafePerformIO ((StringUtil.getInstance))

logLength = 33000000

logPath = "g:\\log\\"

{-# NOINLINE extension #-}
extension = unsafePerformIO ((jnewString "dat"))

{-# NOINLINE fileName #-}
fileName = unsafePerformIO ((jnewString ("log." ++ javaToString FileLog.extension)))

{-# NOINLINE backupFileName #-}
backupFileName = unsafePerformIO ((concat FileLog.fileName ".bak"))

oRG_ALLBINARY = "org.allbinary: "

{-# NOINLINE firstTime #-}
firstTime = unsafePerformIO (newIORef (True))

{-# NOINLINE logFile #-}
logFile = unsafePerformIO ((File.new_2 (FileLog.logPath) (FileLog.fileName)) >>= newIORef)

{-# NOINLINE logFileBak #-}
logFileBak = unsafePerformIO (newIORef (javaNull))

{-# NOINLINE fileOut #-}
fileOut = unsafePerformIO (newIORef (javaNull))

{-# NOINLINE backupIndex #-}
backupIndex = unsafePerformIO (newIORef (0))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO FileLog
newRecord_ = do
    header_ <- newJavaHeader
    let this = FileLog header_
    jregisterLevel header_ this
    pure this

initFields_ :: FileLog -> IO ()
initFields_ this = do
    pure ()

new_ :: IO FileLog
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: FileLog -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


createLogFile :: IO (Bool)
createLogFile = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (putStrLn (javaToString ("Error Creating Log: " ++ javaToString e)))
            pure (False)
            ) $ do
            assignedValue <- (File.new_2 logPath fileName)
            jset FileLog.logFile (assignedValue)
            if (Prelude.not (jget FileLog.firstTime)) then do
                assignedValue <- (BufferedWriter.new_1 (jio (FileWriter.new_1 (jget logFile))))
                jset FileLog.fileOut (assignedValue)
            else do
                jset FileLog.firstTime (False)
                raFile <- (RandomAccessFile.new_2 (jget logFile) "rw")
                Control.Monad.void (RandomAccessFile.seek raFile (jio (RandomAccessFile.length raFile)))
                assignedValue <- (BufferedWriter.new_1 (jio (FileWriter.new_1 (jio (RandomAccessFile.getFD raFile)))))
                jset FileLog.fileOut (assignedValue)
            canWrite <- (canWrite ((jget FileLog.logFile)))
            pure (canWrite)


createLogFileBackup :: IO (Bool)
createLogFileBackup = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (putStrLn (javaToString ("Error Creating Backup: " ++ javaToString e)))
            pure (False)
            ) $ do
            stringMaker <- (StringMaker.new_)
            assignedValue <- (File.new_2 logPath (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append stringMaker backupFileName))) (jget ((jio (CommonSeps.getInstance))).pERIOD)))) (jget backupIndex)))))))
            jset FileLog.logFileBak (assignedValue)
            fix $ \loop -> when (jio (isFile ((jget FileLog.logFileBak)))) $ javaIteration (loop) $ do
                jset FileLog.backupIndex ((jget FileLog.backupIndex) + 1)
                Control.Monad.void (StringMaker.delete stringMaker 0 (jio (StringMaker.length stringMaker)))
                assignedValue <- (File.new_2 logPath (jio (StringMaker.toString ((jio (StringMaker.appendint ((jio (StringMaker.append ((jio (StringMaker.append stringMaker backupFileName))) (jget ((jio (CommonSeps.getInstance))).pERIOD)))) (jget backupIndex)))))))
                jset FileLog.logFileBak (assignedValue)
            line <- newIORef ("")
            tmpOut <- (BufferedWriter.new_1 (jio (FileWriter.new_1 (jget logFileBak))))
            tmpIn <- (BufferedReader.new_1 (jio (FileReader.new_1 (jget logFile))))
            fix $ \loop -> when (((jassign line ((jio (BufferedReader.readLine tmpIn))))) /= javaNull) $ javaIteration (loop) $ do
                Control.Monad.void (BufferedWriter.write tmpOut (jget line) 0 (Prelude.length (jget line)))
                Control.Monad.void (BufferedWriter.newLine tmpOut)
            Control.Monad.void (BufferedWriter.flush tmpOut)
            Control.Monad.void (BufferedWriter.close tmpOut)
            Control.Monad.void (BufferedReader.close tmpIn)
            Control.Monad.void (delete ((jget FileLog.logFile)))
            pure (True)


-- Java overloads of put: calls the overload for the types of the arguments
put :: (JavaObjectClass o2) => String -> o2 -> String -> IO (String)
put a1 a2 a3
    | jisInstanceOf a2 (javaNull :: String) = put_overload2 a1 (javaCast a2 :: String) a3
    | otherwise = put_overload1 a1 a2 a3

put_overload1 :: (JavaObjectClass o2) => String -> o2 -> String -> IO (String)
put_overload1 specialMessage anyTypeObject_ functionName = do
        let anyType = jtoObject anyTypeObject_
        (FileLog.put_4 specialMessage anyType functionName javaNull)


-- Java overloads of put: calls the overload for the types of the arguments
put_4 :: (JavaObjectClass o2) => String -> o2 -> String -> JavaException -> IO (String)
put_4 a1 a2 a3 a4
    | jisInstanceOf a2 (javaNull :: String) = put_4_overload2 a1 (javaCast a2 :: String) a3 a4
    | otherwise = put_4_overload1 a1 a2 a3 a4

put_4_overload1 :: (JavaObjectClass o2) => String -> o2 -> String -> JavaException -> IO (String)
put_4_overload1 specialMessage anyTypeObject_ functionName exception = do
    let anyType = jtoObject anyTypeObject_
    specialMessage <- newIORef specialMessage
    functionName <- newIORef functionName
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            (jnewString ("Error: " ++ javaToString e))
            ) $ do
            when ((jget FileLog.firstTime) == True) $ do
                Control.Monad.void (FileLog.createLogFileBackup)
                when ((jio (FileLog.createLogFile)) == False) $ do
                    javaReturn =<< (jnewString "Log File Creation Error")
            length <- (Prelude.fromIntegral (length ((jget FileLog.logFile))))
            when (length > FileLog.logLength) $ do
                when ((Prelude.not ((jio (FileLog.createLogFileBackup)))) || ((jio (FileLog.createLogFile)) == False)) $ do
                    javaReturn =<< (jnewString "Couldn't Create a Backup file")
            className <- newIORef =<< (jnewString (jget (stringUtil).nULL_STRING))
            when ((jget functionName) == javaNull) $ do
                assignedValue <- (jio (jnewString (jget (FileLog.stringUtil).nULL_STRING)))
            jset functionName (assignedValue)
            when ((jget specialMessage) == javaNull) $ do
                assignedValue <- (jio (jnewString (jget (FileLog.stringUtil).nULL_STRING)))
            jset specialMessage (assignedValue)
            when ((jio (Class.getName ((jio (jobjectGetClass anyType))))) /= javaNull) $ do
                assignedValue <- (jio (jnewString (jio (Class.getName ((jio (jobjectGetClass anyType)))))))
            jset className (assignedValue)
            message <- (LogFormatUtil.get ((jio (LogFormatUtil.getInstance))) (jget className) (jget functionName) (jget specialMessage) exception)
            Control.Monad.void (write ((jget FileLog.fileOut)) message 0 (Prelude.length message))
            Control.Monad.void (newLine ((jget FileLog.fileOut)))
            Control.Monad.void (flush ((jget FileLog.fileOut)))
            (jnewString (javaToString FileLog.oRG_ALLBINARY ++ message))


put_overload2 :: String -> String -> String -> IO (String)
put_overload2 specialMessage className functionName = do
        (FileLog.put_4 specialMessage className functionName javaNull)


put_4_overload2 :: String -> String -> String -> JavaException -> IO (String)
put_4_overload2 specialMessage className functionName exception = do
    specialMessage <- newIORef specialMessage
    functionName <- newIORef functionName
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            (jnewString ("Error: " ++ javaToString e))
            ) $ do
            when ((jget FileLog.firstTime) == True) $ do
                Control.Monad.void (FileLog.createLogFileBackup)
                when ((jio (FileLog.createLogFile)) == False) $ do
                    javaReturn =<< (jnewString "Log File Creation Error")
            length <- (Prelude.fromIntegral (length ((jget FileLog.logFile))))
            when (length > FileLog.logLength) $ do
                when ((Prelude.not ((jio (FileLog.createLogFileBackup)))) || ((jio (FileLog.createLogFile)) == False)) $ do
                    javaReturn =<< (jnewString "Couldn't Create a Backup file")
            when ((jget functionName) == javaNull) $ do
                assignedValue <- (jio (jnewString (jget (FileLog.stringUtil).nULL_STRING)))
            jset functionName (assignedValue)
            when ((jget specialMessage) == javaNull) $ do
                assignedValue <- (jio (jnewString (jget (FileLog.stringUtil).nULL_STRING)))
            jset specialMessage (assignedValue)
            message <- (LogFormatUtil.get ((jio (LogFormatUtil.getInstance))) className (jget functionName) (jget specialMessage) exception)
            Control.Monad.void (write ((jget FileLog.fileOut)) message 0 (Prelude.length message))
            Control.Monad.void (newLine ((jget FileLog.fileOut)))
            Control.Monad.void (flush ((jget FileLog.fileOut)))
            (jnewString (javaToString FileLog.oRG_ALLBINARY ++ message))


getFilePath :: IO (String)
getFilePath = do
        pure ((FileLog.logPath + FileLog.fileName))


