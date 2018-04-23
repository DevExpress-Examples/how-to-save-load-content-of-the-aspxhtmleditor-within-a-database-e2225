<%--
{************************************************************************************}
{                                                                                    }
{   DO NOT MODIFY THIS FILE!                                                         }
{                                                                                    }
{   It will be overwritten without prompting when a new version becomes              }
{   available. All your changes will be lost.                                        }
{                                                                                    }
{   This file contains the default template and is required for the form             }
{   rendering. Improper modifications may result in incorrect behavior of            }
{   dialog forms.                                                                    }
{                                                                                    }
{************************************************************************************}
--%>
<%@ Control Language="vb" AutoEventWireup="true" CodeFile="InsertTableForm.ascx.vb" Inherits="InsertTableForm" %>
<%@ Assembly name="DevExpress.Data.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor"
	TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel"
	TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<dxp:ASPxPanel ID="MainPanel" runat="server" Width="100%" DefaultButton="btnOk">
	<panelcollection>
		<dxp:PanelContent ID="PanelContent1" runat="server">
			<table cellpadding="0" cellspacing="0" id="dxInsertTableForm">
				<tr>
					<td class="contentCell">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpSize" runat="server" Width="385px">
										<ContentPaddings PaddingTop="4px" />
										<PanelCollection>
											<dxhe:HtmlEditorRoundPanelContent ID="HtmlEditorRoundPanelContent1" runat="server">                                                
												<table cellpadding="0" cellspacing="0">
													<tr>
														<td class="propGroupCell">
															<dxe:ASPxLabel ID="lblSize" runat="server">
															</dxe:ASPxLabel>                                                                                                    
														</td>
													</tr>
													<tr>
														<td class="propGroupContentCell">                                                                                                                
															<table cellpadding="0" cellspacing="0">
																<tr>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblColumns" runat="server" AssociatedControlID="spnColumns">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell">
																		<dxe:ASPxSpinEdit ID="spnColumns" ClientInstanceName="_dxeSpnTableColumns" runat="server"
																			Height="21px" Number="2" Width="57px" AllowNull="False" NumberType="Integer"
																			MaxValue="50" MinValue="1">
																		</dxe:ASPxSpinEdit>
																	</td>                                                                    
																	<td>
																		<div class="rowsHorizontalSeparator">
																		</div>
																	</td>
																	<td class="rowsCaptionCell">
																		<dxe:ASPxLabel ID="lblRows" runat="server" AssociatedControlID="spnRows">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="rowsInputCell">
																		<dxe:ASPxSpinEdit ID="spnRows" ClientInstanceName="_dxeSpnTableRows" runat="server" Height="21px"
																			Number="2" Width="57px" AllowNull="False" NumberType="Integer" MaxValue="10000"
																			MinValue="1">
																		</dxe:ASPxSpinEdit>
																	</td>                                                                    
																</tr>
																<tr>
																	<td colspan="5" class="rowsSeparator">
																	</td>
																</tr>
																<tr>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblWidth" runat="server" AssociatedControlID="cmbWidth">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell" colspan="3">
																		<dxe:ASPxComboBox ID="cmbWidth"  ClientInstanceName="_dxeCmbTableWidth" runat="server" ValueType="System.String" SelectedIndex="0"
																			Width="140px">
																			<ClientSideEvents SelectedIndexChanged="function(s, e) { OnCmdWidthSelectedIndexChanged_InsertTableForm(s); }" />
																			<Items>
																				<dxe:ListEditItem Value="100%" />
																				<dxe:ListEditItem Value="" />
																				<dxe:ListEditItem Value="custom" />
																			</Items>
																		</dxe:ASPxComboBox>
																	</td>
																	<td class="rowsInputCell" style="visibility: hidden;" id='<% =HtmlEditor.ClientID + "_dxeWidthSpinEditCell"%>' colspan="2">
																		<table cellpadding="0" cellspacing="0">
																			<tr>
																				<td>                                                                                
																					<dxe:ASPxSpinEdit ID="txbWidth" ClientInstanceName="_dxeTxbTableWidth" runat="server" Height="21px"
																						Number="0" Width="57px" AllowNull="False" NumberType="Float" MaxValue="10000"
																						MinValue="0">
																					</dxe:ASPxSpinEdit>                                                                                    
																				</td>
																				<td class="rowsInputCell">
																					<dxe:ASPxComboBox ID="cmbWidthType" ClientInstanceName="_dxeCmbTableWidthType" runat="server" 
																						ValueType="System.String" SelectedIndex="0" Width="45px">
																						<Items>
																							<dxe:ListEditItem Value="px" />
																							<dxe:ListEditItem Value="%" />
																						</Items>
																					</dxe:ASPxComboBox>
																				</td>
																			</tr>
																		</table>                                                                          
																	</td>
																</tr>
																<tr>
																	<td></td>
																	<td colspan="4">
																		<dxe:ASPxCheckBox ID="ckbColumnsEqualWidth" ClientInstanceName="_dxeCkbColumnsEqualWidth" Checked="true" runat="server">
																		</dxe:ASPxCheckBox>
																	 </td>
																</tr>
																<tr>
																	<td colspan="5" class="separatorCell">
																	</td>
																</tr>
																<tr>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblHeight" runat="server" AssociatedControlID="cmbHeight">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell" colspan="3">
																		<dxe:ASPxComboBox ID="cmbHeight" ClientInstanceName="_dxeCmbTableHeight" runat="server" 
																			ValueType="System.String" SelectedIndex="0" Width="140px">
																			<ClientSideEvents SelectedIndexChanged="function(s, e) { OnCmdHeightSelectedIndexChanged_InsertTableForm(s); }" />
																			<Items>
																				<dxe:ListEditItem Value="" />
																				<dxe:ListEditItem Value="custom" />
																			</Items>
																		</dxe:ASPxComboBox>
																	</td>
																	<td class="rowsInputCell" style="visibility: hidden;" id='<% =HtmlEditor.ClientID + "_dxeHeightSpinEditCell"%>' colspan="2">
																		<table cellpadding="0" cellspacing="0">
																			<tr>
																				<td>                                                                                
																					<dxe:ASPxSpinEdit ID="txbHeight" ClientInstanceName="_dxeTxbTableHeight" runat="server" Height="21px"
																						Number="0" Width="57px" AllowNull="False" NumberType="Float" MaxValue="10000"
																						MinValue="0">
																					</dxe:ASPxSpinEdit>                                                                                    
																				</td>
																				<td class="rowsInputCell">
																					<dxe:ASPxComboBox ID="cmbHeightType" ClientInstanceName="_dxeCmbTableHeightType" runat="server" 
																						ValueType="System.String" SelectedIndex="0" Width="45px">
																						<Items>
																							<dxe:ListEditItem Value="px" />
																							<dxe:ListEditItem Value="%" />
																						</Items>
																					</dxe:ASPxComboBox>
																				</td>
																			</tr>
																		</table>                                                                        
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>                                                
											</dxhe:HtmlEditorRoundPanelContent>
										</PanelCollection>
									</dxhe:ASPxHtmlEditorRoundPanel>
									<div class="propGroupSeparator">
									</div>
									<!-- LAYOUT -->
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpLayout" runat="server" Width="385px">
										<ContentPaddings PaddingTop="4px" />                                    
										<PanelCollection>
											<dxhe:HtmlEditorRoundPanelContent ID="HtmlEditorRoundPanelContent4" runat="server">
												<table cellpadding="0" cellspacing="0">
													<tr>
														<td class="propGroupCell">
															<dxe:ASPxLabel ID="lblLayout" runat="server">
															</dxe:ASPxLabel>
														</td>
													</tr>
													<tr>
													<td class="propGroupContentCell">                                                    
														<table cellpadding="0" cellspacing="0">                                                    
															<tr>
																<td class="captionCell">
																	<dxe:ASPxLabel ID="lblPadding" runat="server" AssociatedControlID="spnPadding">
																	</dxe:ASPxLabel>
																</td>
																<td class="inputCell">
																	<dxe:ASPxSpinEdit ID="spnPadding" ClientInstanceName="_dxeSpnCellPadding" runat="server"
																		Height="21px" Number="3" Width="52px" AllowNull="False" NumberType="Integer"
																		MaxValue="10000" MinValue="0">
																	</dxe:ASPxSpinEdit>
																</td>
																<td>
																	<div class="propFieldSeparator">
																	</div>
																</td>
																<td class="captionCell">
																	<dxe:ASPxLabel ID="lblAlign" runat="server" AssociatedControlID="cmbAlign">
																	</dxe:ASPxLabel>
																</td>
																<td class="inputCell">
																	<dxe:ASPxComboBox ID="cmbAlign" runat="server" ValueType="System.String" ClientInstanceName="_dxeCmbTableAlign"
																		SelectedIndex="0" Width="70px">
																		<Items>
																			<dxe:ListEditItem Value="" />
																			<dxe:ListEditItem Value="left" />
																			<dxe:ListEditItem Value="center" />
																			<dxe:ListEditItem Value="right" />
																		</Items>
																	</dxe:ASPxComboBox>
																</td>
															</tr>
															<tr>
																<td colspan="5" class="separatorCell">
																</td>
															</tr>
															<tr>
																<td class="captionCell">
																	<dxe:ASPxLabel ID="lblSpacing" runat="server" AssociatedControlID="spnSpacing">
																	</dxe:ASPxLabel>
																</td>
																<td class="inputCell" colspan="3">
																	<dxe:ASPxSpinEdit ID="spnSpacing" ClientInstanceName="_dxeSpnCellSpacing" runat="server"
																		Height="21px" Number="0" Width="52px" AllowNull="False" NumberType="Integer"
																		MaxValue="10000" MinValue="0">
																	</dxe:ASPxSpinEdit>
																</td>
															</tr>
														</table>
													</td>
													</tr>
												</table>
											</dxhe:HtmlEditorRoundPanelContent>
										</PanelCollection>
									</dxhe:ASPxHtmlEditorRoundPanel>                                                    
									<div class="propGroupSeparator">
									</div>
									<!-- APPEARANCE -->                                                    
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpAppearance" runat="server" Width="385px">
										<ContentPaddings PaddingTop="4px" />                                    
										<PanelCollection>
											<dxhe:HtmlEditorRoundPanelContent ID="HtmlEditorRoundPanelContent3" runat="server">                                                
												<table cellpadding="0" cellspacing="0">
													<tr>
														<td class="propGroupCell">
															<dxe:ASPxLabel ID="lblAppearance" runat="server">
															</dxe:ASPxLabel>
														</td>
													</tr>
													<tr>
														<td class="propGroupContentCell">
															<table cellpadding="0" cellspacing="0">
																<tr>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblBorderColor" runat="server" AssociatedControlID="txbBorderColor">
																		</dxe:ASPxLabel>                                                                    
																	</td>
																	<td class="inputCell">
																		<dxe:ASPxColorEdit ID="txbBorderColor" runat="server" 
																			ClientInstanceName="_dxeTxbTableBorderColor" Width="100px" Color="#000000">
																		</dxe:ASPxColorEdit>
																	</td>
																	<td>
																		<div class="propFieldSeparator">
																		</div>
																	</td>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblBorderSize" runat="server" AssociatedControlID="spnBorderSize">
																		</dxe:ASPxLabel>                                                                    
																	</td>
																	<td class="inputCell">
																		<dxe:ASPxSpinEdit ID="spnBorderSize" ClientInstanceName="_dxeSpnTableBorderSize" runat="server"
																			Height="21px" Number="1" Width="40px" AllowNull="False" NumberType="Integer"
																			MaxValue="10000" MinValue="0">
																		</dxe:ASPxSpinEdit>                                                                    
																	</td>
																</tr>
																<tr>
																	<td colspan="5" class="separatorCell">
																	</td>
																</tr>                                                    
																<tr>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblBackgroundColor" runat="server" AssociatedControlID="txbBackgroundColor">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell" colspan="3">
																		<dxe:ASPxColorEdit ID="txbBackgroundColor" runat="server" 
																			ClientInstanceName="_dxeTxbTableBackgroundColor" Width="100px" Color="">
																		</dxe:ASPxColorEdit>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</dxhe:HtmlEditorRoundPanelContent>
										</PanelCollection>
									</dxhe:ASPxHtmlEditorRoundPanel>                                                
									<div class="propGroupSeparator">
									</div>
									<div class="accessibilityPropGroupCell">
										<dxe:ASPxCheckBox ID="ckbAccessibility" runat="server">
											<ClientSideEvents CheckedChanged="function(s, e) { OnAccessibilityCheckBoxCheckedChanged(s) }" />
										</dxe:ASPxCheckBox>
									</div>
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpAccessibility" runat="server" ClientVisible="false" ClientInstanceName="_dxeRPAccessibility" Width="385px">
										<PanelCollection>
											<dxhe:HtmlEditorRoundPanelContent ID="HtmlEditorRoundPanelContent2" runat="server">                                                
											<table cellpadding="0" cellspacing="0">
											<tr>
											<td class="propGroupContentCell">
												<table cellpadding="0" cellspacing="0">
													<tr>
														<td class="captionCell">
															<dxe:ASPxLabel ID="lblHeaders" runat="server" AssociatedControlID="cmbHeaders">
															</dxe:ASPxLabel>
														</td>
														<td class="inputCell">
															<dxe:ASPxComboBox ID="cmbHeaders" runat="server" ValueType="System.String" ClientInstanceName="_dxeCmbTableHeaders"
																SelectedIndex="0" Width="100px">
																<ClientSideEvents SelectedIndexChanged="function(s, e) { }" />
																<Items>
																	<dxe:ListEditItem Value="" />
																	<dxe:ListEditItem Value="row" />
																	<dxe:ListEditItem Value="column" />
																	<dxe:ListEditItem Value="both" />
																</Items>
															</dxe:ASPxComboBox>
														</td>
													</tr>                                                    
													<tr>
														<td colspan="2" class="separatorCell"></td>
													</tr>
													<tr>
														<td class="captionCell">
															<dxe:ASPxLabel ID="lblCaption" runat="server" AssociatedControlID="txbCaption">
															</dxe:ASPxLabel>
														</td>
														<td class="inputCell">
															<dxe:ASPxTextBox ID="txbCaption" runat="server" Width="190px" ClientInstanceName="_dxeTxbTableCaption">
															</dxe:ASPxTextBox>
														</td>
													</tr>
													<tr>
														<td colspan="2" class="separatorCell"></td>
													</tr>
													<tr>
														<td class="captionCell">
															<dxe:ASPxLabel ID="lblSummary" runat="server" AssociatedControlID="txbSummary">
															</dxe:ASPxLabel>
														</td>
														<td class="inputCell">
															<dxe:ASPxTextBox ID="txbSummary" runat="server" Width="190px" ClientInstanceName="_dxeTxbTableSummary">
															</dxe:ASPxTextBox>
														</td>
													</tr>                                                    
												</table>
											</td>
											</tr>
											</table>
											</dxhe:HtmlEditorRoundPanelContent>
										</PanelCollection>
									</dxhe:ASPxHtmlEditorRoundPanel>
								</td>
							</tr>
						</table>                        
					</td>
				</tr>
				<tr>
					<td class="buttonsCell" align="right">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<dxe:ASPxButton ID="btnOk" runat="server" AutoPostBack="False" Height="23px" Width="74px" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) {OnOkButtonClick_InsertTableForm();}" />
									</dxe:ASPxButton>
								</td>
								<td class="cancelButton">
									<dxe:ASPxButton ID="btnCancel" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) {OnCancelButtonClick_InsertTableForm();}" />
									</dxe:ASPxButton>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</dxp:PanelContent>
	</panelcollection>
