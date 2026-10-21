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
-- package org.allbinary.data.tree.category
module CategoryPrivateTree where

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
import qualified CategoryComponent -- org.allbinary.business.category.CategoryComponent
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CryptFileWriter -- org.allbinary.logic.control.crypt.file.CryptFileWriter
import qualified AbFile -- org.allbinary.logic.io.file.AbFile
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified Document -- org.w3c.dom.Document

data CategoryPrivateTree = CategoryPrivateTree
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    , categoryFactoryInterface :: IORef (CategoryFactoryInterface.CategoryFactoryInterface)
    }

instance JavaNull CategoryPrivateTree where
    javaNull = javaNullRecord "CategoryPrivateTree"

instance JavaEquals CategoryPrivateTree where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryPrivateTree where
    (==) = jrecordEquals

instance JavaObjectClass CategoryPrivateTree where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CategoryPrivateTree
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    categoryFactoryInterface <- newIORef javaNull
    let this = CategoryPrivateTree header_ logUtil categoryFactoryInterface
    jregisterLevel header_ this
    jregisterMethod header_ "save" (\() -> save_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    pure this

initFields_ :: CategoryPrivateTree -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.categoryFactoryInterface (javaNull)
    pure ()

new_1 :: CategoryFactoryInterface.CategoryFactoryInterface -> IO CategoryPrivateTree
new_1 categoryFactoryInterface = do
    this <- newRecord_
    init_1 this categoryFactoryInterface
    pure this

init_1 :: CategoryPrivateTree -> CategoryFactoryInterface.CategoryFactoryInterface -> IO ()
init_1 this categoryFactoryInterface = do
        initFields_ this
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget (commonStrings).sTART) this "CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)")
        jset (this).categoryFactoryInterface (categoryFactoryInterface)
        pure ()


-- throws Exception
save :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
save object_ a1 = jmethod object_ "save" (\() -> (save_impl (javaCast object_ :: CategoryPrivateTree))) () a1

save_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
save_super object_ a1 = (save_impl (javaCast object_ :: CategoryPrivateTree)) a1

save_impl :: CategoryPrivateTree -> CategoryInterface.CategoryInterface -> IO (())
save_impl this categoryInterface = do
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Saving Category File: " ++ javaToString (jio (CategoryInterface.getFilePath categoryInterface))) this "save()")
        document <- (CategoryComponent.toXmlDoc ((jio (CategoryComponent.new_1 categoryInterface))))
        cryptFileWriter <- (CryptFileWriter.new_2 (jget ((jio (CategoryData.getInstance))).uNCRYPTED_EXTENSION) (jget ((jio (CategoryData.getInstance))).eNCRYPTED_EXTENSION))
        Control.Monad.void (CryptFileWriter.write cryptFileWriter (jio (CategoryInterface.getFilePath categoryInterface)) document)
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "end" this "save()")
        pure ()


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
delete object_ a1 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CategoryPrivateTree))) () a1

delete_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> IO (())
delete_super object_ a1 = (delete_impl (javaCast object_ :: CategoryPrivateTree)) a1

delete_impl :: CategoryPrivateTree -> CategoryInterface.CategoryInterface -> IO (())
delete_impl this categoryInterface = do
        if (jio (CategoryInterface.isLeaf categoryInterface)) then do
            categoryFile <- (AbFile.createAbFileFromAbPath (jio (CategoryInterface.getFilePath categoryInterface)))
            when (jio (AbFile.delete categoryFile)) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Removed: " ++ javaToString (jio (CategoryInterface.getFilePath categoryInterface))) this "delete(CategoryInterface)")
        else do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Not a leaf unable to remove" this "delete(CategoryInterface)")
        pure ()


