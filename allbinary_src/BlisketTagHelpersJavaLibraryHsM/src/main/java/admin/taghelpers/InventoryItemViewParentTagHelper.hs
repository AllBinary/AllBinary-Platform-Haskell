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
-- package admin.taghelpers
module InventoryItemViewParentTagHelper where

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
import qualified Class -- same package or java.lang
import qualified RequestMapInterface -- org.allbinary.logic.communication.http.request.RequestMapInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInterface -- org.allbinary.logic.visual.transform.TransformInterface
import qualified ValidationViewHelper -- taghelpers.ValidationViewHelper
import qualified HelperTag -- tags.HelperTag
import qualified InventoryItemView -- views.admin.inventory.InventoryItemView
import qualified DownloadableInventoryItemView -- views.admin.inventory.download.DownloadableInventoryItemView

data InventoryItemViewParentTagHelper = InventoryItemViewParentTagHelper
    { header_ :: JavaHeader
    }

instance JavaNull InventoryItemViewParentTagHelper where
    javaNull = javaNullRecord "InventoryItemViewParentTagHelper"

instance JavaEquals InventoryItemViewParentTagHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryItemViewParentTagHelper where
    (==) = jrecordEquals

instance JavaObjectClass InventoryItemViewParentTagHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventoryItemViewParentTagHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = InventoryItemViewParentTagHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "getInventoryItemView" (\() -> getInventoryItemView_impl this)
    jregisterMethod header_ "getDownloadableInventoryItemView" (\() -> getDownloadableInventoryItemView_impl this)
    jregisterMethod header_ "getRequestMapInterface" (\() -> getRequestMapInterface_impl this)
    jregisterMethod header_ "checkForValidationViewHelper" (\() -> checkForValidationViewHelper_impl this)
    pure this

initFields_ :: InventoryItemViewParentTagHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InventoryItemViewParentTagHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryItemViewParentTagHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (InventoryItemViewParentTagHelper)
getInstance = do
        pure (InventoryItemViewParentTagHelper.instance_)


-- throws Exception
getInventoryItemView :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (InventoryItemView.InventoryItemView)
getInventoryItemView object_ a1 = jmethod object_ "getInventoryItemView" (\() -> (getInventoryItemView_impl (javaCast object_ :: InventoryItemViewParentTagHelper))) () a1

getInventoryItemView_super :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (InventoryItemView.InventoryItemView)
getInventoryItemView_super object_ a1 = (getInventoryItemView_impl (javaCast object_ :: InventoryItemViewParentTagHelper)) a1

