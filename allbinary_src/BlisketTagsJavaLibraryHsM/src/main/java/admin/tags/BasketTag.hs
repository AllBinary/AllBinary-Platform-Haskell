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
-- package admin.tags
module BasketTag (module BasketTag, module CustomTagSupport) where

import CustomTagSupport hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setCommand, setCommand_super, setCommand_impl, setStoreName, setStoreName_super, setStoreName_impl, isBasketEmpty, isBasketEmpty_super, isBasketEmpty_impl, addItemToBasket, addItemToBasket_super, addItemToBasket_impl, removeItemFromBasket, removeItemFromBasket_super, removeItemFromBasket_impl, adjustBasket, adjustBasket_super, adjustBasket_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil, command, storeName, propertiesHashMap)
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
import qualified Class -- same package or java.lang
import qualified CommonStrings -- same package or java.lang
import qualified Method -- java.lang.reflect.Method
import qualified HashMap -- java.util.HashMap
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified BasketHelperFactory -- admin.taghelpers.BasketHelperFactory
import qualified BasketRequestHelperFactory -- admin.taghelpers.BasketRequestHelperFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified BasketData -- org.allbinary.business.user.commerce.inventory.basket.BasketData
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified CustomTagSupport -- tags.CustomTagSupport

data BasketTag = BasketTag
    { header_ :: JavaHeader
    , base :: CustomTagSupport.CustomTagSupport
    , logUtil :: IORef (LogUtil.LogUtil)
    , command :: IORef (String)
    , storeName :: IORef (String)
    , propertiesHashMap :: IORef (HashMap.HashMap)
    }

instance JavaNull BasketTag where
    javaNull = javaNullRecord "BasketTag"

instance JavaEquals BasketTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketTag where
    (==) = jrecordEquals

