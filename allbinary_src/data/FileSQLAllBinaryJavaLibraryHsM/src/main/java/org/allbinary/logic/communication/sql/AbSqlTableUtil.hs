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
-- package org.allbinary.logic.communication.sql
module AbSqlTableUtil where

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
import qualified SqlStrings -- same package or java.lang
import qualified AbSqlTable -- same package or java.lang
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified ResultSet -- java.sql.ResultSet
import qualified ResultSetMetaData -- java.sql.ResultSetMetaData
import qualified Calendar -- java.util.Calendar
import qualified Portion -- org.allbinary.business.installer.Portion
import qualified AbFileOutputStream -- org.allbinary.logic.io.AbFileOutputStream
import qualified BufferedLineReader -- org.allbinary.logic.io.BufferedLineReader
import qualified StreamUtil -- org.allbinary.logic.io.StreamUtil
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified PATH_GLOBALS -- org.allbinary.globals.PATH_GLOBALS
import qualified OutputStream -- java.io.OutputStream
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified StringUtil -- org.allbinary.logic.string.StringUtil

data AbSqlTableUtil = AbSqlTableUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , eXTENSION :: IORef (String)
    , eND :: IORef (String)
    , sAVING_BACKUP_PATH :: IORef (String)
    , fILE_LABEL :: IORef (String)
    , mETHOD_RESTORE_TABLE :: IORef (String)
    , mETHOD_BACKUP_TABLE :: IORef (String)
    , mETHOD_BACKUP_FILE :: IORef (String)
    , mETHOD_GET_OUTPUT_STREAM :: IORef (String)
    , tABLE_CREATION_SUCCESS :: IORef (String)
    , dROPPED_SUCCESS :: IORef (String)
    , sAVING :: IORef (String)
    , aPPENDING :: IORef (String)
    , tABLE_LABEL :: IORef (String)
    , bACKUP_SUCCESS :: IORef (String)
    , eRROR_CREATING :: IORef (String)
    , tOTAL_LABEL :: IORef (String)
    , sECTION_LABEL :: IORef (String)
    , dASH :: IORef (String)
    , pORTION_RESTORED :: IORef (String)
    , specialCharArray :: IORef (JavaArray (Char))
    , nEW_LINE :: IORef (String)
    , stringUtil :: IORef (StringUtil.StringUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , commonSeps :: IORef (CommonSeps.CommonSeps)
    , sqlStrings :: IORef (SqlStrings.SqlStrings)
    }

instance JavaNull AbSqlTableUtil where
    javaNull = javaNullRecord "AbSqlTableUtil"

instance JavaEquals AbSqlTableUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlTableUtil where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlTableUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AbSqlTableUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    eXTENSION <- newIORef ""
    eND <- newIORef ""
    sAVING_BACKUP_PATH <- newIORef ""
    fILE_LABEL <- newIORef ""
    mETHOD_RESTORE_TABLE <- newIORef ""
    mETHOD_BACKUP_TABLE <- newIORef ""
    mETHOD_BACKUP_FILE <- newIORef ""
    mETHOD_GET_OUTPUT_STREAM <- newIORef ""
    tABLE_CREATION_SUCCESS <- newIORef ""
    dROPPED_SUCCESS <- newIORef ""
    sAVING <- newIORef ""
    aPPENDING <- newIORef ""
    tABLE_LABEL <- newIORef ""
    bACKUP_SUCCESS <- newIORef ""
    eRROR_CREATING <- newIORef ""
    tOTAL_LABEL <- newIORef ""
    sECTION_LABEL <- newIORef ""
    dASH <- newIORef ""
    pORTION_RESTORED <- newIORef ""
    specialCharArray <- newIORef javaNull
    nEW_LINE <- newIORef ""
    stringUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    commonSeps <- newIORef javaNull
    sqlStrings <- newIORef javaNull
    let this = AbSqlTableUtil header_ logUtil eXTENSION eND sAVING_BACKUP_PATH fILE_LABEL mETHOD_RESTORE_TABLE mETHOD_BACKUP_TABLE mETHOD_BACKUP_FILE mETHOD_GET_OUTPUT_STREAM tABLE_CREATION_SUCCESS dROPPED_SUCCESS sAVING aPPENDING tABLE_LABEL bACKUP_SUCCESS eRROR_CREATING tOTAL_LABEL sECTION_LABEL dASH pORTION_RESTORED specialCharArray nEW_LINE stringUtil commonStrings commonSeps sqlStrings
    jregisterLevel header_ this
    jregisterMethod header_ "getOutputStream" (\() -> getOutputStream_impl this)
    jregisterMethod header_ "backupFile" (\() -> backupFile_impl this)
    jregisterMethod header_ "convertNewLines" (\() -> convertNewLines_impl this)
    jregisterMethod header_ "backupTable" (\() -> backupTable_impl this)
    jregisterMethod header_ "restoreTable" (\() -> restoreTable_impl this)
    pure this

