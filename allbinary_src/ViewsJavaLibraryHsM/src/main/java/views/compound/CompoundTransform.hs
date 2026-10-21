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
-- package views.compound
module CompoundTransform (module CompoundTransform, module AbTransformer) where

import AbTransformer hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, logUtil, abeClientInformation)
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
import qualified InputStream -- java.io.InputStream
import qualified URIResolver -- javax.xml.transform.URIResolver
import qualified BasicUriResolver -- org.allbinary.data.tree.dom.BasicUriResolver
import qualified StoreUriResolver -- org.allbinary.data.tree.dom.StoreUriResolver
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified ServiceClientInformationInterfaceFactory -- org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory
import qualified AbTransformer -- org.allbinary.logic.visual.transform.AbTransformer
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified CompoundContextTransformInfoObjectConfig -- views.compound.objectConfig.CompoundContextTransformInfoObjectConfig

data CompoundTransform = CompoundTransform
    { header_ :: JavaHeader
    , base :: AbTransformer.AbTransformer
    , logUtil :: IORef (LogUtil.LogUtil)
    , abeClientInformation :: IORef (AbeClientInformationInterface.AbeClientInformationInterface)
    }

instance JavaNull CompoundTransform where
    javaNull = javaNullRecord "CompoundTransform"

instance JavaEquals CompoundTransform where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CompoundTransform where
    (==) = jrecordEquals

instance JavaObjectClass CompoundTransform where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CompoundTransform
newRecord_ = do
    base <- AbTransformer.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    abeClientInformation <- newIORef javaNull
    let this = CompoundTransform header_ base logUtil abeClientInformation
    jregisterLevel header_ this
    pure this

initFields_ :: CompoundTransform -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.abeClientInformation =<< (ServiceClientInformationInterfaceFactory.getInstance)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO CompoundTransform
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: CompoundTransform -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        AbTransformer.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (AbTransformer.setURIResolver this (javaCast (jio (StoreUriResolver.new_2 (jio (AbTransformer.getTransformInfoInterface this)) (javaCast (jio (AbTransformer.getURIResolver this)) :: BasicUriResolver.BasicUriResolver))) :: URIResolver.URIResolver))
        objectConfig <- (CompoundContextTransformInfoObjectConfig.new_3 (jget (this).abeClientInformation) (jio (AbTransformer.getTransformInfoInterface this)) (jio (TransformInfoInterface.toXmlDoc ((jio (TransformInfoInterface.getObjectConfigInterface ((jio (AbTransformer.getTransformInfoInterface this)))))))))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nObjectConfig: \n" ++ (jio (CompoundContextTransformInfoObjectConfig.toString objectConfig))) this (jget ((jget (this).base.commonStrings)).cONSTRUCTOR))
        templateInputStream <- (CompoundContextTransformInfoObjectConfig.createInputStream objectConfig)
        Control.Monad.void (AbTransformer.setInputStream this templateInputStream)
        pure ()


