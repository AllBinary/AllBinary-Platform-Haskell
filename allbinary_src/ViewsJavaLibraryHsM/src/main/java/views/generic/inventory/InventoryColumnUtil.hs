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
-- package views.generic.inventory
module InventoryColumnUtil where

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
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified BasicItemData -- org.allbinary.business.user.commerce.inventory.item.BasicItemData
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data InventoryColumnUtil = InventoryColumnUtil
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , basicItemData :: IORef (BasicItemData.BasicItemData)
    }

instance JavaNull InventoryColumnUtil where
    javaNull = javaNullRecord "InventoryColumnUtil"

instance JavaEquals InventoryColumnUtil where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryColumnUtil where
    (==) = jrecordEquals

instance JavaObjectClass InventoryColumnUtil where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventoryColumnUtil
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    basicItemData <- newIORef javaNull
    let this = InventoryColumnUtil header_ logUtil basicItemData
    jregisterLevel header_ this
    jregisterMethod header_ "getColumnWhereLike" (\() -> getColumnWhereLike_impl this)
    pure this

initFields_ :: InventoryColumnUtil -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.basicItemData =<< (BasicItemData.getInstance)
    pure ()

new_ :: IO InventoryColumnUtil
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryColumnUtil -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InventoryColumnUtil)
getInstance = do
        pure (InventoryColumnUtil.instance_)


getColumnWhereLike :: (JavaObjectClass this_) => this_ -> InventoryEntity.InventoryEntity -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhereLike object_ a1 a2 a3 = jmethod object_ "getColumnWhereLike" (\() -> (getColumnWhereLike_impl (javaCast object_ :: InventoryColumnUtil))) () a1 a2 a3

getColumnWhereLike_super :: (JavaObjectClass this_) => this_ -> InventoryEntity.InventoryEntity -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhereLike_super object_ a1 a2 a3 = (getColumnWhereLike_impl (javaCast object_ :: InventoryColumnUtil)) a1 a2 a3

getColumnWhereLike_impl :: InventoryColumnUtil -> InventoryEntity.InventoryEntity -> String -> String -> IO (BasicArrayList.BasicArrayList)
getColumnWhereLike_impl this inventoryEntity category column = do
        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Start Category: " ++ category) this "getKeywords")
        keywords <- (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
        vectorOfHashMaps <- (InventoryEntity.getAllRows inventoryEntity)
        size <- (BasicArrayList.size vectorOfHashMaps)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let hashMap = (javaCast (jio (BasicArrayList.get vectorOfHashMaps index)) :: HashMap.HashMap)
            let categoryName = (javaCast (jio (HashMap.get hashMap (jget ((jget this.basicItemData)).cATEGORY))) :: String)
            when ((Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) categoryName))) && (Data.List.isPrefixOf category categoryName)) $ do
                Control.Monad.void (BasicArrayList.add keywords (jio (HashMap.get hashMap column)))
        pure (keywords)


