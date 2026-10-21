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
-- package views.admin.customizers
module CustomizersView (module CustomizersView, module HttpStoreComponentView) where

import HttpStoreComponentView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, toXmlNode, toXmlNode_super, toXmlNode_impl, addDomNodeInterfaces, addDomNodeInterfaces_super, addDomNodeInterfaces_impl, view, view_super, view_impl, logUtil, commonStrings, customizersVector)
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
import qualified Arrays -- java.util.Arrays
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified GLOBALS2 -- org.allbinary.globals.GLOBALS2
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringComparator -- org.allbinary.logic.control.sort.StringComparator
import qualified CustomizerTransformInfoData -- org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformTemplateCustomizerData -- org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData
import qualified TransformTemplateCustomizersData -- org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData
import qualified BodyData -- org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData
import qualified TitleData -- org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData
import qualified TransformTemplateCustomizerUtil -- org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpStoreComponentView -- views.business.context.modules.storefront.HttpStoreComponentView

-- implements DomNodeInterface
data CustomizersView = CustomizersView
    { header_ :: JavaHeader
    , base :: HttpStoreComponentView.HttpStoreComponentView
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , customizersVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull CustomizersView where
    javaNull = javaNullRecord "CustomizersView"

instance JavaEquals CustomizersView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomizersView where
    (==) = jrecordEquals

instance JavaObjectClass CustomizersView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CustomizersView
newRecord_ = do
    base <- HttpStoreComponentView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    customizersVector <- newIORef javaNull
    let this = CustomizersView header_ base logUtil commonStrings customizersVector
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    jregisterMethod header_ "addDomNodeInterfaces" (\() -> addDomNodeInterfaces_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: CustomizersView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.customizersVector (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO CustomizersView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: CustomizersView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpStoreComponentView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (TransformInfoEntity.getNames ((jio (TransformInfoEntityBuilder.getInstance))) (jio (WeblisketSession.getStoreName ((jio (HttpStoreComponentView.getWeblisketSession this))))))
        jset (this).customizersVector (assignedValue)
        pure ()


toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: CustomizersView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: CustomizersView)) a1

toXmlNode_impl :: CustomizersView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).xSLLOGGINGERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "toXmlNode" e)
            pure (javaNull)
            ) $ do
            node <- (Document.createElement document (jget TransformTemplateCustomizersData.nAME))
            unsortedCustomizerViewVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
            size <- (BasicArrayList.size ((jget (this).customizersVector)))
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let viewName = (javaCast (jio (BasicArrayList.get ((jget (this).customizersVector)) index)) :: String)
                when (((((jstringIndexOf viewName (CustomizerTransformInfoData.nAME) 0) > 0) && ((jstringIndexOf viewName (GLOBALS2.eDIT) 0) > 0)) && ((jstringIndexOf viewName (jget ((jio (BodyData.getInstance))).vIEWNAMEKEY) 0) > 0)) && ((jstringIndexOf viewName (jget ((jio (TitleData.getInstance))).vIEWNAMEKEY) 0) > 0)) $ do
                    Control.Monad.void (BasicArrayList.add unsortedCustomizerViewVector viewName)
            let objectArray = (javaCast (jio (BasicArrayList.toArray unsortedCustomizerViewVector)) :: JavaArray (Any.Any))
            Control.Monad.void (Arrays.sort objectArray (jio (StringComparator.new_)))
            forM_ [0 .. (jlength objectArray) - 1] $ \index -> javaIteration (pure ()) $ do
                let viewName = (javaCast (jindex objectArray (index)) :: String)
                viewNameNode <- (ModDomHelper.createNameValueNodes document (jget TransformTemplateCustomizerData.nAME) viewName (jio (TransformTemplateCustomizerUtil.getPageNameHack ((jio (TransformTemplateCustomizerUtil.getInstance))) viewName (jio (WeblisketSession.getStoreName ((jio (HttpStoreComponentView.getWeblisketSession this))))))))
                Control.Monad.void (Node.appendChild node viewNameNode)
            pure (node)


addDomNodeInterfaces :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces object_ = jmethod object_ "addDomNodeInterfaces" (\() -> (addDomNodeInterfaces_impl (javaCast object_ :: CustomizersView))) ()

addDomNodeInterfaces_super :: (JavaObjectClass this_) => this_ -> IO (())
addDomNodeInterfaces_super object_ = (addDomNodeInterfaces_impl (javaCast object_ :: CustomizersView))

addDomNodeInterfaces_impl :: CustomizersView -> IO (())
addDomNodeInterfaces_impl this = do
        Control.Monad.void (HttpStoreComponentView.addDomNodeInterface this (javaCast this :: DomNodeInterface.DomNodeInterface))
        pure ()


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: CustomizersView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: CustomizersView))

view_impl :: CustomizersView -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            Control.Monad.void (CustomizersView.addDomNodeInterfaces this)
            (HttpStoreComponentView.view_super this.base)


