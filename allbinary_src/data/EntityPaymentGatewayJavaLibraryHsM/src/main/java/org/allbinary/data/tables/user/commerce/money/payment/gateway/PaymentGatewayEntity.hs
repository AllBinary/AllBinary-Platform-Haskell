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
-- package org.allbinary.data.tables.user.commerce.money.payment.gateway
module PaymentGatewayEntity (module PaymentGatewayEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, add, add_super, add_impl, update, update_super, update_impl, getPaymentGatewayInterface, getPaymentGatewayInterface_super, getPaymentGatewayInterface_impl, findPaymentTypeVectorByStore, findPaymentTypeVectorByStore_super, findPaymentTypeVectorByStore_impl, remove, remove_super, remove_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, dropTable, dropTable_super, dropTable_impl, logUtil, tableName)
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
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified UserData -- org.allbinary.business.user.UserData
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified PaymentGatewayData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData
import qualified PaymentGatewayEncryptedMapping -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping
import qualified PaymentGatewayInterface -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface
import qualified PaymentGatewayInterfaceFactory -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory
import qualified BasicPaymentType -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType
import qualified BasicPaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil
import qualified PaymentGatewayIdGenerator -- org.allbinary.data.generator.PaymentGatewayIdGenerator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified PaymentGatewayEntityInterface

-- implements PaymentGatewayEntityInterface
data PaymentGatewayEntity = PaymentGatewayEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull PaymentGatewayEntity where
    javaNull = javaNullRecord "PaymentGatewayEntity"

instance JavaEquals PaymentGatewayEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentGatewayEntity where
    (==) = jrecordEquals

instance JavaObjectClass PaymentGatewayEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentGatewayEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = PaymentGatewayEntity header_ base logUtil tableName
    jregisterLevel header_ this
    PaymentGatewayEntityInterface.registerInterface_ header_
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "getPaymentGatewayInterface" (\() -> getPaymentGatewayInterface_impl this)
    jregisterMethod header_ "findPaymentTypeVectorByStore" (\() -> findPaymentTypeVectorByStore_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "dropTable" (\() -> dropTable_impl this)
    pure this

initFields_ :: PaymentGatewayEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("paymentgateways")
    pure ()

new_ :: IO PaymentGatewayEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentGatewayEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).cONSTRUCTOR) this (jget ((jget (this).base.base.base.base.base.commonStrings)).cONSTRUCTOR))
        pure ()


add :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PaymentGatewayEntity))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PaymentGatewayEntity)) a1

add_impl :: PaymentGatewayEntity -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
add_impl this paymentGatewayInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sTART) this "add")
            vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add vector (jio (PaymentGatewayIdGenerator.getNext ((jio (PaymentGatewayIdGenerator.new_))))))
            Control.Monad.void (BasicArrayList.addAllList vector (jio (PaymentGatewayEncryptedMapping.toVector ((jio (PaymentGatewayEncryptedMapping.new_1 paymentGatewayInterface))))))
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (BasicArrayList.add vector time)
            Control.Monad.void (BasicArrayList.add vector time)
            Control.Monad.void (AbSqlBean.insert_super this.base vector)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).eND) this "add")
        pure ()


update :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update object_ a1 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: PaymentGatewayEntity))) () a1

update_super :: (JavaObjectClass this_) => this_ -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update_super object_ a1 = (update_impl (javaCast object_ :: PaymentGatewayEntity)) a1

update_impl :: PaymentGatewayEntity -> PaymentGatewayInterface.PaymentGatewayInterface -> IO (())
update_impl this paymentGatewayInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "update" e)
            ) $ do
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (PaymentGatewayInterface.setLastModified paymentGatewayInterface time)
            whereKeyValuePairs <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereKeyValuePairs (jget ((jio (StoreFrontData.getInstance))).nAME) (jio (PaymentGatewayInterface.getStoreName paymentGatewayInterface)))
            Control.Monad.void (HashMap.put whereKeyValuePairs (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jio (PaymentGatewayInterface.getName paymentGatewayInterface)))
            when ((jio (HashMap.get whereKeyValuePairs (jget ((jio (EntryData.getInstance))).tIMECREATED))) /= javaNull) $ do
                javaThrow ((JavaException "Exception" "Don't update TimeCreated for update"))
            updateHashMap <- (PaymentGatewayEncryptedMapping.toHashMap ((jio (PaymentGatewayEncryptedMapping.new_1 paymentGatewayInterface))))
            Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyValuePairs updateHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "update")
        pure ()


getPaymentGatewayInterface :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface object_ a1 a2 = jmethod object_ "getPaymentGatewayInterface" (\() -> (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayEntity))) () a1 a2

getPaymentGatewayInterface_super :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_super object_ a1 a2 = (getPaymentGatewayInterface_impl (javaCast object_ :: PaymentGatewayEntity)) a1 a2

