require_relative "routes/sessions"

#DRY Don´t Repeat Yourself => Não se repita

describe "POST /sessions" do
  context "login com sucesso" do
    before(:all) do
      payload = { email: "gustavo@hotmail.com", password: "pw@123" }
      @result = Sessions.new.login(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  examples = [
    {
      title: " senha incorreta",
      payload: { email: "gustavo@hotmail.com", password: "12334" },
      code: 401,
      error: "Unauthorized",
    },
    {
      title: "usuario incorreta",
      payload: { email: "404@hotmail.com", password: "pw@123" },
      code: 401,
      error: "Unauthorized",
    },
    {
      title: " email em branco",
      payload: { email: " ", password: "pw@123" },
      code: 412,
      error: "wrong email",
    },
    {
      title: "sem o campo email",
      payload: { password: "pw@123" },
      code: 412,
      error: "required email",
    },
    {
      title: "senha em branco",
      payload: { email: "gustavo@hotmail.com", password: "" },
      code: 412,
      error: "required password",
    },
    {
      title: " sem o campo senha",
      payload: { email: "gustavo@hotmail.com" },
      code: 412,
      error: "required password",
    },

  ]
  examples.each do |e|
    context "#{e|:title|}" do
      before(:all) do
        @result = Sessions.new.login(e[:payload])
      end

      it "valida status code #{e[:code]}" do
        expect(@result.code).to eql e[:code]
      end

      it "valida id do usuário" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end
end
