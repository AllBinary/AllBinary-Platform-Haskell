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
-- package org.allbinary.business.user.commerce.money.payment.gateway.transaction
module TransactionResultInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

-- Java interface: the classes that implement it have these functions
data TransactionResultInterface = TransactionResultInterface
    { header_ :: JavaHeader
    }

instance JavaNull TransactionResultInterface where
    javaNull = javaNullRecord "TransactionResultInterface"

instance JavaEquals TransactionResultInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionResultInterface where
    (==) = jrecordEquals

instance JavaObjectClass TransactionResultInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> TransactionResultInterface
fromHeader_ header = TransactionResultInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (TransactionResultInterface header)


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TransactionResultInterface))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TransactionResultInterface))

toString_impl :: TransactionResultInterface -> IO (String)
toString_impl this = javaAbstractMethod "toString"


getValues :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getValues object_ = jmethod object_ "getValues" (\() -> (getValues_impl (javaCast object_ :: TransactionResultInterface))) ()

getValues_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getValues_super object_ = (getValues_impl (javaCast object_ :: TransactionResultInterface))

getValues_impl :: TransactionResultInterface -> IO (BasicArrayList.BasicArrayList)
getValues_impl this = javaAbstractMethod "getValues"


getResult :: (JavaObjectClass this_) => this_ -> IO (String)
getResult object_ = jmethod object_ "getResult" (\() -> (getResult_impl (javaCast object_ :: TransactionResultInterface))) ()

getResult_super :: (JavaObjectClass this_) => this_ -> IO (String)
getResult_super object_ = (getResult_impl (javaCast object_ :: TransactionResultInterface))

getResult_impl :: TransactionResultInterface -> IO (String)
getResult_impl this = javaAbstractMethod "getResult"


getPnRef :: (JavaObjectClass this_) => this_ -> IO (String)
getPnRef object_ = jmethod object_ "getPnRef" (\() -> (getPnRef_impl (javaCast object_ :: TransactionResultInterface))) ()

getPnRef_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPnRef_super object_ = (getPnRef_impl (javaCast object_ :: TransactionResultInterface))

getPnRef_impl :: TransactionResultInterface -> IO (String)
getPnRef_impl this = javaAbstractMethod "getPnRef"


getRespMsg :: (JavaObjectClass this_) => this_ -> IO (String)
getRespMsg object_ = jmethod object_ "getRespMsg" (\() -> (getRespMsg_impl (javaCast object_ :: TransactionResultInterface))) ()

getRespMsg_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRespMsg_super object_ = (getRespMsg_impl (javaCast object_ :: TransactionResultInterface))

getRespMsg_impl :: TransactionResultInterface -> IO (String)
getRespMsg_impl this = javaAbstractMethod "getRespMsg"


getAvsAddr :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsAddr object_ = jmethod object_ "getAvsAddr" (\() -> (getAvsAddr_impl (javaCast object_ :: TransactionResultInterface))) ()

getAvsAddr_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsAddr_super object_ = (getAvsAddr_impl (javaCast object_ :: TransactionResultInterface))

getAvsAddr_impl :: TransactionResultInterface -> IO (String)
getAvsAddr_impl this = javaAbstractMethod "getAvsAddr"


getAvsZip :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsZip object_ = jmethod object_ "getAvsZip" (\() -> (getAvsZip_impl (javaCast object_ :: TransactionResultInterface))) ()

getAvsZip_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsZip_super object_ = (getAvsZip_impl (javaCast object_ :: TransactionResultInterface))

getAvsZip_impl :: TransactionResultInterface -> IO (String)
getAvsZip_impl this = javaAbstractMethod "getAvsZip"


getOrigResult :: (JavaObjectClass this_) => this_ -> IO (String)
getOrigResult object_ = jmethod object_ "getOrigResult" (\() -> (getOrigResult_impl (javaCast object_ :: TransactionResultInterface))) ()

getOrigResult_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOrigResult_super object_ = (getOrigResult_impl (javaCast object_ :: TransactionResultInterface))

getOrigResult_impl :: TransactionResultInterface -> IO (String)
getOrigResult_impl this = javaAbstractMethod "getOrigResult"


getStatus :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus object_ = jmethod object_ "getStatus" (\() -> (getStatus_impl (javaCast object_ :: TransactionResultInterface))) ()

getStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus_super object_ = (getStatus_impl (javaCast object_ :: TransactionResultInterface))

getStatus_impl :: TransactionResultInterface -> IO (String)
getStatus_impl this = javaAbstractMethod "getStatus"


getFraudCode :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudCode object_ = jmethod object_ "getFraudCode" (\() -> (getFraudCode_impl (javaCast object_ :: TransactionResultInterface))) ()

getFraudCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudCode_super object_ = (getFraudCode_impl (javaCast object_ :: TransactionResultInterface))

getFraudCode_impl :: TransactionResultInterface -> IO (String)
getFraudCode_impl this = javaAbstractMethod "getFraudCode"


getFraudMsg :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudMsg object_ = jmethod object_ "getFraudMsg" (\() -> (getFraudMsg_impl (javaCast object_ :: TransactionResultInterface))) ()

getFraudMsg_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudMsg_super object_ = (getFraudMsg_impl (javaCast object_ :: TransactionResultInterface))

