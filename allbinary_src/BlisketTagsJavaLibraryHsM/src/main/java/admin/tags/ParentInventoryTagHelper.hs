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
-- package admin.tags
module ParentInventoryTagHelper where

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
import qualified HelperTag -- same package or java.lang
import qualified Any -- same package or java.lang
import qualified Class -- same package or java.lang
import qualified Tag -- javax.servlet.jsp.tagext.Tag
import qualified StringMaker -- org.allbinary.logic.string.StringMaker

data ParentInventoryTagHelper = ParentInventoryTagHelper
    { header_ :: JavaHeader
    }

instance JavaNull ParentInventoryTagHelper where
    javaNull = javaNullRecord "ParentInventoryTagHelper"

instance JavaEquals ParentInventoryTagHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ParentInventoryTagHelper where
    (==) = jrecordEquals

instance JavaObjectClass ParentInventoryTagHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ParentInventoryTagHelper
newRecord_ = do
    header_ <- newJavaHeader
    let this = ParentInventoryTagHelper header_
    jregisterLevel header_ this
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    pure this

initFields_ :: ParentInventoryTagHelper -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ParentInventoryTagHelper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ParentInventoryTagHelper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ParentInventoryTagHelper)
getInstance = do
        pure (ParentInventoryTagHelper.instance_)


-- throws Exception
isValid :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Tag.Tag -> IO (())
isValid object_ a1 a2 = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: ParentInventoryTagHelper))) () (jtoObject a1) a2

isValid_super :: (JavaObjectClass this_, JavaObjectClass o1) => this_ -> o1 -> Tag.Tag -> IO (())
isValid_super object_ a1 a2 = (isValid_impl (javaCast object_ :: ParentInventoryTagHelper)) (jtoObject a1) a2

isValid_impl :: ParentInventoryTagHelper -> JavaObject -> Tag.Tag -> IO (())
isValid_impl this tagClassObject_ parentTag = do
        let tagClass = jtoObject tagClassObject_
        if (parentTag == javaNull) then do
            javaThrow ((JavaException "Exception" "Must have parent tag."))
        else when (Prelude.not ((javaInstanceOf parentTag "HelperTag"))) $ do
            stringBuffer <- (StringMaker.new_)
            Control.Monad.void (StringMaker.append stringBuffer "Must have at least a ")
            Control.Monad.void (StringMaker.append stringBuffer "tags.HelperTag")
            Control.Monad.void (StringMaker.append stringBuffer " as parent")
            Control.Monad.void (StringMaker.append stringBuffer "and not: ")
            Control.Monad.void (StringMaker.append stringBuffer (jio (Class.getName ((jio (jobjectGetClass parentTag))))))
            javaThrow ((JavaException "Exception" (jio (StringMaker.toString stringBuffer))))
        pure ()


