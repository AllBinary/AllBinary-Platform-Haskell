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
-- package views.business.context.modules.storefront.customizer.template.objectConfig
module NoTemplateTransformInfoObjectConfig (module NoTemplateTransformInfoObjectConfig, module TransformInfoObjectConfig) where

import TransformInfoObjectConfig hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, generate, generate_super, generate_impl, logUtil)
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
import qualified HashMap -- java.util.HashMap
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Replace -- org.allbinary.logic.string.regex.replace.Replace
import qualified TransformInfoData -- org.allbinary.logic.visual.transform.info.TransformInfoData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfig -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified TransformTemplateCustomizerUtil -- org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil
import qualified Document -- org.w3c.dom.Document

data NoTemplateTransformInfoObjectConfig = NoTemplateTransformInfoObjectConfig
    { header_ :: JavaHeader
    , base :: TransformInfoObjectConfig.TransformInfoObjectConfig
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull NoTemplateTransformInfoObjectConfig where
    javaNull = javaNullRecord "NoTemplateTransformInfoObjectConfig"

instance JavaEquals NoTemplateTransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NoTemplateTransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass NoTemplateTransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO NoTemplateTransformInfoObjectConfig
newRecord_ = do
    base <- TransformInfoObjectConfig.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = NoTemplateTransformInfoObjectConfig header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "generate" (\() -> generate_impl this)
    pure this

initFields_ :: NoTemplateTransformInfoObjectConfig -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO NoTemplateTransformInfoObjectConfig
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: NoTemplateTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        TransformInfoObjectConfig.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO NoTemplateTransformInfoObjectConfig
new_2 transformInfoInterface document = do
    this <- newRecord_
    init_2 this transformInfoInterface document
    pure this

init_2 :: NoTemplateTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_2 this transformInfoInterface document = do
        TransformInfoObjectConfig.init_2 this.base (transformInfoInterface) (document)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TransformInfoObjectConfig.setDocument this (jio (NoTemplateTransformInfoObjectConfig.generate this (jio (TransformInfoObjectConfig.toXmlDoc this)))))
        pure ()

new_3 :: TransformInfoInterface.TransformInfoInterface -> String -> String -> IO NoTemplateTransformInfoObjectConfig
new_3 transformInfoInterface name type_ = do
    this <- newRecord_
    init_3 this transformInfoInterface name type_
    pure this

init_3 :: NoTemplateTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_3 this transformInfoInterface name type_ = do
        TransformInfoObjectConfig.init_3 this.base (transformInfoInterface) (name) (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (TransformInfoObjectConfig.setDocument this (jio (NoTemplateTransformInfoObjectConfig.generate this (jio (TransformInfoObjectConfig.toXmlDoc this)))))
        pure ()


-- throws Exception
generate :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate object_ a1 = jmethod object_ "generate" (\() -> (generate_impl (javaCast object_ :: NoTemplateTransformInfoObjectConfig))) () a1

generate_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Document.Document)
generate_super object_ a1 = (generate_impl (javaCast object_ :: NoTemplateTransformInfoObjectConfig)) a1

generate_impl :: NoTemplateTransformInfoObjectConfig -> Document.Document -> IO (Document.Document)
generate_impl this objectConfigDocument = do
        docString <- (XmlDocumentHelper.toString objectConfigDocument)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Initial ObjectConfig: " ++ docString) this "generate()")
        storeName <- (TransformInfoInterface.getStoreName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))
        viewName <- (TransformInfoInterface.getName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))
        hashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        let vARKEY = (jget ((jio (TransformInfoObjectConfigData.getInstance))).vARKEY)
        Control.Monad.void (HashMap.put hashMap (vARKEY ++ javaToString (jget ((jio (StoreFrontData.getInstance))).nAME)) storeName)
        Control.Monad.void (HashMap.put hashMap (vARKEY ++ javaToString (jget ((jio (TransformInfoData.getInstance))).oWNER)) viewName)
        pageName <- (TransformTemplateCustomizerUtil.getPageNameHack ((jio (TransformTemplateCustomizerUtil.getInstance))) (jio (TransformInfoInterface.getName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))) (jio (TransformInfoInterface.getStoreName ((jio (TransformInfoObjectConfig.getTransformInfoInterface this))))))
        Control.Monad.void (HashMap.put hashMap (vARKEY ++ javaToString (jget ((jio (TransformInfoData.getInstance))).pARTIAL)) pageName)
        replace <- (Replace.new_1 hashMap)
        newObjectConfigDocument <- (DomDocumentHelper.create (jio (Replace.all replace docString)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Final ObjectConfig: " ++ (jio (XmlDocumentHelper.toString newObjectConfigDocument))) this "generate()")
        pure (newObjectConfigDocument)


