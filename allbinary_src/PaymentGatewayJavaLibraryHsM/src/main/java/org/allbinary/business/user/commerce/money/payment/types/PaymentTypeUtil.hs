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
-- package org.allbinary.business.user.commerce.money.payment.types
module PaymentTypeUtil where

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
import qualified PaymentType -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified PaymentGatewaysData -- org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewaysData
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data PaymentTypeUtil = PaymentTypeUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , pAYMENTGATEWAYFILEPATHSTRING :: IORef (String)
    , sHIPPINGMETHODSFILENAME :: IORef (String)
    , defaultName :: IORef (String)
    , paymentTypeVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull PaymentTypeUtil where
    javaNull = javaNullRecord "PaymentTypeUtil"

instance JavaEquals PaymentTypeUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq PaymentTypeUtil where
    (==) = jrecordEquals

instance JavaObjectClass PaymentTypeUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO PaymentTypeUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    pAYMENTGATEWAYFILEPATHSTRING <- newIORef ""
    sHIPPINGMETHODSFILENAME <- newIORef ""
    defaultName <- newIORef ""
    paymentTypeVector <- newIORef javaNull
    let this = PaymentTypeUtil header_ logUtil commonStrings pAYMENTGATEWAYFILEPATHSTRING sHIPPINGMETHODSFILENAME defaultName paymentTypeVector
    jregisterLevel header_ this
    jregisterMethod header_ "add" (\() -> add_impl this)
    jregisterMethod header_ "get" (\() -> get_impl this)
    jregisterMethod header_ "initDefault" (\() -> initDefault_impl this)
    jregisterMethod header_ "getDefault" (\() -> getDefault_impl this)
    jregisterMethod header_ "isContain" (\() -> isContain_impl this)
    jregisterMethod header_ "difference" (\() -> difference_impl this)
    pure this

initFields_ :: PaymentTypeUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.pAYMENTGATEWAYFILEPATHSTRING (javaNull)
    jset this.sHIPPINGMETHODSFILENAME ("paymentGatewayTypes.xml")
    jset this.defaultName (javaNull)
    jset this.paymentTypeVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        pure ()
        pure ()


getInstance :: IO (PaymentTypeUtil)
getInstance = do
        pure (PaymentTypeUtil.instance_)

new_ :: IO PaymentTypeUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: PaymentTypeUtil -> IO ()
init_ this = do
        initFields_ this
        stringBuffer <- (StringMaker.new_)
        let sep = (jget ((jio (AbPathData.getInstance))).sEPARATOR)
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "generic")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "user")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "commerce")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "money")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "payment")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        Control.Monad.void (StringMaker.append stringBuffer "gateway")
        Control.Monad.void (StringMaker.append stringBuffer sep)
        assignedValue <- (StringMaker.toString stringBuffer)
        jset (this).pAYMENTGATEWAYFILEPATHSTRING (assignedValue)
        pure ()


add :: (JavaObjectClass this_) => this_ -> PaymentType.PaymentType -> IO (())
add object_ a1 = jmethod object_ "add" (\() -> (add_impl (javaCast object_ :: PaymentTypeUtil))) () a1

add_super :: (JavaObjectClass this_) => this_ -> PaymentType.PaymentType -> IO (())
add_super object_ a1 = (add_impl (javaCast object_ :: PaymentTypeUtil)) a1

add_impl :: PaymentTypeUtil -> PaymentType.PaymentType -> IO (())
add_impl this paymentType = do
        Control.Monad.void (BasicArrayList.add ((jget (this).paymentTypeVector)) paymentType)
        pure ()


-- throws Exception
get :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentType.PaymentType)
get object_ a1 = jmethod object_ "get" (\() -> (get_impl (javaCast object_ :: PaymentTypeUtil))) () a1

get_super :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentType.PaymentType)
get_super object_ a1 = (get_impl (javaCast object_ :: PaymentTypeUtil)) a1

