ActiveAdmin.register Article do
	actions :all, except: [:edit]

	filter :user
	filter :title_contains, label: 'Add the title you want to search'

	scope :short_desc, group: :descp
	scope :long_desc, group: :descp
	scope :all_desc, group: :descp

	 form title: 'Create a new Article' do |f|
    f.inputs do
      f.input :user
      f.input :title
      f.input :description
    end
    f.actions
  end

end
