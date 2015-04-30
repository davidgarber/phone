class Phone
  attr_reader(:number, :area_code, :label)

  @@all_phone = []

  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @area_code = attributes.fetch(:area_code)
    @label = attributes.fetch(:label)
    end

  define_singleton_method(:all) do
    @@all_phone
  end

end
