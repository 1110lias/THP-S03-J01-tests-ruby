def ftoc (tempf)
    tempcel = ((tempf - 32)/1.8).round
    return tempcel
end

def ctof (tempc)
    tempfar = ((tempc * (9.0/5.0)) + 32)
    #tempfar = ((tempc * (9.to_f/5)) + 32) #si float in operation: resultat = float? 
    return tempfar
end