ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
#  section "Recently updated content" do
 #   table_for Version.order('id desc').limit(20) do
     # column "Item" do |v| link_to v.item, v.item.admin_permalink end
  #    column "Type" do |v| v.item_type.underscore.humanize end
   #   column "Modified at" do |v| v.created_at.to_s :long end
    #  column "Admin" do |v| link_to AdminUser.find(v.whodunnit).email, admin_admin_user_path(AdminUser.find(v.whodunnit)) end
    #end
  #end
  
  
 
  section "Business Table", :priority => 1 do
    div do
         render 'table'
         
         #text_node %{<iframe style="width: 100%; height: 300px" src="http://jsfiddle.net/KAzFy/embedded/" allowfullscreen="allowfullscreen" frameborder="0"></iframe>}.html_safe
       end
  end
  
#  section "Business Graph", :priority => 2 do
 #   div do
  #    render 'graph'
   # end
  #end
  
  
#  section "Business Summary" do
 #   ul do
  #    Business.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  # == Conditionally Display
  # Provide a method name or Proc object to conditionally render a section at run time.
  #
  # section "Membership Summary", :if => :memberships_enabled?
  # section "Membership Summary", :if => Proc.new { current_admin_user.account.memberships.any? }

end
