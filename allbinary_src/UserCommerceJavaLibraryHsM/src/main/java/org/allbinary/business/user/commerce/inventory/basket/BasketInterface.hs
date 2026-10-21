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
-- package org.allbinary.business.user.commerce.inventory.basket
module BasketInterface where

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
import qualified Set -- java.util.Set
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException

-- Java interface: the classes that implement it have these functions
data BasketInterface = BasketInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasketInterface where
    javaNull = javaNullRecord "BasketInterface"

instance JavaEquals BasketInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasketInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasketInterface
fromHeader_ header = BasketInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasketInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


addItem :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addItem object_ a1 a2 = jmethod object_ "addItem" (\() -> (addItem_impl (javaCast object_ :: BasketInterface))) () a1 a2

addItem_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addItem_super object_ a1 a2 = (addItem_impl (javaCast object_ :: BasketInterface)) a1 a2

addItem_impl :: BasketInterface -> String -> String -> IO (())
addItem_impl this id num = javaAbstractMethod "addItem"


removeItem :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem object_ a1 = jmethod object_ "removeItem" (\() -> (removeItem_impl (javaCast object_ :: BasketInterface))) () a1

removeItem_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem_super object_ a1 = (removeItem_impl (javaCast object_ :: BasketInterface)) a1

removeItem_impl :: BasketInterface -> String -> IO (())
removeItem_impl this id = javaAbstractMethod "removeItem"


adjustItem :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem object_ a1 a2 = jmethod object_ "adjustItem" (\() -> (adjustItem_impl (javaCast object_ :: BasketInterface))) () a1 a2

adjustItem_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem_super object_ a1 a2 = (adjustItem_impl (javaCast object_ :: BasketInterface)) a1 a2

adjustItem_impl :: BasketInterface -> String -> String -> IO (())
adjustItem_impl this id num = javaAbstractMethod "adjustItem"


getTotalWeight :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight object_ = jmethod object_ "getTotalWeight" (\() -> (getTotalWeight_impl (javaCast object_ :: BasketInterface))) ()

getTotalWeight_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight_super object_ = (getTotalWeight_impl (javaCast object_ :: BasketInterface))

getTotalWeight_impl :: BasketInterface -> IO (String)
getTotalWeight_impl this = javaAbstractMethod "getTotalWeight"


getNumberOfItems :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems object_ = jmethod object_ "getNumberOfItems" (\() -> (getNumberOfItems_impl (javaCast object_ :: BasketInterface))) ()

getNumberOfItems_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems_super object_ = (getNumberOfItems_impl (javaCast object_ :: BasketInterface))

getNumberOfItems_impl :: BasketInterface -> IO (Int)
getNumberOfItems_impl this = javaAbstractMethod "getNumberOfItems"


getIds :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds object_ = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: BasketInterface))) ()

getIds_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds_super object_ = (getIds_impl (javaCast object_ :: BasketInterface))

getIds_impl :: BasketInterface -> IO (Set.Set)
getIds_impl this = javaAbstractMethod "getIds"


getItems :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getItems object_ = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: BasketInterface))) ()

getItems_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getItems_super object_ = (getItems_impl (javaCast object_ :: BasketInterface))

getItems_impl :: BasketInterface -> IO (HashMap.HashMap)
getItems_impl this = javaAbstractMethod "getItems"


getNumberOf :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf object_ a1 = jmethod object_ "getNumberOf" (\() -> (getNumberOf_impl (javaCast object_ :: BasketInterface))) () a1

getNumberOf_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf_super object_ a1 = (getNumberOf_impl (javaCast object_ :: BasketInterface)) a1

getNumberOf_impl :: BasketInterface -> String -> IO (Int)
getNumberOf_impl this product = javaAbstractMethod "getNumberOf"


-- throws MoneyException
getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: BasketInterface))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: BasketInterface))

getSubTotal_impl :: BasketInterface -> IO (Money.Money)
getSubTotal_impl this = javaAbstractMethod "getSubTotal"


