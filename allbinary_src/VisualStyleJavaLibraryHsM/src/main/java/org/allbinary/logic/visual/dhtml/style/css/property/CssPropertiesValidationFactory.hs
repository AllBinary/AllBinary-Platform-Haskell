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
-- package org.allbinary.logic.visual.dhtml.style.css.property
module CssPropertiesValidationFactory where

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
import qualified CssPropertyData -- same package or java.lang
import qualified CssPropertyValidationFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data CssPropertiesValidationFactory = CssPropertiesValidationFactory
    { header_ :: JavaHeader
    }

instance JavaNull CssPropertiesValidationFactory where
    javaNull = javaNullRecord "CssPropertiesValidationFactory"

instance JavaEquals CssPropertiesValidationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssPropertiesValidationFactory where
    (==) = jrecordEquals

instance JavaObjectClass CssPropertiesValidationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssPropertiesValidationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CssPropertiesValidationFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CssPropertiesValidationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CssPropertiesValidationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssPropertiesValidationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass o1) => o1 -> IO (BasicArrayList.BasicArrayList)
getInstance a1
    | jisInstanceOf a1 (javaNull :: NodeList.NodeList) = getInstance_overload1 (javaCast a1 :: NodeList.NodeList)
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload2 (javaCast a1 :: HashMap.HashMap)
    | otherwise = getInstance_overload2 (javaCast a1 :: HashMap.HashMap)

-- throws Exception
getInstance_overload1 :: NodeList.NodeList -> IO (BasicArrayList.BasicArrayList)
getInstance_overload1 nodeList = do
        propertiesVector <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            node <- (NodeList.item nodeList index)
            when ((jio (Node.compareTo ((jio (Node.getNodeName node))) (jget ((jio (CssPropertyData.getInstance))).nAME))) == 0) $ do
                let cssPropertyValidationInterface = (javaCast (jio (CssPropertyValidationFactory.getInstance node)) :: ValidationInterface.ValidationInterface)
                Control.Monad.void (BasicArrayList.add propertiesVector cssPropertyValidationInterface)
        pure (propertiesVector)


getInstance_overload2 :: HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2 hashMap = do
        styles <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        pure (styles)


