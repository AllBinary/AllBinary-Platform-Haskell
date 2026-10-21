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
-- package org.allbinary.business.user.commerce.inventory.order
module Order where

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
import qualified OrderHistoryData -- same package or java.lang
import qualified OrderData -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Serializable -- java.io.Serializable
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified EntryData -- org.allbinary.business.entry.EntryData
import qualified BasketInterface -- org.allbinary.business.user.commerce.inventory.basket.BasketInterface
import qualified PaymentData -- org.allbinary.business.user.commerce.money.payment.PaymentData
import qualified ShippingMethodData -- org.allbinary.business.user.commerce.shipping.ShippingMethodData
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified OrderInterface

-- implements OrderInterface
-- implements Serializable
data Order = Order
    { header_ :: JavaHeader
    , basket :: IORef (BasketInterface.BasketInterface)
    , paymentMethod :: IORef (String)
    , shippingType :: IORef (String)
    , storeName :: IORef (String)
    , special :: IORef (String)
    , id :: IORef (String)
    , userComment :: IORef (String)
    , userCancelComment :: IORef (String)
    , storeComment :: IORef (String)
    , storeCancelComment :: IORef (String)
    }

instance JavaNull Order where
    javaNull = javaNullRecord "Order"

instance JavaEquals Order where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Order where
    (==) = jrecordEquals

instance JavaObjectClass Order where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Order
newRecord_ = do
    header_ <- newJavaHeader
    basket <- newIORef javaNull
    paymentMethod <- newIORef ""
    shippingType <- newIORef ""
    storeName <- newIORef ""
    special <- newIORef ""
    id <- newIORef ""
    userComment <- newIORef ""
    userCancelComment <- newIORef ""
    storeComment <- newIORef ""
    storeCancelComment <- newIORef ""
    let this = Order header_ basket paymentMethod shippingType storeName special id userComment userCancelComment storeComment storeCancelComment
    jregisterLevel header_ this
    OrderInterface.registerInterface_ header_
    Serializable.registerInterface_ header_
    jregisterMethod header_ "isIdValid" (\() -> isIdValid_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "getIdValidationInfo" (\() -> getIdValidationInfo_impl this)
    jregisterMethod header_ "setShippingMethod" (\() -> setShippingMethod_impl this)
    jregisterMethod header_ "setPaymentMethod" (\() -> setPaymentMethod_impl this)
    jregisterMethod header_ "setSpecial" (\() -> setSpecial_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "setUserComments" (\() -> setUserComments_impl this)
    jregisterMethod header_ "setUserCancelComments" (\() -> setUserCancelComments_impl this)
    jregisterMethod header_ "setStoreComments" (\() -> setStoreComments_impl this)
    jregisterMethod header_ "setStoreCancelComments" (\() -> setStoreCancelComments_impl this)
    jregisterMethod header_ "getBasket" (\() -> getBasket_impl this)
    jregisterMethod header_ "getShippingMethod" (\() -> getShippingMethod_impl this)
    jregisterMethod header_ "getPaymentMethod" (\() -> getPaymentMethod_impl this)
    jregisterMethod header_ "getSpecial" (\() -> getSpecial_impl this)
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "getStoreName" (\() -> getStoreName_impl this)
    jregisterMethod header_ "getUserComments" (\() -> getUserComments_impl this)
    jregisterMethod header_ "getUserCancelComments" (\() -> getUserCancelComments_impl this)
    jregisterMethod header_ "getStoreComments" (\() -> getStoreComments_impl this)
    jregisterMethod header_ "getStoreCancelComments" (\() -> getStoreCancelComments_impl this)
    jregisterMethod header_ "reviewOrder" (\() -> reviewOrder_impl this)
    jregisterMethod header_ "viewOrder" (\() -> viewOrder_impl this)
    jregisterMethod header_ "emailOrder" (\() -> emailOrder_impl this)
    jregisterMethod header_ "toHashMapOrder" (\() -> toHashMapOrder_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: Order -> IO ()
initFields_ this = do
    jset this.basket (javaNull)
    jset this.paymentMethod (javaNull)
    jset this.shippingType (javaNull)
    jset this.storeName (javaNull)
    jset this.special (javaNull)
    jset this.id (javaNull)
    jset this.userComment ("")
    jset this.userCancelComment ("")
    jset this.storeComment ("")
    jset this.storeCancelComment ("")
    pure ()

new_1 :: BasketInterface.BasketInterface -> IO Order
new_1 basket = do
    this <- newRecord_
    init_1 this basket
    pure this

init_1 :: Order -> BasketInterface.BasketInterface -> IO ()
init_1 this basket = do
        initFields_ this
        jset (this).basket (basket)
        jset (this).id (javaNull)
        jset (this).shippingType ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure ()

new_6 :: String -> BasketInterface.BasketInterface -> String -> String -> String -> String -> IO Order
new_6 storeName basket id shippingType special paymentMethod = do
    this <- newRecord_
    init_6 this storeName basket id shippingType special paymentMethod
    pure this

init_6 :: Order -> String -> BasketInterface.BasketInterface -> String -> String -> String -> String -> IO ()
init_6 this storeName basket id shippingType special paymentMethod = do
        initFields_ this
        jset (this).storeName (storeName)
        jset (this).basket (basket)
        jset (this).id (id)
        jset (this).shippingType (shippingType)
        jset (this).special (special)
        jset (this).paymentMethod (paymentMethod)
        pure ()


isIdValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIdValid object_ = jmethod object_ "isIdValid" (\() -> (isIdValid_impl (javaCast object_ :: Order))) ()

isIdValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isIdValid_super object_ = (isIdValid_impl (javaCast object_ :: Order))

isIdValid_impl :: Order -> IO (Bool)
isIdValid_impl this = do
    javaCatchReturn $ do
        when (((((jio (Order.getId this)) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jio (Order.getId this)) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)) - 1) == 0)) || ((Prelude.length (jio (Order.getId this))) > (jget OrderHistoryData.mAXIDLEN))) || (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jio (Order.getId this)))))) $ do
            javaReturn (False)
        pure (True)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: Order))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: Order))

