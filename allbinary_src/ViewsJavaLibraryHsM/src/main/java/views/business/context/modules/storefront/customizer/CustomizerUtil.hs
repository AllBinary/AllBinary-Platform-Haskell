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
-- package views.business.context.modules.storefront.customizer
module CustomizerUtil where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified TransformInfoEntity -- org.allbinary.data.tables.transform.info.TransformInfoEntity
import qualified TransformInfoEntityBuilder -- org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfo -- org.allbinary.logic.visual.transform.info.TransformInfo
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface
import qualified Document -- org.w3c.dom.Document

data CustomizerUtil = CustomizerUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull CustomizerUtil where
    javaNull = javaNullRecord "CustomizerUtil"

instance JavaEquals CustomizerUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CustomizerUtil where
    (==) = jrecordEquals

instance JavaObjectClass CustomizerUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CustomizerUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = CustomizerUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getTransformInfoInterfaceToCustomize" (\() -> getTransformInfoInterfaceToCustomize_impl this)
    jregisterMethod header_ "getTransformInfoObjectConfigComponentNodesToCustomize" (\() -> getTransformInfoObjectConfigComponentNodesToCustomize_impl this)
    jregisterMethod header_ "getTransformInfoObjectConfigComponentNodes" (\() -> getTransformInfoObjectConfigComponentNodes_impl this)
    jregisterMethod header_ "getTransformInfoObjectConfigGroupComponentNodes" (\() -> getTransformInfoObjectConfigGroupComponentNodes_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "write" (\() -> write_impl this)
    jregisterMethod header_ "getViewDataForComponentsInObjectConfig" (\() -> getViewDataForComponentsInObjectConfig_impl this)
    pure this

initFields_ :: CustomizerUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (CustomizerUtil)
getInstance = do
        pure (CustomizerUtil.instance_)

new_ :: IO CustomizerUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CustomizerUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getTransformInfoInterfaceToCustomize :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterfaceToCustomize object_ a1 a2 = jmethod object_ "getTransformInfoInterfaceToCustomize" (\() -> (getTransformInfoInterfaceToCustomize_impl (javaCast object_ :: CustomizerUtil))) () a1 a2

getTransformInfoInterfaceToCustomize_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterfaceToCustomize_super object_ a1 a2 = (getTransformInfoInterfaceToCustomize_impl (javaCast object_ :: CustomizerUtil)) a1 a2

getTransformInfoInterfaceToCustomize_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterfaceToCustomize_impl this customizerTransformInfoInterface transformInfoInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName customizerTransformInfoInterface))) this "getTransformInfoInterfaceToCustomize()")
        transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
        viewName <- (TransformInfoInterface.getName transformInfoInterface)
        let httpTransformInfoInterface = (javaCast customizerTransformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        customizedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewName (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
        pure (customizedTransformInfoInterface)


-- throws Exception
getTransformInfoObjectConfigComponentNodesToCustomize :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodesToCustomize object_ a1 a2 = jmethod object_ "getTransformInfoObjectConfigComponentNodesToCustomize" (\() -> (getTransformInfoObjectConfigComponentNodesToCustomize_impl (javaCast object_ :: CustomizerUtil))) () a1 a2

getTransformInfoObjectConfigComponentNodesToCustomize_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodesToCustomize_super object_ a1 a2 = (getTransformInfoObjectConfigComponentNodesToCustomize_impl (javaCast object_ :: CustomizerUtil)) a1 a2

getTransformInfoObjectConfigComponentNodesToCustomize_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodesToCustomize_impl this customizerTransformInfoInterface transformInfoInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName customizerTransformInfoInterface))) this "getTransformInfoObjectConfigComponentNodesToCustomize()")
        transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
        viewName <- (TransformInfoInterface.getName transformInfoInterface)
        let httpTransformInfoInterface = (javaCast customizerTransformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        customizedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewName (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
        (CustomizerUtil.getTransformInfoObjectConfigComponentNodes this customizedTransformInfoInterface)


-- throws Exception
getTransformInfoObjectConfigComponentNodes :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodes object_ a1 = jmethod object_ "getTransformInfoObjectConfigComponentNodes" (\() -> (getTransformInfoObjectConfigComponentNodes_impl (javaCast object_ :: CustomizerUtil))) () a1

getTransformInfoObjectConfigComponentNodes_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodes_super object_ a1 = (getTransformInfoObjectConfigComponentNodes_impl (javaCast object_ :: CustomizerUtil)) a1

getTransformInfoObjectConfigComponentNodes_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigComponentNodes_impl this transformInfoInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "getTransformInfoObjectConfigComponentNodes()")
        transformInfoObjectConfigInterface <- (TransformInfoInterface.getObjectConfigInterface transformInfoInterface)
        (TransformInfoObjectConfigInterface.getTransforms transformInfoObjectConfigInterface)


-- throws Exception
getTransformInfoObjectConfigGroupComponentNodes :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigGroupComponentNodes object_ a1 = jmethod object_ "getTransformInfoObjectConfigGroupComponentNodes" (\() -> (getTransformInfoObjectConfigGroupComponentNodes_impl (javaCast object_ :: CustomizerUtil))) () a1

getTransformInfoObjectConfigGroupComponentNodes_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigGroupComponentNodes_super object_ a1 = (getTransformInfoObjectConfigGroupComponentNodes_impl (javaCast object_ :: CustomizerUtil)) a1

getTransformInfoObjectConfigGroupComponentNodes_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> IO (BasicArrayList.BasicArrayList)
getTransformInfoObjectConfigGroupComponentNodes_impl this transformInfoInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "getTransformInfoObjectConfigComponentNodes()")
        transformInfoObjectConfigInterface <- (TransformInfoInterface.getObjectConfigInterface transformInfoInterface)
        (TransformInfoObjectConfigInterface.getGroupTransforms transformInfoObjectConfigInterface)


