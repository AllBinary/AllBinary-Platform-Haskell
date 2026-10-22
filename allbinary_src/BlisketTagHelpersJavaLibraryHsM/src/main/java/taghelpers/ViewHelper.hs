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
-- package taghelpers
module ViewHelper where

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
import qualified Class -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified TransformFactory -- org.allbinary.logic.visual.transform.TransformFactory
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified TransformDocumentInterface -- org.allbinary.logic.visual.transform.data.TransformDocumentInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document

-- implements TransformInterface
data ViewHelper = ViewHelper
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    , componentInterface :: IORef (TransformInterface.TransformInterface)
    , nO_TYPE :: IORef (Int)
    }

instance JavaNull ViewHelper where
    javaNull = javaNullRecord "ViewHelper"

instance JavaEquals ViewHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ViewHelper where
    (==) = jrecordEquals

instance JavaObjectClass ViewHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ViewHelper
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    componentInterface <- newIORef javaNull
    nO_TYPE <- newIORef 0
    let this = ViewHelper header_ logUtil commonStrings abeClientInformation componentInterface nO_TYPE
    jregisterLevel header_ this
    TransformInterface.registerInterface_ header_
    jregisterMethod header_ "getTypeId" (\() -> getTypeId_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    jregisterMethod header_ "toXmlDoc" (\() -> toXmlDoc_impl this)
    jregisterMethod header_ "getViewObject" (\() -> getViewObject_impl this)
    jregisterMethod header_ "getTransformInfoInterface" (\() -> getTransformInfoInterface_impl this)
    jregisterMethod header_ "getTransformDocumentInterface" (\() -> getTransformDocumentInterface_impl this)
    jregisterMethod header_ "setTransformDocumentInterface" (\() -> setTransformDocumentInterface_impl this)
    pure this

initFields_ :: ViewHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    jset this.componentInterface (javaNull)
    jset this.nO_TYPE (0)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO ViewHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: ViewHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        initFields_ this
        assignedValue <- (TransformFactory.getInstance_3 ((jio (TransformFactory.getInstance))) (jget (this).abeClientInformation) hashMap pageContext)
        jset (this).componentInterface (assignedValue)
        pure ()


getTypeId :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId object_ = jmethod object_ "getTypeId" (\() -> (getTypeId_impl (javaCast object_ :: ViewHelper))) ()

getTypeId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getTypeId_super object_ = (getTypeId_impl (javaCast object_ :: ViewHelper))

getTypeId_impl :: ViewHelper -> IO (Int)
getTypeId_impl this = do
        pure ((jget (this).nO_TYPE))


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: ViewHelper))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: ViewHelper))

view_impl :: ViewHelper -> IO (String)
view_impl this = do
        handle (\(e :: JavaException) -> do
            error <- newIORef ("Failed to View: ")
            if ((jget (this).componentInterface) /= javaNull) then do
                jset error (((jget error) ++ javaToString (jio (Class.getName ((jio (jobjectGetClass (jget (this).componentInterface))))))))
            else do
                jset error (((jget error) ++ javaToString "Unknown"))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            (TransformInterface.view ((jget (this).componentInterface)))


-- throws Exception
toXmlDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc object_ = jmethod object_ "toXmlDoc" (\() -> (toXmlDoc_impl (javaCast object_ :: ViewHelper))) ()

toXmlDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toXmlDoc_super object_ = (toXmlDoc_impl (javaCast object_ :: ViewHelper))

toXmlDoc_impl :: ViewHelper -> IO (Document.Document)
toXmlDoc_impl this = do
        handle (\(e :: JavaException) -> do
            error <- newIORef ("Failed to View: ")
            if ((jget (this).componentInterface) /= javaNull) then do
                jset error (((jget error) ++ javaToString (jio (Class.getName ((jio (jobjectGetClass (jget (this).componentInterface))))))))
            else do
                jset error (((jget error) ++ javaToString "Unknown"))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).eXCEPTION) this "view()" e)
            javaThrow (e)
            ) $ do
            javaThrow ((JavaException "Exception" ("Hmm: " ++ javaToString (jio (TransformInterface.getDoc ((jio (TransformInterface.getTransformDocumentInterface ((jget (this).componentInterface))))))))))


getViewObject :: (JavaObjectClass this_) => this_ -> IO (TransformInterface.TransformInterface)
getViewObject object_ = jmethod object_ "getViewObject" (\() -> (getViewObject_impl (javaCast object_ :: ViewHelper))) ()

getViewObject_super :: (JavaObjectClass this_) => this_ -> IO (TransformInterface.TransformInterface)
getViewObject_super object_ = (getViewObject_impl (javaCast object_ :: ViewHelper))

getViewObject_impl :: ViewHelper -> IO (TransformInterface.TransformInterface)
getViewObject_impl this = do
        pure ((jget (this).componentInterface))


-- throws Exception
getTransformInfoInterface :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface object_ = jmethod object_ "getTransformInfoInterface" (\() -> (getTransformInfoInterface_impl (javaCast object_ :: ViewHelper))) ()

getTransformInfoInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_super object_ = (getTransformInfoInterface_impl (javaCast object_ :: ViewHelper))

getTransformInfoInterface_impl :: ViewHelper -> IO (TransformInfoInterface.TransformInfoInterface)
getTransformInfoInterface_impl this = do
        (TransformInterface.getTransformInfoInterface ((jget (this).componentInterface)))


getTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface object_ = jmethod object_ "getTransformDocumentInterface" (\() -> (getTransformDocumentInterface_impl (javaCast object_ :: ViewHelper))) ()

getTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_super object_ = (getTransformDocumentInterface_impl (javaCast object_ :: ViewHelper))

getTransformDocumentInterface_impl :: ViewHelper -> IO (TransformDocumentInterface.TransformDocumentInterface)
getTransformDocumentInterface_impl this = do
        pure (javaNull)


setTransformDocumentInterface :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface object_ a1 = jmethod object_ "setTransformDocumentInterface" (\() -> (setTransformDocumentInterface_impl (javaCast object_ :: ViewHelper))) () a1

setTransformDocumentInterface_super :: (JavaObjectClass this_) => this_ -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_super object_ a1 = (setTransformDocumentInterface_impl (javaCast object_ :: ViewHelper)) a1

setTransformDocumentInterface_impl :: ViewHelper -> TransformDocumentInterface.TransformDocumentInterface -> IO (())
setTransformDocumentInterface_impl this viewDocumentInterface = do
        pure (())


