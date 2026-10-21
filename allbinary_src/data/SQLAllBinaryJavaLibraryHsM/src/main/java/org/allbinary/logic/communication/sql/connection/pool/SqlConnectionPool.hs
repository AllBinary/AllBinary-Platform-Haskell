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
-- package org.allbinary.logic.communication.sql.connection.pool
module SqlConnectionPool where

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
import qualified Connection -- java.sql.Connection
import qualified DriverManager -- java.sql.DriverManager
import qualified SQLException -- java.sql.SQLException
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data SqlConnectionPool = SqlConnectionPool
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , stdUtil :: IORef (StdUtil.StdUtil)
    , connectionHashMap :: IORef (HashMap.HashMap)
    , fIRST_NEW_CONNECTION_CREATED :: IORef (String)
    , fIRST :: IORef (String)
    , nEW_CONNECTION_FOR :: IORef (String)
    , cREATED :: IORef (String)
    , nUMBER_OF_SQL_CONNECTIONS_FOR :: IORef (String)
    , nUMBER_OF_SQL_CONNECTION_VECTORS :: IORef (String)
    , iS :: IORef (String)
    , cONNECTION_ALLREADY_CLOSED :: IORef (String)
    , mETHOD_GET :: IORef (String)
    , mETHOD_ADD :: IORef (String)
    }

instance JavaNull SqlConnectionPool where
    javaNull = javaNullRecord "SqlConnectionPool"

instance JavaEquals SqlConnectionPool where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SqlConnectionPool where
    (==) = jrecordEquals

instance JavaObjectClass SqlConnectionPool where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO SqlConnectionPool
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    stdUtil <- newIORef javaNull
    connectionHashMap <- newIORef javaNull
    fIRST_NEW_CONNECTION_CREATED <- newIORef ""
    fIRST <- newIORef ""
    nEW_CONNECTION_FOR <- newIORef ""
    cREATED <- newIORef ""
    nUMBER_OF_SQL_CONNECTIONS_FOR <- newIORef ""
    nUMBER_OF_SQL_CONNECTION_VECTORS <- newIORef ""
    iS <- newIORef ""
    cONNECTION_ALLREADY_CLOSED <- newIORef ""
    mETHOD_GET <- newIORef ""
    mETHOD_ADD <- newIORef ""
    let this = SqlConnectionPool header_ logUtil stdUtil connectionHashMap fIRST_NEW_CONNECTION_CREATED fIRST nEW_CONNECTION_FOR cREATED nUMBER_OF_SQL_CONNECTIONS_FOR nUMBER_OF_SQL_CONNECTION_VECTORS iS cONNECTION_ALLREADY_CLOSED mETHOD_GET mETHOD_ADD
    jregisterLevel header_ this
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    pure this

initFields_ :: SqlConnectionPool -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.stdUtil =<< (StdUtil.getInstance)
    jset this.connectionHashMap (javaNull)
    jset this.fIRST_NEW_CONNECTION_CREATED ("First New Connection Created: ")
    jset this.fIRST ("First ")
    jset this.nEW_CONNECTION_FOR ("New Connection For ")
    jset this.cREATED (" Created")
    jset this.nUMBER_OF_SQL_CONNECTIONS_FOR ("Number Of Sql Connections for: ")
    jset this.nUMBER_OF_SQL_CONNECTION_VECTORS ("Number Of Sql Connection Vectors: ")
    jset this.iS (" is ")
    jset this.cONNECTION_ALLREADY_CLOSED ("Connection AllReady Closed")
    jset this.mETHOD_GET ("get()")
    jset this.mETHOD_ADD ("add()")
    pure ()


getInstance :: IO (SqlConnectionPool)
getInstance = do
        pure (SqlConnectionPool.instance_)

new_ :: IO SqlConnectionPool
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: SqlConnectionPool -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws SQLException
get :: (JavaObjectClass this_) => this_ -> String -> IO (Connection.Connection)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: SqlConnectionPool))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (Connection.Connection)
get_super object_ a1 = (get_impl (javaCast object_ :: SqlConnectionPool)) a1