getPaymentGatewayInterface_impl :: PaymentGatewayEntity -> String -> BasicPaymentType.BasicPaymentType -> IO (PaymentGatewayInterface.PaymentGatewayInterface)
getPaymentGatewayInterface_impl this storeName paymentType = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Command Failed for paymentType: " ++ (jio (BasicPaymentType.getName paymentType))) this "getPaymentGatewayInterface" e)
            pure (javaNull)
            ) $ do
            paymentGatewayHashMap <- newIORef =<< (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            whereKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereKeyAndValue (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            Control.Monad.void (HashMap.put whereKeyAndValue (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jio (BasicPaymentType.getName paymentType)))
            assignedValue <- (AbSqlBean.getRow_super this.base whereKeyAndValue)
            jset paymentGatewayHashMap (assignedValue)
            if ((jget paymentGatewayHashMap) /= javaNull) then do
                let userName = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (UserData.uSERNAME))) :: String)
                let password = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (UserData.pASSWORD))) :: String)
                let special1 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)))) :: String)
                let special2 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)))) :: String)
                let special3 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)))) :: String)
                let special4 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)))) :: String)
                let special5 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)))) :: String)
                let special6 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)))) :: String)
                let special7 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)))) :: String)
                let special8 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)))) :: String)
                let special9 = (javaCast (jio (HashMap.get ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL9)))) :: String)
                superCrypt <- (SuperCrypt.new_1 (PaymentGatewayData.cRYPTNUM))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (UserData.uSERNAME) (jio (SuperCrypt.decrypt superCrypt userName)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (UserData.pASSWORD) (jio (SuperCrypt.decrypt superCrypt password)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)) (jio (SuperCrypt.decrypt superCrypt special1)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)) (jio (SuperCrypt.decrypt superCrypt special2)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)) (jio (SuperCrypt.decrypt superCrypt special3)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)) (jio (SuperCrypt.decrypt superCrypt special4)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)) (jio (SuperCrypt.decrypt superCrypt special5)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)) (jio (SuperCrypt.decrypt superCrypt special6)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)) (jio (SuperCrypt.decrypt superCrypt special7)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)) (jio (SuperCrypt.decrypt superCrypt special8)))
                Control.Monad.void (HashMap.put ((jget paymentGatewayHashMap)) (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL9)) (jio (SuperCrypt.decrypt superCrypt special9)))
                paymentGatewayInterface <- (PaymentGatewayInterfaceFactory.getInstance ((jio (PaymentGatewayInterfaceFactory.new_))) (jget paymentGatewayHashMap))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "getPaymentGatewayInterface()")
                javaReturn (paymentGatewayInterface)
            else do
                javaReturn =<< (PaymentGatewayInterfaceFactory.getInstance ((jio (PaymentGatewayInterfaceFactory.new_))) paymentType)


findPaymentTypeVectorByStore :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore object_ a1 = jmethod object_ "findPaymentTypeVectorByStore" (\() -> (findPaymentTypeVectorByStore_impl (javaCast object_ :: PaymentGatewayEntity))) () a1

findPaymentTypeVectorByStore_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore_super object_ a1 = (findPaymentTypeVectorByStore_impl (javaCast object_ :: PaymentGatewayEntity)) a1

findPaymentTypeVectorByStore_impl :: PaymentGatewayEntity -> String -> IO (BasicArrayList.BasicArrayList)
findPaymentTypeVectorByStore_impl this storeName = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "findPaymentTypeVectorByStore" e)
            pure (javaNull)
            ) $ do
            paymentGatewayNameVector <- newIORef =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            assignedValue <- (AbSqlBean.getColumnWhere_super this.base (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            jset paymentGatewayNameVector (assignedValue)
            if ((jget paymentGatewayNameVector) /= javaNull) then do
                paymentGatewayVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
                size <- (BasicArrayList.size ((jget paymentGatewayNameVector)))
                forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
                    let paymentTypeString = (javaCast (jio (BasicArrayList.get ((jget paymentGatewayNameVector)) i)) :: String)
                    paymentType <- (BasicPaymentTypeUtil.get ((jio (BasicPaymentTypeUtil.getInstance))) paymentTypeString)
                    Control.Monad.void (BasicArrayList.add paymentGatewayVector paymentType)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "findPaymentTypeVectorByStore()")
                javaReturn (paymentGatewayVector)
            else do
                javaReturn =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))


remove :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: PaymentGatewayEntity))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: PaymentGatewayEntity)) a1 a2

remove_impl :: PaymentGatewayEntity -> String -> BasicPaymentType.BasicPaymentType -> IO (())
remove_impl this storeName paymentType = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "remove" e)
            ) $ do
            whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereHashMap (jget ((jio (StoreFrontData.getInstance))).nAME) storeName)
            Control.Monad.void (HashMap.put whereHashMap (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)) (jio (BasicPaymentType.getName paymentType)))
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base whereHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "remove")
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: PaymentGatewayEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: PaymentGatewayEntity))

createTableStatement_impl :: PaymentGatewayEntity -> IO (String)
createTableStatement_impl this = do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget (this).tableName))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.iD)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).eNABLE))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (StoreFrontData.getInstance))).nAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.nAME)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (PaymentData.mETHOD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.mODE)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPROTOCOL)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.tESTSERVER)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPORT)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.tESTPATH)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPROTOCOL)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sERVER)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPORT)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sERVERPATH)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (UserData.uSERNAME))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (UserData.pASSWORD))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.tIMEOUT)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPROTOCOL)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYSERVER)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPORT)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPATH)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYUSERNAME)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYPASSWORD)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.pROXYTIMEOUT)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL1)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL2)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL3)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL4)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL5)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL6)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL7)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL8)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.sPECIAL9)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).lASTMODIFIED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (EntryData.getInstance))).tIMECREATED))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY))
        Control.Monad.void (StringMaker.append stringBuffer (jio (PaymentGatewayData.toString PaymentGatewayData.iD)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: PaymentGatewayEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: PaymentGatewayEntity))

createTable_impl :: PaymentGatewayEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (PaymentGatewayEntity.createTableStatement this)))


dropTable :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable object_ = jmethod object_ "dropTable" (\() -> (dropTable_impl (javaCast object_ :: PaymentGatewayEntity))) ()

dropTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTable_super object_ = (dropTable_impl (javaCast object_ :: PaymentGatewayEntity))

dropTable_impl :: PaymentGatewayEntity -> IO (String)
dropTable_impl this = do
        (AbSqlBean.dropTable_super this.base)


