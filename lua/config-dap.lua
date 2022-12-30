local dap = require('dap')
dap.adapters.coreclr = {
  type = 'executable',
  command = '/Users/Mac/.config/nvim/netcoredbg/netcoredbg',
  args = {}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        --return vim.fn.input('~/Documents/git/CertificatesManager/CertificatesManager/bin/Debug/net6.0/CertificatesManager.dll')
    end,
  },
}