getInventoryItemView_impl :: InventoryItemViewParentTagHelper -> HelperTag.HelperTag -> IO (InventoryItemView.InventoryItemView)
getInventoryItemView_impl this inventoryTag = do
    javaCatchReturn $ do
        if (inventoryTag /= javaNull) then do
            Control.Monad.void (InventoryItemViewParentTagHelper.checkForValidationViewHelper this (jio (HelperTag.getHelper inventoryTag)))
            let validationViewHelper = (javaCast (jio (HelperTag.getHelper inventoryTag)) :: ValidationViewHelper.ValidationViewHelper)
            viewObject <- (ValidationViewHelper.getViewObject validationViewHelper)
            when ((jio (TransformInterface.getTypeId viewObject)) /= (jget InventoryItemView.tYPE_ID)) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Must have ")
                Control.Monad.void (StringMaker.append stringBuffer "InventoryItemView and not: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass (jio (HelperTag.getHelper inventoryTag))))))))
                javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
            javaReturn ((javaCast viewObject :: InventoryItemView.InventoryItemView))
        else do
            javaThrow ((JavaException "Exception" "Must have parent tag."))


-- throws Exception
getDownloadableInventoryItemView :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (DownloadableInventoryItemView.DownloadableInventoryItemView)
getDownloadableInventoryItemView object_ a1 = jmethod object_ "getDownloadableInventoryItemView" (\() -> (getDownloadableInventoryItemView_impl (javaCast object_ :: InventoryItemViewParentTagHelper))) () a1

getDownloadableInventoryItemView_super :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (DownloadableInventoryItemView.DownloadableInventoryItemView)
getDownloadableInventoryItemView_super object_ a1 = (getDownloadableInventoryItemView_impl (javaCast object_ :: InventoryItemViewParentTagHelper)) a1

getDownloadableInventoryItemView_impl :: InventoryItemViewParentTagHelper -> HelperTag.HelperTag -> IO (DownloadableInventoryItemView.DownloadableInventoryItemView)
getDownloadableInventoryItemView_impl this inventoryTag = do
    javaCatchReturn $ do
        if (inventoryTag /= javaNull) then do
            Control.Monad.void (InventoryItemViewParentTagHelper.checkForValidationViewHelper this (jio (HelperTag.getHelper inventoryTag)))
            let validationViewHelper = (javaCast (jio (HelperTag.getHelper inventoryTag)) :: ValidationViewHelper.ValidationViewHelper)
            viewObject <- (ValidationViewHelper.getViewObject validationViewHelper)
            when ((jio (TransformInterface.getTypeId viewObject)) /= (jget DownloadableInventoryItemView.tYPE_ID)) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Must have ")
                Control.Monad.void (StringMaker.append stringBuffer "DownloadableInventoryItemView and not: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass (jio (HelperTag.getHelper inventoryTag))))))))
                javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
            javaReturn ((javaCast viewObject :: DownloadableInventoryItemView.DownloadableInventoryItemView))
        else do
            javaThrow ((JavaException "Exception" "Must have parent tag."))


-- throws Exception
getRequestMapInterface :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (RequestMapInterface.RequestMapInterface)
getRequestMapInterface object_ a1 = jmethod object_ "getRequestMapInterface" (\() -> (getRequestMapInterface_impl (javaCast object_ :: InventoryItemViewParentTagHelper))) () a1

getRequestMapInterface_super :: (JavaObjectClass this_) => this_ -> HelperTag.HelperTag -> IO (RequestMapInterface.RequestMapInterface)
getRequestMapInterface_super object_ a1 = (getRequestMapInterface_impl (javaCast object_ :: InventoryItemViewParentTagHelper)) a1

getRequestMapInterface_impl :: InventoryItemViewParentTagHelper -> HelperTag.HelperTag -> IO (RequestMapInterface.RequestMapInterface)
getRequestMapInterface_impl this inventoryTag = do
    javaCatchReturn $ do
        if (inventoryTag /= javaNull) then do
            Control.Monad.void (InventoryItemViewParentTagHelper.checkForValidationViewHelper this (jio (HelperTag.getHelper inventoryTag)))
            let validationViewHelper = (javaCast (jio (HelperTag.getHelper inventoryTag)) :: ValidationViewHelper.ValidationViewHelper)
            viewObject <- (ValidationViewHelper.getViewObject validationViewHelper)
            when (((jio (TransformInterface.getTypeId viewObject)) /= (jget InventoryItemView.tYPE_ID)) && ((jio (TransformInterface.getTypeId viewObject)) /= (jget DownloadableInventoryItemView.tYPE_ID))) $ do
                stringBuffer <- (StringMaker.new_)
                Control.Monad.void (StringMaker.append stringBuffer "Must have ")
                Control.Monad.void (StringMaker.append stringBuffer "specific TYPE_ID and not: ")
                Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass (jio (HelperTag.getHelper inventoryTag))))))))
                javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
            javaReturn ((javaCast viewObject :: RequestMapInterface.RequestMapInterface))
        else do
            javaThrow ((JavaException "Exception" "Must have parent tag."))


-- throws Exception
checkForValidationViewHelper :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
checkForValidationViewHelper object_ a1 = jmethod object_ "checkForValidationViewHelper" (\() -> (checkForValidationViewHelper_impl (javaCast object_ :: InventoryItemViewParentTagHelper))) () (jtoObject a1)

checkForValidationViewHelper_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> IO (())
checkForValidationViewHelper_super object_ a1 = (checkForValidationViewHelper_impl (javaCast object_ :: InventoryItemViewParentTagHelper)) (jtoObject a1)

checkForValidationViewHelper_impl :: InventoryItemViewParentTagHelper -> JavaObject -> IO (())
checkForValidationViewHelper_impl this helperObjectObject_ = do
        let helperObject = jtoObject helperObjectObject_
        when (Prelude.not ((javaInstanceOf helperObject "ValidationViewHelper"))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Must have ")
            Control.Monad.void (StringMaker.append stringBuffer "ValidationViewHelper")
            Control.Monad.void (StringMaker.append stringBuffer "and not: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass helperObject))))))
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
        pure ()


