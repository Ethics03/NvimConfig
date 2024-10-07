-- Function to create a C++ template file
 function create_cpp_template()
    -- Template content
    local template = [[
#include <bits/stdc++.h>

using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
    ]]

    -- Check if the file is empty before inserting the template
    if vim.fn.line('$') == 1 and vim.fn.getline(1) == '' then
        vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(template, '\n'))
        print("C++ template created.")
    end
end

-- Autocommand to trigger template creation on new C++ files
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.cpp",
    callback = create_cpp_template
})
