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
-- package org.allbinary.data.tables.user.commerce.money.payment
module PaymentEntity (module PaymentEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getLastId, getLastId_super, getLastId_impl, setDefault, setDefault_super, setDefault_impl, get, get_super, get_impl, getDefault, getDefault_super, getDefault_impl, remove, remove_super, remove_impl, add, add_super, add_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, drop, drop_super, drop_impl, logUtil, tableName)
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
import qualified Random -- java.util.Random
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified UserData -- org.allbinary.business.user.UserData
import qualified Payment -- org.allbinary.business.user.commerce.money.payment.Payment
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified PaymentInterface -- org.allbinary.business.user.commerce.money.payment.PaymentInterface
import qualified PaymentIdGenerator -- org.allbinary.data.generator.PaymentIdGenerator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified PaymentEntityInterface

-- implements PaymentEntityInterface
data PaymentEntity = PaymentEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    }

instance JavaNull PaymentEntity where
    javaNull = javaNullRecord "PaymentEntity"

instance JavaEquals PaymentEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentEntity where
    (==) = jrecordEquals

instance JavaObjectClass PaymentEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO PaymentEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    let this = PaymentEntity header_ base logUtil tableName
    jregisterLevel header_ this
    PaymentEntityInterface.registerInterface_ header_
    jregisterMethod header_ "getLastId" (\() -> getLastId_impl this)
    jregisterMethod header_ "setDefault" (\() -> setDefault_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    jregisterMethod header_ "drop" (\() -> drop_impl this)
    pure this

initFields_ :: PaymentEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("payment")
    pure ()

new_ :: IO PaymentEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


getLastId :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getLastId object_ a1 = jmethod object_ "getLastId" (\() -> (getLastId_impl (javaCast object_ :: PaymentEntity))) () a1

getLastId_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
getLastId_super object_ a1 = (getLastId_impl (javaCast object_ :: PaymentEntity)) a1

getLastId_impl :: PaymentEntity -> String -> IO (String)
getLastId_impl this userName = do
        (AbSqlBean.getLargestIntegerInColumnWhere_super this.base (PaymentData.iD) (UserData.uSERNAME) userName)


setDefault :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setDefault object_ a1 a2 = jmethod object_ "setDefault" (\() -> (setDefault_impl (javaCast object_ :: PaymentEntity))) () a1 a2

setDefault_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
setDefault_super object_ a1 a2 = (setDefault_impl (javaCast object_ :: PaymentEntity)) a1 a2

setDefault_impl :: PaymentEntity -> String -> Int -> IO (())
setDefault_impl this userName index = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "setDefault" e)
            ) $ do
            updateKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            whereKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereKeyAndValue (UserData.uSERNAME) userName)
            paymentInterface <- (PaymentEntity.getDefault this userName)
            when (paymentInterface /= javaNull) $ do
                Control.Monad.void (HashMap.put updateKeyAndValue (jget ((jio (EntryData.getInstance))).dEFAULT) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                Control.Monad.void (HashMap.put whereKeyAndValue (PaymentData.iD) (jio (PaymentInterface.getId paymentInterface)))
                Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyAndValue updateKeyAndValue)
            Control.Monad.void (HashMap.put updateKeyAndValue (jget ((jio (EntryData.getInstance))).dEFAULT) (jget ((jio (EntryData.getInstance))).dEFAULT))
            Control.Monad.void (HashMap.put whereKeyAndValue (PaymentData.iD) (javaToString index))
            Control.Monad.void (AbSqlBean.updateWhere_super this.base whereKeyAndValue updateKeyAndValue)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "setDefault")
        pure ()


get :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: PaymentEntity))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicArrayList.BasicArrayList)
get_super object_ a1 = (get_impl (javaCast object_ :: PaymentEntity)) a1

get_impl :: PaymentEntity -> String -> IO (BasicArrayList.BasicArrayList)
get_impl this userName = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this (jget ((jget (this).base.base.base.base.base.commonStrings)).gET) e)
            pure (javaNull)
            ) $ do
            paymentVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            keyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put keyAndValue (UserData.uSERNAME) userName)
            paymentList <- (AbSqlBean.getRows_super this.base keyAndValue)
            size <- (BasicArrayList.size paymentList)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let paymentHashMap = (javaCast (jio (BasicArrayList.get paymentList index)) :: HashMap.HashMap)
                payment <- (Payment.new_1 paymentHashMap)
                when (payment /= javaNull) $ do
                    Control.Monad.void (BasicArrayList.add paymentVector payment)
            pure (paymentVector)


