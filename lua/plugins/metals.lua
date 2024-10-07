return {
    "scalameta/nvim-metals",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    ft = {
        "scala",
        "sbt",
        "java",
    },
    config = function()
        require("metals").bare_config()
    end
}
