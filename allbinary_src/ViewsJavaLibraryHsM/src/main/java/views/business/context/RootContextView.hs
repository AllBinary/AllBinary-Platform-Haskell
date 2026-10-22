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
-- package views.business.context
module RootContextView (module RootContextView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, view, view_super, view_impl, getName, getName_super, getName_impl, logUtil)
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
import qualified AbeClientInformationInterface -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformInfo -- org.allbinary.logic.visual.transform.info.TransformInfo
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformTemplateInterface -- org.allbinary.logic.visual.transform.template.TransformTemplateInterface
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView
import qualified NoTemplateTransformInfoObjectConfig -- views.business.context.modules.storefront.customizer.template.objectConfig.NoTemplateTransformInfoObjectConfig

-- implements TransformTemplateInterface
data RootContextView = RootContextView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull RootContextView where
    javaNull = javaNullRecord "RootContextView"

instance JavaEquals RootContextView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq RootContextView where
    (==) = jrecordEquals

instance JavaObjectClass RootContextView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO RootContextView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = RootContextView header_ base logUtil
    jregisterLevel header_ this
    TransformTemplateInterface.registerInterface_ header_
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "getName" (\() -> getName_impl this)
    pure this

initFields_ :: RootContextView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO RootContextView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: RootContextView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "RootContextView()")
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: RootContextView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: RootContextView))

view_impl :: RootContextView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName ((jio (HttpStoreComponentView.getTransformInfoInterface this)))))) this "view()")
            viewName <- (RootContextView.getName this)
            componentInterface <- (fmap (\value_ -> javaCast value_ :: TransformInterface.TransformInterface) (TransformFactory.getInstance_3 ((jio (TransformFactory.getInstance))) (jget (this).base.base.abeClientInformation) viewName (jio (HttpStoreComponentView.getTransformInfoInterface this))))
            (TransformInterface.view componentInterface)


-- throws Exception
getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: RootContextView))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: RootContextView))

getName_impl :: RootContextView -> IO (String)
getName_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "getName()" e)
            javaThrow (e)
            ) $ do
            objectConfig <- (NoTemplateTransformInfoObjectConfig.new_2 (jio (HttpStoreComponentView.getTransformInfoInterface this)) (jio (TransformInfoInterface.toXmlDoc ((jio (TransformInfoInterface.getObjectConfigInterface ((jio (HttpStoreComponentView.getTransformInfoInterface this)))))))))
            componentsVector <- (NoTemplateTransformInfoObjectConfig.getTransforms_0 objectConfig)
            when ((jio (BasicArrayList.size componentsVector)) == 0) $ do
                javaThrow ((JavaException "Exception" "Template View Not Set - No Components"))
            when ((jio (BasicArrayList.size componentsVector)) > 1) $ do
                javaThrow ((JavaException "Exception" ("To Many Root Template Views: " ++ javaToString (jio (BasicArrayList.size componentsVector)))))
            let transformInfoInterface = (javaCast (jio (BasicArrayList.get componentsVector 0)) :: TransformInfo.TransformInfo)
            viewName <- (TransformInfo.getName transformInfoInterface)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Root Template With View Name: " ++ viewName) this "getName()")
            when (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) viewName)) $ do
                javaThrow ((JavaException "Exception" "Template View Not Set - No View Name"))
            pure (viewName)


