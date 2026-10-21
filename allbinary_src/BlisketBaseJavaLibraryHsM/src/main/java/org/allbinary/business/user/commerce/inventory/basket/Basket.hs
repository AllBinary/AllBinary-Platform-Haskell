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
module Basket where

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
import qualified Any -- same package or java.lang
import qualified Serializable -- java.io.Serializable
import qualified HashMap -- java.util.HashMap
import qualified Set -- java.util.Set
import qualified ItemInterface -- org.allbinary.business.user.commerce.inventory.item.ItemInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified MoneyException -- org.allbinary.business.user.commerce.money.MoneyException
import qualified InventoryEntity -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity
import qualified InventoryEntityFactory -- org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified BasketInterface

-- implements BasketInterface
-- implements Serializable
data Basket = Basket
    { header_ :: JavaHeader
    , items :: IORef (HashMap.HashMap)
    }

instance JavaNull Basket where
    javaNull = javaNullRecord "Basket"

instance JavaEquals Basket where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Basket where
    (==) = jrecordEquals

instance JavaObjectClass Basket where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Basket
newRecord_ = do
    header_ <- newJavaHeader
    items <- newIORef javaNull
    let this = Basket header_ items
    jregisterLevel header_ this
    BasketInterface.registerInterface_ header_
    Serializable.registerInterface_ header_
    jregisterMethod header_ "addItem" (\() -> addItem_impl this)
    jregisterMethod header_ "removeItem" (\() -> removeItem_impl this)
    jregisterMethod header_ "adjustItem" (\() -> adjustItem_impl this)
    jregisterMethod header_ "getTotalWeight" (\() -> getTotalWeight_impl this)
    jregisterMethod header_ "getNumberOfItems" (\() -> getNumberOfItems_impl this)
    jregisterMethod header_ "getIds" (\() -> getIds_impl this)
    jregisterMethod header_ "getItems" (\() -> getItems_impl this)
    jregisterMethod header_ "getNumberOf" (\() -> getNumberOf_impl this)
    jregisterMethod header_ "getSubTotal" (\() -> getSubTotal_impl this)
    pure this

initFields_ :: Basket -> IO ()
initFields_ this = do
    jset this.items =<< (fmap (\value_ -> javaCast value_ :: HashMap.HashMap) (StdUtil.createHashMap ((jio (StdUtil.getInstance)))))
    pure ()

new_ :: IO Basket
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Basket -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


addItem :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addItem object_ a1 a2 = jmethod object_ "addItem" (\() -> (addItem_impl (javaCast object_ :: Basket))) () a1 a2

addItem_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
addItem_super object_ a1 a2 = (addItem_impl (javaCast object_ :: Basket)) a1 a2

addItem_impl :: Basket -> String -> String -> IO (())
addItem_impl this id num = do
        if (jio (HashMap.containsKey ((jget (this).items)) id)) then do
            oldNumStr <- (jnewString (javaCast (jio (HashMap.get ((jget (this).items)) id)) :: String))
            let oldNumInt = (javaToString oldNumStr)
            let numInt = (javaToString num)
            let newNumInt = (Prelude.fromIntegral ((oldNumInt + numInt)) :: Int)
            Control.Monad.void (HashMap.put ((jget (this).items)) id (javaToString newNumInt))
        else do
            Control.Monad.void (HashMap.put ((jget (this).items)) id num)
        pure ()


removeItem :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem object_ a1 = jmethod object_ "removeItem" (\() -> (removeItem_impl (javaCast object_ :: Basket))) () a1

removeItem_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem_super object_ a1 = (removeItem_impl (javaCast object_ :: Basket)) a1

removeItem_impl :: Basket -> String -> IO (())
removeItem_impl this id = do
        Control.Monad.void (HashMap.remove ((jget (this).items)) id)
        pure ()


adjustItem :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem object_ a1 a2 = jmethod object_ "adjustItem" (\() -> (adjustItem_impl (javaCast object_ :: Basket))) () a1 a2

adjustItem_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem_super object_ a1 a2 = (adjustItem_impl (javaCast object_ :: Basket)) a1 a2

adjustItem_impl :: Basket -> String -> String -> IO (())
adjustItem_impl this id num = do
        if ((javaToString num) > 0) then do
            Control.Monad.void (HashMap.put ((jget (this).items)) id num)
        else do
            Control.Monad.void (HashMap.remove ((jget (this).items)) id)
        pure ()


