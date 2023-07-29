class CustomErrorResponse
    def ErrorResponse
        {
            errors: [
                {
                    id: :unauthorized,
                    status: 401,
                    title: i18n_message
                }
            ]
        }.to_json
    end
  end