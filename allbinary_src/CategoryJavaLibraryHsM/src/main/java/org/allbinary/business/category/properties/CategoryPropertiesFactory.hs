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
-- package org.allbinary.business.category.properties
module CategoryPropertiesFactory where

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
import qualified CategoryPropertiesInterface -- same package or java.lang
import qualified CategoryProperties -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Node -- org.w3c.dom.Node
import qualified CategoryPropertiesFactoryInterface

-- implements CategoryPropertiesFactoryInterface
data CategoryPropertiesFactory = CategoryPropertiesFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , categoryPropertiesInterface :: IORef (CategoryPropertiesInterface.CategoryPropertiesInterface)
    }

instance JavaNull CategoryPropertiesFactory where
    javaNull = javaNullRecord "CategoryPropertiesFactory"

instance JavaEquals CategoryPropertiesFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPropertiesFactory where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPropertiesFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryPropertiesFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    categoryPropertiesInterface <- newIORef javaNull
    let this = CategoryPropertiesFactory header_ logUtil categoryPropertiesInterface
    jregisterLevel header_ this
    CategoryPropertiesFactoryInterface.registerInterface_ header_
    jregisterMethod header_ "getInstance" (\() -> getInstance_impl this)
    pure this

initFields_ :: CategoryPropertiesFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.categoryPropertiesInterface (javaNull)
    pure ()

new_1 :: String -> IO CategoryPropertiesFactory
new_1 name = do
    this <- newRecord_
    init_1 this name
    pure this

init_1 :: CategoryPropertiesFactory -> String -> IO ()
init_1 this name = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (CategoryProperties.new_1 name)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: Node.Node -> IO CategoryPropertiesFactory
new_1 node = do
    this <- newRecord_
    init_1 this node
    pure this

init_1 :: CategoryPropertiesFactory -> Node.Node -> IO ()
init_1 this node = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (CategoryProperties.new_1 node)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()

-- Java overloaded constructor with the same parameter count: give it a different name
new_1 :: HashMap.HashMap -> IO CategoryPropertiesFactory
new_1 categoryPropertiesHashMap = do
    this <- newRecord_
    init_1 this categoryPropertiesHashMap
    pure this

init_1 :: CategoryPropertiesFactory -> HashMap.HashMap -> IO ()
init_1 this categoryPropertiesHashMap = do
        initFields_ this
        jset (this).categoryPropertiesInterface ((javaCast (jio (CategoryProperties.new_1 categoryPropertiesHashMap)) :: CategoryPropertiesInterface.CategoryPropertiesInterface))
        pure ()


getInstance :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance object_ = jmethod object_ "getInstance" (\() -> (getInstance_impl (javaCast object_ :: CategoryPropertiesFactory))) ()

getInstance_super :: (JavaObjectClass this_) => this_ -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_super object_ = (getInstance_impl (javaCast object_ :: CategoryPropertiesFactory))

getInstance_impl :: CategoryPropertiesFactory -> IO (CategoryPropertiesInterface.CategoryPropertiesInterface)
getInstance_impl this = do
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eNTITYFACTORYERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget (commonStrings).eXCEPTION) this (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            pure ((javaCast (jget (this).categoryPropertiesInterface) :: CategoryPropertiesInterface.CategoryPropertiesInterface))


