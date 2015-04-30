class Phone
  attr_reader(:number, :area_code)

  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @area_code = attributes.fetch(:area_code)
    end
  end
