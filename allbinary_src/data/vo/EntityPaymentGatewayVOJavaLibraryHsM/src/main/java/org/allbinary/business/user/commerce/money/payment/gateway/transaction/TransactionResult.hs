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
module TransactionResult where

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
import qualified Any -- same package or java.lang
import qualified PaymentTransactionKeysFactory -- same package or java.lang
import qualified PaymentTransactionKeys -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified CommonSeps -- org.allbinary.string.CommonSeps
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TransactionResultInterface

-- implements TransactionResultInterface
data TransactionResult = TransactionResult
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , keyValuePairs :: IORef (HashMap.HashMap)
    , result :: IORef (String)
    }

instance JavaNull TransactionResult where
    javaNull = javaNullRecord "TransactionResult"

instance JavaEquals TransactionResult where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransactionResult where
    (==) = jrecordEquals

instance JavaObjectClass TransactionResult where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO TransactionResult
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    keyValuePairs <- newIORef javaNull
    result <- newIORef ""
    let this = TransactionResult header_ logUtil commonStrings keyValuePairs result
    jregisterLevel header_ this
    TransactionResultInterface.registerInterface_ header_
    jregisterMethod header_ "toString" (\() -> toString_impl this)
    jregisterMethod header_ "toHashMap" (\() -> toHashMap_impl this)
    jregisterMethod header_ "getAllPossibleKeys" (\() -> getAllPossibleKeys_impl this)
    jregisterMethod header_ "getValues" (\() -> getValues_impl this)
    jregisterMethod header_ "getPnRef" (\() -> getPnRef_impl this)
    jregisterMethod header_ "getRespMsg" (\() -> getRespMsg_impl this)
    jregisterMethod header_ "getResult" (\() -> getResult_impl this)
    jregisterMethod header_ "getScore" (\() -> getScore_impl this)
    jregisterMethod header_ "getStatus" (\() -> getStatus_impl this)
    jregisterMethod header_ "getFraudCode" (\() -> getFraudCode_impl this)
    jregisterMethod header_ "getFraudMsg" (\() -> getFraudMsg_impl this)
    jregisterMethod header_ "getOrigResult" (\() -> getOrigResult_impl this)
    jregisterMethod header_ "getAvsAddr" (\() -> getAvsAddr_impl this)
    jregisterMethod header_ "getAvsZip" (\() -> getAvsZip_impl this)
    jregisterMethod header_ "getErrCode" (\() -> getErrCode_impl this)
    jregisterMethod header_ "getException1" (\() -> getException1_impl this)
    jregisterMethod header_ "getException2" (\() -> getException2_impl this)
    jregisterMethod header_ "getException3" (\() -> getException3_impl this)
    jregisterMethod header_ "getException4" (\() -> getException4_impl this)
    jregisterMethod header_ "getException5" (\() -> getException5_impl this)
    jregisterMethod header_ "getException6" (\() -> getException6_impl this)
    jregisterMethod header_ "getException7" (\() -> getException7_impl this)
    jregisterMethod header_ "getReason1" (\() -> getReason1_impl this)
    jregisterMethod header_ "getReason2" (\() -> getReason2_impl this)
    jregisterMethod header_ "getReason3" (\() -> getReason3_impl this)
    pure this

initFields_ :: TransactionResult -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.keyValuePairs (javaNull)
    jset this.result (javaNull)
    pure ()

new_1 :: String -> IO TransactionResult
new_1 result = do
    this <- newRecord_
    init_1 this result
    pure this

init_1 :: TransactionResult -> String -> IO ()
init_1 this result = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            let exceptionMessage = "TransactionResult Constructor Failed"
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) exceptionMessage this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
            ) $ do
            jset (this).result (result)
            tokenizer <- (Tokenizer.new_1 (jget ((jio (CommonSeps.getInstance))).aMPERSAND))
            tokens <- (Tokenizer.getTokensFromString tokenizer result (javaCast (jio (BasicArrayListD.new_))))
            tokenizer2 <- (Tokenizer.new_1 (jget ((jio (CommonSeps.getInstance))).eQUALS))
            hashtable <- (Tokenizer.getTokens tokenizer2 tokens)
            Control.Monad.void (HashMap.putAll ((jget (this).keyValuePairs)) hashtable)
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO TransactionResult
new_1 keyValuePairs = do
    this <- newRecord_
    init_1 this keyValuePairs
    pure this

