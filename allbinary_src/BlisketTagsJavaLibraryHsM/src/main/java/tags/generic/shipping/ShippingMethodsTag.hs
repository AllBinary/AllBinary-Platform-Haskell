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
-- package tags.generic.shipping
module ShippingMethodsTag (module ShippingMethodsTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, doStartTag, doStartTag_super, doStartTag_impl)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data ShippingMethodsTag = ShippingMethodsTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    }

instance JavaNull ShippingMethodsTag where
    javaNull = javaNullRecord "ShippingMethodsTag"

instance JavaEquals ShippingMethodsTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ShippingMethodsTag where
    (==) = jrecordEquals

instance JavaObjectClass ShippingMethodsTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ShippingMethodsTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    let this = ShippingMethodsTag header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: ShippingMethodsTag -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ShippingMethodsTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ShippingMethodsTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: ShippingMethodsTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: ShippingMethodsTag))

doStartTag_impl :: ShippingMethodsTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                Control.Monad.void (StoreValidationTransformTag.setName this "Basic Shipping View")
                Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.shipping.ValidationView")
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    pure ()
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
                javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
            javaThrow ((JavaException "Exception" "Command Null"))


