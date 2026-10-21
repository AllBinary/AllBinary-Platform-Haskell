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
-- package views.business.context.modules.storefront
module HttpStoreComponentView (module HttpStoreComponentView, module HttpComponentView) where

import HttpComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, logUtil, commonStrings)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StoreTransformer -- org.allbinary.logic.visual.transform.StoreTransformer
import qualified TransformStoreDocumentFactory -- org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified HttpComponentView -- views.HttpComponentView

data HttpStoreComponentView = HttpStoreComponentView
    { header_ :: JavaHeader
    , base :: HttpComponentView.HttpComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    }

instance JavaNull HttpStoreComponentView where
    javaNull = javaNullRecord "HttpStoreComponentView"

instance JavaEquals HttpStoreComponentView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq HttpStoreComponentView where
    (==) = jrecordEquals

instance JavaObjectClass HttpStoreComponentView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO HttpStoreComponentView
newRecord_ = do
    base <- HttpComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    let this = HttpStoreComponentView header_ base logUtil commonStrings
    jregisterLevel header_ this
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: HttpStoreComponentView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO HttpStoreComponentView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: HttpStoreComponentView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this (jget ((jget (this).commonStrings)).cONSTRUCTOR))
        Control.Monad.void (HttpComponentView.setTransformDocumentInterface this (jio (TransformStoreDocumentFactory.getInstance (jio (HttpComponentView.getPageContext this)) (jio (HttpComponentView.getWeblisketSession this)))))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: HttpStoreComponentView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: HttpStoreComponentView))

view_impl :: HttpStoreComponentView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "view" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "view")
            Control.Monad.void (HttpComponentView.toXmlDoc this)
            success <- (XmlDocumentHelper.toString (jio (HttpComponentView.getDoc this)))
            result <- (StoreTransformer.translate ((jio (StoreTransformer.new_2 (jget (this).base.abeClientInformation) (jio (HttpComponentView.getTransformInfoInterface this))))) success)
            pure (result)


