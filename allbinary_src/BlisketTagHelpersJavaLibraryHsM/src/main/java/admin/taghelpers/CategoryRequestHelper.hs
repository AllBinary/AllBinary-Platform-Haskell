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
module CategoryRequestHelper (module CategoryRequestHelper, module ModifyTable) where

import ModifyTable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getXmlData, getXmlData_super, getXmlData_impl, setCategoryLoader, setCategoryLoader_super, setCategoryLoader_impl, insert, insert_super, insert_impl, delete, delete_super, delete_impl, viewCategory, viewCategory_super, viewCategory_impl, viewCategories, viewCategories_super, viewCategories_impl, update, update_super, update_impl, logUtil, pageContext, hashMap, request, categoryLoaderInterface, categoryInterface, childCategoryInterface, transformInfoInterface, categoryRequest)
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
import qualified CommonStrings -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified Map -- java.util.Map
import qualified Set -- java.util.Set
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified CategoryComponent -- org.allbinary.business.category.CategoryComponent
import qualified CategoryData -- org.allbinary.business.category.CategoryData
import qualified CategoryInterface -- org.allbinary.business.category.CategoryInterface
import qualified StoreCategoryFactory -- org.allbinary.business.category.store.StoreCategoryFactory
import qualified StoreFrontData -- org.allbinary.business.context.modules.storefront.StoreFrontData
import qualified StoreFrontFactory -- org.allbinary.business.context.modules.storefront.StoreFrontFactory
import qualified StoreFrontInterface -- org.allbinary.business.context.modules.storefront.StoreFrontInterface
import qualified CategoryLoaderFactory -- org.allbinary.data.tree.category.CategoryLoaderFactory
import qualified CategoryLoaderInterface -- org.allbinary.data.tree.category.CategoryLoaderInterface
import qualified DomNodeHelper -- org.allbinary.data.tree.dom.DomNodeHelper
import qualified DomSearchHelper -- org.allbinary.data.tree.dom.DomSearchHelper
import qualified DomDocumentHelper -- org.allbinary.data.tree.dom.document.DomDocumentHelper
import qualified XmlDocumentHelper -- org.allbinary.data.tree.dom.document.XmlDocumentHelper
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified TransformInfoBasic -- org.allbinary.logic.visual.transform.info.TransformInfoBasic
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified ModifyTable

data CategoryRequestHelper = CategoryRequestHelper
    { header_ :: JavaHeader
    , base :: ModifyTable.ModifyTable
    , logUtil :: IORef (LogUtil.LogUtil)
    , pageContext :: IORef (PageContext.PageContext)
    , hashMap :: IORef (HashMap.HashMap)
    , request :: IORef (HttpServletRequest.HttpServletRequest)
    , categoryLoaderInterface :: IORef (CategoryLoaderInterface.CategoryLoaderInterface)
    , categoryInterface :: IORef (CategoryInterface.CategoryInterface)
    , childCategoryInterface :: IORef (CategoryInterface.CategoryInterface)
    , transformInfoInterface :: IORef (TransformInfoInterface.TransformInfoInterface)
    }

instance JavaNull CategoryRequestHelper where
    javaNull = javaNullRecord "CategoryRequestHelper"

instance JavaEquals CategoryRequestHelper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CategoryRequestHelper where
    (==) = jrecordEquals

instance JavaObjectClass CategoryRequestHelper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE categoryRequest #-}
categoryRequest = unsafePerformIO ((StringMaker.toString ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.append ((jio (StringMaker.new_))) "<"))) (jget ((jio (CategoryData.getInstance))).rEQUEST)))) ">")))))

newRecord_ :: IO CategoryRequestHelper
newRecord_ = do
    base <- ModifyTable.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    pageContext <- newIORef javaNull
    hashMap <- newIORef javaNull
    request <- newIORef javaNull
    categoryLoaderInterface <- newIORef javaNull
    categoryInterface <- newIORef javaNull
    childCategoryInterface <- newIORef javaNull
    transformInfoInterface <- newIORef javaNull
    let this = CategoryRequestHelper header_ base logUtil pageContext hashMap request categoryLoaderInterface categoryInterface childCategoryInterface transformInfoInterface
    jregisterLevel header_ this
    jregisterMethod header_ "getXmlData" (\() -> getXmlData_impl this)
    jregisterMethod header_ "setCategoryLoader" (\() -> setCategoryLoader_impl this)
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "viewCategory" (\() -> viewCategory_impl this)
    jregisterMethod header_ "viewCategories" (\() -> viewCategories_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: CategoryRequestHelper -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.pageContext (javaNull)
    jset this.hashMap (javaNull)
    jset this.request (javaNull)
    jset this.categoryLoaderInterface (javaNull)
    jset this.categoryInterface (javaNull)
    jset this.childCategoryInterface (javaNull)
    jset this.transformInfoInterface (javaNull)
    pure ()

new_2 :: HashMap.HashMap -> PageContext.PageContext -> IO CategoryRequestHelper
new_2 hashMap pageContext = do
    this <- newRecord_
    init_2 this hashMap pageContext
    pure this

init_2 :: CategoryRequestHelper -> HashMap.HashMap -> PageContext.PageContext -> IO ()
init_2 this hashMap pageContext = do
        ModifyTable.init_ this.base
        initFields_ this
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "CategoryRequestHelper()" e)
            ) $ do
            jset (this).request ((javaCast (jio (PageContext.getRequest pageContext)) :: HttpServletRequest.HttpServletRequest))
            jset (this).pageContext (pageContext)
            jset (this).hashMap (hashMap)
            Control.Monad.void (CategoryRequestHelper.getXmlData this)
        pure ()


