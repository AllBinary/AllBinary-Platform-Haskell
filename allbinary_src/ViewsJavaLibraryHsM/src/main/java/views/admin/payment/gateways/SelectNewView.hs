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
-- package views.admin.payment.gateways
module SelectNewView (module SelectNewView, module PaymentGatewayViewAbstract) where

import PaymentGatewayViewAbstract hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, logUtil)
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
import qualified PaymentGatewaysView -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicPaymentTypeUtil -- org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil
import qualified PaymentGatewayEntityFactory -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory
import qualified PaymentGatewayEntityInterface -- org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified PaymentGatewayViewAbstract -- views.admin.payment.gateway.PaymentGatewayViewAbstract

data SelectNewView = SelectNewView
    { header_ :: JavaHeader
    , base :: PaymentGatewayViewAbstract.PaymentGatewayViewAbstract
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull SelectNewView where
    javaNull = javaNullRecord "SelectNewView"

instance JavaEquals SelectNewView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq SelectNewView where
    (==) = jrecordEquals

instance JavaObjectClass SelectNewView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO SelectNewView
newRecord_ = do
    base <- PaymentGatewayViewAbstract.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = SelectNewView header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: SelectNewView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO SelectNewView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: SelectNewView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        PaymentGatewayViewAbstract.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: SelectNewView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: SelectNewView))

view_impl :: SelectNewView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.base.commonStrings)).eXCEPTION) this "view" e)
            javaThrow (e)
            ) $ do
            paymentGatewayEntityInterface <- (fmap (\value_ -> javaCast value_ :: PaymentGatewayEntityInterface.PaymentGatewayEntityInterface) (PaymentGatewayEntityFactory.getInstance))
            existingGateways <- (PaymentGatewayEntityInterface.findPaymentTypeVectorByStore paymentGatewayEntityInterface (jio (PaymentGatewayPrimaryKey.getStoreName ((jio (PaymentGatewayViewAbstract.getPaymentGatewayPrimaryKey this))))))
            allGatewaysLessExisting <- (BasicPaymentTypeUtil.difference ((jio (BasicPaymentTypeUtil.getInstance))) existingGateways)
            (PaymentGatewaysView.view ((jio (PaymentGatewaysView.new_2 (jio (PaymentGatewayViewAbstract.getTransformInfoInterface this)) allGatewaysLessExisting))))


