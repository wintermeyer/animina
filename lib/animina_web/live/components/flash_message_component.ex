defmodule AniminaWeb.FlashMessageComponent do
  use AniminaWeb, :live_component

  def render(assigns) do
    ~L"""
    <%= if live_flash(@flash, :info) do %>
      <section aria-labelledby="info-flash-message" phx-click="lv:clear-flash" phx-value-key="info">
        <div class="rounded-lg bg-white overflow-hidden shadow">
          <div class="rounded-md bg-green-50 p-4">
            <div class="flex">
              <div class="flex-shrink-0">
                <svg class="h-5 w-5 text-green-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                  <path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
                </svg>
              </div>
              <div class="ml-3">
                <h3 class="text-sm font-medium text-green-800">
                  <%= live_flash(@flash, :info) %>
                </h3>
              </div>
            </div>
          </div>
        </div>
      </section>
    <% end %>
    <%= if live_flash(@flash, :error) do %>
      <section aria-labelledby="error-flash-message" phx-click="lv:clear-flash" phx-value-key="error">
        <div class="rounded-lg bg-white overflow-hidden shadow">
          <div class="rounded-md bg-red-50 p-4">
            <div class="flex">
              <div class="flex-shrink-0">
                <svg class="h-5 w-5 text-red-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                  <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
                </svg>
              </div>
              <div class="ml-3">
                <h3 class="text-sm font-medium text-red-800">
                  <%= live_flash(@flash, :error) %>
                </h3>
              </div>
            </div>
          </div>
        </div>
      </section>
    <% end %>
    """
  end
end
