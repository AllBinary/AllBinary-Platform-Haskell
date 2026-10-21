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
-- package org.allbinary.logic.visual.dhtml.style
module StylesValidationFactory where

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
import qualified StylesData -- same package or java.lang
import qualified StyleData -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified NameSpaceRequestParamData -- org.allbinary.logic.communication.http.request.NameSpaceRequestParamData
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CssElementData -- org.allbinary.logic.visual.dhtml.style.css.CssElementData
import qualified CssElementsValidationFactory -- org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified NodeList -- org.w3c.dom.NodeList

data StylesValidationFactory = StylesValidationFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull StylesValidationFactory where
    javaNull = javaNullRecord "StylesValidationFactory"

instance JavaEquals StylesValidationFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq StylesValidationFactory where
    (==) = jrecordEquals

instance JavaObjectClass StylesValidationFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO StylesValidationFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = StylesValidationFactory header_ logUtil
    jregisterLevel header_ this
    jregisterMethod header_ "getInstance_overload1" (\() -> getInstance_overload1_impl this)
    pure this

initFields_ :: StylesValidationFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


getInstance :: IO (StylesValidationFactory)
getInstance = do
        pure (StylesValidationFactory.instance_)

new_ :: IO StylesValidationFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: StylesValidationFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- Java overloads of getInstance: calls the overload for the types of the arguments
getInstance :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (BasicArrayList.BasicArrayList)
getInstance this a1
    | jisInstanceOf a1 (javaNull :: Document.Document) = getInstance_overload1 this (javaCast a1 :: Document.Document)
    | jisInstanceOf a1 (javaNull :: HashMap.HashMap) = getInstance_overload2 this (javaCast a1 :: HashMap.HashMap)
    | otherwise = getInstance_overload2 this (javaCast a1 :: HashMap.HashMap)

-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload1 :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (BasicArrayList.BasicArrayList)
getInstance_overload1 object_ a1 = jmethod object_ "getInstance_overload1" (\() -> (getInstance_overload1_impl (javaCast object_ :: StylesValidationFactory))) () a1

getInstance_overload1_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (BasicArrayList.BasicArrayList)
getInstance_overload1_super object_ a1 = (getInstance_overload1_impl (javaCast object_ :: StylesValidationFactory)) a1

getInstance_overload1_impl :: StylesValidationFactory -> Document.Document -> IO (BasicArrayList.BasicArrayList)
getInstance_overload1_impl this document = do
    javaCatchReturn $ do
        commonStrings <- (CommonStrings.getInstance)
        nodeList <- (Document.getElementsByTagName document (jget ((jio (StylesData.getInstance))).nAME))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Style Present: " ++ (jio (XmlDocumentHelper.toString document))) this (jget (commonStrings).gET_INSTANCE))
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Styles Present: " ++ javaToString (jio (NodeList.getLength nodeList))) this (jget (commonStrings).gET_INSTANCE))
        forM_ [0 .. (jio (NodeList.getLength nodeList)) - 1] $ \index -> javaIteration (pure ()) $ do
            stylesNode <- (NodeList.item nodeList index)
            styleNodeList <- (DomSearchHelper.getAllNodes (jget ((jio (StyleData.getInstance))).nAME) (jio (Node.getChildNodes stylesNode)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Style Nodes Present: " ++ javaToString (jio (BasicArrayList.size styleNodeList))) this (jget (commonStrings).gET_INSTANCE))
            forM_ [0 .. (jio (BasicArrayList.size styleNodeList)) - 1] $ \styleNodesIndex -> javaIteration (pure ()) $ do
                let styleNode = (javaCast (jio (BasicArrayList.get styleNodeList styleNodesIndex)) :: Node.Node)
                cssElementStyleNodeList <- (DomSearchHelper.getAllNodes (jget ((jio (CssElementData.getInstance))).nAME) (jio (Node.getChildNodes styleNode)))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Number Of Element Nodes Present: " ++ javaToString (jio (BasicArrayList.size cssElementStyleNodeList))) this (jget (commonStrings).gET_INSTANCE))
                javaReturn =<< (CssElementsValidationFactory.getInstance cssElementStyleNodeList)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "No Style Present" this (jget (commonStrings).gET_INSTANCE))
        (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))


-- throws Exception
-- Java overload of getInstance with a different parameter count: give it a different name
getInstance_overload2 :: HashMap.HashMap -> IO (BasicArrayList.BasicArrayList)
getInstance_overload2 hashMap = do
        let stylesDocument = (javaCast (jio (HashMap.get hashMap (NameSpaceRequestParamData.dOCUMENT))) :: Document.Document)
        (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (StylesValidationFactory.getInstance ((jio (StylesValidationFactory.getInstance))) stylesDocument))


