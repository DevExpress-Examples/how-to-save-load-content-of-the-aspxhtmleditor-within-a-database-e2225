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
<%@ Control Language="vb" AutoEventWireup="true" CodeFile="TableColumnPropertiesForm.ascx.vb" Inherits="TableColumnPropertiesForm" %>
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
<dxp:ASPxPanel ID="MainPanel" runat="server" Width="100%" DefaultButton="btnChange">
	<panelcollection>
		<dxp:PanelContent ID="PanelContent1" runat="server">
			<table cellpadding="0" cellspacing="0" id="dxTableColumnPropertiesForm">
				<tr>
					<td class="contentCell">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpSize" runat="server" Width="350px" ClientInstanceName="_dxeRPTableColumnSize">
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
																<tr id='<% =HtmlEditor.ClientID + "_dxeColumnWidthCell"%>'>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblWidth" runat="server" AssociatedControlID="cmbWidth">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell">
																		<dxe:ASPxComboBox ID="cmbWidth"  ClientInstanceName="_dxeCmbTableColumnWidth" runat="server" ValueType="System.String" SelectedIndex="0"
																			Width="137px">
																			<ClientSideEvents SelectedIndexChanged="function(s, e) { OnCmdWidthSelectedIndexChanged_TableColumnForm(s); }" />
																			<Items>
																				<dxe:ListEditItem Value="100%" />
																				<dxe:ListEditItem Value="" />
																				<dxe:ListEditItem Value="custom" />
																			</Items>
																		</dxe:ASPxComboBox>
																	</td>
																	<td class="rowsInputCell" style="visibility: hidden;" id='<% =HtmlEditor.ClientID + "_dxeColumnWidthSpinEditCell"%>' colspan="2">                                                                        
																		<table cellpadding="0" cellspacing="0">
																			<tr>
																				<td>                                                                                
																					<dxe:ASPxSpinEdit ID="txbWidth" ClientInstanceName="_dxeTxbTableColumnWidth" runat="server" Height="21px"
																						Number="0" Width="52px" AllowNull="False" NumberType="Float" MaxValue="10000"
																						MinValue="0">
																					</dxe:ASPxSpinEdit>                                                                                    
																				</td>
																				<td class="rowsInputCell">
																					<dxe:ASPxComboBox ID="cmbWidthType" ClientInstanceName="_dxeCmbTableColumnWidthType" runat="server" 
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
																<tr id='<% =HtmlEditor.ClientID + "_dxeColumnHeightCell"%>'>
																	<td class="captionCell">
																		<dxe:ASPxLabel ID="lblHeight" runat="server" AssociatedControlID="cmbHeight">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell">
																		<dxe:ASPxComboBox ID="cmbHeight" ClientInstanceName="_dxeCmbTableRowHeight" runat="server" 
																			ValueType="System.String" SelectedIndex="0" Width="137px">
																			<ClientSideEvents SelectedIndexChanged="function(s, e) { OnCmdHeightSelectedIndexChanged_TableColumnForm(s); }" />
																			<Items>
																				<dxe:ListEditItem Value="" />
																				<dxe:ListEditItem Value="custom" />
																			</Items>
																		</dxe:ASPxComboBox>
																	</td>
																	<td class="rowsInputCell" style="visibility: hidden;" id='<% =HtmlEditor.ClientID + "_dxeRowHeightSpinEditCell"%>' colspan="2">
																		<table cellpadding="0" cellspacing="0">
																			<tr>
																				<td>                                                                                
																					<dxe:ASPxSpinEdit ID="txbHeight" ClientInstanceName="_dxeTxbTableRowHeight" runat="server" Height="21px"
																						Number="0" Width="52px" AllowNull="False" NumberType="Float" MaxValue="10000"
																						MinValue="0">
																					</dxe:ASPxSpinEdit>                                                                                    
																				</td>
																				<td class="rowsInputCell">
																					<dxe:ASPxComboBox ID="cmbHeightType" ClientInstanceName="_dxeCmbTableRowHeightType" runat="server" 
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
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpLayout" runat="server" Width="350px" ClientInstanceName="_dxeRPTableLayout">
										<ContentPaddings PaddingTop="4px" />                                    
										<PanelCollection>
											<dxhe:HtmlEditorRoundPanelContent ID="HtmlEditorRoundPanelContent4" runat="server">
												<table cellpadding="0" cellspacing="0">
													<tr>
														<td class="propGroupCell">
															<dxe:ASPxLabel ID="lblAlign" runat="server">
															</dxe:ASPxLabel>
														</td>
													</tr>
													<tr>
													<td class="propGroupContentCell">                                                    
														<table cellpadding="0" cellspacing="0">                                                    
															<tr>
																<td class="captionCell">
																	<dxe:ASPxLabel ID="lblHorizontalAlign" runat="server" AssociatedControlID="cmbAlign">
																	</dxe:ASPxLabel>
																</td>
																<td class="inputCell">
																	<dxe:ASPxComboBox ID="cmbAlign" runat="server" ValueType="System.String" ClientInstanceName="_dxeCmbTableColumnAlign"
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
																<td colspan="2" class="separatorCell">
																</td>
															</tr>
															<tr>
																<td class="captionCell">
																	<dxe:ASPxLabel ID="lblVerticalAlign" runat="server" AssociatedControlID="cmbVAlign">
																	</dxe:ASPxLabel>
																</td>
																<td class="inputCell">
																	<dxe:ASPxComboBox ID="cmbVAlign" runat="server" ValueType="System.String" ClientInstanceName="_dxeCmbTableColumnVAlign"
																		SelectedIndex="0" Width="70px">
																		<Items>
																			<dxe:ListEditItem Value=""/>
																			<dxe:ListEditItem Value="top"/>
																			<dxe:ListEditItem Value="middle"/>
																			<dxe:ListEditItem Value="bottom"/>
																		</Items>
																	</dxe:ASPxComboBox>
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
									<dxhe:ASPxHtmlEditorRoundPanel ID="rpAppearance" runat="server" Width="350px">
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
																		<dxe:ASPxLabel ID="lblBackgroundColor" runat="server" AssociatedControlID="txbBackgroundColor">
																		</dxe:ASPxLabel>
																	</td>
																	<td class="inputCell" colspan="3">
																		<dxe:ASPxColorEdit ID="txbBackgroundColor" runat="server" 
																			ClientInstanceName="_dxeTxbTableColumnBackgroundColor" Width="137px">
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
								</td>
							</tr>
						</table>
						<div class="propGroupSeparator"></div>
						<dxe:ASPxCheckBox ID="ckbApplyForAllElements" runat="server"  ClientInstanceName="_dxeCkbApplyForAllElements">
						</dxe:ASPxCheckBox>
					</td>
				</tr>
				<tr>
					<td class="buttonsCell" align="right">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td>    
									<dxe:ASPxButton ID="btnChange" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) { OnOkButtonClick_TableColumnForm(); }" />
									</dxe:ASPxButton>
								</td>
								<td class="cancelButton">
									<dxe:ASPxButton ID="btnCancel" runat="server" AutoPostBack="False" Height="23px"
										Width="74px" CausesValidation="False">
										<ClientSideEvents Click="function(s, e) {OnCancelButtonClick_TableColumnForm();}" />
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

