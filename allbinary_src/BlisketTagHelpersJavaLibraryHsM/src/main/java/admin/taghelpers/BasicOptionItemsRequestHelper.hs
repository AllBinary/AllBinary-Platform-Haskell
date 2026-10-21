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
module BasicOptionItemsRequestHelper (module BasicOptionItemsRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, getHashMap, getHashMap_super, getHashMap_impl, insert, insert_super, insert_impl, delete, delete_super, delete_impl, update, update_super, update_impl, logUtil, basicItemData, request, id, optionOneTitle, defaultOptionItem, defaultOptionValue, optionItem, optionValue, timeEntered, lastModified)
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
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified BasicOptionItemData -- org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData
import qualified BasicOptionItemsEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified ModifyTable

data BasicOptionItemsRequestHelper = BasicOptionItemsRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , id :: IORef (String)
    , optionOneTitle :: IORef (String)
    , defaultOptionItem :: IORef (String)
    , defaultOptionValue :: IORef (String)
    , optionItem :: IORef (BasicArrayList.BasicArrayList)
    , optionValue :: IORef (BasicArrayList.BasicArrayList)
    , timeEntered :: IORef (String)
    , lastModified :: IORef (String)
    }

instance JavaNull BasicOptionItemsRequestHelper where
    javaNull = javaNullRecord "BasicOptionItemsRequestHelper"

instance JavaEquals BasicOptionItemsRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicOptionItemsRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass BasicOptionItemsRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasicOptionItemsRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    request <- newIORef javaNull
    id <- newIORef ""
    optionOneTitle <- newIORef ""
    defaultOptionItem <- newIORef ""
    defaultOptionValue <- newIORef ""
    optionItem <- newIORef javaNull
    optionValue <- newIORef javaNull
    timeEntered <- newIORef ""
    lastModified <- newIORef ""
    let this = BasicOptionItemsRequestHelper header_ base logUtil basicItemData request id optionOneTitle defaultOptionItem defaultOptionValue optionItem optionValue timeEntered lastModified
    jregisterLevel header_ this
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "getHashMap" (\() -> getHashMap_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: BasicOptionItemsRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    jset this.request (javaNull)
    jset this.id ("")
    jset this.optionOneTitle ("")
    jset this.defaultOptionItem ("")
    jset this.defaultOptionValue ("")
    jset this.optionItem (javaNull)
    jset this.optionValue (javaNull)
    jset this.timeEntered ("")
    jset this.lastModified ("")
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO BasicOptionItemsRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: BasicOptionItemsRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        Control.Monad.void (BasicOptionItemsRequestHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: BasicOptionItemsRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: BasicOptionItemsRequestHelper))

getFormData_impl :: BasicOptionItemsRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).optionItem (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).optionValue (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jget this.basicItemData)).iD))
        jset (this).id (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_TITLE))
        jset (this).optionOneTitle (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.dEFAULT_OPTION_ITEM))
        jset (this).defaultOptionItem (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.dEFAULT_OPTION_VALUE))
        jset (this).defaultOptionValue (assignedValue)
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_ONE_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_ONE_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_TWO_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_TWO_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_THREE_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_THREE_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_FOUR_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_FOUR_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_FIVE_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_FIVE_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_SIX_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_SIX_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_SEVEN_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_SEVEN_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_EIGHT_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_EIGHT_VALUE))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionItem)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_NINE_ITEM))))
        Control.Monad.void (BasicArrayList.add ((jget (this).optionValue)) (jio (HttpServletRequest.getParameter ((jget (this).request)) (BasicOptionItemData.oPTION_ONE_NINE_VALUE))))
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (EntryData.getInstance))).tIMECREATED))
        jset (this).timeEntered (assignedValue)
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (EntryData.getInstance))).lASTMODIFIED))
        jset (this).lastModified (assignedValue)
        pure ()


getHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap object_ = jmethod object_ "getHashMap" (\() -> (getHashMap_impl (javaCast object_ :: BasicOptionItemsRequestHelper))) ()

getHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getHashMap_super object_ = (getHashMap_impl (javaCast object_ :: BasicOptionItemsRequestHelper))

getHashMap_impl :: BasicOptionItemsRequestHelper -> IO (HashMap.HashMap)
getHashMap_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put values (jget ((jget this.basicItemData)).iD) (jget this.id))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_ONE_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 0)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_ONE_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 0)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_TWO_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 1)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_TWO_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 1)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_THREE_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 2)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_THREE_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 2)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_FOUR_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 3)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_FOUR_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 3)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_FIVE_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 4)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_FIVE_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 4)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_SIX_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 5)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_SIX_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 5)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_SEVEN_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 6)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_SEVEN_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 6)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_EIGHT_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 7)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_EIGHT_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 7)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_NINE_ITEM) (jio (BasicArrayList.get ((jget (this).optionItem)) 8)))
        Control.Monad.void (HashMap.put values (BasicOptionItemData.oPTION_ONE_NINE_VALUE) (jio (BasicArrayList.get ((jget (this).optionValue)) 8)))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (values)


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: BasicOptionItemsRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: BasicOptionItemsRequestHelper))

insert_impl :: BasicOptionItemsRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = (("Failed to insert " ++ (jget (this).id)) ++ " into items table")
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "inserts()" e)
            pure (error)
            ) $ do
            calendar <- (Calendar.getInstance)
            time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
            values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            Control.Monad.void (BasicArrayList.add values (jget (this).id))
            size <- (BasicArrayList.size ((jget (this).optionValue)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                Control.Monad.void (BasicArrayList.add values (jio (BasicArrayList.get ((jget (this).optionValue)) index)))
                Control.Monad.void (BasicArrayList.add values (jio (BasicArrayList.get ((jget (this).optionItem)) index)))
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (BasicArrayList.add values time)
            Control.Monad.void (BasicOptionItemsEntity.insert ((jio (BasicOptionItemsEntityFactory.getBasicOptionItemsEntityInstance ((jio (BasicOptionItemsEntityFactory.getInstance)))))) values)
            let success = (("Successfully inserted " ++ (jget (this).id)) ++ " into items table")
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: BasicOptionItemsRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: BasicOptionItemsRequestHelper))

delete_impl :: BasicOptionItemsRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to delete"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
            pure (error)
            ) $ do
            Control.Monad.void (BasicOptionItemsEntity.delete ((jio (BasicOptionItemsEntityFactory.getBasicOptionItemsEntityInstance ((jio (BasicOptionItemsEntityFactory.getInstance)))))) (jget (this).id))
            let success = "Successfully deleted"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: BasicOptionItemsRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: BasicOptionItemsRequestHelper))

update_impl :: BasicOptionItemsRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = ("Failed to update: " ++ (jget (this).id))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "Update Pricing Successful"
            values <- (BasicOptionItemsRequestHelper.getHashMap this)
            Control.Monad.void (BasicOptionItemsEntity.update ((jio (BasicOptionItemsEntityFactory.getBasicOptionItemsEntityInstance ((jio (BasicOptionItemsEntityFactory.getInstance)))))) values)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) (jget (this).id)))) (jget ((jio (CommonSeps.getInstance))).sPACE)))) success))))) this "update()")
            pure (success)


