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
module AbSqlBean (module AbSqlBean, module AbSqlRow) where

import AbSqlRow hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getField, getField_super, getField_impl, getField, getField_super, getField_impl, isSubsetOfEntry, isSubsetOfEntry_super, isSubsetOfEntry_impl, logUtil, mETHOD_GET_FIELD, mETHOD_IS_SUBSET_OF_ENTRY)
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
import qualified StringUtil -- same package or java.lang
import qualified CommonSeps -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified ResultSet -- java.sql.ResultSet
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified DbConnectionInfo -- org.allbinary.business.init.db.DbConnectionInfo
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbSqlRow

data AbSqlBean = AbSqlBean
    { header_ :: JavaHeader
    , base :: AbSqlRow.AbSqlRow
    , logUtil :: IORef (LogUtil.LogUtil)
    , mETHOD_GET_FIELD :: IORef (String)
    , mETHOD_IS_SUBSET_OF_ENTRY :: IORef (String)
    }

instance JavaNull AbSqlBean where
    javaNull = javaNullRecord "AbSqlBean"

instance JavaEquals AbSqlBean where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AbSqlBean where
    (==) = jrecordEquals

instance JavaObjectClass AbSqlBean where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AbSqlBean
newRecord_ = do
    base <- AbSqlRow.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    mETHOD_GET_FIELD <- newIORef ""
    mETHOD_IS_SUBSET_OF_ENTRY <- newIORef ""
    let this = AbSqlBean header_ base logUtil mETHOD_GET_FIELD mETHOD_IS_SUBSET_OF_ENTRY
    jregisterLevel header_ this
    jregisterMethod header_ "getField" (\() -> getField_impl this)
    jregisterMethod header_ "getField" (\() -> getField_impl this)
    jregisterMethod header_ "isSubsetOfEntry" (\() -> isSubsetOfEntry_impl this)
    pure this

initFields_ :: AbSqlBean -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.mETHOD_GET_FIELD ("getField")
    jset this.mETHOD_IS_SUBSET_OF_ENTRY ("isSubsetOfEntry")
    pure ()

new_1 :: DbConnectionInfo.DbConnectionInfo -> IO AbSqlBean
new_1 databaseConnectionInfoInterface = do
    this <- newRecord_
    init_1 this databaseConnectionInfoInterface
    pure this

init_1 :: AbSqlBean -> DbConnectionInfo.DbConnectionInfo -> IO ()
init_1 this databaseConnectionInfoInterface = do
        AbSqlRow.init_1 this.base (databaseConnectionInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


getField :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getField object_ a1 a2 a3 = jmethod object_ "getField" (\() -> (getField_impl (javaCast object_ :: AbSqlBean))) () a1 a2 a3

getField_super :: (JavaObjectClass this_) => this_ -> String -> String -> String -> IO (String)
getField_super object_ a1 a2 a3 = (getField_impl (javaCast object_ :: AbSqlBean)) a1 a2 a3

getField_impl :: AbSqlBean -> String -> String -> String -> IO (String)
getField_impl this key value requestedField = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).sELECT))
        Control.Monad.void (StringMaker.append stringBuffer requestedField)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).wHERE))
        Control.Monad.void (StringMaker.append stringBuffer key)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).eQUAL_QUOTE))
        Control.Monad.void (StringMaker.append stringBuffer value)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).cLOSE_QUOTE))
        sqlStatement <- (StringMaker.toString stringBuffer)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget this.mETHOD_GET_FIELD) e)
            pure (((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement))
            ) $ do
            field <- newIORef ((jget ((jget (this).base.base.base.base.stringUtil)).eMPTY_STRING))
            rset <- (AbSqlRow.executeSQLStatement this sqlStatement)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (ResultSet.getString rset requestedField)
                jset field (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).sQL_STATEMENT_LABEL))
                    Control.Monad.void (StringMaker.append stringBuffer sqlStatement)
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).fIELD_VALUE))
                    Control.Monad.void (StringMaker.append stringBuffer (jget field))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET_FIELD))
                javaReturn ((jget field))
            pure (javaNull)


-- Java overload of getField with a different parameter count: give it a different name
getField :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> IO (String)
getField object_ a1 a2 = jmethod object_ "getField" (\() -> (getField_impl (javaCast object_ :: AbSqlBean))) () a1 a2

getField_super :: (JavaObjectClass this_) => this_ -> HashMap.HashMap -> String -> IO (String)
getField_super object_ a1 a2 = (getField_impl (javaCast object_ :: AbSqlBean)) a1 a2

