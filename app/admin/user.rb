ActiveAdmin.register User do 

  permit_params :first_name, :middle_name, :last_name, :identification_number, :application_code, :email, :password

  filter :identification_number

     form do |f|
      f.inputs "Details" do
       
        f.input :first_name
        f.input :middle_name
        f.input :last_name
        f.input :email
        f.input :password
        f.input :identification_number
        f.input :application_code
      f.actions
     end  
    end

     index do 
      column :first_name
      column :middle_name
      column :last_name
      column :email
      column :identification_number
      column :application_code
      
      actions
    end

    show do |ad|
    attributes_table do 
      row :identification_number
      row :first_name
      row :middle_name
      row :last_name
      row :email
      row :password
      row :application_code
    end
  end

end