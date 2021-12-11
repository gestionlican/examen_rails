class Apartment < ApplicationRecord
    belongs_to :building



  validate :depto_unico  # valida segun lo que escribamos dentro del def depto_unico

  validates :number, presence: true

  validates :building_id, presence: true



  private        # con private se realiza solo lo que esta dentro

  def depto_unico  #con def creamos un metodo que se llama depto_unico

    encontrados = self.building.apartments.select {|depto|depto.number == self.number}

    if encontrados.count == 1

      self.errors.add(:errors_duplicados, "El numero de Departamento que quiere ingresar ya existe")

    end

  end
end
