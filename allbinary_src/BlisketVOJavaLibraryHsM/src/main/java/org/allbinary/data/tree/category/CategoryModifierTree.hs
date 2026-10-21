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
module CategoryModifierTree (module CategoryModifierTree, module CategoryPrivateTree) where

import CategoryPrivateTree hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, insert, insert_super, insert_impl, delete, delete_super, delete_impl, logUtil, commonStrings, directory)
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
import qualified CategoryFactoryInterface -- org.allbinary.business.category.CategoryFactoryInterface
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified Directory -- org.allbinary.logic.io.file.directory.Directory
import qualified AbPath -- org.allbinary.logic.io.path.AbPath
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified CategoryPrivateTree
import qualified CategoryModifierTreeInterface

-- implements CategoryModifierTreeInterface
data CategoryModifierTree = CategoryModifierTree
    { header_ :: JavaHeader
    , base :: CategoryPrivateTree.CategoryPrivateTree
    , logUtil :: IORef (LogUtil.LogUtil)
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , directory :: IORef (Directory.Directory)
    }

instance JavaNull CategoryModifierTree where
    javaNull = javaNullRecord "CategoryModifierTree"

instance JavaEquals CategoryModifierTree where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryModifierTree where
    (==) = jrecordEquals

instance JavaObjectClass CategoryModifierTree where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO CategoryModifierTree
newRecord_ = do
    base <- CategoryPrivateTree.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    commonStrings <- newIORef javaNull
    directory <- newIORef javaNull
    let this = CategoryModifierTree header_ base logUtil commonStrings directory
    jregisterLevel header_ this
    CategoryModifierTreeInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    pure this

initFields_ :: CategoryModifierTree -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.directory =<< (Directory.getInstance)
    pure ()

new_1 :: CategoryFactoryInterface.CategoryFactoryInterface -> IO CategoryModifierTree
new_1 categoryFactoryInterface = do
    this <- newRecord_
    init_1 this categoryFactoryInterface
    pure this

init_1 :: CategoryModifierTree -> CategoryFactoryInterface.CategoryFactoryInterface -> IO ()
init_1 this categoryFactoryInterface = do
        CategoryPrivateTree.init_1 this.base (categoryFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
            Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).sTART) this "CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)")
        pure ()


insert :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert object_ a1 a2 = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: CategoryModifierTree))) () a1 a2

insert_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert_super object_ a1 a2 = (insert_impl (javaCast object_ :: CategoryModifierTree)) a1 a2

insert_impl :: CategoryModifierTree -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
insert_impl this parentCategoryInterface newChildCategoryInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this "insert" e)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Inserting" this "insert()")
            if (jio (CategoryInterface.booleanValue ((jio (CategoryInterface.isValid parentCategoryInterface))))) then do
                Control.Monad.void (CategoryInterface.addChild parentCategoryInterface newChildCategoryInterface)
                directoryToBeCreatedAbPath <- (AbPath.new_2 ((jio (CategoryInterface.toString ((jio (CategoryInterface.getRootFilePath newChildCategoryInterface))))) ++ (jio (CategoryInterface.toString ((jio (CategoryInterface.getPath newChildCategoryInterface)))))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                Control.Monad.void (Directory.create ((jget (this).directory)) directoryToBeCreatedAbPath)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).cATEGORY))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Saving" this "insert()")
                Control.Monad.void (CategoryPrivateTree.save this parentCategoryInterface)
                Control.Monad.void (CategoryPrivateTree.save this newChildCategoryInterface)
            else do
                javaThrow ((JavaException "Exception" "Will Not Add Null Category"))
        pure ()


delete :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete object_ a1 a2 = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CategoryModifierTree))) () a1 a2

delete_super :: (JavaObjectClass this_) => this_ -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete_super object_ a1 a2 = (delete_impl (javaCast object_ :: CategoryModifierTree)) a1 a2

delete_impl :: CategoryModifierTree -> CategoryInterface.CategoryInterface -> CategoryInterface.CategoryInterface -> IO (())
delete_impl this parentCategoryInterface existingChildCategoryInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).commonStrings)).fAILURE) this (jget ((jget (this).commonStrings)).delete) e)
            ) $ do
            if (jio (CategoryInterface.booleanValue ((jio (CategoryInterface.isValid parentCategoryInterface))))) then do
                Control.Monad.void (CategoryInterface.addChild parentCategoryInterface existingChildCategoryInterface)
                directoryToBeDeletedAbPath <- (AbPath.new_2 ((jio (CategoryInterface.toString ((jio (CategoryInterface.getRootFilePath existingChildCategoryInterface))))) ++ (jio (CategoryInterface.toString ((jio (CategoryInterface.getPath existingChildCategoryInterface)))))) (jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
                Control.Monad.void (CategoryModifierTree.delete this existingChildCategoryInterface)
                Control.Monad.void (CategoryInterface.removeChild parentCategoryInterface existingChildCategoryInterface)
                Control.Monad.void (CategoryPrivateTree.save this parentCategoryInterface)
                Control.Monad.void (Directory.remove ((jget (this).directory)) directoryToBeDeletedAbPath)
            else do
                javaThrow ((JavaException "Exception" "Will Not Add Null Category"))
        pure ()


