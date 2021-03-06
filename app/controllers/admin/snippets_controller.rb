class Admin::SnippetsController < Admin::BaseController
  resource_controller

  update.response do |wants|
    wants.html { redirect_to collection_url }
  end

  update.after do
    Rails.cache.delete('snippets')
  end

  create.response do |wants|
    wants.html { redirect_to collection_url }
  end

  create.after do
    Rails.cache.delete('snippets')
  end

end
