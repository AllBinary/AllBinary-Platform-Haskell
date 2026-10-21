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
module BasketReview where

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
import qualified BasketData -- same package or java.lang
import qualified HashSet -- java.util.HashSet
import qualified Set -- java.util.Set
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified Item -- org.allbinary.business.user.commerce.inventory.item.Item
import qualified ItemView -- org.allbinary.business.user.commerce.inventory.item.ItemView
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

data BasketReview = BasketReview
    { header_ :: JavaHeader
    , items :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasketReview where
    javaNull = javaNullRecord "BasketReview"

instance JavaEquals BasketReview where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasketReview where
    (==) = jrecordEquals

instance JavaObjectClass BasketReview where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasketReview
newRecord_ = do
    header_ <- newJavaHeader
    items <- newIORef javaNull
    let this = BasketReview header_ items
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "addItem" (\() -> addItem_impl this)
    jregisterMethod header_ "getItems" (\() -> getItems_impl this)
    jregisterMethod header_ "removeItem" (\() -> removeItem_impl this)
    jregisterMethod header_ "adjustItem" (\() -> adjustItem_impl this)
    jregisterMethod header_ "getTotalWeight" (\() -> getTotalWeight_impl this)
    jregisterMethod header_ "getNumberOfItems" (\() -> getNumberOfItems_impl this)
    jregisterMethod header_ "getIds" (\() -> getIds_impl this)
    jregisterMethod header_ "getNumberOf" (\() -> getNumberOf_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: BasketReview -> IO ()
initFields_ this = do
    jset this.items =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BasketReview
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasketReview -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: BasketReview))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: BasketReview))

isValid_impl :: BasketReview -> IO (Bool)
isValid_impl this = do
        pure (True)


addItem :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
addItem object_ a1 = jmethod object_ "addItem" (\() -> (addItem_impl (javaCast object_ :: BasketReview))) () a1

addItem_super :: (JavaObjectClass this_) => this_ -> Item.Item -> IO (())
addItem_super object_ a1 = (addItem_impl (javaCast object_ :: BasketReview)) a1

addItem_impl :: BasketReview -> Item.Item -> IO (())
addItem_impl this item = do
        Control.Monad.void (BasicArrayList.add ((jget (this).items)) item)
        pure ()


getItems :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getItems object_ = jmethod object_ "getItems" (\() -> (getItems_impl (javaCast object_ :: BasketReview))) ()

getItems_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getItems_super object_ = (getItems_impl (javaCast object_ :: BasketReview))

getItems_impl :: BasketReview -> IO (BasicArrayList.BasicArrayList)
getItems_impl this = do
        pure ((jget (this).items))


removeItem :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem object_ a1 = jmethod object_ "removeItem" (\() -> (removeItem_impl (javaCast object_ :: BasketReview))) () a1

removeItem_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
removeItem_super object_ a1 = (removeItem_impl (javaCast object_ :: BasketReview)) a1

removeItem_impl :: BasketReview -> String -> IO (())
removeItem_impl this id = do
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            when ((Prelude.fromEnum (Prelude.compare (jio (Item.getId item)) id) - 1) == 0) $ do
                Control.Monad.void (BasicArrayList.remove ((jget (this).items)) item)
        pure ()


adjustItem :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem object_ a1 a2 = jmethod object_ "adjustItem" (\() -> (adjustItem_impl (javaCast object_ :: BasketReview))) () a1 a2

adjustItem_super :: (JavaObjectClass this_) => this_ -> String -> String -> IO (())
adjustItem_super object_ a1 a2 = (adjustItem_impl (javaCast object_ :: BasketReview)) a1 a2

adjustItem_impl :: BasketReview -> String -> String -> IO (())
adjustItem_impl this id num = do
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            when ((Prelude.fromEnum (Prelude.compare (jio (Item.getId item)) id) - 1) == 0) $ do
                Control.Monad.void (Item.setNumber item num)
        pure ()


getTotalWeight :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight object_ = jmethod object_ "getTotalWeight" (\() -> (getTotalWeight_impl (javaCast object_ :: BasketReview))) ()

getTotalWeight_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTotalWeight_super object_ = (getTotalWeight_impl (javaCast object_ :: BasketReview))

getTotalWeight_impl :: BasketReview -> IO (String)
getTotalWeight_impl this = do
        weightFloat <- newIORef (0.0)
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            jset weightFloat (((jget weightFloat) + (jio (Item.getWeight item))))
        pure ((javaToString (jget weightFloat)))


getNumberOfItems :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems object_ = jmethod object_ "getNumberOfItems" (\() -> (getNumberOfItems_impl (javaCast object_ :: BasketReview))) ()

getNumberOfItems_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getNumberOfItems_super object_ = (getNumberOfItems_impl (javaCast object_ :: BasketReview))

getNumberOfItems_impl :: BasketReview -> IO (Int)
getNumberOfItems_impl this = do
        pure ((Prelude.fromIntegral ((jio (BasicArrayList.size ((jget (this).items))))) :: Int))


getIds :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds object_ = jmethod object_ "getIds" (\() -> (getIds_impl (javaCast object_ :: BasketReview))) ()

getIds_super :: (JavaObjectClass this_) => this_ -> IO (Set.Set)
getIds_super object_ = (getIds_impl (javaCast object_ :: BasketReview))

getIds_impl :: BasketReview -> IO (Set.Set)
getIds_impl this = do
        idSet <- (HashSet.new_)
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            Control.Monad.void (HashSet.add idSet (jio (Item.getId item)))
        pure ((javaCast idSet :: Set.Set))


getNumberOf :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf object_ a1 = jmethod object_ "getNumberOf" (\() -> (getNumberOf_impl (javaCast object_ :: BasketReview))) () a1

getNumberOf_super :: (JavaObjectClass this_) => this_ -> String -> IO (Int)
getNumberOf_super object_ a1 = (getNumberOf_impl (javaCast object_ :: BasketReview)) a1

getNumberOf_impl :: BasketReview -> String -> IO (Int)
getNumberOf_impl this id = do
    javaCatchReturn $ do
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            when ((Prelude.fromEnum (Prelude.compare (jio (Item.getId item)) id) - 1) == 0) $ do
                javaReturn ((Prelude.fromIntegral ((jio (Item.getNumber item))) :: Int))
        pure ((Prelude.fromIntegral (0) :: Int))


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: BasketReview))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: BasketReview)) a1

toXmlNode_impl :: BasketReview -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (Document.createElement document (BasketData.bASKET))
        itemArray <- (BasicArrayList.toArray ((jget (this).items)))
        let size = (jlength itemArray)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let item = (javaCast (jindex itemArray (index)) :: Item.Item)
            Control.Monad.void (Node.appendChild node (jio (ItemView.toXmlNode ((jio (ItemView.new_2 item (jio (BasicArrayListD.new_))))) document)))
        pure (node)


