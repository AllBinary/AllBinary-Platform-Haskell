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
-- package org.allbinary.business.user.quoterequest
module QuoteRequest where

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
import qualified Calendar -- java.util.Calendar
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified QuoteRequestData -- org.allbinary.business.quoterequest.QuoteRequestData
import qualified UserData -- org.allbinary.business.user.UserData
import qualified QuoteRequestIdGenerator -- org.allbinary.data.generator.QuoteRequestIdGenerator
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbSqlData -- org.allbinary.logic.communication.sql.AbSqlData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data QuoteRequest = QuoteRequest
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , id :: IORef (String)
    , userName :: IORef (String)
    , projectInfo :: IORef (String)
    , userComments :: IORef (String)
    , budget :: IORef (String)
    , timeFrame :: IORef (String)
    , comments :: IORef (String)
    }

instance JavaNull QuoteRequest where
    javaNull = javaNullRecord "QuoteRequest"

instance JavaEquals QuoteRequest where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq QuoteRequest where
    (==) = jrecordEquals

instance JavaObjectClass QuoteRequest where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO QuoteRequest
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    id <- newIORef ""
    userName <- newIORef ""
    projectInfo <- newIORef ""
    userComments <- newIORef ""
    budget <- newIORef ""
    timeFrame <- newIORef ""
    comments <- newIORef ""
    let this = QuoteRequest header_ logUtil commonStrings id userName projectInfo userComments budget timeFrame comments
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toVector" (\() -> toVector_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "setUserName" (\() -> setUserName_impl this)
    jregisterMethod header_ "setProjectInfo" (\() -> setProjectInfo_impl this)
    jregisterMethod header_ "setUserComments" (\() -> setUserComments_impl this)
    jregisterMethod header_ "setBudget" (\() -> setBudget_impl this)
    jregisterMethod header_ "setTimeFrame" (\() -> setTimeFrame_impl this)
    jregisterMethod header_ "setComments" (\() -> setComments_impl this)
    jregisterMethod header_ "getUserName" (\() -> getUserName_impl this)
    jregisterMethod header_ "getProjectInfo" (\() -> getProjectInfo_impl this)
    jregisterMethod header_ "getUserComments" (\() -> getUserComments_impl this)
    jregisterMethod header_ "getBudget" (\() -> getBudget_impl this)
    jregisterMethod header_ "getTimeFrame" (\() -> getTimeFrame_impl this)
    jregisterMethod header_ "getComments" (\() -> getComments_impl this)
    pure this

initFields_ :: QuoteRequest -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.id (javaNull)
    jset this.userName ("")
    jset this.projectInfo ("")
    jset this.userComments ("")
    jset this.budget ("")
    jset this.timeFrame ("")
    jset this.comments ("")
    pure ()

new_2 :: String -> HttpServletRequest.HttpServletRequest -> IO QuoteRequest
new_2 userName request = do
    this <- newRecord_
    init_2 this userName request
    pure this

init_2 :: QuoteRequest -> String -> HttpServletRequest.HttpServletRequest -> IO ()
init_2 this userName request = do
        initFields_ this
        quoteRequestData <- (QuoteRequestData.getInstance)
        assignedValue <- (QuoteRequestIdGenerator.getNext ((jio (QuoteRequestIdGenerator.new_))))
        jset (this).id (assignedValue)
        Control.Monad.void (QuoteRequest.setUserName this userName)
        Control.Monad.void (QuoteRequest.setProjectInfo this (javaCast (jio (HttpServletRequest.getParameter request (jget (quoteRequestData).pROJECT_INFO))) :: String))
        Control.Monad.void (QuoteRequest.setUserComments this (javaCast (jio (HttpServletRequest.getParameter request (jget (quoteRequestData).cUSTOMER_COMMENTS))) :: String))
        Control.Monad.void (QuoteRequest.setBudget this (javaCast (jio (HttpServletRequest.getParameter request (jget (quoteRequestData).bUDGET))) :: String))
        Control.Monad.void (QuoteRequest.setTimeFrame this (javaCast (jio (HttpServletRequest.getParameter request (jget (quoteRequestData).tIMEFRAME))) :: String))
        Control.Monad.void (QuoteRequest.setComments this (javaCast (jio (HttpServletRequest.getParameter request (jget (quoteRequestData).cOMMENTS))) :: String))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created with: " ++ javaToString (jio (QuoteRequest.toHashMap this))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()

