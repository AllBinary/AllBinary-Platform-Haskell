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
-- package org.allbinary.business.advertisement.area
module AdvertisementAreaConstraints where

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
import qualified AdvertisementAreaData -- same package or java.lang
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DisplayInBrowserContraints -- org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints
import qualified DisplayInBrowserContraintsInterface -- org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface
import qualified TwoDimensionalConstraint -- org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint
import qualified TwoDimensionalConstraintInterface -- org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified AdvertisementAreaConstraintsInterface

-- implements AdvertisementAreaConstraintsInterface
data AdvertisementAreaConstraints = AdvertisementAreaConstraints
    { header_ :: JavaHeader
    , displayInBrowserContraintsInterface :: IORef (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
    , twoDimensionConstraintsInterface :: IORef (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
    }

instance JavaNull AdvertisementAreaConstraints where
    javaNull = javaNullRecord "AdvertisementAreaConstraints"

instance JavaEquals AdvertisementAreaConstraints where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementAreaConstraints where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementAreaConstraints where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO AdvertisementAreaConstraints
newRecord_ = do
    header_ <- newJavaHeader
    displayInBrowserContraintsInterface <- newIORef javaNull
    twoDimensionConstraintsInterface <- newIORef javaNull
    let this = AdvertisementAreaConstraints header_ displayInBrowserContraintsInterface twoDimensionConstraintsInterface
    jregisterLevel header_ this
    AdvertisementAreaConstraintsInterface.registerInterface_ header_
    jregisterMethod header_ "setDisplayInBrowserContraints" (\() -> setDisplayInBrowserContraints_impl this)
    jregisterMethod header_ "getTwoDimensionContraints" (\() -> getTwoDimensionContraints_impl this)
    jregisterMethod header_ "getDisplayInBrowserContraints" (\() -> getDisplayInBrowserContraints_impl this)
    jregisterMethod header_ "getTwoDimensionContraints" (\() -> getTwoDimensionContraints_impl this)
    pure this

initFields_ :: AdvertisementAreaConstraints -> IO ()
initFields_ this = do
    jset this.displayInBrowserContraintsInterface (javaNull)
    jset this.twoDimensionConstraintsInterface (javaNull)
    pure ()

new_1 :: Document.Document -> IO AdvertisementAreaConstraints
new_1 document = do
    this <- newRecord_
    init_1 this document
    pure this

init_1 :: AdvertisementAreaConstraints -> Document.Document -> IO ()
init_1 this document = do
        initFields_ this
        node <- (DomSearchHelper.getNode (jget ((jio (AdvertisementAreaData.getInstance))).nAME) (jio (Document.getChildNodes document)))
        assignedValue <- (fmap (\value_ -> javaCast value_ :: DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface) (DisplayInBrowserContraints.new_1 node))
        jset (this).displayInBrowserContraintsInterface (assignedValue)
        assignedValue <- (fmap (\value_ -> javaCast value_ :: TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface) (TwoDimensionalConstraint.new_1 node))
        jset (this).twoDimensionConstraintsInterface (assignedValue)
        pure ()


setDisplayInBrowserContraints :: (JavaObjectClass this_) => this_ -> DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface -> IO (())
setDisplayInBrowserContraints object_ a1 = jmethod object_ "setDisplayInBrowserContraints" (\() -> (setDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))) () a1

setDisplayInBrowserContraints_super :: (JavaObjectClass this_) => this_ -> DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface -> IO (())
setDisplayInBrowserContraints_super object_ a1 = (setDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraints)) a1

setDisplayInBrowserContraints_impl :: AdvertisementAreaConstraints -> DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface -> IO (())
setDisplayInBrowserContraints_impl this displayInBrowserContraintsInterface = do
        jset (this).displayInBrowserContraintsInterface (displayInBrowserContraintsInterface)
        pure ()


getTwoDimensionContraints :: (JavaObjectClass this_) => this_ -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
getTwoDimensionContraints object_ a1 = jmethod object_ "getTwoDimensionContraints" (\() -> (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))) () a1

getTwoDimensionContraints_super :: (JavaObjectClass this_) => this_ -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
getTwoDimensionContraints_super object_ a1 = (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraints)) a1

getTwoDimensionContraints_impl :: AdvertisementAreaConstraints -> TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface -> IO (())
getTwoDimensionContraints_impl this twoDimensionConstraintsInterface = do
        jset (this).twoDimensionConstraintsInterface (twoDimensionConstraintsInterface)
        pure ()


getDisplayInBrowserContraints :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints object_ = jmethod object_ "getDisplayInBrowserContraints" (\() -> (getDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))) ()

getDisplayInBrowserContraints_super :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints_super object_ = (getDisplayInBrowserContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))

getDisplayInBrowserContraints_impl :: AdvertisementAreaConstraints -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraints_impl this = do
        pure ((jget (this).displayInBrowserContraintsInterface))


-- Java overload of getTwoDimensionContraints with a different parameter count: give it a different name
getTwoDimensionContraints :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints object_ = jmethod object_ "getTwoDimensionContraints" (\() -> (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))) ()

getTwoDimensionContraints_super :: (JavaObjectClass this_) => this_ -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints_super object_ = (getTwoDimensionContraints_impl (javaCast object_ :: AdvertisementAreaConstraints))

getTwoDimensionContraints_impl :: AdvertisementAreaConstraints -> IO (TwoDimensionalConstraintInterface.TwoDimensionalConstraintInterface)
getTwoDimensionContraints_impl this = do
        pure ((jget (this).twoDimensionConstraintsInterface))