getXmlData :: (JavaObjectClass this_) => this_ -> IO (())
getXmlData object_ = jmethod object_ "getXmlData" (\() -> (getXmlData_impl (javaCast object_ :: CategoryRequestHelper))) ()

getXmlData_super :: (JavaObjectClass this_) => this_ -> IO (())
getXmlData_super object_ = (getXmlData_impl (javaCast object_ :: CategoryRequestHelper))

getXmlData_impl :: CategoryRequestHelper -> IO (())
getXmlData_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPERERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget this.base.commonStrings)).eXCEPTION) this "getXmlData()" e)
            ) $ do
            map <- (HttpServletRequest.getParameterMap ((jget (this).request)))
            categoryData <- (CategoryData.getInstance)
            keys <- (Map.keySet map)
            keyArray <- (Set.toArray keys)
            let size = (jlength keyArray)
            when (size > 0) $ do
                xmlRequest <- newIORef ((javaCast (jindex keyArray (0)) :: String))
                let index = 1
                fix $ \loop -> when ((index < size) && (Prelude.not (Data.List.isPrefixOf (CategoryRequestHelper.categoryRequest) (jget xmlRequest)))) $ javaIteration (loop) $ do
                    jset xmlRequest ((javaCast (jindex keyArray (index)) :: String))
                    when (Data.List.isPrefixOf (CategoryRequestHelper.categoryRequest) (jget xmlRequest)) $ do
                        throwIO JavaBreak
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jget xmlRequest) this "getXmlData()")
                document <- (DomDocumentHelper.create (jget xmlRequest))
                requestNode <- (DomSearchHelper.getNode (jget (categoryData).rEQUEST) (jio (Document.getChildNodes document)))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) (jio (XmlDocumentHelper.toString document)) this "getXmlData()")
                Control.Monad.void (CategoryRequestHelper.setCategoryLoader this requestNode)
                parentCategoryNode <- (DomSearchHelper.getNode (jget (categoryData).pARENT) (jio (Node.getChildNodes requestNode)))
                categoryNode <- (DomSearchHelper.getNode (jget (categoryData).nAME) (jio (Node.getChildNodes parentCategoryNode)))
                jset (this).categoryInterface ((javaCast (jio (StoreCategoryFactory.getRootInstanceFromNode ((jio (StoreCategoryFactory.new_1 (jget (this).transformInfoInterface)))) categoryNode)) :: CategoryInterface.CategoryInterface))
                assignedValue <- (CategoryLoaderInterface.get ((jget (this).categoryLoaderInterface)) (jget (this).categoryInterface))
                jset (this).categoryInterface (assignedValue)
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                    Control.Monad.void (CategoryInterface.log ((jget (this).categoryInterface)))
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Loaded Parent Category" this "getXmlData()")
                childCategoryNode <- (DomSearchHelper.getNodeNoThrow (jget (categoryData).nAME) (jio (Node.getChildNodes requestNode)))
                if (childCategoryNode /= javaNull) then do
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Loading Child Category" this "getXmlData()")
                    jset (this).childCategoryInterface ((javaCast (jio (StoreCategoryFactory.getInstance ((jio (StoreCategoryFactory.new_1 (jget (this).transformInfoInterface)))) childCategoryNode)) :: CategoryInterface.CategoryInterface))
                    when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).tAGHELPER))) $ do
                        Control.Monad.void (CategoryInterface.log ((jget (this).childCategoryInterface)))
                        Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Loaded Child Category" this "getXmlData()")
                else do
                    jset (this).childCategoryInterface ((jget (this).categoryInterface))
        pure ()


-- throws Exception
setCategoryLoader :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
setCategoryLoader object_ a1 = jmethod object_ "setCategoryLoader" (\() -> (setCategoryLoader_impl (javaCast object_ :: CategoryRequestHelper))) () a1

setCategoryLoader_super :: (JavaObjectClass this_) => this_ -> Node.Node -> IO (())
setCategoryLoader_super object_ a1 = (setCategoryLoader_impl (javaCast object_ :: CategoryRequestHelper)) a1