initFields_ :: AbSqlTableUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.eXTENSION (".adb")
    jset this.eND ("')\n")
    jset this.sAVING_BACKUP_PATH ("Saving Backup: Path: ")
    jset this.fILE_LABEL (" File: ")
    jset this.mETHOD_RESTORE_TABLE ("restoreTable()")
    jset this.mETHOD_BACKUP_TABLE ("backupTable()")
    jset this.mETHOD_BACKUP_FILE ("backupFile()")
    jset this.mETHOD_GET_OUTPUT_STREAM ("getOutputStream()")
    jset this.tABLE_CREATION_SUCCESS ("Table Creation Successful: ")
    jset this.dROPPED_SUCCESS (" Dropped Successfully")
    jset this.sAVING ("Saving: ")
    jset this.aPPENDING ("Appending: ")
    jset this.tABLE_LABEL ("Table: ")
    jset this.bACKUP_SUCCESS (" Backup Success")
    jset this.eRROR_CREATING ("Error Creating: ")
    jset this.tOTAL_LABEL (" Total: ")
    jset this.sECTION_LABEL (" Section: ")
    jset this.dASH (" - ")
    jset this.pORTION_RESTORED (" Portion Restored")
    jset this.specialCharArray ((jarrayFromList ['\n', '\f', '\r']))
    jset this.nEW_LINE ("\\n")
    jset this.stringUtil =<< (StringUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.commonSeps =<< (CommonSeps.getInstance)
    jset this.sqlStrings =<< (SqlStrings.getInstance)
    pure ()

new_ :: IO AbSqlTableUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AbSqlTableUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (AbSqlTableUtil)
getInstance = do
        pure (AbSqlTableUtil.instance_)


getOutputStream :: (JavaObjectClass this_) => this_ -> String -> String -> IO (OutputStream.OutputStream)
getOutputStream object_ a1 a2 = jmethod object_ "getOutputStream" (\() -> (getOutputStream_impl (javaCast object_ :: AbSqlTableUtil))) () a1 a2

getOutputStream_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (OutputStream.OutputStream)
getOutputStream_super object_ a1 a2 = (getOutputStream_impl (javaCast object_ :: AbSqlTableUtil)) a1 a2

getOutputStream_impl :: AbSqlTableUtil -> String -> String -> IO (OutputStream.OutputStream)
getOutputStream_impl this backupPath tableName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Create File" this (jget (this).mETHOD_GET_OUTPUT_STREAM) e)
            pure (javaNull)
            ) $ do
            let fileName = (tableName ++ (jget (this).eXTENSION))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).sAVING) ++ tableName) this (jget (this).mETHOD_GET_OUTPUT_STREAM))
            backupFilePath <- (AbPath.new_2 backupPath fileName)
            backupFile <- (AbFile.createAbFile backupFilePath)
            when (jio (AbFile.exists backupFile)) $ do
                Control.Monad.void (AbSqlTableUtil.backupFile this backupFilePath backupPath tableName)
                Control.Monad.void (AbFile.delete backupFile)
            Control.Monad.void (AbFile.createNewFile backupFile)
            outputStream <- (fmap (\value_ -> javaCast value_ :: OutputStream.OutputStream) (AbFileOutputStream.new_1 backupFile))
            pure (outputStream)


backupFile :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> String -> String -> IO (Bool)
backupFile object_ a1 a2 a3 = jmethod object_ "backupFile" (\() -> (backupFile_impl (javaCast object_ :: AbSqlTableUtil))) () a1 a2 a3

backupFile_super :: (JavaObjectClass this_) => this_ -> AbPath.AbPath -> String -> String -> IO (Bool)
backupFile_super object_ a1 a2 a3 = (backupFile_impl (javaCast object_ :: AbSqlTableUtil)) a1 a2 a3

