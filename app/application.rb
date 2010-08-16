require 'rho/rhoapplication'

class AppApplication < Rho::RhoApplication
  class << self
    attr_accessor :start_bulk_sync
    attr_accessor :end_bulk_sync
    attr_accessor :bulk_sync_total_time
  end
  
  def initialize
    # Tab items are loaded left->right, @tabs[0] is leftmost tab in the tab-bar
    @tabs = nil

    @@tabbar = nil
    # Important to call super _after_ you define @tabs!
    
    SyncEngine.set_notification(-1, "/app/Settings/sync_notify", '')
    super
  end
end