get_impl :: PaymentTypeUtil -> String -> IO (PaymentType.PaymentType)
get_impl this paymentTypeString = do
    javaCatchReturn $ do
        size <- (BasicArrayList.size ((jget (this).paymentTypeVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let paymentType = (javaCast (jio (BasicArrayList.get ((jget (this).paymentTypeVector)) i)) :: PaymentType.PaymentType)
            when ((Prelude.fromEnum (Prelude.compare (jio (BasicPaymentType.getName ((jio (PaymentType.getBasicPaymentType paymentType))))) paymentTypeString) - 1) == 0) $ do
                javaReturn (paymentType)
        javaThrow ((JavaException "Exception" ("Unknown PaymentType: " ++ paymentTypeString)))


-- throws Exception
initDefault :: (JavaObjectClass this_) => this_ -> String -> IO (())
initDefault object_ a1 = jmethod object_ "initDefault" (\() -> (initDefault_impl (javaCast object_ :: PaymentTypeUtil))) () a1

initDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
initDefault_super object_ a1 = (initDefault_impl (javaCast object_ :: PaymentTypeUtil)) a1

initDefault_impl :: PaymentTypeUtil -> String -> IO (())
initDefault_impl this storeName = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("initDefault Payment: " ++ (jget (this).defaultName)) this "initDefault")
        when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).defaultName))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
            Control.Monad.void (StringMaker.append stringBuffer storeName)
            Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
            Control.Monad.void (StringMaker.append stringBuffer (jget (this).pAYMENTGATEWAYFILEPATHSTRING))
            let abPath = (javaCast (jio (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget (this).sHIPPINGMETHODSFILENAME))) :: AbPath.AbPath)
            data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget ((jio (TransformInfoObjectConfigData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (TransformInfoObjectConfigData.getInstance))).eNCRYPTED_EXTENSION)))) abPath)
            document <- (DomDocumentHelper.create data_)
            nodeList <- (Document.getElementsByTagName document (jget PaymentGatewaysData.nAME))
            forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
                node <- (NodeList.item nodeList index)
                defaultPaymentGatewayNode <- (DomSearchHelper.getNode (jget ((jio (EntryData.getInstance))).dEFAULT) (jio (Node.getChildNodes node)))
                defaultPaymentGatewayNodeValue <- (DomNodeHelper.getTextNodeValue defaultPaymentGatewayNode)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("DefaultPaymentGatewayNodeValue: " ++ defaultPaymentGatewayNodeValue) this "initDefault")
                when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) defaultPaymentGatewayNodeValue))) $ do
                    jset (this).defaultName (defaultPaymentGatewayNodeValue)
        pure ()


-- throws Exception
getDefault :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentType.PaymentType)
getDefault object_ a1 = jmethod object_ "getDefault" (\() -> (getDefault_impl (javaCast object_ :: PaymentTypeUtil))) () a1

getDefault_super :: (JavaObjectClass this_) => this_ -> String -> IO (PaymentType.PaymentType)
getDefault_super object_ a1 = (getDefault_impl (javaCast object_ :: PaymentTypeUtil)) a1

getDefault_impl :: PaymentTypeUtil -> String -> IO (PaymentType.PaymentType)
getDefault_impl this storeName = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).pAYMENT))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "getDefault")
        Control.Monad.void (PaymentTypeUtil.initDefault this storeName)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jget (this).defaultName)))) $ do
            javaReturn =<< (PaymentTypeUtil.get this (jget (this).defaultName))
        javaThrow ((JavaException "Exception" ("No Default: " ++ (jget (this).defaultName))))


isContain :: (JavaObjectClass this_) => this_ -> PaymentType.PaymentType -> IO (Bool)
isContain object_ a1 = jmethod object_ "isContain" (\() -> (isContain_impl (javaCast object_ :: PaymentTypeUtil))) () a1

isContain_super :: (JavaObjectClass this_) => this_ -> PaymentType.PaymentType -> IO (Bool)
isContain_super object_ a1 = (isContain_impl (javaCast object_ :: PaymentTypeUtil)) a1

isContain_impl :: PaymentTypeUtil -> PaymentType.PaymentType -> IO (Bool)
isContain_impl this paymentType = do
        (BasicArrayList.contains ((jget (this).paymentTypeVector)) paymentType)


difference :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference object_ a1 = jmethod object_ "difference" (\() -> (difference_impl (javaCast object_ :: PaymentTypeUtil))) () a1

difference_super :: (JavaObjectClass this_) => this_ -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference_super object_ a1 = (difference_impl (javaCast object_ :: PaymentTypeUtil)) a1

difference_impl :: PaymentTypeUtil -> BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
difference_impl this a_PaymentTypeVector = do
        diff <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size ((jget (this).paymentTypeVector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let paymentType = (javaCast (jio (BasicArrayList.get ((jget (this).paymentTypeVector)) i)) :: PaymentType.PaymentType)
            when (Prelude.not (jio (BasicArrayList.contains a_PaymentTypeVector paymentType))) $ do
                Control.Monad.void (jio (BasicArrayList.add diff paymentType))
        pure (diff)