getTotalWeight :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight object_ = jmethod object_ "getTotalWeight" (\() -> (getTotalWeight_impl (javaCast object_ :: Basket))) ()

getTotalWeight_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight_super object_ = (getTotalWeight_impl (javaCast object_ :: Basket))

getTotalWeight_impl :: Basket -> IO (String)
getTotalWeight_impl this = do
        itemsAndNumberInBasket <- (Basket.getItems this)
        totalWeight <- (Money.new_)
        when ((jio (HashMap.size itemsAndNumberInBasket)) > 0) $ do
            items <- (HashMap.keySet itemsAndNumberInBasket)
            product <- newIORef ("")
            weightFloat <- newIORef (javaNull)
            itemArray <- (Set.toArray items)
            let size = (jlength itemArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                assignedValue <- (jnewString (javaCast (jindex itemArray (index)) :: String))
                jset product (assignedValue)
                jset weightFloat ((jio (InventoryEntity.getWeight ((jio (InventoryEntity.new_))) (jget product))))
                jset weightFloat (((Prelude.realToFrac (jio (Basket.getNumberOf this (jget product)))) * (jget weightFloat)))
                Control.Monad.void (Money.add totalWeight (javaToString (jget weightFloat)))
        (Money.toString totalWeight)


getNumberOfItems :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems object_ = jmethod object_ "getNumberOfItems" (\() -> (getNumberOfItems_impl (javaCast object_ :: Basket))) ()

getNumberOfItems_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems_super object_ = (getNumberOfItems_impl (javaCast object_ :: Basket))

getNumberOfItems_impl :: Basket -> IO (Int)
getNumberOfItems_impl this = do
        pure ((Prelude.fromIntegral ((jio (HashMap.size ((jget (this).items))))) :: Int))


getIds :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds object_ = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: Basket))) ()

getIds_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds_super object_ = (getIds_impl (javaCast object_ :: Basket))

getIds_impl :: Basket -> IO (Set.Set)
getIds_impl this = do
        set <- (HashMap.keySet ((jget (this).items)))
        pure (set)


getItems :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getItems object_ = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: Basket))) ()

getItems_super :: (JavaObjectClass this_) => this_ -> IO (HashMap.HashMap)
getItems_super object_ = (getItems_impl (javaCast object_ :: Basket))

getItems_impl :: Basket -> IO (HashMap.HashMap)
getItems_impl this = do
        pure ((jget (this).items))


getNumberOf :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf object_ a1 = jmethod object_ "getNumberOf" (\() -> (getNumberOf_impl (javaCast object_ :: Basket))) () a1

getNumberOf_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf_super object_ a1 = (getNumberOf_impl (javaCast object_ :: Basket)) a1

getNumberOf_impl :: Basket -> String -> IO (Int)
getNumberOf_impl this product = do
        let numStr = (javaCast (jio (HashMap.get ((jget (this).items)) product)) :: String)
        pure ((javaToString numStr))


-- throws MoneyException
getSubTotal :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal object_ = jmethod object_ "getSubTotal" (\() -> (getSubTotal_impl (javaCast object_ :: Basket))) ()

getSubTotal_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getSubTotal_super object_ = (getSubTotal_impl (javaCast object_ :: Basket))

getSubTotal_impl :: Basket -> IO (Money.Money)
getSubTotal_impl this = do
        itemsAndNumberInBasket <- (Basket.getItems this)
        subTotal <- (Money.new_)
        when ((jio (HashMap.size itemsAndNumberInBasket)) > 0) $ do
            items <- (HashMap.keySet itemsAndNumberInBasket)
            inventoryEntityFactory <- (InventoryEntityFactory.getInstance)
            let inventoryEntity = (javaCast (jio (InventoryEntityFactory.getInventoryEntityInstance inventoryEntityFactory)) :: InventoryEntity.InventoryEntity)
            itemArray <- (Set.toArray items)
            let size = (jlength itemArray)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                product <- (jnewString (javaCast (jindex itemArray (index)) :: String))
                itemInterface <- (InventoryEntity.getItem inventoryEntity product)
                productTotal <- (ItemInterface.getPrice itemInterface)
                Control.Monad.void (Money.multiply productTotal (jio (Basket.getNumberOf this product)))
                Control.Monad.void (Money.add subTotal (jio (Money.toString productTotal)))
        pure (subTotal)