</dxp:ASPxPanel>

<script type="text/javascript" id="dxss_InsertTableForm">
	function OnOkButtonClick_InsertTableForm() {
		aspxDialogComplete(1, GetDialogData_InsertTableForm());
	}
	function OnCancelButtonClick_InsertTableForm() {
		aspxDialogComplete(0, null);
	}
	function GetDialogData_InsertTableForm() {
		var res = new Object();
		res.tableProperties = {};

		// common
		res.rows = _dxeSpnTableRows.GetNumber();
		res.columns = _dxeSpnTableColumns.GetNumber();
		res.isColumnEqualWidth = _dxeCkbColumnsEqualWidth.GetChecked();

		// tableProperties
		res.tableProperties.cellSpacing = _dxeSpnCellSpacing.GetNumber();
		res.tableProperties.cellPadding = _dxeSpnCellPadding.GetNumber();

		res.tableProperties.width = GetWidth_InsertTableForm();
		res.tableProperties.height = GetHeight_InsertTableForm();

		res.tableProperties.borderColor = _dxeTxbTableBorderColor.GetValue();
		res.tableProperties.borderWidth = _dxeSpnTableBorderSize.GetNumber();
		res.tableProperties.backgroundColor = _dxeTxbTableBackgroundColor.GetValue();

		res.tableProperties.align = GetAlign_InsertTableForm();
		res.tableProperties.accessibility = GetAccessibilityProperties_InsertTableForm();
		return res;
	}

	function GetAccessibilityProperties_InsertTableForm() {
		var accessibilityProp = {};
		accessibilityProp.summary = _dxeTxbTableSummary.GetText();
		accessibilityProp.caption = _dxeTxbTableCaption.GetText();
		accessibilityProp.headers = _dxeCmbTableHeaders.GetValue();
		return accessibilityProp;
	}
	function GetAlign_InsertTableForm() {
		var align = _dxeCmbTableAlign.GetValue();
		if (align)
			align = align.toLowerCase();
		return align;
	}
	function GetWidth_InsertTableForm() {
		var width = _dxeCmbTableWidth.GetValue();
		if (width == "custom")
			width = _dxeTxbTableWidth.GetValue() + _dxeCmbTableWidthType.GetValue();
		return width;
	}
	function GetHeight_InsertTableForm() {
		var height = _dxeCmbTableHeight.GetValue();
		if (height == "custom")
			height = _dxeTxbTableHeight.GetValue() + _dxeCmbTableHeightType.GetValue();
		return height;
	}

	function OnAccessibilityCheckBoxCheckedChanged(accessibilityCheckBox) {
		_dxeRPAccessibility.SetClientVisible(accessibilityCheckBox.GetChecked());
	}
	function OnCmdWidthSelectedIndexChanged_InsertTableForm(widthCombox) {
		_aspxSetElementVisibility(_aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeWidthSpinEditCell"%>'), widthCombox.GetValue() == "custom");
	}
	function OnCmdHeightSelectedIndexChanged_InsertTableForm(heightCombox) {
		_aspxSetElementVisibility(_aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeHeightSpinEditCell"%>'), heightCombox.GetValue() == "custom");
	}
</script>