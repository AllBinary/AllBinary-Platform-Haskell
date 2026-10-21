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
-- package views.business.context.modules.storefront.customizer.hedges.header
module InsertHeaderValidationView (module InsertHeaderValidationView, module TopBarView) where

import TopBarView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlDoc, toXmlDoc_super, toXmlDoc_impl, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, logUtil, lOGOPATH)
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
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified MultipartRequestParams -- org.allbinary.logic.communication.http.request.MultipartRequestParams
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified HeadingValidation -- org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation
import qualified LogoData -- org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified CustomizerUtil -- views.business.context.modules.storefront.customizer.CustomizerUtil
import qualified TopBarView

-- implements ValidationComponentInterface
data InsertHeaderValidationView = InsertHeaderValidationView
    { header_ :: JavaHeader
    , base :: TopBarView.TopBarView
    , logUtil :: IORef (LogUtil.LogUtil)
    , lOGOPATH :: IORef (String)
    }

instance JavaNull InsertHeaderValidationView where
    javaNull = javaNullRecord "InsertHeaderValidationView"

instance JavaEquals InsertHeaderValidationView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InsertHeaderValidationView where
    (==) = jrecordEquals

instance JavaObjectClass InsertHeaderValidationView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InsertHeaderValidationView
newRecord_ = do
    base <- TopBarView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    lOGOPATH <- newIORef ""
    let this = InsertHeaderValidationView header_ base logUtil lOGOPATH
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    pure this

initFields_ :: InsertHeaderValidationView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.lOGOPATH ("logo/")
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO InsertHeaderValidationView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: InsertHeaderValidationView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TopBarView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        multipartRequestHashMap <- (MultipartRequestParams.toHashMap ((jio (MultipartRequestParams.new_1 (jio (TopBarView.getPageContext this))))))
        storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName ((jio (TopBarView.getWeblisketSession this)))))))
        let fullPath = (javaToString ((jio (URLGLOBALS.getWebappPath)) + (jio (StoreFrontInterface.getCurrentHostNamePath storeFrontInterface))) ++ (jget (this).lOGOPATH))
        Control.Monad.void (HashMap.put multipartRequestHashMap (jget ((jio (LogoData.getInstance))).iMAGEPATH) fullPath)
        assignedValue <- (HeadingValidation.new_1 multipartRequestHashMap)
        jset (this).base.heading (assignedValue)
        pure ()


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: InsertHeaderValidationView))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: InsertHeaderValidationView))

toXmlDoc_impl :: InsertHeaderValidationView -> IO (Document.Document)
toXmlDoc_impl this = do
        pure (javaNull)


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: InsertHeaderValidationView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: InsertHeaderValidationView))

isValid_impl :: InsertHeaderValidationView -> IO (Bool)
isValid_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "topbarValidation" this (jget ((jget (this).base.base.commonStrings)).iS_VALID))
            isValid <- (HeadingValidation.isValid ((jget (this).base.heading)))
            when (isValid == True) $ do
                Control.Monad.void (CustomizerUtil.insert ((jio (CustomizerUtil.getInstance))) (jio (TopBarView.getTransformInfoInterface this)) (javaCast this :: DomNodeInterface.DomNodeInterface))
            pure (isValid)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: InsertHeaderValidationView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: InsertHeaderValidationView))

validationInfo_impl :: InsertHeaderValidationView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer (jio (HeadingValidation.validationInfo ((jget (this).base.heading)))))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: InsertHeaderValidationView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: InsertHeaderValidationView))

toValidationInfoDoc_impl :: InsertHeaderValidationView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: InsertHeaderValidationView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: InsertHeaderValidationView)) a1

toValidationInfoNode_impl :: InsertHeaderValidationView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


