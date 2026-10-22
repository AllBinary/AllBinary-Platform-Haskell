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
-- package org.allbinary.data.tables.user.address
module StreetAddressesEntity (module StreetAddressesEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, remove, remove_super, remove_impl, add, add_super, add_impl, add_2, add_2_super, add_2_impl, add, update, update_super, update_impl, getLastId, getLastId_super, getLastId_impl, get, get_super, get_impl, get_1, get_1_super, get_1_impl, get, getDefault, getDefault_super, getDefault_impl, setDefault, setDefault_super, setDefault_impl, getUserName, getUserName_super, getUserName_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, drop, drop_super, drop_impl, logUtil, userName)
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
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified UserData -- org.allbinary.business.user.UserData
import qualified StreetAddress -- org.allbinary.business.user.address.StreetAddress
import qualified StreetAddressData -- org.allbinary.business.user.address.StreetAddressData
import qualified TableDataFactory -- org.allbinary.data.tables.TableDataFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StreetAddressesEntityInterface

-- implements StreetAddressesEntityInterface
data StreetAddressesEntity = StreetAddressesEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , userName :: IORef (String)
    }

instance JavaNull StreetAddressesEntity where
    javaNull = javaNullRecord "StreetAddressesEntity"

instance JavaEquals StreetAddressesEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StreetAddressesEntity where
    (==) = jrecordEquals

instance JavaObjectClass StreetAddressesEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StreetAddressesEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    userName <- newIORef ""
    let this = StreetAddressesEntity header_ base logUtil userName
    jregisterLevel header_ this
    StreetAddressesEntityInterface.registerInterface_ header_
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "add_2" (\() -> add_2_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getLastId" (\() -> getLastId_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "get_1" (\() -> get_1_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: StreetAddressesEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.userName (javaNull)
    pure ()

new_ :: IO StreetAddressesEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StreetAddressesEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: String -> IO StreetAddressesEntity
new_1 userName = do
    this <- newRecord_
    init_1 this userName
    pure this

init_1 :: StreetAddressesEntity -> String -> IO ()
init_1 this userName = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).userName (userName)
        pure ()


remove :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: StreetAddressesEntity))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: StreetAddressesEntity)) a1

remove_impl :: StreetAddressesEntity -> Int -> IO (())
remove_impl this index = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "remove" e)
            ) $ do
            whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereHashMap (UserData.uSERNAME) (jget (this).userName))
            Control.Monad.void (HashMap.put whereHashMap (StreetAddressData.iD) (javaCast (javaToString index) :: String))
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base whereHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "remove")
        pure ()


add :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: StreetAddressesEntity))) () a1

add_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: StreetAddressesEntity)) a1

add_impl :: StreetAddressesEntity -> StreetAddress.StreetAddress -> IO (())
add_impl this address = do
        Control.Monad.void (StreetAddressesEntity.add_2 this address (jget ((jio (TableDataFactory.getInstance))).iNTEGER_MAX_VALUE_STRING))
        pure ()


add_2 :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> String -> IO (())
add_2 object_ a1 a2 = jmethod object_ "add_2" (\() -> (add_2_impl (javaCast object_ :: StreetAddressesEntity))) () a1 a2

add_2_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> String -> IO (())
add_2_super object_ a1 a2 = (add_2_impl (javaCast object_ :: StreetAddressesEntity)) a1 a2

add_2_impl :: StreetAddressesEntity -> StreetAddress.StreetAddress -> String -> IO (())
add_2_impl this address index = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add values index)
            Control.Monad.void (BasicArrayList.add values (jget (this).userName))
            Control.Monad.void (BasicArrayList.add values (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getName address)))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getStreet address)))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getCity address)))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getState address)))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getCode address)))
            Control.Monad.void (BasicArrayList.add values (jio (StreetAddress.getCountry address)))
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            Control.Monad.void (StreetAddressesEntity.setDefault this (jio (StreetAddressesEntity.getLastId this)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "add")
        pure ()


update :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: StreetAddressesEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> StreetAddress.StreetAddress -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: StreetAddressesEntity)) a1

update_impl :: StreetAddressesEntity -> StreetAddress.StreetAddress -> IO (())
update_impl this address = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            addressHashMap <- (StreetAddress.toHashMap address)
            whereKeyValuePairs <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereKeyValuePairs (StreetAddressData.iD) (jio (StreetAddress.getId address)))
            Control.Monad.void (HashMap.put whereKeyValuePairs (UserData.uSERNAME) (jget (this).userName))
            Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyValuePairs addressHashMap)
            Control.Monad.void (StreetAddressesEntity.setDefault this (jio (StreetAddress.getId address)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "update")
        pure ()


getLastId :: (JavaObjectClass this_) => this_ -> IO (String)
getLastId object_ = jmethod object_ "getLastId" (\() -> (getLastId_impl (javaCast object_ :: StreetAddressesEntity))) ()

getLastId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastId_super object_ = (getLastId_impl (javaCast object_ :: StreetAddressesEntity))

getLastId_impl :: StreetAddressesEntity -> IO (String)
getLastId_impl this = do
        (AbSqlBean.getLargestIntegerInColumnWhere_super this.base (StreetAddressData.iD) (UserData.uSERNAME) (jget this.userName))


get :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get object_ = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: StreetAddressesEntity))) ()

