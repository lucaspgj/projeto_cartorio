module Finance
  class InvoiceService
    attr_accessor :invoce, :brb_billet, :barcode

    def initialize(invoice)
      @invoice = invoice
    end

    def generate_invoice
      @brb_billet = Brcobranca::Boleto::BancoBrasilia.new 

        generate_brb_billet


    end

    private

    def generate_brb_billet
      # => Gem brcobranca
      @brb_billet.cedente = "Companhia de Desenvolvimento Habitacional do DF - CODHAB"
      @brb_billet.documento_cedente = "09.335.575.0001/30"
      @brb_billet.sacado = @invoice.name
      @brb_billet.sacado_documento = @invoice.cpf 
      @brb_billet.avalista = ""
      @brb_billet.avalista_documento = ""
      @brb_billet.valor = Money.new(@invoice.value)
      @brb_billet.agencia = @invoice.category.category_account.agency
      @brb_billet.conta_corrente = @invoice.category.category_account.account
      @brb_billet.carteira = @invoice.category.category_account.wallet 
      @brb_billet.variacao = "1"
      @brb_billet.nosso_numero = @invoice.id
      @brb_billet.data_vencimento = @invoice.due
      @brb_billet.instrucao1 = ""
      @brb_billet.instrucao2 = ""
      @brb_billet.instrucao3 = ""
      @brb_billet.instrucao4 = "NÃO RECEBER APÓS O VENCIMENTO"
      @brb_billet.instrucao5 = ""
      @brb_billet.instrucao6 = ""
      @brb_billet.sacado_endereco = @invoice.adress
      @brb_billet.cedente_endereco = "Edifício SEDHAB - Setor Comercial Sul Quadra 06, Bloco A - Lotes 12/13 - Térreo. Brasília/DF"

      @brb_billet 
    end 

    def generate_brb_agreement
      # => Algoritmo baseado no .net
      

    end

  end
end