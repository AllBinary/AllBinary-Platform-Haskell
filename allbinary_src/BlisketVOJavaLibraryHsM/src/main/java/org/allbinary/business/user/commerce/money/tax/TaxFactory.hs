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
-- package org.allbinary.business.user.commerce.money.tax
module TaxFactory where

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
import qualified DynamicObjectData -- org.allbinary.business.DynamicObjectData
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified TaxData -- org.allbinary.business.user.commerce.money.tax.components.TaxData
import qualified SimpleStateTaxModule -- org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule
import qualified TaxModuleInterface -- org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified FREEBLISKET_PATH_GLOBALS -- org.allbinary.globals.FREEBLISKET_PATH_GLOBALS
import qualified URLGLOBALS -- org.allbinary.globals.URLGLOBALS
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileReader -- org.allbinary.logic.control.crypt.file.CryptFileReader
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified AbPathData -- org.allbinary.logic.io.path.AbPathData
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeFactory -- org.allbinary.logic.system.loader.AbeFactory
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoObjectConfigData -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data TaxFactory = TaxFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tAXATIONFILENAME :: IORef (String)
    }

instance JavaNull TaxFactory where
    javaNull = javaNullRecord "TaxFactory"

instance JavaEquals TaxFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TaxFactory where
    (==) = jrecordEquals

instance JavaObjectClass TaxFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TaxFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    tAXATIONFILENAME <- newIORef ""
    let this = TaxFactory header_ logUtil commonStrings tAXATIONFILENAME
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_2" (\() -> getInstance_2_impl this)
    pure this

initFields_ :: TaxFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tAXATIONFILENAME ("taxationMethod.xml")
    pure ()


getInstance :: IO (TaxFactory)
getInstance = do
        pure (TaxFactory.instance_)

new_ :: IO TaxFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TaxFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance_2 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (TaxModuleInterface.TaxModuleInterface)
getInstance_2 object_ a1 a2 = jmethod object_ "getInstance_2" (\() -> (getInstance_2_impl (javaCast object_ :: TaxFactory))) () a1 a2

getInstance_2_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (TaxModuleInterface.TaxModuleInterface)
getInstance_2_super object_ a1 a2 = (getInstance_2_impl (javaCast object_ :: TaxFactory)) a1 a2

getInstance_2_impl :: TaxFactory -> AbeClientInformationInterface.AbeClientInformationInterface -> StoreFrontInterface.StoreFrontInterface -> IO (TaxModuleInterface.TaxModuleInterface)
getInstance_2_impl this abeClientInformation storeFrontInterface = do
    javaCatchReturn $ do
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer (jio (URLGLOBALS.getMainPath)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (FREEBLISKET_PATH_GLOBALS.getInstance))).xSLPATH))
        Control.Monad.void (StringMaker.append stringBuffer (jio (StoreFrontInterface.getName storeFrontInterface)))
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer "generic")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        Control.Monad.void (StringMaker.append stringBuffer "taxes")
        Control.Monad.void (StringMaker.append stringBuffer (jget ((jio (AbPathData.getInstance))).sEPARATOR))
        abPath <- (AbPath.new_2 (jio (StringMaker.toString stringBuffer)) (jget this.tAXATIONFILENAME))
        transformInfoObjectConfigData <- (TransformInfoObjectConfigData.getInstance)
        data_ <- (CryptFileReader.get ((jio (CryptFileReader.new_2 (jget (transformInfoObjectConfigData).uNCRYPTED_EXTENSION) (jget (transformInfoObjectConfigData).eNCRYPTED_EXTENSION)))) abPath)
        document <- (DomDocumentHelper.create_1 data_)
        taxNameNodeList <- (Document.getElementsByTagName document (TaxData.nAME))
        forM_ [0 .. (jio (NodeList.getLength taxNameNodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item taxNameNodeList index)
            nodeList <- (Node.getChildNodes node)
            if (nodeList /= javaNull) then do
                classNameNode <- (DomSearchHelper.getNode (DynamicObjectData.nAME) nodeList)
                if (classNameNode /= javaNull) then do
                    className <- (DomNodeHelper.getTextNodeValue classNameNode)
                    javaReturn ((javaCast (jio (AbeFactory.getInstance_2 ((jio (AbeFactory.getInstance))) abeClientInformation className)) :: TaxModuleInterface.TaxModuleInterface))
                else do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAX))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Class Node Null" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
            else do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAX))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Tax Name Node Node Children" this (jget ((jget (this).commonStrings)).gET_INSTANCE))
        pure ((javaCast (jio (SimpleStateTaxModule.new_)) :: TaxModuleInterface.TaxModuleInterface))