getFraudMsg_impl :: TransactionResultInterface -> IO (String)
getFraudMsg_impl this = javaAbstractMethod "getFraudMsg"


getErrCode :: (JavaObjectClass this_) => this_ -> IO (String)
getErrCode object_ = jmethod object_ "getErrCode" (\() -> (getErrCode_impl (javaCast object_ :: TransactionResultInterface))) ()

getErrCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getErrCode_super object_ = (getErrCode_impl (javaCast object_ :: TransactionResultInterface))

getErrCode_impl :: TransactionResultInterface -> IO (String)
getErrCode_impl this = javaAbstractMethod "getErrCode"


getScore :: (JavaObjectClass this_) => this_ -> IO (String)
getScore object_ = jmethod object_ "getScore" (\() -> (getScore_impl (javaCast object_ :: TransactionResultInterface))) ()

getScore_super :: (JavaObjectClass this_) => this_ -> IO (String)
getScore_super object_ = (getScore_impl (javaCast object_ :: TransactionResultInterface))

getScore_impl :: TransactionResultInterface -> IO (String)
getScore_impl this = javaAbstractMethod "getScore"


getReason1 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason1 object_ = jmethod object_ "getReason1" (\() -> (getReason1_impl (javaCast object_ :: TransactionResultInterface))) ()

getReason1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason1_super object_ = (getReason1_impl (javaCast object_ :: TransactionResultInterface))

getReason1_impl :: TransactionResultInterface -> IO (String)
getReason1_impl this = javaAbstractMethod "getReason1"


getReason2 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason2 object_ = jmethod object_ "getReason2" (\() -> (getReason2_impl (javaCast object_ :: TransactionResultInterface))) ()

getReason2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason2_super object_ = (getReason2_impl (javaCast object_ :: TransactionResultInterface))

getReason2_impl :: TransactionResultInterface -> IO (String)
getReason2_impl this = javaAbstractMethod "getReason2"


getReason3 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason3 object_ = jmethod object_ "getReason3" (\() -> (getReason3_impl (javaCast object_ :: TransactionResultInterface))) ()

getReason3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason3_super object_ = (getReason3_impl (javaCast object_ :: TransactionResultInterface))

getReason3_impl :: TransactionResultInterface -> IO (String)
getReason3_impl this = javaAbstractMethod "getReason3"


getException1 :: (JavaObjectClass this_) => this_ -> IO (String)
getException1 object_ = jmethod object_ "getException1" (\() -> (getException1_impl (javaCast object_ :: TransactionResultInterface))) ()

getException1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException1_super object_ = (getException1_impl (javaCast object_ :: TransactionResultInterface))

getException1_impl :: TransactionResultInterface -> IO (String)
getException1_impl this = javaAbstractMethod "getException1"


getException2 :: (JavaObjectClass this_) => this_ -> IO (String)
getException2 object_ = jmethod object_ "getException2" (\() -> (getException2_impl (javaCast object_ :: TransactionResultInterface))) ()

getException2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException2_super object_ = (getException2_impl (javaCast object_ :: TransactionResultInterface))

getException2_impl :: TransactionResultInterface -> IO (String)
getException2_impl this = javaAbstractMethod "getException2"


getException3 :: (JavaObjectClass this_) => this_ -> IO (String)
getException3 object_ = jmethod object_ "getException3" (\() -> (getException3_impl (javaCast object_ :: TransactionResultInterface))) ()

getException3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException3_super object_ = (getException3_impl (javaCast object_ :: TransactionResultInterface))

getException3_impl :: TransactionResultInterface -> IO (String)
getException3_impl this = javaAbstractMethod "getException3"


getException4 :: (JavaObjectClass this_) => this_ -> IO (String)
getException4 object_ = jmethod object_ "getException4" (\() -> (getException4_impl (javaCast object_ :: TransactionResultInterface))) ()

getException4_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException4_super object_ = (getException4_impl (javaCast object_ :: TransactionResultInterface))

getException4_impl :: TransactionResultInterface -> IO (String)
getException4_impl this = javaAbstractMethod "getException4"


getException5 :: (JavaObjectClass this_) => this_ -> IO (String)
getException5 object_ = jmethod object_ "getException5" (\() -> (getException5_impl (javaCast object_ :: TransactionResultInterface))) ()

getException5_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException5_super object_ = (getException5_impl (javaCast object_ :: TransactionResultInterface))

getException5_impl :: TransactionResultInterface -> IO (String)
getException5_impl this = javaAbstractMethod "getException5"


getException6 :: (JavaObjectClass this_) => this_ -> IO (String)
getException6 object_ = jmethod object_ "getException6" (\() -> (getException6_impl (javaCast object_ :: TransactionResultInterface))) ()

getException6_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException6_super object_ = (getException6_impl (javaCast object_ :: TransactionResultInterface))

getException6_impl :: TransactionResultInterface -> IO (String)
getException6_impl this = javaAbstractMethod "getException6"


getException7 :: (JavaObjectClass this_) => this_ -> IO (String)
getException7 object_ = jmethod object_ "getException7" (\() -> (getException7_impl (javaCast object_ :: TransactionResultInterface))) ()

getException7_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException7_super object_ = (getException7_impl (javaCast object_ :: TransactionResultInterface))

getException7_impl :: TransactionResultInterface -> IO (String)
getException7_impl this = javaAbstractMethod "getException7"


