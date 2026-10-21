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
-- package org.allbinary.data.tables.user
module UserEntity (module UserEntity, module AbSqlBean) where

import AbSqlBean hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, getAdministrators, getAdministrators_super, getAdministrators_impl, getStoreManagers, getStoreManagers_super, getStoreManagers_impl, getCustomers, getCustomers_super, getCustomers_impl, getUsersWithRole, getUsersWithRole_super, getUsersWithRole_impl, getUsers, getUsers_super, getUsers_impl, getUser, getUser_super, getUser_impl, deleteWhere, deleteWhere_super, deleteWhere_impl, login, login_super, login_impl, update, update_super, update_impl, dropTables, dropTables_super, dropTables_impl, createTableStatement, createTableStatement_super, createTableStatement_impl, createTable, createTable_super, createTable_impl, logUtil, tableName, cOMMAND_SUCCESS_FOR_USER, pASSWORD_LABEL, eQUALS, cOMMAND_SUCCESS_BUT_LOGIN_FAILED, iNVALID_PASSWORD_LABEL, nOT_EQUAL, eND_QUOTES)
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
import qualified StringUtil -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified SqlTypeStrings -- same package or java.lang
import qualified SqlStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified UserDbInitInfo -- org.allbinary.business.init.db.UserDbInitInfo
import qualified CreateUserFactory -- org.allbinary.business.user.CreateUserFactory
import qualified UserData -- org.allbinary.business.user.UserData
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified User -- org.allbinary.business.user.modules.User
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified UserRoleFactory -- org.allbinary.business.user.role.UserRoleFactory
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlBean -- org.allbinary.logic.communication.sql.AbSqlBean
import qualified SuperCrypt -- org.allbinary.logic.control.crypt.SuperCrypt
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified UserEntityInterface

-- implements UserEntityInterface
data UserEntity = UserEntity
    { header_ :: JavaHeader
    , base :: AbSqlBean.AbSqlBean
    , logUtil :: IORef (LogUtil.LogUtil)
    , tableName :: IORef (String)
    , cOMMAND_SUCCESS_FOR_USER :: IORef (String)
    , pASSWORD_LABEL :: IORef (String)
    , eQUALS :: IORef (String)
    , cOMMAND_SUCCESS_BUT_LOGIN_FAILED :: IORef (String)
    , iNVALID_PASSWORD_LABEL :: IORef (String)
    , nOT_EQUAL :: IORef (String)
    , eND_QUOTES :: IORef (String)
    }

instance JavaNull UserEntity where
    javaNull = javaNullRecord "UserEntity"

instance JavaEquals UserEntity where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEntity where
    (==) = jrecordEquals

instance JavaObjectClass UserEntity where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UserEntity
newRecord_ = do
    base <- AbSqlBean.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    tableName <- newIORef ""
    cOMMAND_SUCCESS_FOR_USER <- newIORef ""
    pASSWORD_LABEL <- newIORef ""
    eQUALS <- newIORef ""
    cOMMAND_SUCCESS_BUT_LOGIN_FAILED <- newIORef ""
    iNVALID_PASSWORD_LABEL <- newIORef ""
    nOT_EQUAL <- newIORef ""
    eND_QUOTES <- newIORef ""
    let this = UserEntity header_ base logUtil tableName cOMMAND_SUCCESS_FOR_USER pASSWORD_LABEL eQUALS cOMMAND_SUCCESS_BUT_LOGIN_FAILED iNVALID_PASSWORD_LABEL nOT_EQUAL eND_QUOTES
    jregisterLevel header_ this
    UserEntityInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "getAdministrators" (\() -> getAdministrators_impl this)
    jregisterMethod header_ "getStoreManagers" (\() -> getStoreManagers_impl this)
    jregisterMethod header_ "getCustomers" (\() -> getCustomers_impl this)
    jregisterMethod header_ "getUsersWithRole" (\() -> getUsersWithRole_impl this)
    jregisterMethod header_ "getUsers" (\() -> getUsers_impl this)
    jregisterMethod header_ "getUser" (\() -> getUser_impl this)
    jregisterMethod header_ "deleteWhere" (\() -> deleteWhere_impl this)
    jregisterMethod header_ "login" (\() -> login_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    jregisterMethod header_ "dropTables" (\() -> dropTables_impl this)
    jregisterMethod header_ "createTableStatement" (\() -> createTableStatement_impl this)
    jregisterMethod header_ "createTable" (\() -> createTable_impl this)
    pure this

initFields_ :: UserEntity -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.tableName ("user")
    jset this.cOMMAND_SUCCESS_FOR_USER ("Command Success for user: ")
    jset this.pASSWORD_LABEL (" Password: ")
    jset this.eQUALS ("==")
    jset this.cOMMAND_SUCCESS_BUT_LOGIN_FAILED ("Command Success but login failed for user: ")
    jset this.iNVALID_PASSWORD_LABEL (" Password: \n\"")
    jset this.nOT_EQUAL ("\"!=\"")
    jset this.eND_QUOTES ((jget ((jio (CommonSeps.getInstance))).qUOTE))
    pure ()

new_ :: IO UserEntity
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UserEntity -> IO ()
init_ this = do
        AbSqlBean.init_1 this.base (jio (UserDbInitInfo.new_))
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbSqlBean.setTableName this (jget (this).tableName))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert object_ a1 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: UserEntity))) () a1

