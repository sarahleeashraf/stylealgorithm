module SelectOptions
  def select_options
    self.find(:all).sort_by{|item| item.name.downcase}.collect{ |item| [item.name, item.id]}
  end
end