get_impl :: SqlConnectionPool -> String -> IO (Connection.Connection)
get_impl this url = do
    javaCatchReturn $ do
        if ((jget (this).connectionHashMap) == javaNull) then do
            assignedValue <- (StdUtil.createHashMap ((jget (this).stdUtil)))
            jset (this).connectionHashMap (assignedValue)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).fIRST_NEW_CONNECTION_CREATED) ++ url) this (jget this.mETHOD_GET))
            javaReturn =<< (DriverManager.getConnection url)
        else do
            connectionVector <- newIORef ((javaCast (jio (HashMap.get ((jget (this).connectionHashMap)) url)) :: BasicArrayList.BasicArrayList))
            if ((jget connectionVector) == javaNull) then do
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset connectionVector (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).fIRST))
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).nEW_CONNECTION_FOR))
                    Control.Monad.void (StringMaker.append stringBuffer url)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).cREATED))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET))
                javaReturn =<< (DriverManager.getConnection url)
            else if ((jio (BasicArrayList.size ((jget connectionVector)))) == 0) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).nEW_CONNECTION_FOR)))) url))) (jget (this).cREATED)))))) this (jget this.mETHOD_GET))
                javaReturn =<< (DriverManager.getConnection url)
            else do
                stringBuffer <- (StringMaker.new_)
                size <- (BasicArrayList.size ((jget connectionVector)))
                forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                    let sqlConnection = (javaCast (jio (BasicArrayList.get ((jget connectionVector)) i)) :: Connection.Connection)
                    when (Prelude.not (jio (Connection.isClosed sqlConnection))) $ do
                        Control.Monad.void (BasicArrayList.remove ((jget connectionVector)) sqlConnection)
                        Control.Monad.void (HashMap.put ((jget (this).connectionHashMap)) url (jget connectionVector))
                        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
                            Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                            Control.Monad.void (StringMaker.append stringBuffer (jget (this).nUMBER_OF_SQL_CONNECTIONS_FOR))
                            Control.Monad.void (StringMaker.append stringBuffer url)
                            Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS))
                            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget connectionVector)))))
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget this.nUMBER_OF_SQL_CONNECTION_VECTORS) ++ javaToString (jio (HashMap.size ((jget (this).connectionHashMap))))) this (jget (this).mETHOD_GET))
                            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget this.mETHOD_GET))
                        javaReturn ((javaCast sqlConnection :: Connection.Connection))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).nEW_CONNECTION_FOR))
            Control.Monad.void (StringMaker.append stringBuffer url)
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).cREATED))
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_GET))
        (DriverManager.getConnection url)


-- throws SQLException
add :: (JavaObjectClass this_) => this_ -> String -> Connection.Connection -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: SqlConnectionPool))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> Connection.Connection -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: SqlConnectionPool)) a1 a2

add_impl :: SqlConnectionPool -> String -> Connection.Connection -> IO (())
add_impl this url sqlConnection = do
        when (Prelude.not (jio (Connection.isClosed sqlConnection))) $ do
            connectionVector <- newIORef (javaNull)
            if ((jget (this).connectionHashMap) == javaNull) then do
                assignedValue <- (StdUtil.createHashMap ((jget (this).stdUtil)))
                jset (this).connectionHashMap (assignedValue)
                assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                jset connectionVector (assignedValue)
                Control.Monad.void (BasicArrayList.add ((jget connectionVector)) sqlConnection)
            else do
                jset connectionVector ((javaCast (jio (HashMap.get ((jget (this).connectionHashMap)) url)) :: BasicArrayList.BasicArrayList))
                when ((jget connectionVector) == javaNull) $ do
                    assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                    jset connectionVector (assignedValue)
                Control.Monad.void (BasicArrayList.add ((jget connectionVector)) sqlConnection)
                Control.Monad.void (HashMap.put ((jget (this).connectionHashMap)) url (jget connectionVector))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).nUMBER_OF_SQL_CONNECTIONS_FOR))
                Control.Monad.void (StringMaker.append stringBuffer url)
                Control.Monad.void (StringMaker.append stringBuffer (jget (this).iS))
                Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size ((jget connectionVector)))))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((jget (this).nUMBER_OF_SQL_CONNECTION_VECTORS) ++ javaToString (jio (HashMap.size ((jget (this).connectionHashMap))))) this (jget (this).mETHOD_ADD))
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this (jget (this).mETHOD_ADD))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGINGPOOL))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (this).cONNECTION_ALLREADY_CLOSED) this (jget this.mETHOD_ADD))
        pure ()


