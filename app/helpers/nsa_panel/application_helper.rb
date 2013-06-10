module NsaPanel
  module ApplicationHelper
    def bootstrap_flash_class(name)
      name == :notice ? 'success' : name
    end
  end
end
