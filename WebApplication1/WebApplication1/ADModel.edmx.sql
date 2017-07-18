
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/18/2017 13:11:29
-- Generated from EDMX file: C:\Users\e0046486\Source\Repos\New_AD_for_44\WebApplication1\WebApplication1\ADModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LogicalDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'StockAdjustments'
CREATE TABLE [dbo].[StockAdjustments] (
    [StockAdjustmentId] int IDENTITY(1,1) NOT NULL,
    [DateRequest] datetime  NOT NULL,
    [ItemNo] nvarchar(max)  NOT NULL,
    [Discrepancy] int  NOT NULL,
    [Notes] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [DateOfDecision] datetime  NOT NULL,
    [DateOfRequest] datetime  NOT NULL,
    [ApproveBy] bigint  NOT NULL,
    [SubmittedBy] int  NOT NULL
);
GO

-- Creating table 'DisbursementDetails'
CREATE TABLE [dbo].[DisbursementDetails] (
    [DisbursementDetNo] int IDENTITY(1,1) NOT NULL,
    [QtyRequested] int  NOT NULL,
    [QtyReceived] int  NOT NULL,
    [Reason] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [ItemNo] nvarchar(max)  NOT NULL,
    [DisbursementNo] int  NOT NULL,
    [Catalogue_ItemNo] int  NOT NULL
);
GO

-- Creating table 'RetrievalDetails'
CREATE TABLE [dbo].[RetrievalDetails] (
    [RetrievalDetId] int IDENTITY(1,1) NOT NULL,
    [ItemNo] nvarchar(max)  NULL,
    [RetrievedQty] int  NOT NULL,
    [RequiredQty] int  NOT NULL,
    [RetrievalId] int  NOT NULL,
    [Catalogue_ItemNo] int  NOT NULL
);
GO

-- Creating table 'Purchases'
CREATE TABLE [dbo].[Purchases] (
    [PurchasePONo] int IDENTITY(1,1) NOT NULL,
    [SupplierCode] nvarchar(max)  NOT NULL,
    [OrderedBy] int  NOT NULL,
    [OrderedDate] datetime  NOT NULL,
    [DecidedBy] int  NOT NULL,
    [DecisionDate] datetime  NOT NULL,
    [TotalAmount] int  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Supplier_SupplierCode] int  NOT NULL
);
GO

-- Creating table 'Suppliers1'
CREATE TABLE [dbo].[Suppliers1] (
    [SupplierCode] int IDENTITY(1,1) NOT NULL,
    [SupplierName] nvarchar(max)  NOT NULL,
    [ContactName] nvarchar(max)  NOT NULL,
    [PhoneNo] int  NOT NULL,
    [FaxNo] int  NOT NULL,
    [SupplierAddress] nvarchar(max)  NOT NULL,
    [GstNo] int  NOT NULL,
    [Year] datetime  NOT NULL
);
GO

-- Creating table 'Departments1'
CREATE TABLE [dbo].[Departments1] (
    [DeptCode] nvarchar(max)  NOT NULL,
    [DeptName] nvarchar(max)  NOT NULL,
    [ContactName] nvarchar(max)  NOT NULL,
    [PhoneNo] int  NOT NULL,
    [FaxNo] int  NOT NULL,
    [DeptHead] int  NOT NULL,
    [CollectionId] int  NOT NULL,
    [DeptRep] int  NOT NULL,
    [CollectionPoint_CollectionId] int  NOT NULL
);
GO

