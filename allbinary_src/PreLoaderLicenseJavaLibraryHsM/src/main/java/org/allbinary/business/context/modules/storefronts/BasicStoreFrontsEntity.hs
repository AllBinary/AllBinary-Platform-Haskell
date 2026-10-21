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
-- package org.allbinary.business.context.modules.storefronts
module BasicStoreFrontsEntity (module BasicStoreFrontsEntity, module InitSql) where

import InitSql hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getStoreFrontInterface, getStoreFrontInterface_super, getStoreFrontInterface_impl, logUtil, tableName)
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
import qualified BasicStoreFront -- same package or java.lang
import qualified BasicStoreFrontInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified InitSql -- org.allbinary.business.init.InitSql
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil

data BasicStoreFrontsEntity = BasicStoreFrontsEntity
    { header_ :: JavaHeader
    , base :: InitSql.InitSql
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull BasicStoreFrontsEntity where
    javaNull = javaNullRecord "BasicStoreFrontsEntity"

instance JavaEquals BasicStoreFrontsEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicStoreFrontsEntity where
    (==) = jrecordEquals

instance JavaObjectClass BasicStoreFrontsEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicStoreFrontsEntity
newRecord_ = do
    base <- InitSql.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = BasicStoreFrontsEntity header_ base logUtil tableName
    jregisterLevel header_ this
    jregisterMethod header_ "getStoreFrontInterface" (\() -> getStoreFrontInterface_impl this)
    pure this

initFields_ :: BasicStoreFrontsEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("storefronts")
    pure ()

new_ :: IO BasicStoreFrontsEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicStoreFrontsEntity -> IO ()
init_ this = do
        InitSql.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (InitSql.setTable this (jget (this).tableName))
        pure ()


-- throws Exception
getStoreFrontInterface :: (JavaObjectClass this_) => this_ -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getStoreFrontInterface object_ a1 = jmethod object_ "getStoreFrontInterface" (\() -> (getStoreFrontInterface_impl (javaCast object_ :: BasicStoreFrontsEntity))) () a1

getStoreFrontInterface_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getStoreFrontInterface_super object_ a1 = (getStoreFrontInterface_impl (javaCast object_ :: BasicStoreFrontsEntity)) a1

getStoreFrontInterface_impl :: BasicStoreFrontsEntity -> String -> IO (BasicStoreFrontInterface.BasicStoreFrontInterface)
getStoreFrontInterface_impl this name = do
        keysAndValues <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) name)
        storeHashMap <- (InitSql.getRow_super this.base keysAndValues)
        when (storeHashMap == javaNull) $ do
            javaThrow ((JavaException "Exception" ("No Such Store: " ++ name)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("StoreFront: " ++ (jio (HashMap.toString storeHashMap))) this "getStore()")
        pure ((javaCast (jio (BasicStoreFront.new_1 storeHashMap)) :: BasicStoreFrontInterface.BasicStoreFrontInterface))


