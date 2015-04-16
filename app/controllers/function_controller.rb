# coding: utf-8

class FunctionController < ApplicationController

    def linearfunction
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        #render :text => "upper = #{params[:a]}, lower = #{params[:b]}"
        a = p1.to_f
        b = p2.to_f
        xAxis_categories = [-3, -2, -1, 0, 1, 2, 3]
        tickInterval     = 1
        data             = [-3*a+b, -2*a+b, -a+b, b, a+b, 2*a+b, 3*a+b]
        @graph_data = LazyHighCharts::HighChart.new('graph') do |f|
            f.title(text: 'y = ' + p1 + 'x + ' + p2 + 'のグラフ')
            f.options[:yAxis] = [{ title: { text: 'y軸' }}]
            f.xAxis(categories: xAxis_categories, tickInterval: tickInterval)
            f.series(name: 'y = ' + p1 + 'x + ' + p2, data: data, type: 'spline')
        end
    end

    def quadraticfunction
        p1 = "#{params[:a]}"
        p2 = "#{params[:b]}"
        p3 = "#{params[:c]}"
        a = p1.to_f
        b = p2.to_f
        c = p3.to_f
        xAxis_categories = []
        for i in -10..10 do
            xAxis_categories.push(i)
        end
        tickInterval     = 1
        data             = []
        for j in -10..10 do
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

end
