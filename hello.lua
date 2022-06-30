function Test(s)
    local result = {};
    local function Insert(c) 
        if (result[c] == nil) then
            result[c] = 1;
        else
            result[c] = result[c] + 1;
        end
    end

    s:gsub(".",Insert);

    return result;
end

print(Test("aabvbbergrg"));
Test("adb");