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
-- package admin.taghelpers
module StaticPagesRequestHelper (module StaticPagesRequestHelper, module AbContext) where

import AbContext hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getFormData, getFormData_super, getFormData_impl, email, email_super, email_impl, generateStaticPages, generateStaticPages_super, generateStaticPages_impl, makePublic, makePublic_super, makePublic_impl, logUtil, abeClientInformation, request, storeName, searchParams, xslFile)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified AbContext -- org.allbinary.business.context.AbContext
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified AcceptableResponseGenerator -- org.allbinary.logic.communication.http.AcceptableResponseGenerator
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified UserEmailEventNameData -- org.allbinary.logic.communication.smtp.event.UserEmailEventNameData
import qualified UserEmailEventHandler -- org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler
import qualified AdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons
import qualified StoreAdminUserEmailEventHandlerSingletons -- org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons
import qualified AdminEmailInfo -- org.allbinary.logic.communication.smtp.info.AdminEmailInfo
import qualified BasicEmailInfo -- org.allbinary.logic.communication.smtp.info.BasicEmailInfo
import qualified EmailInfo -- org.allbinary.logic.communication.smtp.info.EmailInfo
import qualified StoreEmailInfo -- org.allbinary.logic.communication.smtp.info.StoreEmailInfo
import qualified SearchParams -- org.allbinary.logic.control.search.SearchParams
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified FileUtil -- org.allbinary.logic.io.file.FileUtil
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified ProductListingFactory -- views.admin.inventory.listings.ProductListingFactory
import qualified TagHelperInterface

-- implements TagHelperInterface
data StaticPagesRequestHelper = StaticPagesRequestHelper
    { header_ :: JavaHeader
    , base :: AbContext.AbContext
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , storeName :: IORef (String)
    , searchParams :: IORef (SearchParams.SearchParams)
    , xslFile :: IORef (String)
    }

instance JavaNull StaticPagesRequestHelper where
    javaNull = javaNullRecord "StaticPagesRequestHelper"

instance JavaEquals StaticPagesRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StaticPagesRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass StaticPagesRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO StaticPagesRequestHelper
newRecord_ = do
    base <- AbContext.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    request <- newIORef javaNull
    storeName <- newIORef ""
    searchParams <- newIORef javaNull
    xslFile <- newIORef ""
    let this = StaticPagesRequestHelper header_ base logUtil abeClientInformation request storeName searchParams xslFile
    jregisterLevel header_ this
    TagHelperInterface.registerInterface_ header_
    jregisterMethod header_ "getFormData" (\() -> getFormData_impl this)
    jregisterMethod header_ "email" (\() -> email_impl this)
    jregisterMethod header_ "generateStaticPages" (\() -> generateStaticPages_impl this)
    jregisterMethod header_ "makePublic" (\() -> makePublic_impl this)
    pure this

