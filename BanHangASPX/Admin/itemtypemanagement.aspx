﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="itemtypemanagement.aspx.cs" Inherits="BanHangASPX.Admin.itemtypemanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <style>
        table > tbody > tr > th {
            border: none;
            border-top: none;
            border-color: rgba(255, 255, 255, 0.1);
            border-bottom: 0.0625rem solid #e3e3e3;
            color: white;
        }
        table {
            margin: 10px;
        }
        table > tbody > tr > td {
            max-width: 200px;
            border: none;
            border-top: none;
            border-color: rgba(255, 255, 255, 0.1);
            border-bottom: 0.0625rem solid #e3e3e3;
        }
        .form-group input[type=file],custom-file-input{
            opacity: unset;
        }
        .form-group input[type=file]{
            margin-top:5px;
            margin-left:3px;
        }
        .form-group select option{
            color: black;
        }
    </style>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="title">Item type management</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Iteam type ID</label>
                                <asp:TextBox ID="txt_IDItemType" runat="server" type="text" class="form-control" placeholder="Iteam type ID" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="dropList_Producer">Iteam type name</label>
                                <asp:TextBox ID="txt_IteamTypeName" runat="server" type="text" class="form-control" placeholder="Iteam type name"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Description</label>
                                <asp:TextBox ID="txt_Description" runat="server" type="text" class="form-control" placeholder="Description"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button ID="btn_InserProduct" runat="server" Text="Add" class="btn btn-fill btn-primary" Style="margin-right: 20px" OnClick="btn_InserProduct_Click" />
                    <asp:Button ID="btn_UpdateProduct" runat="server" Text="Update" class="btn btn-fill btn-primary" Style="margin-right: 20px" OnClick="btn_UpdateProduct_Click" />
                    <asp:Button ID="btn_Reset" runat="server" Text="Reset" class="btn btn-fill btn-primary" OnClick="btn_Reset_Click" />
                </div>
                <div class="table-responsive">
                    <asp:GridView BorderStyle="None" class="table tablesorter" ID="gridView_ItemType" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_Select" runat="server" Text="" OnClick="btn_Select_Click" CommandName='<%#Eval("ID_ITEM_TYPE")%>'><i class="tim-icons icon-pencil"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ID_ITEM_TYPE" HeaderText="Item type ID"></asp:BoundField>
                            <asp:BoundField DataField="NAME_ITEM_TYPE" HeaderText="Item type"></asp:BoundField>
                            <asp:BoundField DataField="DESCRIPTION" HeaderText="Description"></asp:BoundField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_Delete" runat="server" Text="" OnClick="btn_Delete_Click" CommandName='<%#Eval("ID_ITEM_TYPE")%>'><i class="tim-icons icon-trash-simple"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>