-- Creating table 'Employees1'
CREATE TABLE [dbo].[Employees1] (
    [EmployeeNo] int IDENTITY(1,1) NOT NULL,
    [EmployeeName] nvarchar(max)  NOT NULL,
    [DeptCode] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NOT NULL,
    [EmployeeStatus] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Role] nvarchar(max)  NOT NULL,
    [DepartmentDeptCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CollectionPoints'
CREATE TABLE [dbo].[CollectionPoints] (
    [CollectionId] int IDENTITY(1,1) NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [TimeSlot] datetime  NOT NULL
);
GO

-- Creating table 'Requisitions'
CREATE TABLE [dbo].[Requisitions] (
    [RequisitionId] int IDENTITY(1,1) NOT NULL,
    [EmployeeNo] int  NOT NULL,
    [Comments] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [DateOfSubmitted] datetime  NOT NULL,
    [DateOfDecision] datetime  NOT NULL,
    [DecidedBy] int  NOT NULL,
    [Notes] nvarchar(max)  NULL,
    [DeptCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RequisitionDetails'
CREATE TABLE [dbo].[RequisitionDetails] (
    [RequisitionDetailId] int IDENTITY(1,1) NOT NULL,
    [ItemNo] nvarchar(max)  NOT NULL,
    [Qty] int  NOT NULL,
    [RequisitionId] int  NOT NULL,
    [Catalogue_ItemNo] int  NOT NULL
);
GO

-- Creating table 'Catalogues'
CREATE TABLE [dbo].[Catalogues] (
    [ItemNo] int IDENTITY(1,1) NOT NULL,
    [Category] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ReorderLevel] int  NOT NULL,
    [ReorderQty] int  NOT NULL,
    [UnitMeasure] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [SupPrice1] int  NOT NULL,
    [SupPrice2] int  NOT NULL,
    [SupPrice3] int  NOT NULL,
    [StockAdjustment_StockAdjustmentId] int  NOT NULL
);
GO

-- Creating table 'PurchaseOrderDetails'
CREATE TABLE [dbo].[PurchaseOrderDetails] (
    [PurchaseOrderDetailId] int IDENTITY(1,1) NOT NULL,
    [ItemNo] nvarchar(max)  NOT NULL,
    [Qty] int  NOT NULL,
    [Amount] int  NOT NULL,
    [PurchasePONo] int  NOT NULL,
    [Catalogue_ItemNo] int  NOT NULL
);
GO

-- Creating table 'ListOfUndisburses'
CREATE TABLE [dbo].[ListOfUndisburses] (
    [ListOfUndisburseId] int IDENTITY(1,1) NOT NULL,
    [DisbursementDetNo] int  NOT NULL,
    [DisbursementDetail_DisbursementDetNo] int  NULL
);
GO

-- Creating table 'Disbursements'
CREATE TABLE [dbo].[Disbursements] (
    [DisbursementNo] int IDENTITY(1,1) NOT NULL,
    [EmployeeNo] int  NOT NULL,
    [DisbursementDate] datetime  NOT NULL,
    [DeptCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Inventories'
CREATE TABLE [dbo].[Inventories] (
    [StockId] int IDENTITY(1,1) NOT NULL,
    [ItemNo] nvarchar(max)  NOT NULL,
    [Balance] int  NOT NULL,
    [Qty] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [AmountChange] int  NOT NULL,
    [EmployeeNo] int  NOT NULL,
    [SupplierCode] nvarchar(max)  NOT NULL,
    [Details] nvarchar(max)  NOT NULL,
    [Catalogue_ItemNo] int  NOT NULL
);
GO

-- Creating table 'Retrievals'
CREATE TABLE [dbo].[Retrievals] (
    [RetrievalId] int IDENTITY(1,1) NOT NULL,
    [EmployeeNo] int  NOT NULL,
    [RetrievalDate] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [StockAdjustmentId] in table 'StockAdjustments'
ALTER TABLE [dbo].[StockAdjustments]
ADD CONSTRAINT [PK_StockAdjustments]
    PRIMARY KEY CLUSTERED ([StockAdjustmentId] ASC);
GO

-- Creating primary key on [DisbursementDetNo] in table 'DisbursementDetails'
ALTER TABLE [dbo].[DisbursementDetails]
ADD CONSTRAINT [PK_DisbursementDetails]
    PRIMARY KEY CLUSTERED ([DisbursementDetNo] ASC);
GO

-- Creating primary key on [RetrievalDetId] in table 'RetrievalDetails'
ALTER TABLE [dbo].[RetrievalDetails]
ADD CONSTRAINT [PK_RetrievalDetails]
    PRIMARY KEY CLUSTERED ([RetrievalDetId] ASC);
GO

-- Creating primary key on [PurchasePONo] in table 'Purchases'
ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [PK_Purchases]
    PRIMARY KEY CLUSTERED ([PurchasePONo] ASC);
GO

-- Creating primary key on [SupplierCode] in table 'Suppliers1'
ALTER TABLE [dbo].[Suppliers1]
ADD CONSTRAINT [PK_Suppliers1]
    PRIMARY KEY CLUSTERED ([SupplierCode] ASC);
GO

-- Creating primary key on [DeptCode] in table 'Departments1'
ALTER TABLE [dbo].[Departments1]
ADD CONSTRAINT [PK_Departments1]
    PRIMARY KEY CLUSTERED ([DeptCode] ASC);
GO

-- Creating primary key on [EmployeeNo] in table 'Employees1'
ALTER TABLE [dbo].[Employees1]
ADD CONSTRAINT [PK_Employees1]
    PRIMARY KEY CLUSTERED ([EmployeeNo] ASC);
GO

-- Creating primary key on [CollectionId] in table 'CollectionPoints'
ALTER TABLE [dbo].[CollectionPoints]
ADD CONSTRAINT [PK_CollectionPoints]
    PRIMARY KEY CLUSTERED ([CollectionId] ASC);
GO

-- Creating primary key on [RequisitionId] in table 'Requisitions'
ALTER TABLE [dbo].[Requisitions]
ADD CONSTRAINT [PK_Requisitions]
    PRIMARY KEY CLUSTERED ([RequisitionId] ASC);
GO

-- Creating primary key on [RequisitionDetailId] in table 'RequisitionDetails'
ALTER TABLE [dbo].[RequisitionDetails]
ADD CONSTRAINT [PK_RequisitionDetails]
    PRIMARY KEY CLUSTERED ([RequisitionDetailId] ASC);
GO

-- Creating primary key on [ItemNo] in table 'Catalogues'
ALTER TABLE [dbo].[Catalogues]
ADD CONSTRAINT [PK_Catalogues]
    PRIMARY KEY CLUSTERED ([ItemNo] ASC);
GO

-- Creating primary key on [PurchaseOrderDetailId] in table 'PurchaseOrderDetails'
ALTER TABLE [dbo].[PurchaseOrderDetails]
ADD CONSTRAINT [PK_PurchaseOrderDetails]
    PRIMARY KEY CLUSTERED ([PurchaseOrderDetailId] ASC);
GO

-- Creating primary key on [ListOfUndisburseId] in table 'ListOfUndisburses'
ALTER TABLE [dbo].[ListOfUndisburses]
ADD CONSTRAINT [PK_ListOfUndisburses]
    PRIMARY KEY CLUSTERED ([ListOfUndisburseId] ASC);
GO

-- Creating primary key on [DisbursementNo] in table 'Disbursements'
ALTER TABLE [dbo].[Disbursements]
ADD CONSTRAINT [PK_Disbursements]
    PRIMARY KEY CLUSTERED ([DisbursementNo] ASC);
GO

-- Creating primary key on [StockId] in table 'Inventories'
ALTER TABLE [dbo].[Inventories]
ADD CONSTRAINT [PK_Inventories]
    PRIMARY KEY CLUSTERED ([StockId] ASC);
GO

-- Creating primary key on [RetrievalId] in table 'Retrievals'
ALTER TABLE [dbo].[Retrievals]
ADD CONSTRAINT [PK_Retrievals]
    PRIMARY KEY CLUSTERED ([RetrievalId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Supplier_SupplierCode] in table 'Purchases'
ALTER TABLE [dbo].[Purchases]
ADD CONSTRAINT [FK_PurchaseSupplier]
    FOREIGN KEY ([Supplier_SupplierCode])
    REFERENCES [dbo].[Suppliers1]
        ([SupplierCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PurchaseSupplier'
CREATE INDEX [IX_FK_PurchaseSupplier]
ON [dbo].[Purchases]
    ([Supplier_SupplierCode]);
GO

-- Creating foreign key on [Catalogue_ItemNo] in table 'Inventories'
ALTER TABLE [dbo].[Inventories]
ADD CONSTRAINT [FK_CatalogueInventory]
    FOREIGN KEY ([Catalogue_ItemNo])
    REFERENCES [dbo].[Catalogues]
        ([ItemNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CatalogueInventory'
CREATE INDEX [IX_FK_CatalogueInventory]
ON [dbo].[Inventories]
    ([Catalogue_ItemNo]);
GO

-- Creating foreign key on [CollectionPoint_CollectionId] in table 'Departments1'
ALTER TABLE [dbo].[Departments1]
ADD CONSTRAINT [FK_DepartmentCollectionPoint]
    FOREIGN KEY ([CollectionPoint_CollectionId])
    REFERENCES [dbo].[CollectionPoints]
        ([CollectionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentCollectionPoint'
CREATE INDEX [IX_FK_DepartmentCollectionPoint]
ON [dbo].[Departments1]
    ([CollectionPoint_CollectionId]);
GO

-- Creating foreign key on [DisbursementDetail_DisbursementDetNo] in table 'ListOfUndisburses'
ALTER TABLE [dbo].[ListOfUndisburses]
ADD CONSTRAINT [FK_DisbursementDetailListOfUndisburse]
    FOREIGN KEY ([DisbursementDetail_DisbursementDetNo])
    REFERENCES [dbo].[DisbursementDetails]
        ([DisbursementDetNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DisbursementDetailListOfUndisburse'
CREATE INDEX [IX_FK_DisbursementDetailListOfUndisburse]
ON [dbo].[ListOfUndisburses]
    ([DisbursementDetail_DisbursementDetNo]);
GO

-- Creating foreign key on [Catalogue_ItemNo] in table 'RequisitionDetails'
ALTER TABLE [dbo].[RequisitionDetails]
ADD CONSTRAINT [FK_CatalogueRequisitionDetail]
    FOREIGN KEY ([Catalogue_ItemNo])
    REFERENCES [dbo].[Catalogues]
        ([ItemNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CatalogueRequisitionDetail'
CREATE INDEX [IX_FK_CatalogueRequisitionDetail]
ON [dbo].[RequisitionDetails]
    ([Catalogue_ItemNo]);
GO

-- Creating foreign key on [Catalogue_ItemNo] in table 'PurchaseOrderDetails'
ALTER TABLE [dbo].[PurchaseOrderDetails]
ADD CONSTRAINT [FK_CataloguePurchaseOrderDetail]
    FOREIGN KEY ([Catalogue_ItemNo])
    REFERENCES [dbo].[Catalogues]
        ([ItemNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CataloguePurchaseOrderDetail'
CREATE INDEX [IX_FK_CataloguePurchaseOrderDetail]
ON [dbo].[PurchaseOrderDetails]
    ([Catalogue_ItemNo]);
GO

-- Creating foreign key on [Catalogue_ItemNo] in table 'DisbursementDetails'
ALTER TABLE [dbo].[DisbursementDetails]
ADD CONSTRAINT [FK_CatalogueDisbursementDetail]
    FOREIGN KEY ([Catalogue_ItemNo])
    REFERENCES [dbo].[Catalogues]
        ([ItemNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CatalogueDisbursementDetail'
CREATE INDEX [IX_FK_CatalogueDisbursementDetail]
ON [dbo].[DisbursementDetails]
    ([Catalogue_ItemNo]);
GO

-- Creating foreign key on [Catalogue_ItemNo] in table 'RetrievalDetails'
ALTER TABLE [dbo].[RetrievalDetails]
ADD CONSTRAINT [FK_RetrievalDetailCatalogue]
    FOREIGN KEY ([Catalogue_ItemNo])
    REFERENCES [dbo].[Catalogues]
        ([ItemNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RetrievalDetailCatalogue'
CREATE INDEX [IX_FK_RetrievalDetailCatalogue]
ON [dbo].[RetrievalDetails]
    ([Catalogue_ItemNo]);
GO

-- Creating foreign key on [DepartmentDeptCode] in table 'Employees1'
ALTER TABLE [dbo].[Employees1]
ADD CONSTRAINT [FK_DepartmentEmployee]
    FOREIGN KEY ([DepartmentDeptCode])
    REFERENCES [dbo].[Departments1]
        ([DeptCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEmployee'
CREATE INDEX [IX_FK_DepartmentEmployee]
ON [dbo].[Employees1]
    ([DepartmentDeptCode]);
GO

-- Creating foreign key on [PurchasePONo] in table 'PurchaseOrderDetails'
ALTER TABLE [dbo].[PurchaseOrderDetails]
ADD CONSTRAINT [FK_PurchasePurchaseOrderDetail]
    FOREIGN KEY ([PurchasePONo])
    REFERENCES [dbo].[Purchases]
        ([PurchasePONo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PurchasePurchaseOrderDetail'
CREATE INDEX [IX_FK_PurchasePurchaseOrderDetail]
ON [dbo].[PurchaseOrderDetails]
    ([PurchasePONo]);
GO

-- Creating foreign key on [DisbursementNo] in table 'DisbursementDetails'
ALTER TABLE [dbo].[DisbursementDetails]
ADD CONSTRAINT [FK_DisbursementDisbursementDetail]
    FOREIGN KEY ([DisbursementNo])
    REFERENCES [dbo].[Disbursements]
        ([DisbursementNo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DisbursementDisbursementDetail'
CREATE INDEX [IX_FK_DisbursementDisbursementDetail]
ON [dbo].[DisbursementDetails]
    ([DisbursementNo]);
GO

-- Creating foreign key on [StockAdjustment_StockAdjustmentId] in table 'Catalogues'
ALTER TABLE [dbo].[Catalogues]
ADD CONSTRAINT [FK_CatalogueStockAdjustment]
    FOREIGN KEY ([StockAdjustment_StockAdjustmentId])
    REFERENCES [dbo].[StockAdjustments]
        ([StockAdjustmentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CatalogueStockAdjustment'
CREATE INDEX [IX_FK_CatalogueStockAdjustment]
ON [dbo].[Catalogues]
    ([StockAdjustment_StockAdjustmentId]);
GO

-- Creating foreign key on [DeptCode] in table 'Requisitions'
ALTER TABLE [dbo].[Requisitions]
ADD CONSTRAINT [FK_DepartmentRequisition]
    FOREIGN KEY ([DeptCode])
    REFERENCES [dbo].[Departments1]
        ([DeptCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentRequisition'
CREATE INDEX [IX_FK_DepartmentRequisition]
ON [dbo].[Requisitions]
    ([DeptCode]);
GO

-- Creating foreign key on [RequisitionId] in table 'RequisitionDetails'
ALTER TABLE [dbo].[RequisitionDetails]
ADD CONSTRAINT [FK_RequisitionId]
    FOREIGN KEY ([RequisitionId])
    REFERENCES [dbo].[Requisitions]
        ([RequisitionId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RequisitionId'
CREATE INDEX [IX_FK_RequisitionId]
ON [dbo].[RequisitionDetails]
    ([RequisitionId]);
GO

-- Creating foreign key on [DeptCode] in table 'Disbursements'
ALTER TABLE [dbo].[Disbursements]
ADD CONSTRAINT [FK_DepartmentDisbursement]
    FOREIGN KEY ([DeptCode])
    REFERENCES [dbo].[Departments1]
        ([DeptCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentDisbursement'
CREATE INDEX [IX_FK_DepartmentDisbursement]
ON [dbo].[Disbursements]
    ([DeptCode]);
GO

-- Creating foreign key on [RetrievalId] in table 'RetrievalDetails'
ALTER TABLE [dbo].[RetrievalDetails]
ADD CONSTRAINT [FK_RetrievalRetrievalDetail]
    FOREIGN KEY ([RetrievalId])
    REFERENCES [dbo].[Retrievals]
        ([RetrievalId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RetrievalRetrievalDetail'
CREATE INDEX [IX_FK_RetrievalRetrievalDetail]
ON [dbo].[RetrievalDetails]
    ([RetrievalId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------