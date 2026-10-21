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
-- package org.allbinary.logic.communication.http.request
module NameSpaceRequestParam where

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
import qualified NameSpaceRequestParamData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified Tokenizer -- org.allbinary.logic.string.tokens.Tokenizer
import qualified HtmlNameMathData -- org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data NameSpaceRequestParam = NameSpaceRequestParam
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , nameSpaceVector :: IORef (BasicArrayList.BasicArrayList)
    , nameSpacePropertiesHashMap :: IORef (HashMap.HashMap)
    , value :: IORef (String)
    }

instance JavaNull NameSpaceRequestParam where
    javaNull = javaNullRecord "NameSpaceRequestParam"

instance JavaEquals NameSpaceRequestParam where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NameSpaceRequestParam where
    (==) = jrecordEquals

instance JavaObjectClass NameSpaceRequestParam where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NameSpaceRequestParam
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    nameSpaceVector <- newIORef javaNull
    nameSpacePropertiesHashMap <- newIORef javaNull
    value <- newIORef ""
    let this = NameSpaceRequestParam header_ logUtil nameSpaceVector nameSpacePropertiesHashMap value
    jregisterLevel header_ this
    jregisterMethod header_ "getPackages" (\() -> getPackages_impl this)
    jregisterMethod header_ "getPackageProperties" (\() -> getPackageProperties_impl this)
    jregisterMethod header_ "getValue" (\() -> getValue_impl this)
    jregisterMethod header_ "generatePackagePropertiesHashMap" (\() -> generatePackagePropertiesHashMap_impl this)
    pure this

initFields_ :: NameSpaceRequestParam -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.nameSpaceVector (javaNull)
    jset this.nameSpacePropertiesHashMap (javaNull)
    jset this.value (javaNull)
    pure ()

new_2 :: String -> String -> IO NameSpaceRequestParam
new_2 nameSpace value = do
    this <- newRecord_
    init_2 this nameSpace value
    pure this

init_2 :: NameSpaceRequestParam -> String -> String -> IO ()
init_2 this nameSpace value = do
        initFields_ this
        assignedValue <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        jset (this).nameSpaceVector (assignedValue)
        assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
        jset (this).nameSpacePropertiesHashMap (assignedValue)
        jset (this).value (value)
        let beginIndex = (jstringIndexOf nameSpace (NameSpaceRequestParamData.nAME) 0)
        when (beginIndex < 0) $ do
            javaThrow ((JavaException "Exception" "Not a NameSpaceRequest"))
        let packages = (Prelude.drop ((beginIndex + (Prelude.length NameSpaceRequestParamData.nAME)) + (Prelude.length NameSpaceRequestParamData.sEP)) nameSpace)
        sepTokenizer <- (Tokenizer.new_1 (NameSpaceRequestParamData.sEP))
        nameSpaceWithPropertiesVector <- (Tokenizer.getTokensFromString sepTokenizer packages (jio (BasicArrayListD.new_)))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nSep Tokens: " ++ (jio (BasicArrayList.toString nameSpaceWithPropertiesVector))) this "NameSpaceRequestParam()")
        nameSpaceAndPropertiesTokenizer <- (Tokenizer.new_1 (NameSpaceRequestParamData.pROPERTIES))
        packageIndex <- newIORef (0)
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        index <- newIORef (0)
        size <- (BasicArrayList.size nameSpaceWithPropertiesVector)
        fix $ \loop -> when ((jget index) < size) $ javaIteration (loop) $ do
            let nameSpaceWithProperties = (javaCast (jio (BasicArrayList.get nameSpaceWithPropertiesVector (jpostIncrement index (+ 1)))) :: String)
            Control.Monad.void (BasicArrayList.clear list)
            nameSpaceAndPropertiesVector <- (Tokenizer.getTokensFromString nameSpaceAndPropertiesTokenizer nameSpaceWithProperties list)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nPackageName and PackageName Properties Tokens: " ++ (jio (BasicArrayList.toString nameSpaceAndPropertiesVector))) this "NameSpaceRequestParam()")
            when ((jio (BasicArrayList.size nameSpaceAndPropertiesVector)) > 0) $ do
                let packageName = (javaCast (jio (BasicArrayList.get nameSpaceAndPropertiesVector 0)) :: String)
                when (packageName == javaNull) $ do
                    javaThrow ((JavaException "Exception" "Package Name Is Null"))
                Control.Monad.void (BasicArrayList.add ((jget (this).nameSpaceVector)) packageName)
                when ((jio (BasicArrayList.size nameSpaceAndPropertiesVector)) > 1) $ do
                    let properties = (javaCast (jio (BasicArrayList.get nameSpaceAndPropertiesVector 1)) :: String)
                    packagePropertiesHashMap <- (NameSpaceRequestParam.generatePackagePropertiesHashMap this properties)
                    Control.Monad.void (HashMap.put ((jget (this).nameSpacePropertiesHashMap)) (javaToString (jget packageIndex)) packagePropertiesHashMap)
                jset packageIndex ((jget packageIndex) + 1)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("NameSpace: " ++ (jio (BasicArrayList.toString ((jget (this).nameSpaceVector))))) this "NameSpaceRequestParam()")
        pure ()


