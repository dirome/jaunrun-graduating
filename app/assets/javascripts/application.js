// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery

//= require jquery_ujs
//= require turbolinks
//= require_tree .

<li>
           <%= link_to "Log out", destroy_juan_session_path, method: :delete, class: "sr-only" %>
          
        </li>


 
        <li class="nav-item active">
          
          <%= link_to "Log out", destroy_juan_session_path, method: :delete, class:"sr-only" %>
        </li>
      
        
<li class="nav-item active">
         <%= link_to "New Favour", new_favour_path, class:"sr-only" %>
          </li>

 <% if current_juan %>
        <li class="nav-item active">
         <%= link_to "Log out", destroy_juan_session_path, method: :delete, class:"sr-only" %>
        </li>
        
        <% else %>
         <li class="nav-item active">
         <%= link_to "Log in", new_juan_session_path, class:"sr-only" %>
          </li>
          <li class="nav-item active">
         <%= link_to "Register", new_juan_registration_path, class:"sr-only" %>
          </li>
        <% end %>

         <div class = "row">
     <div class= "col-lg-12-text-center">
     <% flash.each do |a, b| %>
     <div class = "alert alert-success"> <%= b %> </div>
     <% end %>
     <%= yield %>
     </div>