setCategoryLoader_impl :: CategoryRequestHelper -> Node.Node -> IO (())
setCategoryLoader_impl this requestNode = do
        storeNameNode <- (DomSearchHelper.getNode (jget ((jio (StoreFrontData.getInstance))).nAME) (jio (Node.getChildNodes requestNode)))
        when (storeNameNode /= javaNull) $ do
            storeName <- (DomNodeHelper.getTextNodeValue storeNameNode)
            if (storeName /= javaNull) then do
                storeFrontInterface <- (fmap (\value_ -> javaCast value_ :: StoreFrontInterface.StoreFrontInterface) (StoreFrontFactory.getInstance storeName))
                jset (this).transformInfoInterface ((javaCast (jio (TransformInfoBasic.new_3 storeFrontInterface (jget (this).hashMap) (jget (this).pageContext))) :: TransformInfoInterface.TransformInfoInterface))
                when ((jget (this).transformInfoInterface) == javaNull) $ do
                    javaThrow ((JavaException "Exception" "TransformInfo null"))
                storeCategoryFactory <- (StoreCategoryFactory.new_1 (jget (this).transformInfoInterface))
                assignedValue <- (CategoryLoaderFactory.getInstance storeCategoryFactory)
                jset (this).categoryLoaderInterface (assignedValue)
            else do
                javaThrow ((JavaException "Exception" ("Store Name Error: " ++ storeName)))
        pure ()


insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: CategoryRequestHelper))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: CategoryRequestHelper))

insert_impl :: CategoryRequestHelper -> IO (String)
insert_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add item to Category"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "insert()" e)
            pure (error)
            ) $ do
            let success = "Successfully Added the following to the Category table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "inserting" this "insert()")
            Control.Monad.void (CategoryLoaderInterface.insert ((jget (this).categoryLoaderInterface)) (jget (this).categoryInterface) (jget (this).childCategoryInterface))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "insert()")
            pure (success)


delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: CategoryRequestHelper))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: CategoryRequestHelper))

delete_impl :: CategoryRequestHelper -> IO (String)
delete_impl this = do
        handle (\(e :: JavaException) -> do
            handle (\(e2 :: JavaException) -> do
                let error = "Failed to remove category and show the path of the failed category"
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e2)
                pure (error)
                ) $ do
                let error = ("Failed to remove category: " ++ javaToString (jio (CategoryInterface.getPath ((jget (this).childCategoryInterface)))))
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                    Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "delete()" e)
                pure (error)
            ) $ do
            let success = ((("Successfully Removed " ++ javaToString (jget ((jio (CategoryData.getInstance))).nAME)) ++ "=") ++ javaToString (jio (CategoryInterface.getPath ((jget (this).childCategoryInterface)))))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "Deleting" this "delete()")
            Control.Monad.void (CategoryLoaderInterface.delete ((jget (this).categoryLoaderInterface)) (jget (this).categoryInterface) (jget (this).childCategoryInterface))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "delete()")
            pure (success)


viewCategory :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategory object_ = jmethod object_ "viewCategory" (\() -> (viewCategory_impl (javaCast object_ :: CategoryRequestHelper))) ()

viewCategory_super :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategory_super object_ = (viewCategory_impl (javaCast object_ :: CategoryRequestHelper))

viewCategory_impl :: CategoryRequestHelper -> IO (String)
viewCategory_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to get Category"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "viewCategory()" e)
            pure (error)
            ) $ do
            document <- (CategoryComponent.toXmlDoc ((jio (CategoryComponent.new_1 (jget (this).childCategoryInterface)))))
            xmlString <- (XmlDocumentHelper.toString document)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) xmlString this "viewCategory()")
            pure (xmlString)


viewCategories :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategories object_ = jmethod object_ "viewCategories" (\() -> (viewCategories_impl (javaCast object_ :: CategoryRequestHelper))) ()

viewCategories_super :: (JavaObjectClass this_) => this_ -> IO (String)
viewCategories_super object_ = (viewCategories_impl (javaCast object_ :: CategoryRequestHelper))

viewCategories_impl :: CategoryRequestHelper -> IO (String)
viewCategories_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to view Categories table"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "viewCategories()" e)
            pure (error)
            ) $ do
            let success = (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "viewCategories()")
            pure (success)


update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: CategoryRequestHelper))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: CategoryRequestHelper))

update_impl :: CategoryRequestHelper -> IO (String)
update_impl this = do
        handle (\(e :: JavaException) -> do
            let error = "Failed to add Item"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGSERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) (jget ((jget (this).base.commonStrings)).eXCEPTION) this "update()" e)
            pure (error)
            ) $ do
            let success = "New Item Successfully added"
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).sQLTAGS))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) success this "update()")
            pure (success)