instance JavaObjectClass BasketTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO BasketTag
newRecord_ = do
    base <- CustomTagSupport.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    command <- newIORef ""
    storeName <- newIORef ""
    propertiesHashMap <- newIORef javaNull
    let this = BasketTag header_ base logUtil command storeName propertiesHashMap
    jregisterLevel header_ this
    jregisterMethod header_ "setCommand" (\() -> setCommand_impl this)
    jregisterMethod header_ "setStoreName" (\() -> setStoreName_impl this)
    jregisterMethod header_ "isBasketEmpty" (\() -> isBasketEmpty_impl this)
    jregisterMethod header_ "addItemToBasket" (\() -> addItemToBasket_impl this)
    jregisterMethod header_ "removeItemFromBasket" (\() -> removeItemFromBasket_impl this)
    jregisterMethod header_ "adjustBasket" (\() -> adjustBasket_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: BasketTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.command ("")
    jset this.storeName ("")
    jset this.propertiesHashMap (javaNull)
    pure ()

new_ :: IO BasketTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasketTag -> IO ()
init_ this = do
        CustomTagSupport.init_ this.base
        initFields_ this
        pure ()
        pure ()


setCommand :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand object_ a1 = jmethod object_ "setCommand" (\() -> (setCommand_impl (javaCast object_ :: BasketTag))) () a1

setCommand_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setCommand_super object_ a1 = (setCommand_impl (javaCast object_ :: BasketTag)) a1

setCommand_impl :: BasketTag -> String -> IO (())
setCommand_impl this command = do
        jset (this).command (command)
        pure ()


setStoreName :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName object_ a1 = jmethod object_ "setStoreName" (\() -> (setStoreName_impl (javaCast object_ :: BasketTag))) () a1

setStoreName_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setStoreName_super object_ a1 = (setStoreName_impl (javaCast object_ :: BasketTag)) a1

setStoreName_impl :: BasketTag -> String -> IO (())
setStoreName_impl this value = do
        jset (this).storeName (value)
        pure ()


-- throws LicensingException
isBasketEmpty :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBasketEmpty object_ = jmethod object_ "isBasketEmpty" (\() -> (isBasketEmpty_impl (javaCast object_ :: BasketTag))) ()

isBasketEmpty_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isBasketEmpty_super object_ = (isBasketEmpty_impl (javaCast object_ :: BasketTag))

isBasketEmpty_impl :: BasketTag -> IO (Bool)
isBasketEmpty_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (BasketHelperFactory.getInstance ((jio (BasketHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "isBasketEmpty" javaNull)
            let emptyBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (emptyBoolean)


-- throws LicensingException
addItemToBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
addItemToBasket object_ = jmethod object_ "addItemToBasket" (\() -> (addItemToBasket_impl (javaCast object_ :: BasketTag))) ()

addItemToBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
addItemToBasket_super object_ = (addItemToBasket_impl (javaCast object_ :: BasketTag))

addItemToBasket_impl :: BasketTag -> IO (Bool)
addItemToBasket_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (BasketRequestHelperFactory.getInstance ((jio (BasketRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "addItemToBasket" javaNull)
            let emptyBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (emptyBoolean)


-- throws LicensingException
removeItemFromBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
removeItemFromBasket object_ = jmethod object_ "removeItemFromBasket" (\() -> (removeItemFromBasket_impl (javaCast object_ :: BasketTag))) ()

removeItemFromBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
removeItemFromBasket_super object_ = (removeItemFromBasket_impl (javaCast object_ :: BasketTag))

removeItemFromBasket_impl :: BasketTag -> IO (Bool)
removeItemFromBasket_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (BasketRequestHelperFactory.getInstance ((jio (BasketRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "removeItemFromBasket" javaNull)
            let emptyBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (emptyBoolean)


-- throws LicensingException
adjustBasket :: (JavaObjectClass this_) => this_ -> IO (Bool)
adjustBasket object_ = jmethod object_ "adjustBasket" (\() -> (adjustBasket_impl (javaCast object_ :: BasketTag))) ()

adjustBasket_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
adjustBasket_super object_ = (adjustBasket_impl (javaCast object_ :: BasketTag))

adjustBasket_impl :: BasketTag -> IO (Bool)
adjustBasket_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (BasketRequestHelperFactory.getInstance ((jio (BasketRequestHelperFactory.new_))) (jget (this).propertiesHashMap) (jget (this).base.pageContext))
            method <- (Class.getMethod ((jio (jobjectGetClass anyType))) "adjustBasket" javaNull)
            let emptyBoolean = (javaCast (jio (Method.invoke method anyType javaNull)) :: Bool)
            pure (emptyBoolean)


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: BasketTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: BasketTag))

doStartTag_impl :: BasketTag -> IO (Int)
doStartTag_impl this = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jget (this).command) /= javaNull) $ do
                assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
                jset (this).propertiesHashMap (assignedValue)
                Control.Monad.void (HashMap.put ((jget (this).propertiesHashMap)) (jget ((jio (StoreFrontData.getInstance))).nAME) (jget (this).storeName))
                if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (BasketData.iNSERT)) - 1) == 0) then do
                    when (Prelude.not (jio (BasketTag.addItemToBasket this))) $ do
                        Control.Monad.void (println ((jio (getOut ((jget (this).base.pageContext))))) "Item is not currently being sold.<p/>")
                else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (BasketData.dELETE)) - 1) == 0) then do
                    Control.Monad.void (BasketTag.removeItemFromBasket this)
                else if ((Prelude.fromEnum (Prelude.compare (jget (this).command) (BasketData.aDJUST)) - 1) == 0) then do
                    Control.Monad.void (BasketTag.adjustBasket this)
                else when ((Prelude.fromEnum (Prelude.compare (jget (this).command) (BasketData.iSEMPTY)) - 1) == 0) $ do
                    if (jio (BasketTag.isBasketEmpty this)) then do
                        javaReturn ((jget (this).base.eVAL_BODY_INCLUDE))
                    else do
                        javaReturn (sKIP_BODY)
            pure (sKIP_BODY)