init_1 :: TransactionResult -> HashMap.HashMap -> IO ()
init_1 this keyValuePairs = do
        initFields_ this
        keyValuePairs <- newIORef keyValuePairs
        jset keyValuePairs ((jget keyValuePairs))
        jset (this).result ("Needs to have the hashmap converted to string for other constructor")
        pure ()


toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> (toString_impl (javaCast object_ :: TransactionResult))) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = (toString_impl (javaCast object_ :: TransactionResult))

toString_impl :: TransactionResult -> IO (String)
toString_impl this = do
        pure ((jget (this).result))


toHashMap :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap object_ = jmethod object_ "toHashMap" (\() -> (toHashMap_impl (javaCast object_ :: TransactionResult))) ()

toHashMap_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMap_super object_ = (toHashMap_impl (javaCast object_ :: TransactionResult))

toHashMap_impl :: TransactionResult -> IO (HashMap.HashMap)
toHashMap_impl this = do
        pure ((jget (this).keyValuePairs))


getAllPossibleKeys :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAllPossibleKeys object_ = jmethod object_ "getAllPossibleKeys" (\() -> (getAllPossibleKeys_impl (javaCast object_ :: TransactionResult))) ()

getAllPossibleKeys_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAllPossibleKeys_super object_ = (getAllPossibleKeys_impl (javaCast object_ :: TransactionResult))

getAllPossibleKeys_impl :: TransactionResult -> IO (BasicArrayList.BasicArrayList)
getAllPossibleKeys_impl this = do
        paymentTransactionKeysFactory <- (PaymentTransactionKeysFactory.getInstance)
        verisignResponseKeys <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rESULT)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).pNREF)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rESPMSG)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aUTHCODE)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aVSADDR)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).aVSZIP)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).oRIGRESULT)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sTATUS)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fRAUDCODE)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).fRAUDMSG)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eRRCODE)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).sCORE)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON1)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON2)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).rEASON3)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION1)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION2)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION3)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION4)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION5)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION6)))))
        Control.Monad.void (BasicArrayList.add verisignResponseKeys (jio (PaymentTransactionKeys.toString ((jget (paymentTransactionKeysFactory).eXCEPTION7)))))
        pure (verisignResponseKeys)


getValues :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getValues object_ = jmethod object_ "getValues" (\() -> (getValues_impl (javaCast object_ :: TransactionResult))) ()

getValues_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getValues_super object_ = (getValues_impl (javaCast object_ :: TransactionResult))

getValues_impl :: TransactionResult -> IO (BasicArrayList.BasicArrayList)
getValues_impl this = do
        keyVector <- (TransactionResult.getAllPossibleKeys this)
        valueVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size keyVector)
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let key = (javaCast (jio (BasicArrayList.get keyVector i)) :: String)
            if (jio (HashMap.containsKey ((jget (this).keyValuePairs)) key)) then do
                Control.Monad.void (BasicArrayList.add valueVector (jio (HashMap.get ((jget (this).keyValuePairs)) key)))
            else do
                stringUtil <- (StringUtil.getInstance)
                Control.Monad.void (BasicArrayList.add valueVector (jget (stringUtil).eMPTY_STRING))
        pure (valueVector)


getPnRef :: (JavaObjectClass this_) => this_ -> IO (String)
getPnRef object_ = jmethod object_ "getPnRef" (\() -> (getPnRef_impl (javaCast object_ :: TransactionResult))) ()

getPnRef_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPnRef_super object_ = (getPnRef_impl (javaCast object_ :: TransactionResult))

getPnRef_impl :: TransactionResult -> IO (String)
getPnRef_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).pNREF)))))) :: String))


getRespMsg :: (JavaObjectClass this_) => this_ -> IO (String)
getRespMsg object_ = jmethod object_ "getRespMsg" (\() -> (getRespMsg_impl (javaCast object_ :: TransactionResult))) ()

getRespMsg_super :: (JavaObjectClass this_) => this_ -> IO (String)
getRespMsg_super object_ = (getRespMsg_impl (javaCast object_ :: TransactionResult))

getRespMsg_impl :: TransactionResult -> IO (String)
getRespMsg_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).rESPMSG)))))) :: String))


