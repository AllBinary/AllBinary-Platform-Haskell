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
module InsertTemplateCustomizerTransformInfoObjectConfig (module InsertTemplateCustomizerTransformInfoObjectConfig, module NoTemplateTransformInfoObjectConfig) where

import NoTemplateTransformInfoObjectConfig hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, set, set_super, set_impl, logUtil)
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
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified TransformInfoDomNodeView -- org.allbinary.logic.visual.transform.info.TransformInfoDomNodeView
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfosData -- org.allbinary.logic.visual.transform.info.TransformInfosData
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList
import qualified NoTemplateTransformInfoObjectConfig

data InsertTemplateCustomizerTransformInfoObjectConfig = InsertTemplateCustomizerTransformInfoObjectConfig
    { header_ :: JavaHeader
    , base :: NoTemplateTransformInfoObjectConfig.NoTemplateTransformInfoObjectConfig
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull InsertTemplateCustomizerTransformInfoObjectConfig where
    javaNull = javaNullRecord "InsertTemplateCustomizerTransformInfoObjectConfig"

instance JavaEquals InsertTemplateCustomizerTransformInfoObjectConfig where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InsertTemplateCustomizerTransformInfoObjectConfig where
    (==) = jrecordEquals

instance JavaObjectClass InsertTemplateCustomizerTransformInfoObjectConfig where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InsertTemplateCustomizerTransformInfoObjectConfig
newRecord_ = do
    base <- NoTemplateTransformInfoObjectConfig.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = InsertTemplateCustomizerTransformInfoObjectConfig header_ base logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "set" (\() -> set_impl this)
    pure this

initFields_ :: InsertTemplateCustomizerTransformInfoObjectConfig -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO InsertTemplateCustomizerTransformInfoObjectConfig
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: InsertTemplateCustomizerTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        NoTemplateTransformInfoObjectConfig.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_2 :: TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO InsertTemplateCustomizerTransformInfoObjectConfig
new_2 transformInfoInterface document = do
    this <- newRecord_
    init_2 this transformInfoInterface document
    pure this

init_2 :: InsertTemplateCustomizerTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> Document.Document -> IO ()
init_2 this transformInfoInterface document = do
        NoTemplateTransformInfoObjectConfig.init_2 this.base (transformInfoInterface) (document)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (NoTemplateTransformInfoObjectConfig.setDocument this (jio (NoTemplateTransformInfoObjectConfig.generate this (jio (NoTemplateTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()

new_3 :: TransformInfoInterface.TransformInfoInterface -> String -> String -> IO InsertTemplateCustomizerTransformInfoObjectConfig
new_3 transformInfoInterface name type_ = do
    this <- newRecord_
    init_3 this transformInfoInterface name type_
    pure this

init_3 :: InsertTemplateCustomizerTransformInfoObjectConfig -> TransformInfoInterface.TransformInfoInterface -> String -> String -> IO ()
init_3 this transformInfoInterface name type_ = do
        NoTemplateTransformInfoObjectConfig.init_3 this.base (transformInfoInterface) (name) (type_)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (NoTemplateTransformInfoObjectConfig.setDocument this (jio (NoTemplateTransformInfoObjectConfig.generate this (jio (NoTemplateTransformInfoObjectConfig.toXmlDoc this)))))
        pure ()


-- throws Exception
set :: (JavaObjectClass this_) => this_ -> String -> IO (())
set object_ a1 = jmethod object_ "set" (\() -> (set_impl (javaCast object_ :: InsertTemplateCustomizerTransformInfoObjectConfig))) () a1

set_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
set_super object_ a1 = (set_impl (javaCast object_ :: InsertTemplateCustomizerTransformInfoObjectConfig)) a1

set_impl :: InsertTemplateCustomizerTransformInfoObjectConfig -> String -> IO (())
set_impl this aParentViewName = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Setting: " ++ aParentViewName) this "set()")
        document <- (NoTemplateTransformInfoObjectConfig.toXmlDoc this)
        parentComponentsNodeList <- (Document.getElementsByTagName document (jget ((jio (TransformInfosData.getInstance))).nAME))
        if ((parentComponentsNodeList /= javaNull) && ((jio (NodeList.getLength parentComponentsNodeList)) > 0)) then do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Replacing" this "set()")
            componentNode <- (NodeList.item ((jio (NodeList.getChildNodes ((jio (NodeList.item parentComponentsNodeList 0)))))) 0)
            when (componentNode /= javaNull) $ do
                Control.Monad.void (Document.removeChild document componentNode)
            Control.Monad.void (NodeList.appendChild ((jio (NodeList.item parentComponentsNodeList 0))) (jio (TransformInfoDomNodeView.toXmlNode ((jio (TransformInfoDomNodeView.new_1 aParentViewName))) document)))
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Setting" this "set()")
            objectConfigNode <- (Document.item ((jio (Document.getElementsByTagName document (jget ((jio (TransformInfoObjectConfigData.getInstance))).nAME)))) 0)
            parentComponentsNode <- (Document.createElement document (jget ((jio (TransformInfosData.getInstance))).nAME))
            Control.Monad.void (Node.appendChild objectConfigNode parentComponentsNode)
            transformInfoDomNodeView <- (TransformInfoDomNodeView.new_1 aParentViewName)
            Control.Monad.void (Node.appendChild parentComponentsNode (jio (TransformInfoDomNodeView.toXmlNode transformInfoDomNodeView document)))
        pure ()


