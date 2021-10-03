package com.sulake.habbo.moderation
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   
   public class PickedIssuesView implements IIssueBrowserView
   {
       
      
      private var var_661:IssueBrowser;
      
      private var _window:IWindowContainer;
      
      private var _issueManager:IssueManager;
      
      private var var_2138:IssueListView;
      
      public function PickedIssuesView(param1:IssueManager, param2:IssueBrowser, param3:IWindowContainer)
      {
         super();
         _issueManager = param1;
         var_661 = param2;
         _window = var_661.createWindow("picked_issues_xml") as IWindowContainer;
         param3.addChild(_window);
         var _loc4_:IItemListWindow = _window.findChildByName("issue_list") as IItemListWindow;
         var_2138 = new IssueListView(param1,param2,_loc4_,"picked_issues_list_item_xml");
      }
      
      public function set visible(param1:Boolean) : void
      {
         _window.visible = param1;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function update() : void
      {
         var _loc1_:Array = _issueManager.getBundles(IssueManager.const_1016);
         var_2138.update(_loc1_);
      }
   }
}