backupFile_impl :: AbSqlTableUtil -> AbPath.AbPath -> String -> String -> IO (Bool)
backupFile_impl this path backupPath tableName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this (jget (this).mETHOD_BACKUP_FILE) e)
            pure (False)
            ) $ do
            calendar <- (Calendar.getInstance)
            let timeLong = (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)
            let time = (javaToString timeLong)
            stringBuffer <- (StringMaker.new_)
            let fileName = (tableName ++ (jget (this).eXTENSION))
            Control.Monad.void (StringMaker.append stringBuffer backupPath)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            Control.Monad.void (StringMaker.append stringBuffer time)
            backupAbPath <- (AbPath.new_1 (jio (StringMaker.toString stringBuffer)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).sAVING_BACKUP_PATH))
                Control.Monad.void (StringMaker.append stringBuffer (jio (AbPath.toFileSystemString backupAbPath)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).fILE_LABEL))
                Control.Monad.void (StringMaker.append stringBuffer fileName)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_BACKUP_FILE))
            Control.Monad.void (Directory.create backupAbPath)
            backupFileBak <- (AbFile.createAbFile (jio (AbPath.toFileSystemString backupAbPath)))
            Control.Monad.void (AbFile.createNewFile backupFileBak)
            Control.Monad.void (FileUtil.copy ((jio (FileUtil.getInstance))) path backupAbPath)
            pure (True)


convertNewLines :: (JavaObjectClass this_) => this_ -> String -> IO (String)
convertNewLines object_ a1 = jmethod object_ "convertNewLines" (\() -> (convertNewLines_impl (javaCast object_ :: AbSqlTableUtil))) () a1

convertNewLines_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
convertNewLines_super object_ a1 = (convertNewLines_impl (javaCast object_ :: AbSqlTableUtil)) a1

convertNewLines_impl :: AbSqlTableUtil -> String -> IO (String)
convertNewLines_impl this value = do
        stringBuffer <- (StringMaker.new_)
        index <- newIORef (0)
        lastIndex <- newIORef (0)
        fix $ \loop -> when ((jget index) < (Prelude.length value)) $ javaIteration (loop) $ do
            jset index ((jstringIndexOf value (jindex ((jget this.specialCharArray)) (0)) (jget lastIndex)))
            if ((jget index) /= (Prelude.negate 1)) then do
                let nextLine = (Prelude.take ((((jget index) - 1)) - ((jget lastIndex))) (Prelude.drop ((jget lastIndex)) value))
                Control.Monad.void (StringMaker.append stringBuffer nextLine)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).nEW_LINE))
                jset lastIndex (((jget index) + 1))
            else do
                throwIO JavaBreak
        when ((jget lastIndex) < (Prelude.length value)) $ do
            Control.Monad.void (StringMaker.append stringBuffer (Prelude.take (((Prelude.length value)) - ((jget lastIndex))) (Prelude.drop ((jget lastIndex)) value)))
        (StringMaker.toString stringBuffer)


backupTable :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> IO (String)
backupTable object_ a1 = jmethod object_ "backupTable" (\() -> (backupTable_impl (javaCast object_ :: AbSqlTableUtil))) () a1

backupTable_super :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> IO (String)
backupTable_super object_ a1 = (backupTable_impl (javaCast object_ :: AbSqlTableUtil)) a1

