local helper = require("helper")

return function(arr)
    for i = 2, #arr do
        while i > 1 and arr[i - 1] > arr[i] do
            helper.swap(arr, i - 1, i)
            i = i - 1
        end
    end
end