getField_impl :: AbSqlBean -> HashMap.HashMap -> String -> IO (String)
getField_impl this keysAndValues requestedField = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).sELECT))
        Control.Monad.void (StringMaker.append stringBuffer requestedField)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).fROM))
        Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getTableName this)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).wHERE))
        handle (\(e :: JavaException) -> do
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget this.mETHOD_GET_FIELD) e)
            pure (((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement))
            ) $ do
            field <- newIORef ((jget ((jget (this).base.base.base.base.stringUtil)).eMPTY_STRING))
            set <- (HashMap.keySet keysAndValues)
            keyArray <- (Set.toArray set)
            let size = (jlength keyArray)
            key <- newIORef ("")
            value <- newIORef ("")
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                jset key ((javaCast (jindex keyArray (i)) :: String))
                assignedValue <- (jnewString (javaCast (jio (HashMap.get keysAndValues (jget key))) :: String))
                jset value (assignedValue)
                Control.Monad.void (StringMaker.append stringBuffer (jget key))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).eQUAL_QUOTE))
                Control.Monad.void (StringMaker.append stringBuffer (jget value))
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).cLOSE_QUOTE))
                when (i < (size - 1)) $ do
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).aND))
            sqlStatement <- (StringMaker.toString stringBuffer)
            rset <- (AbSqlRow.executeSQLStatement this sqlStatement)
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                assignedValue <- (ResultSet.getString rset requestedField)
                jset field (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).sQL_STATEMENT_LABEL))
                    Control.Monad.void (StringMaker.append stringBuffer sqlStatement)
                    Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).fIELD_VALUE))
                    Control.Monad.void (StringMaker.append stringBuffer (jget field))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET_FIELD))
                javaReturn ((jget field))
            pure (javaNull)


isSubsetOfEntry :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (String)
isSubsetOfEntry object_ a1 a2 a3 = jmethod object_ "isSubsetOfEntry" (\() -> (isSubsetOfEntry_impl (javaCast object_ :: AbSqlBean))) () a1 a2 a3

isSubsetOfEntry_super :: (JavaObjectClass this_) => this_ -> String -> String -> HashMap.HashMap -> IO (String)
isSubsetOfEntry_super object_ a1 a2 a3 = (isSubsetOfEntry_impl (javaCast object_ :: AbSqlBean)) a1 a2 a3

isSubsetOfEntry_impl :: AbSqlBean -> String -> String -> HashMap.HashMap -> IO (String)
isSubsetOfEntry_impl this key value columnsAndValues = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).sELECT))
        handle (\(e :: JavaException) -> do
            sqlStatement <- (StringMaker.toString stringBuffer)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement) this (jget this.mETHOD_IS_SUBSET_OF_ENTRY) e)
            pure (((jget (this).base.base.base.base.fAILED_SQL_STATEMENT) ++ sqlStatement))
            ) $ do
            keyArray <- (HashMap.toArray ((jio (HashMap.keySet columnsAndValues))))
            let size = (jlength keyArray)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.commonSeps)).sPACE))
            Control.Monad.void (StringMaker.append stringBuffer key)
            forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.commonSeps)).sPACE))
                Control.Monad.void (StringMaker.append stringBuffer (jio (toString ((jindex keyArray (i))))))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).fROM))
            Control.Monad.void (StringMaker.append stringBuffer (jio (AbSqlRow.getTableName this)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).wHERE))
            Control.Monad.void (StringMaker.append stringBuffer key)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).eQUAL_QUOTE))
            Control.Monad.void (StringMaker.append stringBuffer value)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.sqlStrings)).cLOSE_QUOTE))
            sqlStatement <- (StringMaker.toString stringBuffer)
            rset <- (AbSqlRow.executeSQLStatement this sqlStatement)
            columnName <- newIORef ("")
            field <- newIORef ("")
            fix $ \loop -> when (jio (ResultSet.next rset)) $ javaIteration (loop) $ do
                keyArray2 <- (HashMap.toArray ((jio (HashMap.keySet columnsAndValues))))
                let size2 = (jlength keyArray2)
                forM_ [0 .. size2 - 1] $ \i -> javaIteration (pure ()) $ do
                    assignedValue <- (toString ((jindex keyArray2 (i))))
                    jset columnName (assignedValue)
                    assignedValue <- (ResultSet.toString ((jio (ResultSet.getObject rset (jget columnName)))))
                    jset field (assignedValue)
                    when ((Prelude.fromEnum (Prelude.compare (jget field) (javaCast (jio (HashMap.get columnsAndValues (jget columnName))) :: String)) - 1) /= 0) $ do
                        javaReturn ((jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).nOTASUBSET))
            if ((jio (ResultSet.getRow rset)) /= 1) then do
                javaReturn ((jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).nOTASUBSET))
            else do
                javaReturn ((jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).iSASUBSET))