insert_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (())
insert_super object_ a1 = (insert_impl (javaCast object_ :: UserEntity)) a1

insert_impl :: UserEntity -> BasicArrayList.BasicArrayList -> IO (())
insert_impl this values = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this iNSERT e)
            ) $ do
            Control.Monad.void (AbSqlBean.insert_super this.base values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this iNSERT)
        pure ()


-- throws Exception
getAdministrators :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdministrators object_ = jmethod object_ "getAdministrators" (\() -> (getAdministrators_impl (javaCast object_ :: UserEntity))) ()

getAdministrators_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAdministrators_super object_ = (getAdministrators_impl (javaCast object_ :: UserEntity))

getAdministrators_impl :: UserEntity -> IO (BasicArrayList.BasicArrayList)
getAdministrators_impl this = do
        (UserEntity.getUsersWithRole this (jget ((jio (UserRoleFactory.getInstance))).aDMINISTRATOR))


-- throws Exception
getStoreManagers :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers object_ a1 = jmethod object_ "getStoreManagers" (\() -> (getStoreManagers_impl (javaCast object_ :: UserEntity))) () a1

getStoreManagers_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers_super object_ a1 = (getStoreManagers_impl (javaCast object_ :: UserEntity)) a1

getStoreManagers_impl :: UserEntity -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getStoreManagers_impl this storeFrontInterface = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        usersVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (HashMap.put keysAndValues (UserRoleData.nAME) (jio (UserRole.toString ((jget ((jio (UserRoleFactory.getInstance))).sTOREMANAGER)))))
        Control.Monad.void (HashMap.put keysAndValues (UserData.pERMISSIONS) (jio (StoreFrontInterface.getName storeFrontInterface)))
        usersHashMapVector <- (AbSqlBean.getRows_super this.base keysAndValues)
        size <- (BasicArrayList.size usersHashMapVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let userHashMap = (javaCast (jio (BasicArrayList.get usersHashMapVector i)) :: HashMap.HashMap)
            when (userHashMap /= javaNull) $ do
                Control.Monad.void (jio (BasicArrayList.add usersVector (jio (User.new_1 userHashMap))))
        pure (usersVector)


-- throws Exception
getCustomers :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomers object_ = jmethod object_ "getCustomers" (\() -> (getCustomers_impl (javaCast object_ :: UserEntity))) ()

getCustomers_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getCustomers_super object_ = (getCustomers_impl (javaCast object_ :: UserEntity))

getCustomers_impl :: UserEntity -> IO (BasicArrayList.BasicArrayList)
getCustomers_impl this = do
        (UserEntity.getUsersWithRole this (jget ((jio (UserRoleFactory.getInstance))).cUSTOMER))


-- throws Exception
getUsersWithRole :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole object_ a1 = jmethod object_ "getUsersWithRole" (\() -> (getUsersWithRole_impl (javaCast object_ :: UserEntity))) () a1

getUsersWithRole_super :: (JavaObjectClass this_) => this_ -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole_super object_ a1 = (getUsersWithRole_impl (javaCast object_ :: UserEntity)) a1

getUsersWithRole_impl :: UserEntity -> UserRole.UserRole -> IO (BasicArrayList.BasicArrayList)
getUsersWithRole_impl this userRole = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        usersVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (HashMap.put keysAndValues (UserRoleData.nAME) (jio (UserRole.toString userRole)))
        usersHashMapVector <- (AbSqlBean.getRows_super this.base keysAndValues)
        size <- (BasicArrayList.size usersHashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userHashMap = (javaCast (jio (BasicArrayList.get usersHashMapVector index)) :: HashMap.HashMap)
            when (userHashMap /= javaNull) $ do
                Control.Monad.void (jio (BasicArrayList.add usersVector (jio (User.new_1 userHashMap))))
        pure (usersVector)


-- throws Exception
getUsers :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers object_ a1 = jmethod object_ "getUsers" (\() -> (getUsers_impl (javaCast object_ :: UserEntity))) () a1

getUsers_super :: (JavaObjectClass this_) => this_ -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers_super object_ a1 = (getUsers_impl (javaCast object_ :: UserEntity)) a1

getUsers_impl :: UserEntity -> StoreFrontInterface.StoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getUsers_impl this storeFrontInterface = do
        keysAndValues <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        usersVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (HashMap.put keysAndValues (jget ((jio (StoreFrontData.getInstance))).nAME) (jio (StoreFrontInterface.getName storeFrontInterface)))
        usersHashMapVector <- (AbSqlBean.getRows_super this.base keysAndValues)
        size <- (BasicArrayList.size usersHashMapVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userHashMap = (javaCast (jio (BasicArrayList.get usersHashMapVector index)) :: HashMap.HashMap)
            when (userHashMap /= javaNull) $ do
                Control.Monad.void (jio (BasicArrayList.add usersVector (jio (User.new_1 userHashMap))))
        pure (usersVector)


-- throws Exception
getUser :: (JavaObjectClass this_) => this_ -> String -> IO (UserInterface.UserInterface)
getUser object_ a1 = jmethod object_ "getUser" (\() -> (getUser_impl (javaCast object_ :: UserEntity))) () a1

getUser_super :: (JavaObjectClass this_) => this_ -> String -> IO (UserInterface.UserInterface)
getUser_super object_ a1 = (getUser_impl (javaCast object_ :: UserEntity)) a1

getUser_impl :: UserEntity -> String -> IO (UserInterface.UserInterface)
getUser_impl this userName = do
    javaCatchReturn $ do
        row <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        Control.Monad.void (HashMap.put row (UserData.uSERNAME) userName)
        userHashMap <- (AbSqlBean.getRow_super this.base row)
        if (userHashMap /= javaNull) then do
            javaReturn =<< (CreateUserFactory.getInstance userHashMap)
        else do
            javaReturn (javaNull)


deleteWhere :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere object_ a1 a2 = jmethod object_ "deleteWhere" (\() -> (deleteWhere_impl (javaCast object_ :: UserEntity))) () a1 a2

deleteWhere_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
deleteWhere_super object_ a1 a2 = (deleteWhere_impl (javaCast object_ :: UserEntity)) a1 a2

deleteWhere_impl :: UserEntity -> String -> String -> IO (())
deleteWhere_impl this key value = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "deleteWhere" e)
            ) $ do
            Control.Monad.void (AbSqlBean.deleteWhere_super this.base key value)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).sUCCESS) this "deleteWhere")
        pure ()