backupTable_impl :: AbSqlTableUtil -> AbSqlTable.AbSqlTable -> IO (String)
backupTable_impl this abSqlTable = do
        tableName <- (AbSqlTable.getTableName abSqlTable)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Backup Table Failed\nSQL Statement" this (jget (this).mETHOD_BACKUP_TABLE) e)
            pure ((((jget (this).tABLE_LABEL) ++ tableName) ++ " Backup Failed"))
            ) $ do
            let count = 0
            let sqlStatement = (javaToString (jget ((jget (this).sqlStrings)).sELECT_ALL_FROM) ++ tableName)
            let path = ((jio (getMainPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) + (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            when (Prelude.not (jio (Directory.create (jio (AbPath.new_1 path))))) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget this.eRROR_CREATING) ++ path) this (jget (this).mETHOD_BACKUP_TABLE))
            rset <- (AbSqlTable.executeSQLStatement abSqlTable sqlStatement)
            rsmd <- (ResultSet.getMetaData rset)
            colNum <- (ResultSetMetaData.getColumnCount rsmd)
            qUERY_START <- (StringBuilder.toString ((jio (StringBuilder.append ((jio (StringBuilder.append ((jio (StringBuilder.append ((jio (StringBuilder.new_))) (jget ((jget (this).sqlStrings)).iNSERT_INTO)))) tableName))) (jget ((jget (this).sqlStrings)).vALUES)))))
            stringBuffer <- (StringMaker.new_)
            outputStream <- (AbSqlTableUtil.getOutputStream this path tableName)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer qUERY_START)
                forM_ [1 .. colNum - 1] $ \i -> javaIteration (pure ()) $ do
                    value <- (ResultSet.getString rset i)
                    Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlTableUtil.convertNewLines this value)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).sqlStrings)).sINGLE_QUOTE_COMMA_SEP))
                Control.Monad.void (StringMaker.append stringBuffer (jio (ResultSet.getString rset colNum)))
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).eND))
                sqlStatementLine <- (StringMaker.toString stringBuffer)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).aPPENDING) ++ sqlStatementLine) this (jget (this).mETHOD_BACKUP_TABLE))
                Control.Monad.void (OutputStream.write outputStream (jgetBytes sqlStatementLine))
            Control.Monad.void (StreamUtil.close ((jio (StreamUtil.getInstance))) (javaCast outputStream))
            pure ((((jget (this).tABLE_LABEL) ++ tableName) ++ (jget (this).bACKUP_SUCCESS)))


restoreTable :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable object_ a1 a2 = jmethod object_ "restoreTable" (\() -> (restoreTable_impl (javaCast object_ :: AbSqlTableUtil))) () a1 a2

restoreTable_super :: (JavaObjectClass this_) => this_ -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable_super object_ a1 a2 = (restoreTable_impl (javaCast object_ :: AbSqlTableUtil)) a1 a2

restoreTable_impl :: AbSqlTableUtil -> AbSqlTable.AbSqlTable -> Portion.Portion -> IO (String)
restoreTable_impl this abSqlTable portion = do
        tableName <- (AbSqlTable.getTableName abSqlTable)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Restore Table Failed\nSQL Statement" this (jget (this).mETHOD_RESTORE_TABLE) e)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).tABLE_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer tableName)
            Control.Monad.void (StringMaker.append stringBuffer " Restoration Failed")
            (StringMaker.toString stringBuffer)
            ) $ do
            let path = ((jio (getMainPath ((jget ((jget (org.allbinary).globals)).uRLGLOBALS)))) + (jget ((jio (PATH_GLOBALS.getInstance))).bACKUP_PATH))
            let current = (jio (Portion.getCurrent portion))
            when (current == 0) $ do
                when (jio (Directory.create (jio (AbPath.new_1 path)))) $ do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).eRROR_CREATING) ++ path) this (jget (this).mETHOD_RESTORE_TABLE))
            backupFile <- (AbFile.createAbFile path (tableName ++ (jget (this).eXTENSION)))
            bufferedLineReader <- (BufferedLineReader.new_1 backupFile)
            size <- (BufferedLineReader.getSize bufferedLineReader)
            let section = ((size `quot` (Prelude.fromIntegral (jio (Portion.getTotal portion)))) + 1)
            let start = (section * (Prelude.fromIntegral current))
            end <- newIORef ((start + section))
            when ((jget end) > size) $ do
                jset end (size)
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).tOTAL_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer size)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).sECTION_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer start)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).dASH))
            Control.Monad.void (StringMaker.append stringBuffer (jget end))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_RESTORE_TABLE))
            Control.Monad.void (BufferedLineReader.readUpToLines bufferedLineReader start)
            line <- newIORef ((jget ((jget (this).stringUtil)).eMPTY_STRING))
            fix $ \loop -> when (((Prelude.fromIntegral (jio (BufferedLineReader.getCurrent bufferedLineReader))) < (jget end)) && (((jassign line ((jio (BufferedLineReader.readLine bufferedLineReader))))) /= javaNull)) $ javaIteration (loop) $ do
                when ((Prelude.length (jget line)) > 1) $ do
                    Control.Monad.void (AbSqlTable.executeSQLStatement abSqlTable (jget line))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).commonSeps)).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).tABLE_LABEL))
            Control.Monad.void (StringMaker.append stringBuffer tableName)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).pORTION_RESTORED))
            (StringMaker.toString stringBuffer)


