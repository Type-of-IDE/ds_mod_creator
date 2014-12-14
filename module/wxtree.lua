require("module.class")


Tree=Class(function(self,frame,data)

	 self.tree = wx.wxTreeCtrl( frame, wx.wxID_ANY,
                          wx.wxDefaultPosition, wx.wxSize(-1, 200),
                          wx.wxTR_LINES_AT_ROOT + wx.wxTR_HAS_BUTTONS )
	local tree=self.tree


	self.api=wxaui.wxAuiPaneInfo()
	self.api:Name("test7")
	self.api:Caption("Client Size Reporter")
	self.api:Left()
	self.api:Layer(1)
	self.api:CloseButton(true)
	self.api:MaximizeButton(true)


	local root_id = tree:AddRoot( "Root" )
	local parent_id = tree:AppendItem( root_id, "Parent " )
	local child_id = tree:AppendItem( parent_id, "Child " )
	--local imagelist=wx.wxImageList(32,32)
	--local bitmap = wx.wxBitmap(sample_xpm)
	--imagelist:Add(bitmap) --index is 0 no 1
	--tree:AssignImageList(imagelist)
	--tree:SetItemImage(root_id,0,wx.wxTreeItemIcon_Normal)
	--tree:SetItemTextColour(root_id,wx.wxColour("0xFF0000"))
	--tree:SetItemBackgroundColour(root_id,wx.wxColour("0xFF0000"))
	tree:SetIndent(32)
	tree:SetItemDropHighlight(root_id,true)
	local child_id2=tree:PrependItem ( root_id,"string",0)

end)
return Tree