login :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
login object_ a1 a2 = jmethod object_ "login" (\() -> (login_impl (javaCast object_ :: UserEntity))) () a1 a2

login_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (String)
login_super object_ a1 a2 = (login_impl (javaCast object_ :: UserEntity)) a1 a2

login_impl :: UserEntity -> String -> String -> IO (String)
login_impl this userName password = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.base.base.base.commonStrings)).fAILURE) this "login" e)
            pure ("Error")
            ) $ do
            isUserNameAndPasswordCorrect <- newIORef (0)
            result <- (AbSqlBean.getField_super this.base (UserData.uSERNAME) userName (UserData.pASSWORD))
            encryption <- (AbSqlBean.getField_super this.base (UserData.uSERNAME) userName (jget ((jio (EntryData.getInstance))).eNCRYPTION))
            if ((encryption /= javaNull) && ((Prelude.fromEnum (Prelude.compare encryption (jget ((jget (this).base.base.base.base.base.stringUtil)).eMPTY_STRING)) - 1) /= 0)) then do
                jset isUserNameAndPasswordCorrect ((Prelude.fromEnum (Prelude.compare result (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 (Prelude.fromIntegral (encryption) :: Int)))) password))) - 1))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (("Command Success but login failed for user: " ++ userName) ++ " because user did not exist") this "login")
                javaReturn (GLOBALS2.lOGINFAILED)
            if ((jget isUserNameAndPasswordCorrect) == 0) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).cOMMAND_SUCCESS_FOR_USER))
                    Control.Monad.void (StringMaker.append stringBuffer userName)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).pASSWORD_LABEL))
                    Control.Monad.void (StringMaker.append stringBuffer password)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).eQUALS))
                    Control.Monad.void (StringMaker.append stringBuffer result)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "login")
                javaReturn (GLOBALS2.lOGINSUCCESS)
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    stringBuffer <- (StringMaker.new_)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).cOMMAND_SUCCESS_BUT_LOGIN_FAILED))
                    Control.Monad.void (StringMaker.append stringBuffer userName)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).iNVALID_PASSWORD_LABEL))
                    Control.Monad.void (StringMaker.append stringBuffer (jio (SuperCrypt.encrypt ((jio (SuperCrypt.new_1 (Prelude.fromIntegral (encryption) :: Int)))) password)))
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).nOT_EQUAL))
                    Control.Monad.void (StringMaker.append stringBuffer result)
                    Control.Monad.void (StringMaker.append stringBuffer (jget (this).eND_QUOTES))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "login")
                javaReturn (GLOBALS2.lOGINFAILED)