get_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
get_super object_ = (get_impl (javaCast object_ :: StreetAddressesEntity))

get_impl :: StreetAddressesEntity -> IO (BasicArrayList.BasicArrayList)
get_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            streetAddressVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            keyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keyAndValue (UserData.uSERNAME) (jget (this).userName))
            addressList <- (AbSqlBean.getRows_super this.base keyAndValue)
            size <- (BasicArrayList.size addressList)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let addressHashMap = (javaCast (jio (BasicArrayList.get addressList index)) :: HashMap.HashMap)
                streetAddress <- (StreetAddress.new_1 addressHashMap)
                when (streetAddress /= javaNull) $ do
                    Control.Monad.void (BasicArrayList.add streetAddressVector streetAddress)
            pure (streetAddressVector)


get_1 :: (JavaObjectClass this_) => this_ -> Int -> IO (StreetAddress.StreetAddress)
get_1 object_ a1 = jmethod object_ "get_1" (\() -> (get_1_impl (javaCast object_ :: StreetAddressesEntity))) () a1

get_1_super :: (JavaObjectClass this_) => this_ -> Int -> IO (StreetAddress.StreetAddress)
get_1_super object_ a1 = (get_1_impl (javaCast object_ :: StreetAddressesEntity)) a1

get_1_impl :: StreetAddressesEntity -> Int -> IO (StreetAddress.StreetAddress)
get_1_impl this index = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            keyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keyAndValue (UserData.uSERNAME) (jget (this).userName))
            Control.Monad.void (HashMap.put keyAndValue (StreetAddressData.iD) (javaToString index))
            addressHashMap <- (AbSqlBean.getRow_super this.base keyAndValue)
            if (addressHashMap /= javaNull) then do
                javaReturn =<< (StreetAddress.new_1 addressHashMap)
            else do
                javaReturn (javaNull)


getDefault :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getDefault object_ = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: StreetAddressesEntity))) ()

getDefault_super :: (JavaObjectClass this_) => this_ -> IO (StreetAddress.StreetAddress)
getDefault_super object_ = (getDefault_impl (javaCast object_ :: StreetAddressesEntity))

getDefault_impl :: StreetAddressesEntity -> IO (StreetAddress.StreetAddress)
getDefault_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "getDefault" e)
            pure (javaNull)
            ) $ do
            addressHashMap <- newIORef =<< (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            updateKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put updateKeyAndValue (StreetAddressData.dEFAULT) (StreetAddressData.dEFAULT))
            Control.Monad.void (HashMap.put updateKeyAndValue (UserData.uSERNAME) (jget (this).userName))
            assignedValue <- (AbSqlBean.getRow_super this.base updateKeyAndValue)
            jset addressHashMap (assignedValue)
            if ((jget addressHashMap) /= javaNull) then do
                streetAddress <- (StreetAddress.new_1 (jget addressHashMap))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "getDefault")
                javaReturn (streetAddress)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "No Default Address Found" this "getDefault")
                javaReturn (javaNull)


setDefault :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDefault object_ a1 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: StreetAddressesEntity))) () a1

setDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDefault_super object_ a1 = (setDefault_impl (javaCast object_ :: StreetAddressesEntity)) a1

setDefault_impl :: StreetAddressesEntity -> String -> IO (())
setDefault_impl this value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "setShippingAddress" e)
            ) $ do
            updateKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            whereKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereKeyAndValue (UserData.uSERNAME) (jget (this).userName))
            streetAddress <- (StreetAddressesEntity.getDefault this)
            when (streetAddress /= javaNull) $ do
                Control.Monad.void (HashMap.put updateKeyAndValue (StreetAddressData.dEFAULT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                Control.Monad.void (HashMap.put whereKeyAndValue (StreetAddressData.iD) (jio (StreetAddress.getId streetAddress)))
                Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyAndValue updateKeyAndValue)
            Control.Monad.void (HashMap.put whereKeyAndValue (StreetAddressData.iD) value)
            Control.Monad.void (HashMap.put updateKeyAndValue (StreetAddressData.dEFAULT) (StreetAddressData.dEFAULT))
            Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyAndValue updateKeyAndValue)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "setDefault")
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: StreetAddressesEntity))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: StreetAddressesEntity))

getUserName_impl :: StreetAddressesEntity -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: StreetAddressesEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: StreetAddressesEntity))

createTableStatement_impl :: StreetAddressesEntity -> IO (String)
createTableStatement_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jio (AbSqlBean.getTableName this))))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (StreetAddressData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (StreetAddressData.dEFAULT)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (StreetAddressData.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (StreetAddressData.sTREET)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (StreetAddressData.cITY)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (StreetAddressData.sTATE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (StreetAddressData.cODE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (StreetAddressData.cOUNTRY)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (jget ((jio (EntryData.getInstance))).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (StreetAddressData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: StreetAddressesEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: StreetAddressesEntity))

createTable_impl :: StreetAddressesEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (StreetAddressesEntity.createTableStatement this)))


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: StreetAddressesEntity))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: StreetAddressesEntity))

drop_impl :: StreetAddressesEntity -> IO (String)
drop_impl this = do
        (AbSqlBean.dropTable_super this.base)