-- throws Exception
insert :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> DomNodeInterface.DomNodeInterface -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: CustomizerUtil))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> DomNodeInterface.DomNodeInterface -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: CustomizerUtil)) a1 a2

insert_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> DomNodeInterface.DomNodeInterface -> IO (())
insert_impl this transformInfoInterface domNodeInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "insert()")
        transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
        allViewsToBeModified <- (CustomizerUtil.getTransformInfoObjectConfigGroupComponentNodes this transformInfoInterface)
        document <- (DomDocumentHelper.create)
        Control.Monad.void (Document.appendChild document (jio (DomNodeInterface.toXmlNode domNodeInterface document)))
        documentString <- (XmlDocumentHelper.toString document)
        stringBuffer <- (StringMaker.new_)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (StringMaker.append stringBuffer "Total Views For Modification: ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size allViewsToBeModified)))
            Control.Monad.void (StringMaker.append stringBuffer " New Xml/Data: ")
            Control.Monad.void (StringMaker.append stringBuffer documentString)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
        Control.Monad.void (TransformInfoInterface.setData transformInfoInterface documentString)
        size <- (BasicArrayList.size allViewsToBeModified)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let transformInfo = (javaCast (jio (BasicArrayList.get allViewsToBeModified index)) :: TransformInfo.TransformInfo)
            viewNameOfViewToBeModified <- (TransformInfo.getName transformInfo)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName transformInfoInterface)))
                Control.Monad.void (StringMaker.append stringBuffer " is modifying view: ")
                Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
            let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            specifiedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewNameOfViewToBeModified (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
            if (specifiedTransformInfoInterface == javaNull) then do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName transformInfoInterface)))
                    Control.Monad.void (StringMaker.append stringBuffer " is unable to add data to view: ")
                    Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                    Control.Monad.void (StringMaker.append stringBuffer " since it does not exist")
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (((jio (TransformInfoInterface.getName transformInfoInterface)) ++ " is adding data to view: ") ++ viewNameOfViewToBeModified) this "insert()")
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (StringMaker.delete stringBuffer 0 (jio (StringMaker.length stringBuffer)))
                    Control.Monad.void (StringMaker.append stringBuffer viewNameOfViewToBeModified)
                    Control.Monad.void (StringMaker.append stringBuffer " is changing data in ")
                    Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.toString ((jio (TransformInfoInterface.getDataFilePath specifiedTransformInfoInterface))))))
                    Control.Monad.void (StringMaker.append stringBuffer " to the following data:\n")
                    Control.Monad.void (StringMaker.append stringBuffer documentString)
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "insert()")
                Control.Monad.void (CustomizerUtil.write this specifiedTransformInfoInterface documentString)
        pure ()


-- throws Exception
write :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> String -> IO (())
write object_ a1 a2 = jmethod object_ "write" (\() -> (write_impl (javaCast object_ :: CustomizerUtil))) () a1 a2

write_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> String -> IO (())
write_super object_ a1 a2 = (write_impl (javaCast object_ :: CustomizerUtil)) a1 a2

write_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> String -> IO (())
write_impl this specifiedTransformInfoInterface documentString = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName specifiedTransformInfoInterface))) this "write()")
        transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
        Control.Monad.void (TransformInfoInterface.setData specifiedTransformInfoInterface documentString)
        Control.Monad.void (TransformInfoEntity.update transformInfoEntityInterface (jio (TransformInfoInterface.toHashMap specifiedTransformInfoInterface)))
        pure ()


-- throws Exception
getViewDataForComponentsInObjectConfig :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Document.Document)
getViewDataForComponentsInObjectConfig object_ a1 = jmethod object_ "getViewDataForComponentsInObjectConfig" (\() -> (getViewDataForComponentsInObjectConfig_impl (javaCast object_ :: CustomizerUtil))) () a1

getViewDataForComponentsInObjectConfig_super :: (JavaObjectClass this_) => this_ -> TransformInfoInterface.TransformInfoInterface -> IO (Document.Document)
getViewDataForComponentsInObjectConfig_super object_ a1 = (getViewDataForComponentsInObjectConfig_impl (javaCast object_ :: CustomizerUtil)) a1

getViewDataForComponentsInObjectConfig_impl :: CustomizerUtil -> TransformInfoInterface.TransformInfoInterface -> IO (Document.Document)
getViewDataForComponentsInObjectConfig_impl this transformInfoInterface = do
    javaCatchReturn $ do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("View Name: " ++ (jio (TransformInfoInterface.getName transformInfoInterface))) this "getViewDataForComponentsInObjectConfig()")
        transformInfoObjectConfigInterface <- (TransformInfoInterface.getObjectConfigInterface transformInfoInterface)
        allViewsToBeModified <- (TransformInfoObjectConfigInterface.getGroupTransforms transformInfoObjectConfigInterface)
        transformInfoEntityInterface <- (TransformInfoEntityBuilder.getInstance)
        size <- (BasicArrayList.size allViewsToBeModified)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let nextTransformInfoInterface = (javaCast (jio (BasicArrayList.get allViewsToBeModified index)) :: TransformInfo.TransformInfo)
            viewNameOfViewToBeModified <- (TransformInfo.getName nextTransformInfoInterface)
            let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
            specifiedTransformInfoInterface <- (TransformInfoEntity.get transformInfoEntityInterface viewNameOfViewToBeModified (jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface)) (jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface)))
            javaReturn =<< (TransformInfoInterface.getDataDocument specifiedTransformInfoInterface)
        javaThrow ((JavaException "Exception" "No Components Specified in ObjectConfig"))