update :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update object_ a1 a2 = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: UserEntity))) () a1 a2

update_super :: (JavaObjectClass this_) => this_ -> String -> HashMap.HashMap -> IO (())
update_super object_ a1 a2 = (update_impl (javaCast object_ :: UserEntity)) a1 a2

update_impl :: UserEntity -> String -> HashMap.HashMap -> IO (())
update_impl this userName updatedValues = do
        Control.Monad.void (AbSqlBean.updateWhere_super this.base (UserData.uSERNAME) userName updatedValues)
        pure ()


dropTables :: (JavaObjectClass this_) => this_ -> IO (String)
dropTables object_ = jmethod object_ "dropTables" (\() -> (dropTables_impl (javaCast object_ :: UserEntity))) ()

dropTables_super :: (JavaObjectClass this_) => this_ -> IO (String)
dropTables_super object_ = (dropTables_impl (javaCast object_ :: UserEntity))

dropTables_impl :: UserEntity -> IO (String)
dropTables_impl this = do
        (AbSqlBean.dropTable_super this.base)


createTableStatement :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement object_ = jmethod object_ "createTableStatement" (\() -> (createTableStatement_impl (javaCast object_ :: UserEntity))) ()

createTableStatement_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTableStatement_super object_ = (createTableStatement_impl (javaCast object_ :: UserEntity))

createTableStatement_impl :: UserEntity -> IO (String)
createTableStatement_impl this = do
        entryData <- (EntryData.getInstance)
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append stringBuffer (jget ((jget (this).base.base.base.base.base.sqlStrings)).cREATE_TABLE)))) (jget this.tableName)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).sTART)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (UserData.pREFIXNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.fIRSTNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.lASTNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.mIDDLENAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.sUFFIXNAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.cOMPANY)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.pOSITIONATCOMPANY)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.mAINEMAIL)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (UserData.sECONDARYEMAIL)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.hOMEPHONE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.cELLPHONE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.wORKPHONE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.oTHERCONTACT)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.eLECTRONICDEVICE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.fAX)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserRoleData.nAME)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (UserData.cONFIGURATION)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).bLOB_NOT_NULL)))) (UserData.pERMISSIONS)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (jget (entryData).eNCRYPTION)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (UserData.sECRET)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (UserData.pASSWORD)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN_NOT_NULL)))) (jget (entryData).eNABLE)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_CHAR_COLUMN)))) (jget (entryData).tIMECREATED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget (entryData).lASTMODIFIED)))) (jget ((jget (this).base.base.base.base.base.sqlTypeStrings)).mAX_BIG_INT_UNSIGNED_NOT_NULL)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).pRIMARY_KEY)))) (UserData.uSERNAME)))) (jget ((jget (this).base.base.base.base.base.sqlStrings)).eND))
        (StringMaker.toString stringBuffer)


createTable :: (JavaObjectClass this_) => this_ -> IO (String)
createTable object_ = jmethod object_ "createTable" (\() -> (createTable_impl (javaCast object_ :: UserEntity))) ()

createTable_super :: (JavaObjectClass this_) => this_ -> IO (String)
createTable_super object_ = (createTable_impl (javaCast object_ :: UserEntity))

createTable_impl :: UserEntity -> IO (String)
createTable_impl this = do
        (AbSqlBean.createTable_super this.base (jio (UserEntity.createTableStatement this)))