getDefault :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentInterface.PaymentInterface)
getDefault object_ a1 = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: PaymentEntity))) () a1

getDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentInterface.PaymentInterface)
getDefault_super object_ a1 = (getDefault_impl (javaCast object_ :: PaymentEntity)) a1

getDefault_impl :: PaymentEntity -> String -> IO (PaymentInterface.PaymentInterface)
getDefault_impl this userName = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "getDefault" e)
            pure (javaNull)
            ) $ do
            paymentHashMap <- newIORef =<< (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            updateKeyAndValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put updateKeyAndValue (jget ((jio (EntryData.getInstance))).dEFAULT) (jget ((jio (EntryData.getInstance))).dEFAULT))
            Control.Monad.void (HashMap.put updateKeyAndValue (UserData.uSERNAME) userName)
            assignedValue <- (AbSqlBean.getRow_super this.base updateKeyAndValue)
            jset paymentHashMap (assignedValue)
            if ((jget paymentHashMap) /= javaNull) then do
                payment <- (Payment.new_1 (jget paymentHashMap))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "getDefault")
                javaReturn ((javaCast payment :: PaymentInterface.PaymentInterface))
            else do
                javaReturn (javaNull)


remove :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
remove object_ a1 a2 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: PaymentEntity))) () a1 a2

remove_super :: (JavaObjectClass this_) => this_ -> String -> Int -> IO (())
remove_super object_ a1 a2 = (remove_impl (javaCast object_ :: PaymentEntity)) a1 a2

remove_impl :: PaymentEntity -> String -> Int -> IO (())
remove_impl this userName index = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "remove" e)
            ) $ do
            whereHashMap <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            Control.Monad.void (HashMap.put whereHashMap (UserData.uSERNAME) userName)
            Control.Monad.void (HashMap.put whereHashMap (PaymentData.iD) (javaCast (javaToString index) :: String))
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base whereHashMap)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "remove")
        pure ()


add :: (JavaObjectClass this_) => this_ -> String -> PaymentInterface.PaymentInterface -> IO (())
add object_ a1 a2 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PaymentEntity))) () a1 a2

add_super :: (JavaObjectClass this_) => this_ -> String -> PaymentInterface.PaymentInterface -> IO (())
add_super object_ a1 a2 = (add_impl (javaCast object_ :: PaymentEntity)) a1 a2

add_impl :: PaymentEntity -> String -> PaymentInterface.PaymentInterface -> IO (())
add_impl this userName paymentInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "add" e)
            ) $ do
            vector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add vector (jio (PaymentIdGenerator.getNext ((jio (PaymentIdGenerator.new_))))))
            Control.Monad.void (BasicArrayList.add vector userName)
            Control.Monad.void (BasicArrayList.add vector (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getName paymentInterface)))
            Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getType paymentInterface)))
            Control.Monad.void (BasicArrayList.add vector (jio (PaymentInterface.getExpiration paymentInterface)))
            random <- (Random.nextInt ((jio (Random.new_))) (jget SuperCrypt.kEYMAX))
            Control.Monad.void (BasicArrayList.add vector (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 random))) (jio (PaymentInterface.getNumber paymentInterface)))))
            Control.Monad.void (BasicArrayList.add vector (javaToString (Prelude.fromIntegral (random) :: Int)))
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            Control.Monad.void (BasicArrayList.add vector time)
            Control.Monad.void (AbSqlBean.insert_super this.base vector)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "add")
        pure ()


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: PaymentEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: PaymentEntity))

createTableStatement_impl :: PaymentEntity -> IO (String)
createTableStatement_impl this = do
        entryData <- (EntryData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (PaymentData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (entryData).dEFAULT)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (PaymentData.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (PaymentData.tYPE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (PaymentData.eXPIRATION)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (PaymentData.nUMBER)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (entryData).eNCRYPTION)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget (entryData).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (PaymentData.iD)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: PaymentEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: PaymentEntity))

createTable_impl :: PaymentEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (PaymentEntity.createTableStatement this)))


drop :: (JavaObjectClass this_) => this_ -> IO (String)
drop object_ = jmethod object_ "drop" (\() -> (drop_impl (javaCast object_ :: PaymentEntity))) ()

drop_super :: (JavaObjectClass this_) => this_ -> IO (String)
drop_super object_ = (drop_impl (javaCast object_ :: PaymentEntity))

drop_impl :: PaymentEntity -> IO (String)
drop_impl this = do
        (AbSqlBean.dropTable_super this.base)