<script type="text/javascript" id="dxss_TableColumnForm">
	function OnOkButtonClick_TableColumnForm() {
		aspxDialogComplete(1, GetDialogData_TableColumnForm());
	}
	function OnCancelButtonClick_TableColumnForm() {
		aspxDialogComplete(0, null);
	}
	function GetDialogData_TableColumnForm() {
		var res = new Object();

		// common
		res.width = GetWidth_TableColumnForm();
		res.height = GetHeight_TableColumnForm();

		res.backgroundColor = _dxeTxbTableColumnBackgroundColor.GetValue();
		res.align = _dxeCmbTableColumnAlign.GetValue();
		res.vAlign = _dxeCmbTableColumnVAlign.GetValue();
		res.applyForAll = _dxeCkbApplyForAllElements.GetChecked();        

		return res;
	}
	function GetWidth_TableColumnForm() {
		var width = _dxeCmbTableColumnWidth.GetValue();
		if (width == "custom")
			width = _dxeTxbTableColumnWidth.GetValue() + _dxeCmbTableColumnWidthType.GetValue();
		return width;
	}
	function GetHeight_TableColumnForm() {
		var height = _dxeCmbTableRowHeight.GetValue();
		if (height == "custom")
			height = _dxeTxbTableRowHeight.GetValue() + _dxeCmbTableRowHeightType.GetValue();
		return height;
	}

	function OnCmdWidthSelectedIndexChanged_TableColumnForm(widthCombox) {
		_aspxSetElementVisibility(_aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeColumnWidthSpinEditCell"%>'), widthCombox.GetValue() == "custom");
	}
	function OnCmdHeightSelectedIndexChanged_TableColumnForm(heightCombox) {
		_aspxSetElementVisibility(_aspxGetElementById('<% =HtmlEditor.ClientID + "_dxeRowHeightSpinEditCell"%>'), heightCombox.GetValue() == "custom");
	}
</script>