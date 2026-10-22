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
-- package org.allbinary.business.init
module InitInfoEntity (module InitInfoEntity, module InitSql) where

import InitSql hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, get, get_super, get_impl, is, is_super, is_impl, update, update_super, update_impl, add, add_super, add_impl, createTable, createTable_super, createTable_impl, nAME, nOTHING, tableName, tableData, nOT_IN_DB, mETHOD_GET, mETHOD_IS, mETHOD_ADD, cREATED_SUCCESS, fAILED_TO_CREATE)
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
import qualified InitInfo -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified LogConfigTypeFactory -- org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory
import qualified LogConfigTypes -- org.allbinary.logic.communication.log.config.type.LogConfigTypes
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified InitSql

data InitInfoEntity = InitInfoEntity
    { header_ :: JavaHeader
    , base :: InitSql.InitSql
    , nAME :: IORef (String)
    , nOTHING :: IORef (String)
    , tableName :: IORef (String)
    , tableData :: IORef (String)
    , nOT_IN_DB :: IORef (String)
    , mETHOD_GET :: IORef (String)
    , mETHOD_IS :: IORef (String)
    , mETHOD_ADD :: IORef (String)
    , cREATED_SUCCESS :: IORef (String)
    , fAILED_TO_CREATE :: IORef (String)
    }

instance JavaNull InitInfoEntity where
    javaNull = javaNullRecord "InitInfoEntity"

instance JavaEquals InitInfoEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitInfoEntity where
    (==) = jrecordEquals

instance JavaObjectClass InitInfoEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InitInfoEntity
newRecord_ = do
    base <- InitSql.newRecord_
    let header_ = base.header_
    nAME <- newIORef ""
    nOTHING <- newIORef ""
    tableName <- newIORef ""
    tableData <- newIORef ""
    nOT_IN_DB <- newIORef ""
    mETHOD_GET <- newIORef ""
    mETHOD_IS <- newIORef ""
    mETHOD_ADD <- newIORef ""
    cREATED_SUCCESS <- newIORef ""
    fAILED_TO_CREATE <- newIORef ""
    let this = InitInfoEntity header_ base nAME nOTHING tableName tableData nOT_IN_DB mETHOD_GET mETHOD_IS mETHOD_ADD cREATED_SUCCESS fAILED_TO_CREATE
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "is" (\() -> is_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    pure this

initFields_ :: InitInfoEntity -> IO ()
initFields_ this = do
    jset this.nAME ("InitInfoEntity")
    jset this.nOTHING ("NOTHING")
    jset this.tableName ("initdata")
    jset this.tableData (javaNull)
    jset this.nOT_IN_DB ("Not In DB")
    jset this.mETHOD_GET ("get()")
    jset this.mETHOD_IS ("is()")
    jset this.mETHOD_ADD ("add()")
    jset this.cREATED_SUCCESS (" Created Successfully")
    jset this.fAILED_TO_CREATE ("Failed to create ")
    pure ()

new_ :: IO InitInfoEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitInfoEntity -> IO ()
init_ this = do
        InitSql.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).nOTHING))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (InitInfo.getInstance))).tESTING))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (InitInfo.getInstance))).tESTHTMLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (InitInfo.getInstance))).mAINPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlStrings)).pRIMARY_KEY))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).nOTHING))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.sqlStrings)).eND))
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).tableData (assignedValue)
        Control.Monad.void (InitSql.setTable this (jget (this).tableName))
        pure ()


get :: (JavaObjectClass this_) => this_ -> IO (Bool)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: InitInfoEntity))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
get_super object_ = (get_impl (javaCast object_ :: InitInfoEntity))

get_impl :: InitInfoEntity -> IO (Bool)
get_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).base.commonStrings)).eXCEPTION) (jget (this).nAME) (jget (this).mETHOD_GET) e)
            pure (False)
            ) $ do
            keyAndValue <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put keyAndValue (jget (this).nOTHING) (jget (this).nOTHING))
            hashMap <- (InitSql.getRow this keyAndValue)
            if (hashMap /= javaNull) then do
                Control.Monad.void (InitInfo.set_1 ((jio (InitInfo.getInstance))) hashMap)
                javaReturn (True)
            else do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                    Control.Monad.void (PreLogUtil.put (jget (this).nOT_IN_DB) (jget this.nAME) (jget (this).mETHOD_GET))
                javaReturn (False)


is :: (JavaObjectClass this_) => this_ -> IO (Bool)
is object_ = jmethod object_ "is" (\() -> (is_impl (javaCast object_ :: InitInfoEntity))) ()

is_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
is_super object_ = (is_impl (javaCast object_ :: InitInfoEntity))

is_impl :: InitInfoEntity -> IO (Bool)
is_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).base.commonStrings)).eXCEPTION) (jget (this).nAME) (jget (this).mETHOD_IS) e)
            pure (False)
            ) $ do
            keyAndValue <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
            Control.Monad.void (HashMap.put keyAndValue (jget (this).nOTHING) (jget (this).nOTHING))
            hashMap <- (InitSql.getRow this keyAndValue)
            if (hashMap /= javaNull) then do
                javaReturn (True)
            else do
                when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADER))) $ do
                    Control.Monad.void (PreLogUtil.put (jget (this).nOT_IN_DB) (jget (this).nAME) (jget (this).mETHOD_IS))
                javaReturn (False)


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: InitInfoEntity))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: InitInfoEntity))

update_impl :: InitInfoEntity -> IO (())
update_impl this = do
        Control.Monad.void (InitSql.updateWhere this (jget this.nOTHING) (jget this.nOTHING) (jio (InitInfo.toHashMap ((jio (InitInfo.getInstance))))))
        pure ()


add :: (JavaObjectClass this_) => this_ -> IO (())
add object_ = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: InitInfoEntity))) ()

add_super :: (JavaObjectClass this_) => this_ -> IO (())
add_super object_ = (add_impl (javaCast object_ :: InitInfoEntity))

add_impl :: InitInfoEntity -> IO (())
add_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (BasicArrayList.contains ((jget LogConfigTypes.lOGGING)) (jget ((jio (LogConfigTypeFactory.getInstance))).pRELOADERERROR))) $ do
                Control.Monad.void (PreLogUtil.putOE (jget ((jget (this).base.commonStrings)).eXCEPTION) (jget (this).nAME) (jget (this).mETHOD_ADD) e)
            ) $ do
            values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add values (jget (this).nOTHING))
            Control.Monad.void (BasicArrayList.add values (jio (InitInfo.getTesting ((jio (InitInfo.getInstance))))))
            Control.Monad.void (BasicArrayList.add values (jio (InitInfo.getTestHtmlPath ((jio (InitInfo.getInstance))))))
            Control.Monad.void (BasicArrayList.add values (jio (InitInfo.getMainPath ((jio (InitInfo.getInstance))))))
            Control.Monad.void (InitSql.insert this values)
        pure ()


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: InitInfoEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: InitInfoEntity))

createTable_impl :: InitInfoEntity -> IO (String)
createTable_impl this = do
    javaCatchReturn $ do
        if (jio (InitSql.createTable_super this.base (jget (this).tableData))) then do
            javaReturn (((jget (this).tableName) ++ (jget (this).cREATED_SUCCESS)))
        else do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).fAILED_TO_CREATE))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableData))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).eXTENSION_SEP))
            javaReturn =<< (StringMaker.toString stringBuffer)


