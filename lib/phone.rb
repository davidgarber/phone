class Phone
  attr_reader(:number, :area_code, :label)

  define_method(:initialize) do |attributes|
    @number = attributes.fetch(:number)
    @area_code = attributes.fetch(:area_code)
    @label = attributes.fetch(:label)
    end
  end
