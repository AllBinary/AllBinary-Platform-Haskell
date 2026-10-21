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
-- package org.allbinary.logic.visual.dhtml.style.color
module ColorsView where

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
import qualified ColorData -- same package or java.lang
import qualified ColorsData -- same package or java.lang
import qualified DomNodeInterface -- org.allbinary.data.tree.dom.DomNodeInterface
import qualified ModDomHelper -- org.allbinary.data.tree.dom.ModDomHelper
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified CommonPhoneStrings -- org.allbinary.string.CommonPhoneStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node

-- implements DomNodeInterface
data ColorsView = ColorsView
    { header_ :: JavaHeader
    , commonPhoneStrings :: IORef (CommonPhoneStrings.CommonPhoneStrings)
    , hEXRADIX :: IORef (Int)
    , mAX :: IORef (Int)
    , delta :: IORef (Int)
    }

instance JavaNull ColorsView where
    javaNull = javaNullRecord "ColorsView"

instance JavaEquals ColorsView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ColorsView where
    (==) = jrecordEquals

instance JavaObjectClass ColorsView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ColorsView
newRecord_ = do
    header_ <- newJavaHeader
    commonPhoneStrings <- newIORef javaNull
    hEXRADIX <- newIORef 0
    mAX <- newIORef 0
    delta <- newIORef 0
    let this = ColorsView header_ commonPhoneStrings hEXRADIX mAX delta
    jregisterLevel header_ this
    DomNodeInterface.registerInterface_ header_
    jregisterMethod header_ "getColorNode" (\() -> getColorNode_impl this)
    jregisterMethod header_ "toXmlNode" (\() -> toXmlNode_impl this)
    pure this

initFields_ :: ColorsView -> IO ()
initFields_ this = do
    jset this.commonPhoneStrings =<< (CommonPhoneStrings.getInstance)
    jset this.hEXRADIX (16)
    jset this.mAX (255)
    jset this.delta (20)
    pure ()

new_ :: IO ColorsView
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ColorsView -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getColorNode :: (JavaObjectClass this_) => this_ -> Document.Document -> Int -> Int -> Int -> IO (Node.Node)
getColorNode object_ a1 a2 a3 a4 = jmethod object_ "getColorNode" (\() -> (getColorNode_impl (javaCast object_ :: ColorsView))) () a1 a2 a3 a4

getColorNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> Int -> Int -> Int -> IO (Node.Node)
getColorNode_super object_ a1 a2 a3 a4 = (getColorNode_impl (javaCast object_ :: ColorsView)) a1 a2 a3 a4

getColorNode_impl :: ColorsView -> Document.Document -> Int -> Int -> Int -> IO (Node.Node)
getColorNode_impl this document redIndex greenIndex blueIndex = do
        hexColorStringBuffer <- (StringMaker.new_)
        when (redIndex < (jget (this).hEXRADIX)) $ do
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
        Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString redIndex (jget this.hEXRADIX))))
        when (greenIndex < (jget (this).hEXRADIX)) $ do
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
        Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString greenIndex (jget this.hEXRADIX))))
        when (blueIndex < (jget (this).hEXRADIX)) $ do
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
        Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString blueIndex (jget this.hEXRADIX))))
        colorNode <- (ModDomHelper.createNameValueNodes document (jget ((jio (ColorData.getInstance))).nAME) (jio (StringMaker.toString hexColorStringBuffer)))
        pure (colorNode)


-- throws Exception
toXmlNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode object_ a1 = jmethod object_ "toXmlNode" (\() -> (toXmlNode_impl (javaCast object_ :: ColorsView))) () a1

toXmlNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toXmlNode_super object_ a1 = (toXmlNode_impl (javaCast object_ :: ColorsView)) a1

toXmlNode_impl :: ColorsView -> Document.Document -> IO (Node.Node)
toXmlNode_impl this document = do
        node <- (ModDomHelper.createNameValueNodes document (jget ((jio (ColorsData.getInstance))).nAME) "RGB Colors In Hex")
        blackNode <- (ModDomHelper.createNameValueNodes document (jget ((jio (ColorData.getInstance))).nAME) "000000")
        Control.Monad.void (Node.appendChild node blackNode)
        forM_ [0, 0 + ((jget (this).delta)) .. (jget (this).mAX) - 1] $ \index -> javaIteration (pure ()) $ do
            hexColorStringBuffer <- (StringMaker.new_)
            when (index < (jget (this).hEXRADIX)) $ do
                Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString index (jget this.hEXRADIX))))
            when (index < (jget (this).hEXRADIX)) $ do
                Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString index (jget this.hEXRADIX))))
            when (index < (jget (this).hEXRADIX)) $ do
                Control.Monad.void (StringMaker.append hexColorStringBuffer (jget ((jget (this).commonPhoneStrings)).zERO))
            Control.Monad.void (StringMaker.append hexColorStringBuffer (jio (Integer.toString index (jget this.hEXRADIX))))
            colorNode <- (ModDomHelper.createNameValueNodes document (jget ((jio (ColorData.getInstance))).nAME) (jio (StringMaker.toString hexColorStringBuffer)))
            Control.Monad.void (Node.appendChild node colorNode)
        whiteNode <- (ModDomHelper.createNameValueNodes document (jget ((jio (ColorData.getInstance))).nAME) "FFFFFF")
        Control.Monad.void (Node.appendChild node whiteNode)
        forM_ [((jget (this).mAX) `quot` 2), ((jget (this).mAX) `quot` 2) + ((jget (this).delta)) .. (jget (this).mAX) - 1] $ \blueIndex -> javaIteration (pure ()) $ do
            forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \greenIndex -> javaIteration (pure ()) $ do
                forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \redIndex -> javaIteration (pure ()) $ do
                    Control.Monad.void (Node.appendChild node (jio (ColorsView.getColorNode this document redIndex greenIndex blueIndex)))
        forM_ [((jget (this).mAX) `quot` 2), ((jget (this).mAX) `quot` 2) + ((jget (this).delta)) .. (jget (this).mAX) - 1] $ \redIndex -> javaIteration (pure ()) $ do
            forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \greenIndex -> javaIteration (pure ()) $ do
                forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \blueIndex -> javaIteration (pure ()) $ do
                    Control.Monad.void (Node.appendChild node (jio (ColorsView.getColorNode this document redIndex greenIndex blueIndex)))
        forM_ [((jget (this).mAX) `quot` 2), ((jget (this).mAX) `quot` 2) + ((jget (this).delta)) .. (jget (this).mAX) - 1] $ \greenIndex -> javaIteration (pure ()) $ do
            forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \redIndex -> javaIteration (pure ()) $ do
                forM_ [0, 0 + ((jget (this).delta)) .. ((jget (this).mAX) `quot` 2) - 1] $ \blueIndex -> javaIteration (pure ()) $ do
                    Control.Monad.void (Node.appendChild node (jio (ColorsView.getColorNode this document redIndex greenIndex blueIndex)))
        forM_ [0, 0 + ((2 * (jget (this).delta))) .. (jget (this).mAX) - 1] $ \greenIndex -> javaIteration (pure ()) $ do
            forM_ [0, 0 + ((2 * (jget (this).delta))) .. (jget (this).mAX) - 1] $ \redIndex -> javaIteration (pure ()) $ do
                forM_ [0, 0 + ((2 * (jget (this).delta))) .. (jget (this).mAX) - 1] $ \blueIndex -> javaIteration (pure ()) $ do
                    Control.Monad.void (Node.appendChild node (jio (ColorsView.getColorNode this document redIndex greenIndex blueIndex)))
        pure (node)