initFields_ :: StaticPagesRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.request (javaNull)
    jset this.storeName ("")
    jset this.searchParams (javaNull)
    jset this.xslFile (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO StaticPagesRequestHelper
new_2 propertiesHashMap pageContext = do
    this <- newRecord_
    init_2 this propertiesHashMap pageContext
    pure this

init_2 :: StaticPagesRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this propertiesHashMap pageContext = do
        AbContext.init_2 this.base (propertiesHashMap) (pageContext)
        initFields_ this
        pure () -- super(...) is in the record above
        jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
        jset (this).xslFile ((javaCast (jio (HashMap.get propertiesHashMap (jget ((jio (TransformInfoData.getInstance))).tEMPLATEFILENAME))) :: String))
        Control.Monad.void (StaticPagesRequestHelper.getFormData this)
        pure ()


getFormData :: (JavaObjectClass this_) => this_ -> IO (())
getFormData object_ = jmethod object_ "getFormData" (\() -> (getFormData_impl (javaCast object_ :: StaticPagesRequestHelper))) ()

getFormData_super :: (JavaObjectClass this_) => this_ -> IO (())
getFormData_super object_ = (getFormData_impl (javaCast object_ :: StaticPagesRequestHelper))

getFormData_impl :: StaticPagesRequestHelper -> IO (())
getFormData_impl this = do
        assignedValue <- (HttpServletRequest.getParameter ((jget (this).request)) (jget ((jio (StoreFrontData.getInstance))).nAME))
        jset (this).storeName (assignedValue)
        assignedValue <- (SearchParams.new_1 (jget (this).request))
        jset (this).searchParams (assignedValue)
        pure ()


-- throws Exception
email :: (JavaObjectClass this_) => this_ -> IO (())
email object_ = jmethod object_ "email" (\() -> (email_impl (javaCast object_ :: StaticPagesRequestHelper))) ()

email_super :: (JavaObjectClass this_) => this_ -> IO (())
email_super object_ = (email_impl (javaCast object_ :: StaticPagesRequestHelper))

email_impl :: StaticPagesRequestHelper -> IO (())
email_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).fAILURE) this "email" e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Generated Static Pages Notification Email" this "email")
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jget (this).storeName)))
            let adminEmailSubject = "Generated Static Pages Email Notification"
            let adminEmailTextBody = ("Generated static pages for store: " ++ (jget (this).storeName))
            let adminBasicEmailInfo = (javaCast (jio (AdminEmailInfo.new_2 adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
            let storeAdminBasicEmailInfo = (javaCast (jio (StoreEmailInfo.new_3 storeFrontInterface adminEmailSubject adminEmailTextBody)) :: BasicEmailInfo.BasicEmailInfo)
            storeAdminEmailInfo <- (EmailInfo.new_1 storeAdminBasicEmailInfo)
            adminEmailInfo <- (EmailInfo.new_1 adminBasicEmailInfo)
            adminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (AdminUserEmailEventHandlerSingletons.getInstance_2 ((jio (AdminUserEmailEventHandlerSingletons.getInstance))) (jget (this).abeClientInformation) (UserEmailEventNameData.sTOREGENERATINGSTATICPAGES)))
            storeAdminUserEmailEventHandler <- (fmap (\value_ -> javaCast value_ :: UserEmailEventHandler.UserEmailEventHandler) (StoreAdminUserEmailEventHandlerSingletons.getInstance_3 ((jio (StoreAdminUserEmailEventHandlerSingletons.getInstance))) (UserEmailEventNameData.sTOREGENERATINGSTATICPAGES) (jget (this).abeClientInformation) storeFrontInterface))
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo storeAdminUserEmailEventHandler (UserEmailEventNameData.sTOREGENERATINGSTATICPAGES) storeAdminEmailInfo)
            Control.Monad.void (UserEmailEventHandler.receiveEmailInfo adminUserEmailEventHandler (UserEmailEventNameData.sTOREGENERATINGSTATICPAGES) adminEmailInfo)
        pure ()


generateStaticPages :: (JavaObjectClass this_) => this_ -> IO (String)
generateStaticPages object_ = jmethod object_ "generateStaticPages" (\() -> (generateStaticPages_impl (javaCast object_ :: StaticPagesRequestHelper))) ()

generateStaticPages_super :: (JavaObjectClass this_) => this_ -> IO (String)
generateStaticPages_super object_ = (generateStaticPages_impl (javaCast object_ :: StaticPagesRequestHelper))

generateStaticPages_impl :: StaticPagesRequestHelper -> IO (String)
generateStaticPages_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to generate staticpages table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "generateStaticPages()" e)
            pure (error)
            ) $ do
            contentType <- (AcceptableResponseGenerator.get ((jio (AcceptableResponseGenerator.getInstance))) (jget (this).request))
            searchRequest <- (SearchRequest.new_6 javaNull (jget (this).searchParams) (jget (this).xslFile) contentType (jio (AbContext.getPropertiesHashMap this)) (jio (AbContext.getPageContext this)))
            success <- (ProductListingInterface.generateAll ((jio (ProductListingFactory.getInstance searchRequest))) (jget (this).storeName))
            Control.Monad.void (StaticPagesRequestHelper.email this)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "generateStaticPages()")
            pure (success)


makePublic :: (JavaObjectClass this_) => this_ -> IO (String)
makePublic object_ = jmethod object_ "makePublic" (\() -> (makePublic_impl (javaCast object_ :: StaticPagesRequestHelper))) ()

makePublic_super :: (JavaObjectClass this_) => this_ -> IO (String)
makePublic_super object_ = (makePublic_impl (javaCast object_ :: StaticPagesRequestHelper))

makePublic_impl :: StaticPagesRequestHelper -> IO (String)
makePublic_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to makePublic"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "makePublic()" e)
            pure (error)
            ) $ do
            storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jget (this).storeName)))
            fromAbPath <- (AbPath.new_2 ((jio (StoreFrontInterface.getTestHtmlPath storeFrontInterface)) + (jio (StoreFrontInterface.getStaticPath storeFrontInterface))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            toAbPath <- (AbPath.new_2 (((javaToString (jio (URLGLOBALS.getWebappPath)) ++ (jio (StoreFrontInterface.getName storeFrontInterface))) ++ javaToString (jget ((jio (AbPathData.getInstance))).sEPARATOR)) ++ javaToString (jio (StoreFrontInterface.getStaticPath storeFrontInterface))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            Control.Monad.void (FileUtil.copy ((jio (FileUtil.getInstance))) fromAbPath toAbPath)
            let success = "Made Public"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "makePublic()")
            pure (success)


