# coding: utf-8

class FunctionController < ApplicationController

    def linearfunction
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        a = p1.to_f
        b = p2.to_f
        t = (-b)/a
        p3 = t.to_s
        xAxis_categories = [-3, -2, -1, 0, 1, 2, 3]
        tickInterval     = 1
        data             = [-3*a+b, -2*a+b, -a+b, b, a+b, 2*a+b, 3*a+b]
        @graph_data = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: 'y = ' + p1 + 'x + ' + p2 + 'のグラフ')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: 'y = ' + p1 + 'x + ' + p2, data: data, type: 'spline')
        end
        @msg1 = p1 + 'x + ' + p2 + ' = 0'
        @msg2 = p1 + 'x = ' + '-(' + p2 + ')'
        @msg3 = 'x = ' + p3
    end

    def quadraticfunction
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        p3 = "#{params[:c]}"
        a = p1.to_f
        b = p2.to_f
        c = p3.to_f
        xAxis_categories = []
        for i in -10..11 do
            xAxis_categories.push(i)
        end
        tickInterval     = 1
        data             = []
        for j in -10..11 do
            data.push(a*j*j+b*j+c)
        end
        @graph_data = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: 'y = ' + p1 + 'x^2 + ' + p2 + 'x + ' + p3 + 'のグラフ')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: 'y = ' + p1 + 'x^2 + ' + p2 + 'x +  ' + p3, data: data, type: 'spline')
        end
    end

    def cubicfunction
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        p3 = "#{params[:c]}"
        p4 = "#{params[:d]}"
        a = p1.to_f
        b = p2.to_f
        c = p3.to_f
        d = p4.to_f
        xAxis_categories = []
        for i in -10..10 do
            xAxis_categories.push(i)
        end
        tickInterval     = 1
        data             = []
        for j in -10..10 do
            data.push(a*j*j*j+b*j*j+c*j+d)
        end
        @graph_data = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: 'y = ' + p1 + 'x^3 + ' + p2 + 'x^2 + ' + p3 + 'x + ' + p4 + 'のグラフ')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: 'y = ' + p1 + 'x^3 + ' + p2 + 'x^2 +  ' + p3 + 'x + ' + p4, data: data, type: 'spline')
        end
    end

    def fa01
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        a = p1.to_f
        b = p2.to_f
        xAxis_categories = []
        for i in -10..10 do
            xAxis_categories.push(i)
        end
        tickInterval     = 1
        data1            = []
        data2            = []
        data3            = []
        data4            = []
        data5            = []
        for j in -10..10 do
            data1.push(a)
            data2.push(j*b)
            data3.push(((a**2)+((j*b)**2))**(0.5))
            data4.push(Math.atan((j*b)/a))
            data5.push([a,b*j])
        end
        @graph_data1 = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: '実部と虚部')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: 'R(ω)', data: data1, type: 'spline')
            f.series(name: 'X(ω)', data: data2, type: 'spline')
        end
        @graph_data2 = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: '絶対値と位相スペクトル')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: '|F(ω)|', data: data3, type: 'spline')
            f.series(name: 'φ(ω)', data: data4, type: 'spline')
        end
        @graph_data3 = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: '複素平面上のベクトル軌跡')
            f.options[:yAxis] = [{ title: { text: 'X(ω)' }}]
            f.xAxis(title: { text: 'R(ω)' }, categories: a, tickInterval: tickInterval)
            f.series(name: 'ベクトル軌跡', data: data5, type: 'spline')
        end
    end

    def hoge
        p1 = "#{params[:a]}"
        a = p1.to_f
        hash = {"hoge" => a}
        print(hash["hoge"])
    end

end