new_1 :: HashMap.HashMap -> IO QuoteRequest
new_1 hashMap = do
    this <- newRecord_
    init_1 this hashMap
    pure this

init_1 :: QuoteRequest -> HashMap.HashMap -> IO ()
init_1 this hashMap = do
        initFields_ this
        quoteRequestData <- (QuoteRequestData.getInstance)
        jset (this).id ((javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).iD))) :: String))
        Control.Monad.void (QuoteRequest.setUserName this (javaCast (jio (HashMap.get hashMap (UserData.uSERNAME))) :: String))
        Control.Monad.void (QuoteRequest.setProjectInfo this (javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).pROJECT_INFO))) :: String))
        Control.Monad.void (QuoteRequest.setUserComments this (javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).cUSTOMER_COMMENTS))) :: String))
        Control.Monad.void (QuoteRequest.setBudget this (javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).bUDGET))) :: String))
        Control.Monad.void (QuoteRequest.setTimeFrame this (javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).tIMEFRAME))) :: String))
        Control.Monad.void (QuoteRequest.setComments this (javaCast (jio (HashMap.get hashMap (jget (quoteRequestData).cOMMENTS))) :: String))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Created with: " ++ javaToString (jio (QuoteRequest.toHashMap this))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: QuoteRequest))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: QuoteRequest))

isValid_impl :: QuoteRequest -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate form" this (jget ((jget (this).commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            valid <- newIORef (True)
            when ((((jget (this).userName) == javaNull) || ((Prelude.length (jget (this).userName)) < 4)) || ((Prelude.length (jget (this).userName)) > 250)) $ do
                jset valid (False)
            when ((((jget (this).projectInfo) == javaNull) || ((Prelude.length (jget (this).projectInfo)) < 0)) || ((Prelude.length (jget (this).projectInfo)) > AbSqlData.mAXBLOB)) $ do
                jset valid (False)
            when ((((jget (this).userComments) == javaNull) || ((Prelude.length (jget (this).userComments)) < 0)) || ((Prelude.length (jget (this).userComments)) > AbSqlData.mAXBLOB)) $ do
                jset valid (False)
            when ((((jget (this).budget) == javaNull) || ((Prelude.length (jget (this).budget)) < 0)) || ((Prelude.length (jget (this).budget)) > AbSqlData.mAXBLOB)) $ do
                jset valid (False)
            when ((((jget (this).timeFrame) == javaNull) || ((Prelude.length (jget (this).timeFrame)) < 0)) || ((Prelude.length (jget (this).timeFrame)) > AbSqlData.mAXBLOB)) $ do
                jset valid (False)
            when ((((jget (this).comments) == javaNull) || ((Prelude.length (jget (this).comments)) < 0)) || ((Prelude.length (jget (this).comments)) > AbSqlData.mAXBLOB)) $ do
                jset valid (False)
            pure ((jget valid))


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: QuoteRequest))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: QuoteRequest))

