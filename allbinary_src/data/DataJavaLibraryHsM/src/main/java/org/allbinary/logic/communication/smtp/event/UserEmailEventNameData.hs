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
-- package org.allbinary.logic.communication.smtp.event
module UserEmailEventNameData where

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
import qualified HashMap -- java.util.HashMap
import qualified OrderHistoryData -- org.allbinary.business.user.commerce.inventory.order.OrderHistoryData
import qualified StdUtil -- org.allbinary.logic.StdUtil

data UserEmailEventNameData = UserEmailEventNameData
    { header_ :: JavaHeader
    , eventNameId :: IORef (Int)
    , eventHandlerName :: IORef (String)
    }

instance JavaNull UserEmailEventNameData where
    javaNull = javaNullRecord "UserEmailEventNameData"

instance JavaEquals UserEmailEventNameData where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserEmailEventNameData where
    (==) = jrecordEquals

instance JavaObjectClass UserEmailEventNameData where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE userNameEvenNameHashMap #-}
userNameEvenNameHashMap = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance))))) >>= newIORef)

{-# NOINLINE nextId #-}
nextId = unsafePerformIO (newIORef (0))

{-# NOINLINE iNSTALLER #-}
iNSTALLER = unsafePerformIO ((new_1 "Installer"))

{-# NOINLINE eXCEPTION #-}
eXCEPTION = unsafePerformIO ((new_1 "Exception"))

{-# NOINLINE lOGGEDEXCEPTION #-}
lOGGEDEXCEPTION = unsafePerformIO ((new_1 "Logged Exception"))

{-# NOINLINE eRROR #-}
eRROR = unsafePerformIO ((new_1 "Error"))

{-# NOINLINE oUTOFMEMORY #-}
oUTOFMEMORY = unsafePerformIO ((new_1 "Out Of Memory Error"))

{-# NOINLINE aDMINGENERATINGSTATICPAGES #-}
aDMINGENERATINGSTATICPAGES = unsafePerformIO ((new_1 "Admin Generating Static Pages"))

{-# NOINLINE sTOREERROROCCURRED #-}
sTOREERROROCCURRED = unsafePerformIO ((new_1 "Store Error Occurred"))

{-# NOINLINE sTOREOUTOFMEMORY #-}
sTOREOUTOFMEMORY = unsafePerformIO ((new_1 "Store Out Of Memory Error"))

{-# NOINLINE sTORECREATED #-}
sTORECREATED = unsafePerformIO ((new_1 "Store Created"))

{-# NOINLINE sTOREOPENED #-}
sTOREOPENED = unsafePerformIO ((new_1 "Store Opened"))

{-# NOINLINE sTORECLOSED #-}
sTORECLOSED = unsafePerformIO ((new_1 "Store Closed"))

{-# NOINLINE sTOREGENERATINGSTATICPAGES #-}
sTOREGENERATINGSTATICPAGES = unsafePerformIO ((new_1 "Store Generating Static Pages"))

{-# NOINLINE pRODUCTISOUT #-}
pRODUCTISOUT = unsafePerformIO ((new_1 "Product Is Out"))

{-# NOINLINE pRODUCTISAVAILABLE #-}
pRODUCTISAVAILABLE = unsafePerformIO ((new_1 "Product Is Available"))

{-# NOINLINE pRODUCTISOLD #-}
pRODUCTISOLD = unsafePerformIO ((new_1 "Product Is Old"))

{-# NOINLINE pRODUCTISONSALE #-}
pRODUCTISONSALE = unsafePerformIO ((new_1 "Product Is On Sale"))

{-# NOINLINE pRODUCTSALEISOVER #-}
pRODUCTSALEISOVER = unsafePerformIO ((new_1 "Product Sale Is Over"))

{-# NOINLINE oRDERPREPROCESSING #-}
oRDERPREPROCESSING = unsafePerformIO ((new_1 (OrderHistoryData.pREPROCESSING)))

{-# NOINLINE oRDERPROCESSING #-}
oRDERPROCESSING = unsafePerformIO ((new_1 (OrderHistoryData.pROCESSING)))

{-# NOINLINE oRDERCANCELLED #-}
oRDERCANCELLED = unsafePerformIO ((new_1 (OrderHistoryData.cANCELLED)))

{-# NOINLINE oRDERPARTIALLYSHIPPED #-}
oRDERPARTIALLYSHIPPED = unsafePerformIO ((new_1 (OrderHistoryData.pARTIALLYSHIPPED)))

{-# NOINLINE oRDERSHIPPED #-}
oRDERSHIPPED = unsafePerformIO ((new_1 (OrderHistoryData.sHIPPED)))

{-# NOINLINE qUOTEREQUEST #-}
qUOTEREQUEST = unsafePerformIO ((new_1 "Quote Request"))

{-# NOINLINE nEWPASSWORD #-}
nEWPASSWORD = unsafePerformIO ((new_1 "New Password"))

newRecord_ :: IO UserEmailEventNameData
newRecord_ = do
    header_ <- newJavaHeader
    eventNameId <- newIORef 0
    eventHandlerName <- newIORef ""
    let this = UserEmailEventNameData header_ eventNameId eventHandlerName
    jregisterLevel header_ this
    jregisterMethod header_ "initNextId" (\() -> initNextId_impl this)
    jregisterMethod header_ "isEvent" (\() -> isEvent_impl this)
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    pure this

initFields_ :: UserEmailEventNameData -> IO ()
initFields_ this = do
    jset this.eventNameId (0)
    jset this.eventHandlerName (javaNull)
    pure ()

new_1 :: String -> IO UserEmailEventNameData
new_1 eventHandlerName = do
    this <- newRecord_
    init_1 this eventHandlerName
    pure this

init_1 :: UserEmailEventNameData -> String -> IO ()
init_1 this eventHandlerName = do
        initFields_ this
        jset (this).eventHandlerName (eventHandlerName)
        Control.Monad.void (UserEmailEventNameData.initNextId this)
        Control.Monad.void (put ((jget UserEmailEventNameData.userNameEvenNameHashMap)) (jget (this).eventHandlerName) this)
        pure ()


initNextId :: (JavaObjectClass this_) => this_ -> IO (())
initNextId object_ = jmethod object_ "initNextId" (\() -> (initNextId_impl (javaCast object_ :: UserEmailEventNameData))) ()

initNextId_super :: (JavaObjectClass this_) => this_ -> IO (())
initNextId_super object_ = (initNextId_impl (javaCast object_ :: UserEmailEventNameData))

initNextId_impl :: UserEmailEventNameData -> IO (())
initNextId_impl this = do
        jset (this).eventNameId ((jget UserEmailEventNameData.nextId))
        jset UserEmailEventNameData.nextId ((jget UserEmailEventNameData.nextId) + 1)
        pure ()


isEvent :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEvent object_ a1 = jmethod object_ "isEvent" (\() -> (isEvent_impl (javaCast object_ :: UserEmailEventNameData))) () a1

isEvent_super :: (JavaObjectClass this_) => this_ -> String -> IO (Bool)
isEvent_super object_ a1 = (isEvent_impl (javaCast object_ :: UserEmailEventNameData)) a1

isEvent_impl :: UserEmailEventNameData -> String -> IO (Bool)
isEvent_impl this userEmailEventNameString = do
        (containsKey ((jget UserEmailEventNameData.userNameEvenNameHashMap)) userEmailEventNameString)


-- throws Exception
getInstance :: String -> IO (UserEmailEventNameData)
getInstance userEmailEventNameString = do
    javaCatchReturn $ do
        let userEmailEventNameData = (javaCast (jio (get ((jget UserEmailEventNameData.userNameEvenNameHashMap)) userEmailEventNameString)) :: UserEmailEventNameData)
        if (userEmailEventNameData == javaNull) then do
            javaThrow ((JavaException "Exception" ""))
        else do
            javaReturn (userEmailEventNameData)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: UserEmailEventNameData))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: UserEmailEventNameData))

toString_impl :: UserEmailEventNameData -> IO (String)
toString_impl this = do
        pure ((jget (this).eventHandlerName))


