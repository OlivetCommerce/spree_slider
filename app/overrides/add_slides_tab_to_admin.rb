Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'slides_admin_tab',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= tab(:slides, label: "slides") %>'
)

Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'slide_locations_admin_tab',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= tab(:slide_locations, label: "slide_locations") %>'
)