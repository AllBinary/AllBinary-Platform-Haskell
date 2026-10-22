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
-- package org.allbinary.logic.visual.transform.generator
module TransformsGeneratorUtil where

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
import qualified TransformGeneratorUtil -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified AbeClientInformationInterface -- org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
import qualified TransformInfoDomNode -- org.allbinary.logic.visual.transform.info.TransformInfoDomNode
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified TransformInfoObjectConfigInterface -- org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface

data TransformsGeneratorUtil = TransformsGeneratorUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull TransformsGeneratorUtil where
    javaNull = javaNullRecord "TransformsGeneratorUtil"

instance JavaEquals TransformsGeneratorUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq TransformsGeneratorUtil where
    (==) = jrecordEquals

instance JavaObjectClass TransformsGeneratorUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO TransformsGeneratorUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = TransformsGeneratorUtil header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "generateComponentsFromObjectConfig" (\() -> generateComponentsFromObjectConfig_impl this)
    jregisterMethod header_ "generateComponentsFromObjectConfig_4" (\() -> generateComponentsFromObjectConfig_4_impl this)
    pure this

initFields_ :: TransformsGeneratorUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (TransformsGeneratorUtil)
getInstance = do
        pure (TransformsGeneratorUtil.instance_)

new_ :: IO TransformsGeneratorUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: TransformsGeneratorUtil -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
generateComponentsFromObjectConfig :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig object_ a1 a2 a3 = jmethod object_ "generateComponentsFromObjectConfig" (\() -> (generateComponentsFromObjectConfig_impl (javaCast object_ :: TransformsGeneratorUtil))) () a1 a2 a3

generateComponentsFromObjectConfig_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig_super object_ a1 a2 a3 = (generateComponentsFromObjectConfig_impl (javaCast object_ :: TransformsGeneratorUtil)) a1 a2 a3

generateComponentsFromObjectConfig_impl :: TransformsGeneratorUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig_impl this abeClientInformation transformInfoInterface group = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Started Group: " ++ group) this "generateComponentsFromObjectConfig(2)")
        transformInfoObjectConfigInterface <- (TransformInfoInterface.getObjectConfigInterface transformInfoInterface)
        result <- (TransformsGeneratorUtil.generateComponentsFromObjectConfig_4 this abeClientInformation transformInfoObjectConfigInterface transformInfoInterface group)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("End Group: " ++ group) this "generateComponentsFromObjectConfig(2)")
        pure (result)


-- throws Exception
generateComponentsFromObjectConfig_4 :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig_4 object_ a1 a2 a3 a4 = jmethod object_ "generateComponentsFromObjectConfig_4" (\() -> (generateComponentsFromObjectConfig_4_impl (javaCast object_ :: TransformsGeneratorUtil))) () a1 a2 a3 a4

generateComponentsFromObjectConfig_4_super :: (JavaObjectClass this_) => this_ -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig_4_super object_ a1 a2 a3 a4 = (generateComponentsFromObjectConfig_4_impl (javaCast object_ :: TransformsGeneratorUtil)) a1 a2 a3 a4

generateComponentsFromObjectConfig_4_impl :: TransformsGeneratorUtil -> AbeClientInformationInterface.AbeClientInformationInterface -> TransformInfoObjectConfigInterface.TransformInfoObjectConfigInterface -> TransformInfoInterface.TransformInfoInterface -> String -> IO (String)
generateComponentsFromObjectConfig_4_impl this abeClientInformation transformInfoObjectConfigInterface transformInfoInterface group = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Started Group: " ++ group) this "generateComponentsFromObjectConfig()")
        transformInfoObjectConfigComponentVector <- (TransformInfoObjectConfigInterface.getTransformsGroup transformInfoObjectConfigInterface group)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Processing ")
            Control.Monad.void (StringMaker.appendint stringBuffer (jio (BasicArrayList.size transformInfoObjectConfigComponentVector)))
            Control.Monad.void (StringMaker.append stringBuffer " Components Group: ")
            Control.Monad.void (StringMaker.append stringBuffer group)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (StringMaker.toString stringBuffer)) this "generateComponentsFromObjectConfig()")
        when ((jio (BasicArrayList.size transformInfoObjectConfigComponentVector)) < 1) $ do
            javaThrow ((JavaException "Exception" "No Pages Generated For Template."))
        size <- (BasicArrayList.size transformInfoObjectConfigComponentVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let transformInfoObjectConfigComponent = (javaCast (jio (BasicArrayList.get transformInfoObjectConfigComponentVector index)) :: TransformInfoDomNode.TransformInfoDomNode)
            Control.Monad.void (TransformGeneratorUtil.generate ((jio (TransformGeneratorUtil.getInstance))) abeClientInformation transformInfoObjectConfigComponent transformInfoInterface)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Done Group: " ++ group) this "generateComponentsFromObjectConfig()")
        stringBuffer <- (StringMaker.new_)
        Control.Monad.void (StringMaker.append stringBuffer "<!-- Generated all template views successfully for View: ")
        Control.Monad.void (StringMaker.append stringBuffer (jio (TransformInfoInterface.getName transformInfoInterface)))
        Control.Monad.void (StringMaker.append stringBuffer "-->")
        (StringMaker.toString stringBuffer)


