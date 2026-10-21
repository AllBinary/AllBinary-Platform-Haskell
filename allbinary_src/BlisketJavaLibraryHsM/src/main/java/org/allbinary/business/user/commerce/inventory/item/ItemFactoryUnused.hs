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
-- package org.allbinary.business.user.commerce.inventory.item
module ItemFactoryUnused where

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
import qualified Item -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified TableMappingInterface -- org.allbinary.data.tables.TableMappingInterface
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams

data ItemFactoryUnused = ItemFactoryUnused
    { header_ :: JavaHeader
    }

instance JavaNull ItemFactoryUnused where
    javaNull = javaNullRecord "ItemFactoryUnused"

instance JavaEquals ItemFactoryUnused where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ItemFactoryUnused where
    (==) = jrecordEquals

instance JavaObjectClass ItemFactoryUnused where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ItemFactoryUnused
newRecord_ = do
    header_ <- newJavaHeader
    let this = ItemFactoryUnused header_
    jregisterLevel header_ this
    pure this

initFields_ :: ItemFactoryUnused -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ItemFactoryUnused
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ItemFactoryUnused -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass o1) => o1 -> IO (TableMappingInterface.TableMappingInterface)
getInstance a1
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload1 (javaCast a1 :: HashMap.HashMap)
    | jisInstanceOf a1 (javaNull :: HttpServletRequest.HttpServletRequest) = getInstance_overload2 (javaCast a1 :: HttpServletRequest.HttpServletRequest)
    | otherwise = getInstance_overload2 (javaCast a1 :: HttpServletRequest.HttpServletRequest)

-- throws MoneyException
getInstance_overload1 :: HashMap.HashMap -> IO (TableMappingInterface.TableMappingInterface)
getInstance_overload1 hashMap = do
        pure ((javaCast (jio (Item.new_1 hashMap)) :: TableMappingInterface.TableMappingInterface))


-- throws Exception, MoneyException
getInstance_overload2 :: HttpServletRequest.HttpServletRequest -> IO (TableMappingInterface.TableMappingInterface)
getInstance_overload2 request = do
        pure ((javaCast (jio (Item.new_1 (jio (RequestParams.toHashMap ((jio (RequestParams.new_1 request))))))) :: TableMappingInterface.TableMappingInterface))