getResult :: (JavaObjectClass this_) => this_ -> IO (String)
getResult object_ = jmethod object_ "getResult" (\() -> (getResult_impl (javaCast object_ :: TransactionResult))) ()

getResult_super :: (JavaObjectClass this_) => this_ -> IO (String)
getResult_super object_ = (getResult_impl (javaCast object_ :: TransactionResult))

getResult_impl :: TransactionResult -> IO (String)
getResult_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).rESULT)))))) :: String))


getScore :: (JavaObjectClass this_) => this_ -> IO (String)
getScore object_ = jmethod object_ "getScore" (\() -> (getScore_impl (javaCast object_ :: TransactionResult))) ()

getScore_super :: (JavaObjectClass this_) => this_ -> IO (String)
getScore_super object_ = (getScore_impl (javaCast object_ :: TransactionResult))

getScore_impl :: TransactionResult -> IO (String)
getScore_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).sCORE)))))) :: String))


getStatus :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus object_ = jmethod object_ "getStatus" (\() -> (getStatus_impl (javaCast object_ :: TransactionResult))) ()

getStatus_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStatus_super object_ = (getStatus_impl (javaCast object_ :: TransactionResult))

getStatus_impl :: TransactionResult -> IO (String)
getStatus_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).sTATUS)))))) :: String))


getFraudCode :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudCode object_ = jmethod object_ "getFraudCode" (\() -> (getFraudCode_impl (javaCast object_ :: TransactionResult))) ()

getFraudCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudCode_super object_ = (getFraudCode_impl (javaCast object_ :: TransactionResult))

getFraudCode_impl :: TransactionResult -> IO (String)
getFraudCode_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).fRAUDCODE)))))) :: String))


getFraudMsg :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudMsg object_ = jmethod object_ "getFraudMsg" (\() -> (getFraudMsg_impl (javaCast object_ :: TransactionResult))) ()

getFraudMsg_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFraudMsg_super object_ = (getFraudMsg_impl (javaCast object_ :: TransactionResult))

getFraudMsg_impl :: TransactionResult -> IO (String)
getFraudMsg_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).fRAUDMSG)))))) :: String))


getOrigResult :: (JavaObjectClass this_) => this_ -> IO (String)
getOrigResult object_ = jmethod object_ "getOrigResult" (\() -> (getOrigResult_impl (javaCast object_ :: TransactionResult))) ()

getOrigResult_super :: (JavaObjectClass this_) => this_ -> IO (String)
getOrigResult_super object_ = (getOrigResult_impl (javaCast object_ :: TransactionResult))

getOrigResult_impl :: TransactionResult -> IO (String)
getOrigResult_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).oRIGRESULT)))))) :: String))


getAvsAddr :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsAddr object_ = jmethod object_ "getAvsAddr" (\() -> (getAvsAddr_impl (javaCast object_ :: TransactionResult))) ()

getAvsAddr_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsAddr_super object_ = (getAvsAddr_impl (javaCast object_ :: TransactionResult))

getAvsAddr_impl :: TransactionResult -> IO (String)
getAvsAddr_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).aVSADDR)))))) :: String))


getAvsZip :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsZip object_ = jmethod object_ "getAvsZip" (\() -> (getAvsZip_impl (javaCast object_ :: TransactionResult))) ()

getAvsZip_super :: (JavaObjectClass this_) => this_ -> IO (String)
getAvsZip_super object_ = (getAvsZip_impl (javaCast object_ :: TransactionResult))

getAvsZip_impl :: TransactionResult -> IO (String)
getAvsZip_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).aVSZIP)))))) :: String))


getErrCode :: (JavaObjectClass this_) => this_ -> IO (String)
getErrCode object_ = jmethod object_ "getErrCode" (\() -> (getErrCode_impl (javaCast object_ :: TransactionResult))) ()

getErrCode_super :: (JavaObjectClass this_) => this_ -> IO (String)
getErrCode_super object_ = (getErrCode_impl (javaCast object_ :: TransactionResult))

getErrCode_impl :: TransactionResult -> IO (String)
getErrCode_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eRRCODE)))))) :: String))


getException1 :: (JavaObjectClass this_) => this_ -> IO (String)
getException1 object_ = jmethod object_ "getException1" (\() -> (getException1_impl (javaCast object_ :: TransactionResult))) ()

