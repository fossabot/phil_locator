module PhilLocator
  class Province < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path
    set_filename "provinces"

    belongs_to :region, class_name: "PhilLocator::Region", foreign_key: :region_code, primary_key: :code

    has_many :cities, class_name: "PhilLocator::City", foreign_key: :province_code, primary_key: :code

    def psgcCode
      code.ljust(9, "0")
    end
  end
end