validationInfo_impl :: QuoteRequest -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Validating Form")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when ((((jget (this).userName) == javaNull) || ((Prelude.length (jget (this).userName)) < 4)) || ((Prelude.length (jget (this).userName)) > 250)) $ do
                Control.Monad.void (StringMaker.append stringBuffer "Please enter a User Name with more than 4 characters.<br>")
            when ((((jget (this).projectInfo) == javaNull) || ((Prelude.length (jget (this).projectInfo)) < 0)) || ((Prelude.length (jget (this).projectInfo)) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Please enter Project Info with less than " ++ javaToString AbSqlData.mAXBLOB) ++ " characters.<br>"))
            when ((((jget (this).userComments) == javaNull) || ((Prelude.length (jget (this).userComments)) < 0)) || ((Prelude.length (jget (this).userComments)) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Please enter User Comments with less than " ++ javaToString AbSqlData.mAXBLOB) ++ " characters.<br>"))
            when ((((jget (this).budget) == javaNull) || ((Prelude.length (jget (this).budget)) < 0)) || ((Prelude.length (jget (this).budget)) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Please enter Budget with less than " ++ javaToString AbSqlData.mAXBLOB) ++ " characters.<br>"))
            when ((((jget (this).timeFrame) == javaNull) || ((Prelude.length (jget (this).timeFrame)) < 0)) || ((Prelude.length (jget (this).timeFrame)) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Please enter time frame with less than " ++ javaToString AbSqlData.mAXBLOB) ++ " characters.<br>"))
            when ((((jget (this).comments) == javaNull) || ((Prelude.length (jget (this).comments)) < 0)) || ((Prelude.length (jget (this).comments)) > AbSqlData.mAXBLOB)) $ do
                Control.Monad.void (StringMaker.append stringBuffer (("Please enter comments with less than " ++ javaToString AbSqlData.mAXBLOB) ++ " characters.<br>"))
            (StringMaker.toString stringBuffer)


toVector :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector object_ = jmethod object_ "toVector" (\() -> (toVector_impl (javaCast object_ :: QuoteRequest))) ()

toVector_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
toVector_super object_ = (toVector_impl (javaCast object_ :: QuoteRequest))

toVector_impl :: QuoteRequest -> IO (BasicArrayList.BasicArrayList)
toVector_impl this = do
        values <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add values (jget (this).id))
        Control.Monad.void (BasicArrayList.add values (jget (this).userName))
        Control.Monad.void (BasicArrayList.add values (jget (this).projectInfo))
        Control.Monad.void (BasicArrayList.add values (jget (this).userComments))
        Control.Monad.void (BasicArrayList.add values (jget (this).budget))
        Control.Monad.void (BasicArrayList.add values (jget (this).timeFrame))
        Control.Monad.void (BasicArrayList.add values (jget (this).comments))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (BasicArrayList.add values time)
        Control.Monad.void (BasicArrayList.add values time)
        pure (values)


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: QuoteRequest))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: QuoteRequest))

toHashMap_impl :: QuoteRequest -> IO (HashMap.HashMap)
toHashMap_impl this = do
        quoteRequestData <- (QuoteRequestData.getInstance)
        values <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put values (UserData.uSERNAME) (jget this.userName))
        Control.Monad.void (HashMap.put values (jget (quoteRequestData).pROJECT_INFO) (jget (this).projectInfo))
        Control.Monad.void (HashMap.put values (jget (quoteRequestData).cUSTOMER_COMMENTS) (jget (this).userComments))
        Control.Monad.void (HashMap.put values (jget (quoteRequestData).bUDGET) (jget (this).budget))
        Control.Monad.void (HashMap.put values (jget (quoteRequestData).tIMEFRAME) (jget (this).timeFrame))
        Control.Monad.void (HashMap.put values (jget (quoteRequestData).cOMMENTS) (jget (this).comments))
        calendar <- (Calendar.getInstance)
        time <- (jnewString (javaToString (Prelude.fromIntegral ((jio (Calendar.getTimeInMillis calendar))) :: Int64)))
        Control.Monad.void (HashMap.put values (jget ((jio (EntryData.getInstance))).lASTMODIFIED) time)
        pure (values)


setUserName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName object_ a1 = jmethod object_ "setUserName" (\() -> (setUserName_impl (javaCast object_ :: QuoteRequest))) () a1

setUserName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserName_super object_ a1 = (setUserName_impl (javaCast object_ :: QuoteRequest)) a1

setUserName_impl :: QuoteRequest -> String -> IO (())
setUserName_impl this value = do
        jset (this).userName (value)
        pure ()


setProjectInfo :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProjectInfo object_ a1 = jmethod object_ "setProjectInfo" (\() -> (setProjectInfo_impl (javaCast object_ :: QuoteRequest))) () a1

setProjectInfo_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setProjectInfo_super object_ a1 = (setProjectInfo_impl (javaCast object_ :: QuoteRequest)) a1

setProjectInfo_impl :: QuoteRequest -> String -> IO (())
setProjectInfo_impl this value = do
        jset (this).projectInfo (value)
        pure ()


setUserComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments object_ a1 = jmethod object_ "setUserComments" (\() -> (setUserComments_impl (javaCast object_ :: QuoteRequest))) () a1

setUserComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments_super object_ a1 = (setUserComments_impl (javaCast object_ :: QuoteRequest)) a1

setUserComments_impl :: QuoteRequest -> String -> IO (())
setUserComments_impl this value = do
        jset (this).userComments (value)
        pure ()


setBudget :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBudget object_ a1 = jmethod object_ "setBudget" (\() -> (setBudget_impl (javaCast object_ :: QuoteRequest))) () a1

setBudget_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setBudget_super object_ a1 = (setBudget_impl (javaCast object_ :: QuoteRequest)) a1

setBudget_impl :: QuoteRequest -> String -> IO (())
setBudget_impl this value = do
        jset (this).budget (value)
        pure ()


setTimeFrame :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeFrame object_ a1 = jmethod object_ "setTimeFrame" (\() -> (setTimeFrame_impl (javaCast object_ :: QuoteRequest))) () a1

setTimeFrame_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTimeFrame_super object_ a1 = (setTimeFrame_impl (javaCast object_ :: QuoteRequest)) a1

setTimeFrame_impl :: QuoteRequest -> String -> IO (())
setTimeFrame_impl this value = do
        jset (this).timeFrame (value)
        pure ()


setComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComments object_ a1 = jmethod object_ "setComments" (\() -> (setComments_impl (javaCast object_ :: QuoteRequest))) () a1

setComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setComments_super object_ a1 = (setComments_impl (javaCast object_ :: QuoteRequest)) a1

setComments_impl :: QuoteRequest -> String -> IO (())
setComments_impl this value = do
        jset (this).comments (value)
        stringUtil <- (StringUtil.getInstance)
        when ((jget (this).comments) == javaNull) $ do
            jset (this).comments ((jget (stringUtil).eMPTY_STRING))
        pure ()


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: QuoteRequest))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: QuoteRequest))

