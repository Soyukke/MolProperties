function getcmdresult(cmd:: Base.AbstractCmd):: String
    io = IOBuffer()
    run(pipeline(cmd, stdout=io))
    result = String(take!(io))
end

# shell scriptファイルの実行
function getscriptresult(fn::String):: String
    io = IOBuffer()
    run(pipeline(`$fn`, stdout=io))
    result = String(take!(io))
end
