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
-- package org.allbinary.logic.visual.transform.info
module TransformInfoHttpFactory where

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
import qualified TransformInfoHttpContext -- same package or java.lang
import qualified TransformInfoInterface -- same package or java.lang
import qualified TransformInfoHttpStore -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified WeblisketSession -- org.allbinary.logic.communication.http.request.session.WeblisketSession
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data TransformInfoHttpFactory = TransformInfoHttpFactory
    { header_ :: JavaHeader
    }

instance JavaNull TransformInfoHttpFactory where
    javaNull = javaNullRecord "TransformInfoHttpFactory"

instance JavaEquals TransformInfoHttpFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformInfoHttpFactory where
    (==) = jrecordEquals

instance JavaObjectClass TransformInfoHttpFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformInfoHttpFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = TransformInfoHttpFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: TransformInfoHttpFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO TransformInfoHttpFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformInfoHttpFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: HashMap.HashMap -> PageContext.PageContext -> IO (TransformInfoInterface.TransformInfoInterface)
getInstance propertiesHashMap pageContext = do
    javaCatchReturn $ do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERFACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "TransformInfoFactory" (jget (commonStrings).gET_INSTANCE) e)
            javaThrow (e)
            ) $ do
            weblisketSession <- (WeblisketSession.new_2 propertiesHashMap pageContext)
            if (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) (jio (WeblisketSession.getStoreName weblisketSession))))) then do
                storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance (jio (WeblisketSession.getStoreName weblisketSession))))
                if (storeFrontInterface /= javaNull) then do
                    javaReturn ((javaCast (jio (TransformInfoHttpStore.new_3 storeFrontInterface propertiesHashMap pageContext)) :: TransformInfoInterface.TransformInfoInterface))
                else do
                    javaThrow ((JavaException "Exception" ("No StoreFront with: " ++ javaToString (jio (WeblisketSession.getStoreName weblisketSession)))))
            else do
                javaReturn ((javaCast (jio (TransformInfoHttpContext.new_2 propertiesHashMap pageContext)) :: TransformInfoInterface.TransformInfoInterface))