isValid_impl :: Order -> IO (Bool)
isValid_impl this = do
        pure (True)


getIdValidationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
getIdValidationInfo object_ = jmethod object_ "getIdValidationInfo" (\() -> (getIdValidationInfo_impl (javaCast object_ :: Order))) ()

getIdValidationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
getIdValidationInfo_super object_ = (getIdValidationInfo_impl (javaCast object_ :: Order))

getIdValidationInfo_impl :: Order -> IO (String)
getIdValidationInfo_impl this = do
    javaCatchReturn $ do
        let eMPTY_STRING = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
        when (((((jio (Order.getId this)) == javaNull) || ((Prelude.fromEnum (Prelude.compare (jio (Order.getId this)) eMPTY_STRING) - 1) == 0)) || ((Prelude.length (jio (Order.getId this))) > (jget OrderHistoryData.mAXIDLEN))) || (Prelude.not (jio (StringValidationUtil.isNumber ((jio (StringValidationUtil.getInstance))) (jio (Order.getId this)))))) $ do
            javaReturn ((("Please enter a valid order Id < " ++ javaToString (jget OrderHistoryData.mAXIDLEN)) ++ " digits in length.<br>"))
        pure (eMPTY_STRING)


setShippingMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingMethod object_ a1 = jmethod object_ "setShippingMethod" (\() -> (setShippingMethod_impl (javaCast object_ :: Order))) () a1

setShippingMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setShippingMethod_super object_ a1 = (setShippingMethod_impl (javaCast object_ :: Order)) a1

setShippingMethod_impl :: Order -> String -> IO (())
setShippingMethod_impl this shippingType = do
        jset (this).shippingType (shippingType)
        pure ()


setPaymentMethod :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod object_ a1 = jmethod object_ "setPaymentMethod" (\() -> (setPaymentMethod_impl (javaCast object_ :: Order))) () a1

setPaymentMethod_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setPaymentMethod_super object_ a1 = (setPaymentMethod_impl (javaCast object_ :: Order)) a1

setPaymentMethod_impl :: Order -> String -> IO (())
setPaymentMethod_impl this value = do
        jset (this).paymentMethod (value)
        pure ()


setSpecial :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial object_ a1 = jmethod object_ "setSpecial" (\() -> (setSpecial_impl (javaCast object_ :: Order))) () a1

setSpecial_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setSpecial_super object_ a1 = (setSpecial_impl (javaCast object_ :: Order)) a1

setSpecial_impl :: Order -> String -> IO (())
setSpecial_impl this special = do
        jset (this).special (special)
        pure ()


setId :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: Order))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: Order)) a1

setId_impl :: Order -> String -> IO (())
setId_impl this value = do
        jset (this).id (value)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: Order))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: Order)) a1

setStoreName_impl :: Order -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


setUserComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments object_ a1 = jmethod object_ "setUserComments" (\() -> (setUserComments_impl (javaCast object_ :: Order))) () a1

setUserComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserComments_super object_ a1 = (setUserComments_impl (javaCast object_ :: Order)) a1

setUserComments_impl :: Order -> String -> IO (())
setUserComments_impl this value = do
        jset (this).userComment (value)
        pure ()


setUserCancelComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserCancelComments object_ a1 = jmethod object_ "setUserCancelComments" (\() -> (setUserCancelComments_impl (javaCast object_ :: Order))) () a1

setUserCancelComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setUserCancelComments_super object_ a1 = (setUserCancelComments_impl (javaCast object_ :: Order)) a1

setUserCancelComments_impl :: Order -> String -> IO (())
setUserCancelComments_impl this value = do
        jset (this).userCancelComment (value)
        pure ()


setStoreComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreComments object_ a1 = jmethod object_ "setStoreComments" (\() -> (setStoreComments_impl (javaCast object_ :: Order))) () a1

setStoreComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreComments_super object_ a1 = (setStoreComments_impl (javaCast object_ :: Order)) a1

setStoreComments_impl :: Order -> String -> IO (())
setStoreComments_impl this value = do
        jset (this).storeComment (value)
        pure ()


setStoreCancelComments :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreCancelComments object_ a1 = jmethod object_ "setStoreCancelComments" (\() -> (setStoreCancelComments_impl (javaCast object_ :: Order))) () a1

setStoreCancelComments_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreCancelComments_super object_ a1 = (setStoreCancelComments_impl (javaCast object_ :: Order)) a1

setStoreCancelComments_impl :: Order -> String -> IO (())
setStoreCancelComments_impl this value = do
        jset (this).storeCancelComment (value)
        pure ()


getBasket :: (JavaObjectClass this_) => this_ -> IO (BasketInterface.BasketInterface)
getBasket object_ = jmethod object_ "getBasket" (\() -> (getBasket_impl (javaCast object_ :: Order))) ()

getBasket_super :: (JavaObjectClass this_) => this_ -> IO (BasketInterface.BasketInterface)
getBasket_super object_ = (getBasket_impl (javaCast object_ :: Order))

getBasket_impl :: Order -> IO (BasketInterface.BasketInterface)
getBasket_impl this = do
        pure ((jget (this).basket))


getShippingMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingMethod object_ = jmethod object_ "getShippingMethod" (\() -> (getShippingMethod_impl (javaCast object_ :: Order))) ()

getShippingMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getShippingMethod_super object_ = (getShippingMethod_impl (javaCast object_ :: Order))

getShippingMethod_impl :: Order -> IO (String)
getShippingMethod_impl this = do
        pure ((jget (this).shippingType))


getPaymentMethod :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod object_ = jmethod object_ "getPaymentMethod" (\() -> (getPaymentMethod_impl (javaCast object_ :: Order))) ()

getPaymentMethod_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPaymentMethod_super object_ = (getPaymentMethod_impl (javaCast object_ :: Order))

getPaymentMethod_impl :: Order -> IO (String)
getPaymentMethod_impl this = do
        pure ((jget (this).paymentMethod))


getSpecial :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial object_ = jmethod object_ "getSpecial" (\() -> (getSpecial_impl (javaCast object_ :: Order))) ()

getSpecial_super :: (JavaObjectClass this_) => this_ -> IO (String)
getSpecial_super object_ = (getSpecial_impl (javaCast object_ :: Order))

getSpecial_impl :: Order -> IO (String)
getSpecial_impl this = do
        pure ((jget (this).special))


getId :: (JavaObjectClass this_) => this_ -> IO (String)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: Order))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (String)
getId_super object_ = (getId_impl (javaCast object_ :: Order))

getId_impl :: Order -> IO (String)
getId_impl this = do
        pure ((jget (this).id))


getStoreName :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName object_ = jmethod object_ "getStoreName" (\() -> (getStoreName_impl (javaCast object_ :: Order))) ()

getStoreName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreName_super object_ = (getStoreName_impl (javaCast object_ :: Order))

getStoreName_impl :: Order -> IO (String)
getStoreName_impl this = do
        pure ((jget (this).storeName))


getUserComments :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments object_ = jmethod object_ "getUserComments" (\() -> (getUserComments_impl (javaCast object_ :: Order))) ()

getUserComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserComments_super object_ = (getUserComments_impl (javaCast object_ :: Order))

getUserComments_impl :: Order -> IO (String)
getUserComments_impl this = do
        pure ((jget (this).userComment))


getUserCancelComments :: (JavaObjectClass this_) => this_ -> IO (String)
getUserCancelComments object_ = jmethod object_ "getUserCancelComments" (\() -> (getUserCancelComments_impl (javaCast object_ :: Order))) ()

getUserCancelComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserCancelComments_super object_ = (getUserCancelComments_impl (javaCast object_ :: Order))

getUserCancelComments_impl :: Order -> IO (String)
getUserCancelComments_impl this = do
        pure ((jget (this).userCancelComment))


getStoreComments :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreComments object_ = jmethod object_ "getStoreComments" (\() -> (getStoreComments_impl (javaCast object_ :: Order))) ()

getStoreComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreComments_super object_ = (getStoreComments_impl (javaCast object_ :: Order))

getStoreComments_impl :: Order -> IO (String)
getStoreComments_impl this = do
        pure ((jget (this).storeComment))


getStoreCancelComments :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreCancelComments object_ = jmethod object_ "getStoreCancelComments" (\() -> (getStoreCancelComments_impl (javaCast object_ :: Order))) ()

getStoreCancelComments_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStoreCancelComments_super object_ = (getStoreCancelComments_impl (javaCast object_ :: Order))

getStoreCancelComments_impl :: Order -> IO (String)
getStoreCancelComments_impl this = do
        pure ((jget (this).storeCancelComment))


reviewOrder :: (JavaObjectClass this_) => this_ -> String -> IO (String)
reviewOrder object_ a1 = jmethod object_ "reviewOrder" (\() -> (reviewOrder_impl (javaCast object_ :: Order))) () a1

reviewOrder_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
reviewOrder_super object_ a1 = (reviewOrder_impl (javaCast object_ :: Order)) a1

reviewOrder_impl :: Order -> String -> IO (String)
reviewOrder_impl this paymentMethod = do
        pure ("Create your own Order.reviewOrder")


viewOrder :: (JavaObjectClass this_) => this_ -> String -> IO (String)
viewOrder object_ a1 = jmethod object_ "viewOrder" (\() -> (viewOrder_impl (javaCast object_ :: Order))) () a1

viewOrder_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
viewOrder_super object_ a1 = (viewOrder_impl (javaCast object_ :: Order)) a1

viewOrder_impl :: Order -> String -> IO (String)
viewOrder_impl this paymentMethod = do
        pure ("Create your own Order.viewOrder")


emailOrder :: (JavaObjectClass this_) => this_ -> String -> String -> StoreFrontInterface.StoreFrontInterface -> IO (String)
emailOrder object_ a1 a2 a3 = jmethod object_ "emailOrder" (\() -> (emailOrder_impl (javaCast object_ :: Order))) () a1 a2 a3

emailOrder_super :: (JavaObjectClass this_) => this_ -> String -> String -> StoreFrontInterface.StoreFrontInterface -> IO (String)
emailOrder_super object_ a1 a2 a3 = (emailOrder_impl (javaCast object_ :: Order)) a1 a2 a3

emailOrder_impl :: Order -> String -> String -> StoreFrontInterface.StoreFrontInterface -> IO (String)
emailOrder_impl this userName paymentMethod storeFrontInterface = do
        pure ("Create your own Order.emailOrder")


toHashMapOrder :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMapOrder object_ = jmethod object_ "toHashMapOrder" (\() -> (toHashMapOrder_impl (javaCast object_ :: Order))) ()

toHashMapOrder_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
toHashMapOrder_super object_ = (toHashMapOrder_impl (javaCast object_ :: Order))

toHashMapOrder_impl :: Order -> IO (HashMap.HashMap)
toHashMapOrder_impl this = do
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        Control.Monad.void (HashMap.put hashMap (PaymentData.mETHOD) (jget (this).paymentMethod))
        Control.Monad.void (HashMap.put hashMap (ShippingMethodData.nAME) (jget (this).shippingType))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
        Control.Monad.void (HashMap.put hashMap (jget ((jio (EntryData.getInstance))).sPECIAL) (jget (this).special))
        Control.Monad.void (HashMap.put hashMap (OrderData.iD) (jget (this).id))
        Control.Monad.void (HashMap.put hashMap (OrderData.cUSTOMERCOMMENT) (jget (this).userComment))
        Control.Monad.void (HashMap.put hashMap (OrderData.cUSTOMERCANCELCOMMENT) (jget (this).userCancelComment))
        Control.Monad.void (HashMap.put hashMap (OrderData.sTORECOMMENT) (jget (this).storeComment))
        Control.Monad.void (HashMap.put hashMap (OrderData.sTORECANCELCOMMENT) (jget (this).storeCancelComment))
        pure (hashMap)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: Order))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: Order)) a1

toXmlNode_impl :: Order -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        hashMap <- (Order.toHashMapOrder this)
        keySet <- (HashMap.keySet hashMap)
        keyArray <- (Set.toArray keySet)
        let size = (jlength keyArray)
        node <- (Document.createElement document (OrderData.oRDER))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let name = (javaCast (jindex keyArray (i)) :: String)
            value <- newIORef ((javaCast (jio (HashMap.get hashMap name)) :: String))
            assignedValue <- (StringUtil.getNonNull ((jio (StringUtil.getInstance))) (jget value))
            jset value (assignedValue)
            Control.Monad.void (Node.appendChild node (jio (ModDomHelper.createNameValueNodes document name (jget value))))
        pure (node)