getUserName_impl :: QuoteRequest -> IO (String)
getUserName_impl this = do
        pure ((jget (this).userName))


getProjectInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getProjectInfo object_ = jmethod object_ "getProjectInfo" (\() -> (getProjectInfo_impl (javaCast object_ :: QuoteRequest))) ()

getProjectInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getProjectInfo_super object_ = (getProjectInfo_impl (javaCast object_ :: QuoteRequest))

getProjectInfo_impl :: QuoteRequest -> IO (String)
getProjectInfo_impl this = do
        pure ((jget (this).projectInfo))


getUserComments :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments object_ = jmethod object_ "getUserComments" (\() -> (getUserComments_impl (javaCast object_ :: QuoteRequest))) ()

getUserComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments_super object_ = (getUserComments_impl (javaCast object_ :: QuoteRequest))

getUserComments_impl :: QuoteRequest -> IO (String)
getUserComments_impl this = do
        pure ((jget (this).userComments))


getBudget :: (JavaObjectClass this_) => this_ -> IO (String)
getBudget object_ = jmethod object_ "getBudget" (\() -> (getBudget_impl (javaCast object_ :: QuoteRequest))) ()

getBudget_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBudget_super object_ = (getBudget_impl (javaCast object_ :: QuoteRequest))

getBudget_impl :: QuoteRequest -> IO (String)
getBudget_impl this = do
        pure ((jget (this).budget))


getTimeFrame :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeFrame object_ = jmethod object_ "getTimeFrame" (\() -> (getTimeFrame_impl (javaCast object_ :: QuoteRequest))) ()

getTimeFrame_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeFrame_super object_ = (getTimeFrame_impl (javaCast object_ :: QuoteRequest))

getTimeFrame_impl :: QuoteRequest -> IO (String)
getTimeFrame_impl this = do
        pure ((jget (this).timeFrame))


getComments :: (JavaObjectClass this_) => this_ -> IO (String)
getComments object_ = jmethod object_ "getComments" (\() -> (getComments_impl (javaCast object_ :: QuoteRequest))) ()

getComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getComments_super object_ = (getComments_impl (javaCast object_ :: QuoteRequest))

getComments_impl :: QuoteRequest -> IO (String)
getComments_impl this = do
        pure ((jget (this).comments))