getPackages :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPackages object_ = jmethod object_ "getPackages" (\() -> (getPackages_impl (javaCast object_ :: NameSpaceRequestParam))) ()

getPackages_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getPackages_super object_ = (getPackages_impl (javaCast object_ :: NameSpaceRequestParam))

getPackages_impl :: NameSpaceRequestParam -> IO (BasicArrayList.BasicArrayList)
getPackages_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("NameSpace: " ++ (jio (BasicArrayList.toString ((jget (this).nameSpaceVector))))) this "getPackages()")
        pure ((jget (this).nameSpaceVector))


getPackageProperties :: (JavaObjectClass this_) => this_ -> Int -> IO (HashMap.HashMap)
getPackageProperties object_ a1 = jmethod object_ "getPackageProperties" (\() -> (getPackageProperties_impl (javaCast object_ :: NameSpaceRequestParam))) () a1

getPackageProperties_super :: (JavaObjectClass this_) => this_ -> Int -> IO (HashMap.HashMap)
getPackageProperties_super object_ a1 = (getPackageProperties_impl (javaCast object_ :: NameSpaceRequestParam)) a1

getPackageProperties_impl :: NameSpaceRequestParam -> Int -> IO (HashMap.HashMap)
getPackageProperties_impl this packageIndex = do
        packagePropertiesHashMap <- newIORef ((javaCast (jio (HashMap.get ((jget (this).nameSpacePropertiesHashMap)) (javaToString packageIndex))) :: HashMap.HashMap))
        when ((jget packagePropertiesHashMap) == javaNull) $ do
            assignedValue <- (StdUtil.createHashMap ((jio (StdUtil.getInstance))))
            jset packagePropertiesHashMap (assignedValue)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Package Properties: " ++ (jio (HashMap.toString ((jget packagePropertiesHashMap))))) this "getPackagesProperties()")
        pure ((jget packagePropertiesHashMap))


getValue :: (JavaObjectClass this_) => this_ -> IO (String)
getValue object_ = jmethod object_ "getValue" (\() -> (getValue_impl (javaCast object_ :: NameSpaceRequestParam))) ()

getValue_super :: (JavaObjectClass this_) => this_ -> IO (String)
getValue_super object_ = (getValue_impl (javaCast object_ :: NameSpaceRequestParam))

getValue_impl :: NameSpaceRequestParam -> IO (String)
getValue_impl this = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("\nValue: " ++ (jget (this).value)) this "getValue()")
        pure ((jget (this).value))


-- throws Exception
generatePackagePropertiesHashMap :: (JavaObjectClass this_) => this_ -> String -> IO (HashMap.HashMap)
generatePackagePropertiesHashMap object_ a1 = jmethod object_ "generatePackagePropertiesHashMap" (\() -> (generatePackagePropertiesHashMap_impl (javaCast object_ :: NameSpaceRequestParam))) () a1

generatePackagePropertiesHashMap_super :: (JavaObjectClass this_) => this_ -> String -> IO (HashMap.HashMap)
generatePackagePropertiesHashMap_super object_ a1 = (generatePackagePropertiesHashMap_impl (javaCast object_ :: NameSpaceRequestParam)) a1

generatePackagePropertiesHashMap_impl :: NameSpaceRequestParam -> String -> IO (HashMap.HashMap)
generatePackagePropertiesHashMap_impl this properties = do
        propertiesTokenizer <- (Tokenizer.new_1 (NameSpaceRequestParamData.pROPERTIESSEPARATOR))
        packagePropertiesHashMap <- (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
        propertyVector <- (Tokenizer.getTokensFromString propertiesTokenizer properties (jio (BasicArrayListD.new_)))
        list <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        propertyTokenizer <- (Tokenizer.new_1 (jget ((jio (HtmlNameMathData.getInstance))).eQUALS))
        let index = 0
        size <- (BasicArrayList.size propertyVector)
        fix $ \loop -> when (index < size) $ javaIteration (loop) $ do
            let property = (javaCast (jio (BasicArrayList.get propertyVector index)) :: String)
            Control.Monad.void (BasicArrayList.clear list)
            propertyNameValueVector <- (Tokenizer.getTokensFromString propertyTokenizer property list)
            index2 <- newIORef (0)
            fix $ \loop -> when ((jget index2) < (jio (BasicArrayList.size propertyNameValueVector))) $ javaIteration (loop) $ do
                let propertyName = (javaCast (jio (BasicArrayList.get propertyNameValueVector (jpostIncrement index2 (+ 1)))) :: String)
                if ((jio (BasicArrayList.size propertyNameValueVector)) > 1) then do
                    let propertyValue = (javaCast (jio (BasicArrayList.get propertyNameValueVector (jpostIncrement index2 (+ 1)))) :: String)
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).hTTPREQUEST))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ((("\nProperty Name: " ++ propertyName) ++ "\nProperty Value: ") ++ propertyValue) this "generatePackagePropertiesHashMap()")
                    Control.Monad.void (HashMap.put packagePropertiesHashMap propertyName propertyValue)
                else do
                    Control.Monad.void (HashMap.put packagePropertiesHashMap propertyName (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
        pure (packagePropertiesHashMap)


