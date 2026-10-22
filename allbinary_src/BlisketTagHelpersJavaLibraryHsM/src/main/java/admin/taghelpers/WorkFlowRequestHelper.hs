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
-- package admin.taghelpers
module WorkFlowRequestHelper (module WorkFlowRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, delete, delete_super, delete_impl, insert, insert_super, insert_impl, update, update_super, update_impl, logUtil, abeClientInformation, workFlowInterface)
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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified WorkFlowEntityFactory -- org.allbinary.data.tables.workflow.WorkFlowEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified NewWorkFlowFactory -- org.allbinary.logic.control.workflow.NewWorkFlowFactory
import qualified WorkFlowData -- org.allbinary.logic.control.workflow.WorkFlowData
import qualified WorkFlowInterface -- org.allbinary.logic.control.workflow.WorkFlowInterface
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified ModifyTable

data WorkFlowRequestHelper = WorkFlowRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , workFlowInterface :: IORef (WorkFlowInterface.WorkFlowInterface)
    }

instance JavaNull WorkFlowRequestHelper where
    javaNull = javaNullRecord "WorkFlowRequestHelper"

instance JavaEquals WorkFlowRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WorkFlowRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass WorkFlowRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO WorkFlowRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    workFlowInterface <- newIORef javaNull
    let this = WorkFlowRequestHelper header_ base logUtil abeClientInformation workFlowInterface
    jregisterLevel header_ this
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: WorkFlowRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.workFlowInterface (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO WorkFlowRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: WorkFlowRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        assignedValue <- (NewWorkFlowFactory.getInstance_3 ((jio (NewWorkFlowFactory.getInstance))) (jget (this).abeClientInformation) hashMap pageContext)
        jset (this).workFlowInterface (assignedValue)
        pure ()


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: WorkFlowRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: WorkFlowRequestHelper))

delete_impl :: WorkFlowRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            handle (\(e2 :: JavaException) -> do
                let error = "Failed to get data from workflowinterface to set error string"
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e2)
                pure (error)
                ) $ do
                let error = (((("Failed to remove workflow with " ++ javaToString (jget ((jio (WorkFlowData.getInstance))).nAME)) ++ "= ") ++ (jio (WorkFlowInterface.getName ((jget (this).workFlowInterface))))) ++ " from ")
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
                javaThrow ((JavaException "Exception" e))
            ) $ do
            stringUtil <- (StringUtil.getInstance)
            Control.Monad.void (WorkFlowEntity.delete ((jio (WorkFlowEntityFactory.create2 ((jio (WorkFlowEntityFactory.getInstance)))))) (jio (WorkFlowInterface.getName ((jget (this).workFlowInterface)))) (jget (stringUtil).eMPTY_STRING))
            let success = (((("Successfully Removed the workflow with " ++ javaToString (jget ((jio (WorkFlowData.getInstance))).nAME)) ++ "= ") ++ (jio (WorkFlowInterface.getName ((jget (this).workFlowInterface))))) ++ " from ")
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: WorkFlowRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: WorkFlowRequestHelper))

insert_impl :: WorkFlowRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add User"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "add()" e)
            pure (error)
            ) $ do
            let success = "New User Successfully added to the Users Table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "add()")
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: WorkFlowRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: WorkFlowRequestHelper))

update_impl :: WorkFlowRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to update WorkFlow"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Updated WorkFlow Successfully"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure (success)