getException1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException1_super object_ = (getException1_impl (javaCast object_ :: TransactionResult))

getException1_impl :: TransactionResult -> IO (String)
getException1_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION1)))))) :: String))


getException2 :: (JavaObjectClass this_) => this_ -> IO (String)
getException2 object_ = jmethod object_ "getException2" (\() -> (getException2_impl (javaCast object_ :: TransactionResult))) ()

getException2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException2_super object_ = (getException2_impl (javaCast object_ :: TransactionResult))

getException2_impl :: TransactionResult -> IO (String)
getException2_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION2)))))) :: String))


getException3 :: (JavaObjectClass this_) => this_ -> IO (String)
getException3 object_ = jmethod object_ "getException3" (\() -> (getException3_impl (javaCast object_ :: TransactionResult))) ()

getException3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException3_super object_ = (getException3_impl (javaCast object_ :: TransactionResult))

getException3_impl :: TransactionResult -> IO (String)
getException3_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION3)))))) :: String))


getException4 :: (JavaObjectClass this_) => this_ -> IO (String)
getException4 object_ = jmethod object_ "getException4" (\() -> (getException4_impl (javaCast object_ :: TransactionResult))) ()

getException4_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException4_super object_ = (getException4_impl (javaCast object_ :: TransactionResult))

getException4_impl :: TransactionResult -> IO (String)
getException4_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION4)))))) :: String))


getException5 :: (JavaObjectClass this_) => this_ -> IO (String)
getException5 object_ = jmethod object_ "getException5" (\() -> (getException5_impl (javaCast object_ :: TransactionResult))) ()

getException5_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException5_super object_ = (getException5_impl (javaCast object_ :: TransactionResult))

getException5_impl :: TransactionResult -> IO (String)
getException5_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION5)))))) :: String))


getException6 :: (JavaObjectClass this_) => this_ -> IO (String)
getException6 object_ = jmethod object_ "getException6" (\() -> (getException6_impl (javaCast object_ :: TransactionResult))) ()

getException6_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException6_super object_ = (getException6_impl (javaCast object_ :: TransactionResult))

getException6_impl :: TransactionResult -> IO (String)
getException6_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION6)))))) :: String))


getException7 :: (JavaObjectClass this_) => this_ -> IO (String)
getException7 object_ = jmethod object_ "getException7" (\() -> (getException7_impl (javaCast object_ :: TransactionResult))) ()

getException7_super :: (JavaObjectClass this_) => this_ -> IO (String)
getException7_super object_ = (getException7_impl (javaCast object_ :: TransactionResult))

getException7_impl :: TransactionResult -> IO (String)
getException7_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).eXCEPTION7)))))) :: String))


getReason1 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason1 object_ = jmethod object_ "getReason1" (\() -> (getReason1_impl (javaCast object_ :: TransactionResult))) ()

getReason1_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason1_super object_ = (getReason1_impl (javaCast object_ :: TransactionResult))

getReason1_impl :: TransactionResult -> IO (String)
getReason1_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).rEASON1)))))) :: String))


getReason2 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason2 object_ = jmethod object_ "getReason2" (\() -> (getReason2_impl (javaCast object_ :: TransactionResult))) ()

getReason2_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason2_super object_ = (getReason2_impl (javaCast object_ :: TransactionResult))

getReason2_impl :: TransactionResult -> IO (String)
getReason2_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).rEASON2)))))) :: String))


getReason3 :: (JavaObjectClass this_) => this_ -> IO (String)
getReason3 object_ = jmethod object_ "getReason3" (\() -> (getReason3_impl (javaCast object_ :: TransactionResult))) ()

getReason3_super :: (JavaObjectClass this_) => this_ -> IO (String)
getReason3_super object_ = (getReason3_impl (javaCast object_ :: TransactionResult))

getReason3_impl :: TransactionResult -> IO (String)
getReason3_impl this = do
        pure ((javaCast (jio (HashMap.get ((jget (this).keyValuePairs)) (jio (PaymentTransactionKeys.toString ((jget ((jio (PaymentTransactionKeysFactory.getInstance))).rEASON3)))))) :: String))


