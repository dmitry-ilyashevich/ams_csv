require 'csv'
require 'active_support/inflections'

module ActiveModel
  class CsvArraySerializer
    def initialize(objects, options = {})
      @each_serializer = options[:each_serializer]
      @root = options[:root].present? ? options[:root] : true
      @objects = objects
      @options = options
    end

    def to_a
      return ActiveModel::CsvSerializer.new(nil).to_a if @objects.nil?

      @objects.collect do |object|
        serializer = @each_serializer || ActiveModel::CsvSerializerFactory
        serializer.new(object, @options).to_a.flatten
      end
    end

    def to_csv
      (@root ? [attribute_names] + to_a : to_a).to_csv
    end

    def attribute_names
      return [] unless @objects
      serializer = @each_serializer || ActiveModel::CsvSerializerFactory
      serializer.new(@objects.first, @options).attribute_names
    end
  end
end
