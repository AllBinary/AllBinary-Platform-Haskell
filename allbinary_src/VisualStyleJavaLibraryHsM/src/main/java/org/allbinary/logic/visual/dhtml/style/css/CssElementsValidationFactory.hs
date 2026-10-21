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
-- package org.allbinary.logic.visual.dhtml.style.css
module CssElementsValidationFactory where

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
import qualified CssElementValidationFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified ValidationInterface -- org.allbinary.logic.control.validate.ValidationInterface
import qualified Node -- org.w3c.dom.Node

data CssElementsValidationFactory = CssElementsValidationFactory
    { header_ :: JavaHeader
    }

instance JavaNull CssElementsValidationFactory where
    javaNull = javaNullRecord "CssElementsValidationFactory"

instance JavaEquals CssElementsValidationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CssElementsValidationFactory where
    (==) = jrecordEquals

instance JavaObjectClass CssElementsValidationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CssElementsValidationFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CssElementsValidationFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CssElementsValidationFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CssElementsValidationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CssElementsValidationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass o1) => o1 -> IO (BasicArrayList.BasicArrayList)
getInstance a1
    | jisInstanceOf a1 (javaNull :: BasicArrayList.BasicArrayList) = getInstance_overload1 (javaCast a1 :: BasicArrayList.BasicArrayList)
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload2 (javaCast a1 :: HashMap.HashMap)
    | otherwise = getInstance_overload2 (javaCast a1 :: HashMap.HashMap)

-- throws Exception
getInstance_overload1 :: BasicArrayList.BasicArrayList -> IO (BasicArrayList.BasicArrayList)
getInstance_overload1 cssElementStyleNodeList = do
        styles <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        size <- (BasicArrayList.size cssElementStyleNodeList)
        cssElementStyleNode <- newIORef (javaNull)
        cssValidationInterface <- newIORef (javaNull)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            jset cssElementStyleNode ((javaCast (jio (BasicArrayList.get cssElementStyleNodeList index)) :: Node.Node))
            jset cssValidationInterface ((javaCast (jio (CssElementValidationFactory.getInstance (jget cssElementStyleNode))) :: ValidationInterface.ValidationInterface))
            Control.Monad.void (BasicArrayList.add styles (jget cssValidationInterface))
        pure (styles)


getInstance_overload2 :: HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2 hashMap = do
        styles <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        pure (styles)


