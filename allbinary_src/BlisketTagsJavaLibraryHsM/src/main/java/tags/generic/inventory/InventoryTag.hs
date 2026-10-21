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
-- package tags.generic.inventory
module InventoryTag (module InventoryTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, search, search_super, search_impl, viewSummary, viewSummary_super, viewSummary_impl, doStartTag, doStartTag_super, doStartTag_impl, logUtil)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified InventoryHelperFactory -- taghelpers.InventoryHelperFactory
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data InventoryTag = InventoryTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InventoryTag where
    javaNull = javaNullRecord "InventoryTag"

instance JavaEquals InventoryTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryTag where
    (==) = jrecordEquals

instance JavaObjectClass InventoryTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InventoryTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = InventoryTag header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "search" (\() -> search_impl this)
    jregisterMethod header_ "viewSummary" (\() -> viewSummary_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: InventoryTag -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO InventoryTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


-- throws LicensingException
search :: (JavaObjectClass this_) => this_ -> IO (())
search object_ = jmethod object_ "search" (\() -> (search_impl (javaCast object_ :: InventoryTag))) ()

search_super :: (JavaObjectClass this_) => this_ -> IO (())
search_super object_ = (search_impl (javaCast object_ :: InventoryTag))

search_impl :: InventoryTag -> IO (())
search_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (InventoryHelperFactory.getInstance ((jio (InventoryHelperFactory.new_))) (jio (StoreValidationTransformTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            addressHelperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod addressHelperClass "search" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) result)
        pure ()


-- throws LicensingException
viewSummary :: (JavaObjectClass this_) => this_ -> IO (())
viewSummary object_ = jmethod object_ "viewSummary" (\() -> (viewSummary_impl (javaCast object_ :: InventoryTag))) ()

viewSummary_super :: (JavaObjectClass this_) => this_ -> IO (())
viewSummary_super object_ = (viewSummary_impl (javaCast object_ :: InventoryTag))

viewSummary_impl :: InventoryTag -> IO (())
viewSummary_impl this = do
        handle (\(e :: JavaException) -> do
            javaThrow (e)
            ) $ do
            anyType <- (InventoryHelperFactory.getInstance ((jio (InventoryHelperFactory.new_))) (jio (StoreValidationTransformTag.getPropertiesHashMap this)) (jget (this).base.pageContext))
            helperClass <- (jobjectGetClass anyType)
            method <- (Class.getMethod helperClass "viewSummary" javaNull)
            let result = (javaCast (jio (Method.invoke method anyType javaNull)) :: String)
            Control.Monad.void (print ((jio (getOut ((jget this.base.pageContext))))) result)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: InventoryTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: InventoryTag))

doStartTag_impl :: InventoryTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagLicensingRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).sEARCH)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Basic Search Inventory View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.inventory.AutoSearchValidationInventoryView")
                    Control.Monad.void (InventoryTag.search this)
                    javaReturn (eVAL_BODY_INCLUDE)
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEWSUMMARY)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Basic Inventory View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.inventory.AutoValidationInventoryView")
                    Control.Monad.void (InventoryTag.viewSummary this)
                    javaReturn (eVAL_BODY_INCLUDE)
                else if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    Control.Monad.void (StoreValidationTransformTag.setName this "Basic Inventory View")
                    Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.inventory.AutoValidationInventoryView")
                    javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
            javaThrow ((JavaException "Exception" "Command Null"))


