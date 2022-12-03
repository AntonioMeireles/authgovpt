# Copyright 2022 António Meireles
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cask "authgovpt" do
  version :latest
  sha256 :no_check

  url "https://aplicacoes.autenticacao.gov.pt/apps/Autenticacao.gov_MacOS.pkg"
  name "Autenticação.gov"
  desc "Identificação, autenticação e assinatura digital do Estado Português"
  homepage "https://www.autenticacao.gov.pt/cc-aplicacao"

  pkg "Autenticacao.gov_MacOS.pkg"
  uninstall pkgutil: "pt.cartaodecidadao.*"

  caveats do
    files_in_usr_local
  end
end
